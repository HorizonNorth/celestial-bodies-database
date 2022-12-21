--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(255) NOT NULL,
    distance_in_lightyears numeric,
    galaxy_id integer NOT NULL,
    type character varying,
    diameter_ly integer
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
    name character varying NOT NULL,
    planet_id integer,
    radius_km numeric,
    discovery_year integer,
    has_life boolean
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
-- Name: oldest_known; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.oldest_known (
    oldest_known_id integer NOT NULL,
    name character varying NOT NULL,
    type character varying,
    year integer,
    first_mention text
);


ALTER TABLE public.oldest_known OWNER TO freecodecamp;

--
-- Name: oldest_known_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.oldest_known_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oldest_known_id_seq OWNER TO freecodecamp;

--
-- Name: oldest_known_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.oldest_known_id_seq OWNED BY public.oldest_known.oldest_known_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    star_id integer,
    temp_k integer,
    has_life boolean
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
    name character varying NOT NULL,
    galaxy_id integer,
    stellar_class character varying,
    mass numeric
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: oldest_known oldest_known_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.oldest_known ALTER COLUMN oldest_known_id SET DEFAULT nextval('public.oldest_known_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 2500000, 1, 'SA(s)b', 220000);
INSERT INTO public.galaxy VALUES ('Sculptor', 11400000, 7, 'SAB(s)c', 90000);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 163000, 4, 'SB(s)m', 14000);
INSERT INTO public.galaxy VALUES ('Triangulum', 2730000, 6, 'SA(s)cd', 60000);
INSERT INTO public.galaxy VALUES ('Maffei 1', 9800000, 8, 'S0- pec', 55000);
INSERT INTO public.galaxy VALUES ('Milky Way', NULL, 5, 'SBbc', 140000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Moon', 6, 1738, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Phobos', 7, 11.267, 1877, NULL);
INSERT INTO public.moon VALUES (6, 'Deimos', 7, 6.2, 1877, NULL);
INSERT INTO public.moon VALUES (7, 'Io', 8, 1821, 1610, NULL);
INSERT INTO public.moon VALUES (9, 'Europa', 8, 1560, 1610, NULL);
INSERT INTO public.moon VALUES (10, 'Ganymed', 8, 2634, 1610, NULL);
INSERT INTO public.moon VALUES (11, 'Callisto', 8, 2410, 1610, NULL);
INSERT INTO public.moon VALUES (12, 'Titan', 9, 2574, 1655, NULL);
INSERT INTO public.moon VALUES (13, 'Mimas', 9, 198, 1789, NULL);
INSERT INTO public.moon VALUES (14, 'Enceladus', 9, 252, 1789, NULL);
INSERT INTO public.moon VALUES (15, 'Tethys', 9, 533, 1684, NULL);
INSERT INTO public.moon VALUES (16, 'Dione', 9, 561, 1684, NULL);
INSERT INTO public.moon VALUES (17, 'Rhea', 9, 763, 1672, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', 10, 578, 1851, NULL);
INSERT INTO public.moon VALUES (19, 'Umbriel', 10, 266, 1851, NULL);
INSERT INTO public.moon VALUES (20, 'Titania', 10, 788, 1787, NULL);
INSERT INTO public.moon VALUES (21, 'Oberon', 10, 761, 1787, NULL);
INSERT INTO public.moon VALUES (22, 'Miranda', 10, 235, 1948, NULL);
INSERT INTO public.moon VALUES (23, 'Triton', 11, 1353, 1846, NULL);
INSERT INTO public.moon VALUES (24, 'Lapetus', 9, 735, 1671, NULL);


--
-- Data for Name: oldest_known; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.oldest_known VALUES (1, 'Andromeda', 'Galaxy', 964, 'Around the year 964, the Persian astronomer Abd al-Rahman al-Sufi was the first to formally describe the Andromeda Galaxy. He referred to it in his Book of Fixed Stars as a nebulous smear or small cloud.');
INSERT INTO public.oldest_known VALUES (2, 'Mars', 'planet', -2000, 'Some of the early records of Mars observation date back to the era of the ancient Egyptian astronomers in the 2nd millennium BCE. Chinese records about the motions of Mars appeared before the founding of the Zhou dynasty (1045 BCE).');
INSERT INTO public.oldest_known VALUES (3, 'Alpha Centauri', 'star', 1603, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Kepler-1649 c', 4, 234, false);
INSERT INTO public.planet VALUES (2, 'Kepler-1649 b', 4, 307, false);
INSERT INTO public.planet VALUES (3, 'Proxima Centauri b', 2, 234, false);
INSERT INTO public.planet VALUES (4, 'Mercury', 1, 452, false);
INSERT INTO public.planet VALUES (5, 'Venus', 1, 726, false);
INSERT INTO public.planet VALUES (7, 'Mars', 1, 230, false);
INSERT INTO public.planet VALUES (9, 'Saturn', 1, 88, false);
INSERT INTO public.planet VALUES (10, 'Uranus', 1, 59, false);
INSERT INTO public.planet VALUES (11, 'Neptune', 1, 48, false);
INSERT INTO public.planet VALUES (12, 'Ceres (dwarf)', 1, 167, false);
INSERT INTO public.planet VALUES (8, 'Jupiter', 1, 120, true);
INSERT INTO public.planet VALUES (6, 'Earth', 1, 285, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5, 'G2V', 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 5, 'G2V', 1.079);
INSERT INTO public.star VALUES (3, 'Altair', 5, 'A7 IV-Vn', 1.79);
INSERT INTO public.star VALUES (4, 'Kepler-1649', 5, 'M5 V', 0.2);
INSERT INTO public.star VALUES (5, 'Alpheratz', 1, 'B8IVpMnHg', 3.8);
INSERT INTO public.star VALUES (6, 'VY Canis Majoris', 5, 'M3–M4.5', 20);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: oldest_known_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.oldest_known_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: oldest_known oldest_known_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.oldest_known
    ADD CONSTRAINT oldest_known_name_key UNIQUE (name);


--
-- Name: oldest_known oldest_known_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.oldest_known
    ADD CONSTRAINT oldest_known_pkey PRIMARY KEY (oldest_known_id);


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
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
