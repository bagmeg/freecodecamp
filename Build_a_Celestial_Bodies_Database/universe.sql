--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: being; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.being (
    being_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.being OWNER TO freecodecamp;

--
-- Name: being_being_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.being_being_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.being_being_id_seq OWNER TO freecodecamp;

--
-- Name: being_being_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.being_being_id_seq OWNED BY public.being.being_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    is_alive boolean,
    description text,
    temperature numeric(5,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    is_alive boolean,
    description text,
    temperature numeric(5,1),
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    is_alive boolean,
    description text,
    temperature numeric(5,1),
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    is_alive boolean,
    description text,
    temperature numeric(5,1),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: being being_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.being ALTER COLUMN being_id SET DEFAULT nextval('public.being_being_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: being; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.being VALUES (1, 'human', 'it is a human from earch');
INSERT INTO public.being VALUES (2, 'wakanda', 'it is a wakanda');
INSERT INTO public.being VALUES (3, 'nabi', 'it is a nabian from avatar');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'planetA', 100, true, 'it is planetA', 1030.3);
INSERT INTO public.galaxy VALUES (7, 'planetB', 20, true, 'it is planetB', 5123.3);
INSERT INTO public.galaxy VALUES (8, 'planetC', 300, true, 'it is planetC', 142.3);
INSERT INTO public.galaxy VALUES (9, 'planetD', 400, true, 'it is planetD', 573.2);
INSERT INTO public.galaxy VALUES (10, 'planetE', 500, true, 'it is planetE', 1234.3);
INSERT INTO public.galaxy VALUES (11, 'planetF', 600, true, 'it is planetF', 7612.3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (11, 'moon11', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (12, 'moon12', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (13, 'moon13', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'moon14', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'moon15', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'moon16', NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (17, 'moon17', NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (19, 'moon19', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (20, 'moon20', NULL, NULL, NULL, NULL, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planetA', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'planetB', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'planetC', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'planetD', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'planetE', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'planetF', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'planet1', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'planet2', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'planet3', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (10, 'planet4', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (11, 'planet5', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'planet6', NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'starA', 100, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'starB', 200, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (3, 'starC', 300, NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES (4, 'starD', 400, NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES (5, 'starE', 500, NULL, NULL, NULL, 10);
INSERT INTO public.star VALUES (6, 'starF', 600, NULL, NULL, NULL, 11);


--
-- Name: being_being_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.being_being_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: being being_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.being
    ADD CONSTRAINT being_name_key UNIQUE (name);


--
-- Name: being being_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.being
    ADD CONSTRAINT being_pkey PRIMARY KEY (being_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


