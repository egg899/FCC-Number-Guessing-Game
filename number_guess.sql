--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 6);
INSERT INTO public.games VALUES (2, 1, 5);
INSERT INTO public.games VALUES (3, 2, 4);
INSERT INTO public.games VALUES (4, 2, 4);
INSERT INTO public.games VALUES (5, 1, 6);
INSERT INTO public.games VALUES (6, 1, 4);
INSERT INTO public.games VALUES (7, 2, 3);
INSERT INTO public.games VALUES (8, 3, 15);
INSERT INTO public.games VALUES (9, 3, 23);
INSERT INTO public.games VALUES (10, 4, 21);
INSERT INTO public.games VALUES (11, 4, 7);
INSERT INTO public.games VALUES (12, 3, 1);
INSERT INTO public.games VALUES (13, 3, 27);
INSERT INTO public.games VALUES (14, 3, 15);
INSERT INTO public.games VALUES (15, 1, 16);
INSERT INTO public.games VALUES (16, 1, 1);
INSERT INTO public.games VALUES (17, 3, 19);
INSERT INTO public.games VALUES (18, 2, 1);
INSERT INTO public.games VALUES (19, 2, 15);
INSERT INTO public.games VALUES (20, 1, 7);
INSERT INTO public.games VALUES (21, 1, 4);
INSERT INTO public.games VALUES (22, 6, 314);
INSERT INTO public.games VALUES (23, 6, 145);
INSERT INTO public.games VALUES (24, 7, 925);
INSERT INTO public.games VALUES (25, 7, 235);
INSERT INTO public.games VALUES (26, 6, 912);
INSERT INTO public.games VALUES (27, 6, 240);
INSERT INTO public.games VALUES (28, 6, 515);
INSERT INTO public.games VALUES (29, 1, 17);
INSERT INTO public.games VALUES (30, 8, 466);
INSERT INTO public.games VALUES (31, 9, 387);
INSERT INTO public.games VALUES (32, 8, 98);
INSERT INTO public.games VALUES (33, 9, 402);
INSERT INTO public.games VALUES (34, 8, 171);
INSERT INTO public.games VALUES (35, 10, 930);
INSERT INTO public.games VALUES (36, 10, 638);
INSERT INTO public.games VALUES (37, 9, 841);
INSERT INTO public.games VALUES (38, 9, 609);
INSERT INTO public.games VALUES (39, 9, 713);
INSERT INTO public.games VALUES (40, 11, 281);
INSERT INTO public.games VALUES (41, 11, 878);
INSERT INTO public.games VALUES (42, 12, 182);
INSERT INTO public.games VALUES (43, 12, 132);
INSERT INTO public.games VALUES (44, 13, 947);
INSERT INTO public.games VALUES (45, 13, 894);
INSERT INTO public.games VALUES (46, 12, 188);
INSERT INTO public.games VALUES (47, 12, 899);
INSERT INTO public.games VALUES (48, 12, 534);
INSERT INTO public.games VALUES (49, 14, 538);
INSERT INTO public.games VALUES (50, 16, 534);
INSERT INTO public.games VALUES (51, 15, 716);
INSERT INTO public.games VALUES (52, 16, 306);
INSERT INTO public.games VALUES (53, 15, 649);
INSERT INTO public.games VALUES (54, 16, 602);
INSERT INTO public.games VALUES (55, 17, 623);
INSERT INTO public.games VALUES (56, 17, 833);
INSERT INTO public.games VALUES (57, 15, 853);
INSERT INTO public.games VALUES (58, 15, 709);
INSERT INTO public.games VALUES (59, 15, 352);
INSERT INTO public.games VALUES (60, 18, 672);
INSERT INTO public.games VALUES (61, 18, 838);
INSERT INTO public.games VALUES (62, 19, 401);
INSERT INTO public.games VALUES (63, 19, 500);
INSERT INTO public.games VALUES (64, 18, 649);
INSERT INTO public.games VALUES (65, 18, 208);
INSERT INTO public.games VALUES (66, 18, 843);
INSERT INTO public.games VALUES (67, 20, 326);
INSERT INTO public.games VALUES (68, 20, 593);
INSERT INTO public.games VALUES (69, 21, 71);
INSERT INTO public.games VALUES (70, 21, 650);
INSERT INTO public.games VALUES (71, 20, 318);
INSERT INTO public.games VALUES (72, 20, 294);
INSERT INTO public.games VALUES (73, 20, 188);
INSERT INTO public.games VALUES (74, 22, 224);
INSERT INTO public.games VALUES (75, 22, 614);
INSERT INTO public.games VALUES (76, 23, 188);
INSERT INTO public.games VALUES (77, 23, 227);
INSERT INTO public.games VALUES (78, 22, 959);
INSERT INTO public.games VALUES (79, 22, 354);
INSERT INTO public.games VALUES (80, 22, 247);
INSERT INTO public.games VALUES (81, 24, 952);
INSERT INTO public.games VALUES (82, 24, 160);
INSERT INTO public.games VALUES (83, 25, 894);
INSERT INTO public.games VALUES (84, 25, 32);
INSERT INTO public.games VALUES (85, 24, 810);
INSERT INTO public.games VALUES (86, 24, 121);
INSERT INTO public.games VALUES (87, 24, 548);
INSERT INTO public.games VALUES (88, 26, 41);
INSERT INTO public.games VALUES (89, 26, 451);
INSERT INTO public.games VALUES (90, 27, 507);
INSERT INTO public.games VALUES (91, 27, 700);
INSERT INTO public.games VALUES (92, 26, 369);
INSERT INTO public.games VALUES (93, 26, 364);
INSERT INTO public.games VALUES (94, 26, 1001);
INSERT INTO public.games VALUES (95, 28, 144);
INSERT INTO public.games VALUES (96, 28, 198);
INSERT INTO public.games VALUES (97, 29, 493);
INSERT INTO public.games VALUES (98, 29, 572);
INSERT INTO public.games VALUES (99, 28, 966);
INSERT INTO public.games VALUES (100, 28, 486);
INSERT INTO public.games VALUES (101, 28, 133);
INSERT INTO public.games VALUES (102, 30, 905);
INSERT INTO public.games VALUES (103, 30, 767);
INSERT INTO public.games VALUES (104, 31, 563);
INSERT INTO public.games VALUES (105, 31, 735);
INSERT INTO public.games VALUES (106, 30, 227);
INSERT INTO public.games VALUES (107, 30, 70);
INSERT INTO public.games VALUES (108, 30, 811);
INSERT INTO public.games VALUES (109, 32, 317);
INSERT INTO public.games VALUES (110, 32, 550);
INSERT INTO public.games VALUES (111, 33, 258);
INSERT INTO public.games VALUES (112, 33, 18);
INSERT INTO public.games VALUES (113, 32, 188);
INSERT INTO public.games VALUES (114, 32, 20);
INSERT INTO public.games VALUES (115, 32, 634);
INSERT INTO public.games VALUES (116, 34, 570);
INSERT INTO public.games VALUES (117, 34, 208);
INSERT INTO public.games VALUES (118, 35, 35);
INSERT INTO public.games VALUES (119, 35, 671);
INSERT INTO public.games VALUES (120, 34, 644);
INSERT INTO public.games VALUES (121, 34, 281);
INSERT INTO public.games VALUES (122, 34, 455);
INSERT INTO public.games VALUES (123, 36, 89);
INSERT INTO public.games VALUES (124, 36, 244);
INSERT INTO public.games VALUES (125, 37, 150);
INSERT INTO public.games VALUES (126, 37, 470);
INSERT INTO public.games VALUES (127, 36, 794);
INSERT INTO public.games VALUES (128, 36, 419);
INSERT INTO public.games VALUES (129, 36, 197);
INSERT INTO public.games VALUES (130, 38, 818);
INSERT INTO public.games VALUES (131, 38, 58);
INSERT INTO public.games VALUES (132, 39, 836);
INSERT INTO public.games VALUES (133, 39, 421);
INSERT INTO public.games VALUES (134, 38, 404);
INSERT INTO public.games VALUES (135, 38, 414);
INSERT INTO public.games VALUES (136, 38, 692);
INSERT INTO public.games VALUES (137, 40, 574);
INSERT INTO public.games VALUES (138, 40, 854);
INSERT INTO public.games VALUES (139, 41, 768);
INSERT INTO public.games VALUES (140, 41, 454);
INSERT INTO public.games VALUES (141, 40, 114);
INSERT INTO public.games VALUES (142, 40, 807);
INSERT INTO public.games VALUES (143, 40, 468);
INSERT INTO public.games VALUES (144, 42, 872);
INSERT INTO public.games VALUES (145, 42, 141);
INSERT INTO public.games VALUES (146, 43, 15);
INSERT INTO public.games VALUES (147, 43, 905);
INSERT INTO public.games VALUES (148, 42, 2);
INSERT INTO public.games VALUES (149, 42, 178);
INSERT INTO public.games VALUES (150, 42, 509);
INSERT INTO public.games VALUES (151, 44, 28);
INSERT INTO public.games VALUES (152, 44, 924);
INSERT INTO public.games VALUES (153, 45, 520);
INSERT INTO public.games VALUES (154, 45, 960);
INSERT INTO public.games VALUES (155, 44, 26);
INSERT INTO public.games VALUES (156, 44, 851);
INSERT INTO public.games VALUES (157, 44, 437);
INSERT INTO public.games VALUES (158, 46, 885);
INSERT INTO public.games VALUES (159, 46, 154);
INSERT INTO public.games VALUES (160, 47, 368);
INSERT INTO public.games VALUES (161, 47, 631);
INSERT INTO public.games VALUES (162, 46, 442);
INSERT INTO public.games VALUES (163, 46, 843);
INSERT INTO public.games VALUES (164, 46, 950);
INSERT INTO public.games VALUES (165, 48, 825);
INSERT INTO public.games VALUES (166, 48, 783);
INSERT INTO public.games VALUES (167, 49, 370);
INSERT INTO public.games VALUES (168, 49, 327);
INSERT INTO public.games VALUES (169, 48, 618);
INSERT INTO public.games VALUES (170, 48, 110);
INSERT INTO public.games VALUES (171, 48, 583);
INSERT INTO public.games VALUES (172, 50, 414);
INSERT INTO public.games VALUES (173, 50, 839);
INSERT INTO public.games VALUES (174, 51, 359);
INSERT INTO public.games VALUES (175, 51, 916);
INSERT INTO public.games VALUES (176, 50, 314);
INSERT INTO public.games VALUES (177, 50, 739);
INSERT INTO public.games VALUES (178, 50, 14);
INSERT INTO public.games VALUES (179, 52, 395);
INSERT INTO public.games VALUES (180, 52, 156);
INSERT INTO public.games VALUES (181, 53, 339);
INSERT INTO public.games VALUES (182, 53, 878);
INSERT INTO public.games VALUES (183, 52, 991);
INSERT INTO public.games VALUES (184, 52, 987);
INSERT INTO public.games VALUES (185, 52, 893);
INSERT INTO public.games VALUES (186, 54, 580);
INSERT INTO public.games VALUES (187, 54, 620);
INSERT INTO public.games VALUES (188, 55, 895);
INSERT INTO public.games VALUES (189, 55, 375);
INSERT INTO public.games VALUES (190, 54, 760);
INSERT INTO public.games VALUES (191, 54, 109);
INSERT INTO public.games VALUES (192, 54, 711);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Rambo');
INSERT INTO public.users VALUES (2, 'Rambo2');
INSERT INTO public.users VALUES (3, 'Terminator');
INSERT INTO public.users VALUES (4, 'Terminator2');
INSERT INTO public.users VALUES (5, 'Landon');
INSERT INTO public.users VALUES (6, 'user_1709847053917');
INSERT INTO public.users VALUES (7, 'user_1709847053916');
INSERT INTO public.users VALUES (8, 'user_1709848293183');
INSERT INTO public.users VALUES (9, 'user_1709848303732');
INSERT INTO public.users VALUES (10, 'user_1709848303731');
INSERT INTO public.users VALUES (11, 'user_1709848567412');
INSERT INTO public.users VALUES (12, 'user_1709848585626');
INSERT INTO public.users VALUES (13, 'user_1709848585625');
INSERT INTO public.users VALUES (14, 'user_1709848982978');
INSERT INTO public.users VALUES (15, 'user_1709848990864');
INSERT INTO public.users VALUES (16, 'user_1709848982979');
INSERT INTO public.users VALUES (17, 'user_1709848990863');
INSERT INTO public.users VALUES (18, 'user_1709849137622');
INSERT INTO public.users VALUES (19, 'user_1709849137621');
INSERT INTO public.users VALUES (20, 'user_1709849209271');
INSERT INTO public.users VALUES (21, 'user_1709849209270');
INSERT INTO public.users VALUES (22, 'user_1709849254720');
INSERT INTO public.users VALUES (23, 'user_1709849254719');
INSERT INTO public.users VALUES (24, 'user_1709849259978');
INSERT INTO public.users VALUES (25, 'user_1709849259977');
INSERT INTO public.users VALUES (26, 'user_1709849262300');
INSERT INTO public.users VALUES (27, 'user_1709849262299');
INSERT INTO public.users VALUES (28, 'user_1709849660720');
INSERT INTO public.users VALUES (29, 'user_1709849660719');
INSERT INTO public.users VALUES (30, 'user_1709849719586');
INSERT INTO public.users VALUES (31, 'user_1709849719585');
INSERT INTO public.users VALUES (32, 'user_1709849824582');
INSERT INTO public.users VALUES (33, 'user_1709849824581');
INSERT INTO public.users VALUES (34, 'user_1709849833590');
INSERT INTO public.users VALUES (35, 'user_1709849833589');
INSERT INTO public.users VALUES (36, 'user_1709849845412');
INSERT INTO public.users VALUES (37, 'user_1709849845411');
INSERT INTO public.users VALUES (38, 'user_1709849877554');
INSERT INTO public.users VALUES (39, 'user_1709849877553');
INSERT INTO public.users VALUES (40, 'user_1709849917351');
INSERT INTO public.users VALUES (41, 'user_1709849917350');
INSERT INTO public.users VALUES (42, 'user_1709849962730');
INSERT INTO public.users VALUES (43, 'user_1709849962729');
INSERT INTO public.users VALUES (44, 'user_1709849971710');
INSERT INTO public.users VALUES (45, 'user_1709849971709');
INSERT INTO public.users VALUES (46, 'user_1709849992604');
INSERT INTO public.users VALUES (47, 'user_1709849992603');
INSERT INTO public.users VALUES (48, 'user_1709850059479');
INSERT INTO public.users VALUES (49, 'user_1709850059478');
INSERT INTO public.users VALUES (50, 'user_1709850747297');
INSERT INTO public.users VALUES (51, 'user_1709850747296');
INSERT INTO public.users VALUES (52, 'user_1709850828077');
INSERT INTO public.users VALUES (53, 'user_1709850828076');
INSERT INTO public.users VALUES (54, 'user_1709850892793');
INSERT INTO public.users VALUES (55, 'user_1709850892792');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 192, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 55, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

