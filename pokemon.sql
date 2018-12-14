--
-- PostgreSQL database dump
--

-- Dumped from database version 11.0
-- Dumped by pg_dump version 11.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pokemon_db; Type: TABLE; Schema: public; Owner: laurenreilly
--

CREATE TABLE public.pokemon_db (
    id integer,
    name character varying,
    type character varying,
    evolves_from_id integer
);


ALTER TABLE public.pokemon_db OWNER TO laurenreilly;

--
-- Name: trainers; Type: TABLE; Schema: public; Owner: laurenreilly
--

CREATE TABLE public.trainers (
    id integer,
    name character varying,
    is_gym_leader boolean,
    pokemon_slot_1 integer,
    pokemon_slot_2 integer,
    pokemon_slot_3 integer,
    pokemon_slot_4 integer,
    pokemon_slot_5 integer,
    pokemon_slot_6 integer
);


ALTER TABLE public.trainers OWNER TO laurenreilly;

--
-- Data for Name: pokemon_db; Type: TABLE DATA; Schema: public; Owner: laurenreilly
--

COPY public.pokemon_db (id, name, type, evolves_from_id) FROM stdin;
1	Bulbasaur	Grass	\N
2	Ivysaur	Grass	1
3	Venusaur	Grass	2
4	Charmander	Fire	\N
5	Charmeleon	Fire	4
6	Charizard	Fire	5
7	Squirtle	Water	\N
8	Wartortle	Water	7
9	Blastoise	Water	8
10	Caterpie	Bug	\N
11	Metapod	Bug	10
12	Butterfree	Bug	11
\.


--
-- Data for Name: trainers; Type: TABLE DATA; Schema: public; Owner: laurenreilly
--

COPY public.trainers (id, name, is_gym_leader, pokemon_slot_1, pokemon_slot_2, pokemon_slot_3, pokemon_slot_4, pokemon_slot_5, pokemon_slot_6) FROM stdin;
1	Ash	f	1	10	\N	\N	\N	\N
2	Misty	t	7	\N	\N	\N	\N	\N
3	Brock	t	3	6	9	\N	\N	\N
4	Axle	t	2	4	8	\N	\N	\N
5	Moxie	f	1	\N	9	9	9	9
\.


--
-- PostgreSQL database dump complete
--

