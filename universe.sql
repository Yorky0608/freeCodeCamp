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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    galaxy_type character varying(30) NOT NULL,
    num_plantes integer,
    black_hole boolean NOT NULL,
    name character varying(40)
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
    name character varying(40),
    is_ice boolean NOT NULL,
    color character varying(20),
    planet_id integer
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
    name character varying(40),
    has_life boolean NOT NULL,
    num_moons integer,
    color character varying(20),
    star_id integer
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
    color character varying(20),
    temp_in_c numeric(10,0) NOT NULL,
    name character varying(40),
    galaxy_id integer
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
-- Name: why; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.why (
    why_id integer NOT NULL,
    whys integer NOT NULL,
    why_ text,
    name character varying(5)
);


ALTER TABLE public.why OWNER TO freecodecamp;

--
-- Name: why_why_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.why_why_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.why_why_id_seq OWNER TO freecodecamp;

--
-- Name: why_why_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.why_why_id_seq OWNED BY public.why.why_id;


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
-- Name: why why_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.why ALTER COLUMN why_id SET DEFAULT nextval('public.why_why_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'This is the galaxy we live in.', 'barred spiral', NULL, true, 'Milkyway');
INSERT INTO public.galaxy VALUES (2, 'This galaxy is far away.', ' spiral', NULL, true, 'Andromeda Galaxy');
INSERT INTO public.galaxy VALUES (3, 'This one has numbers in its name.', ' elliptical', NULL, true, 'Messier 87');
INSERT INTO public.galaxy VALUES (4, 'Why do we like numbers?', ' elliptical', NULL, true, 'NGC 224');
INSERT INTO public.galaxy VALUES (5, 'Did we just get board of naming galaxies?', ' spiral', NULL, true, 'NGC 1068');
INSERT INTO public.galaxy VALUES (6, 'Wonder if it is shaped like a triangle?', ' spiral', NULL, true, 'Triangulum Galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'IO', false, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Europa', true, NULL, 3);
INSERT INTO public.moon VALUES (3, 'Ganymede', true, NULL, 3);
INSERT INTO public.moon VALUES (4, 'Callisto', true, NULL, 3);
INSERT INTO public.moon VALUES (5, 'Amalthea', false, NULL, 3);
INSERT INTO public.moon VALUES (6, 'Himalia', false, NULL, 3);
INSERT INTO public.moon VALUES (7, 'Elara', false, NULL, 3);
INSERT INTO public.moon VALUES (8, 'Thebe', false, NULL, 3);
INSERT INTO public.moon VALUES (9, 'Pasiphae', false, NULL, 3);
INSERT INTO public.moon VALUES (10, 'Sinope', false, NULL, 3);
INSERT INTO public.moon VALUES (11, 'Titan', false, NULL, 8);
INSERT INTO public.moon VALUES (12, 'Rhea', true, NULL, 8);
INSERT INTO public.moon VALUES (13, 'Enceladus', false, NULL, 8);
INSERT INTO public.moon VALUES (14, 'Mimas', true, NULL, 8);
INSERT INTO public.moon VALUES (15, 'Tethys', true, NULL, 8);
INSERT INTO public.moon VALUES (16, 'Dione', true, NULL, 8);
INSERT INTO public.moon VALUES (17, 'Hyperion', true, NULL, 8);
INSERT INTO public.moon VALUES (18, 'Phoebe', true, NULL, 8);
INSERT INTO public.moon VALUES (19, 'Iapetus', true, NULL, 8);
INSERT INTO public.moon VALUES (20, 'Janus and Epimetheus', false, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mars', false, 2, 'Red', 7);
INSERT INTO public.planet VALUES (2, 'Earth', true, 1, 'Blue', 7);
INSERT INTO public.planet VALUES (3, 'Jupiter', false, 95, 'Orange', 7);
INSERT INTO public.planet VALUES (4, 'Neptune', false, 14, 'Blue', 7);
INSERT INTO public.planet VALUES (5, 'Mercury', false, 0, 'Grey', 7);
INSERT INTO public.planet VALUES (6, 'Venus', false, 0, 'Yellow', 7);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 27, 'Yellow', 7);
INSERT INTO public.planet VALUES (8, 'Saturn', false, 83, 'Yellow', 7);
INSERT INTO public.planet VALUES (9, 'Kepler-62', false, 0, NULL, 7);
INSERT INTO public.planet VALUES (10, 'Kepler-62c', false, 0, NULL, 7);
INSERT INTO public.planet VALUES (11, 'Kepler-62d', false, 0, NULL, 7);
INSERT INTO public.planet VALUES (12, 'Kepler-62e', false, 0, NULL, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Red Supergiant', 3227, 'Betelgeuse', 1);
INSERT INTO public.star VALUES (2, 'BLue-White', 9670, 'Sirius', 1);
INSERT INTO public.star VALUES (3, 'BLue-White', 11700, 'Alpheratz', 2);
INSERT INTO public.star VALUES (4, 'BLue', 20000, 'NGC 224', 2);
INSERT INTO public.star VALUES (5, 'BLue', 20000, 'HD 98205', 6);
INSERT INTO public.star VALUES (6, 'Reddish-Orange', 4500, 'V1', 3);
INSERT INTO public.star VALUES (7, 'Orange', 5800, 'Sun', 1);
INSERT INTO public.star VALUES (8, 'Yellow', 5126, 'Kepler-62', 1);


--
-- Data for Name: why; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.why VALUES (1, 10, 'I have not clue.', 'DATA');
INSERT INTO public.why VALUES (2, 20, 'I have no clue.', 'DATAs');
INSERT INTO public.why VALUES (3, 0, 'I have no clue as to why.', 'DaTA');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: why_why_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.why_why_id_seq', 3, true);


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
-- Name: why why_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.why
    ADD CONSTRAINT why_pkey PRIMARY KEY (why_id);


--
-- Name: why why_why__key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.why
    ADD CONSTRAINT why_why__key UNIQUE (why_);


--
-- Name: moon planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

