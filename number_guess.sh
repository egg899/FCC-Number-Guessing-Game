#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

RANDOM_NUMBER=$((RANDOM % 1000 + 1))
echo "Enter your username:"
read USERNAME
#Getting the user
GET_USER() {
    IS_USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'");
    if [[ -z $IS_USER ]]; then
        INSERT_NAME=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
        echo -e "\nWelcome, $USERNAME! It looks like this is your first time here.\n"
    elif [[ -n $IS_USER ]]; then
        GAMES_PLAYED=$($PSQL "SELECT COUNT(username) FROM users INNER JOIN games ON users.user_id = games.user_id WHERE username='$USERNAME'")
        BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users ON games.user_id = users.user_id WHERE username='$USERNAME'")
        echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.\n"
    fi
}
GET_USER

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
TRIES=0
#Guessing
GUESSING() {
    while true; do
        read GUESS
        if [[ $GUESS =~ ^[0-9]+$ ]]; then
            TRIES=$(($TRIES + 1))
            if [[ $GUESS -lt $RANDOM_NUMBER ]]; then
                echo -e "\nIt's higher than that, guess again:"
            elif [[ $GUESS -gt $RANDOM_NUMBER ]]; then
                echo -e "\nIt's lower than that, guess again:"
            else
                break
            fi
        else
            echo -e "\nThat is not an integer, guess again:"
        fi
    done
}
#echo the number
echo -e "\nGuess the secret number between 1 and 1000:"
GUESSING
#User the score
USER_SCORE=$($PSQL "INSERT INTO games(user_id, guesses) VALUES('$USER_ID', $TRIES)")

echo -e "You guessed it in $TRIES tries. The secret number was $RANDOM_NUMBER. Nice job!"
