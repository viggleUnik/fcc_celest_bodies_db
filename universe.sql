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
    galaxy_id integer NOT NULL,
    nr_of_stars integer,
    distance_from_earth integer,
    origin character varying(100) NOT NULL,
    name character varying(100) NOT NULL
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
    description text,
    planet_id integer NOT NULL,
    phases character varying(100) NOT NULL,
    name character varying(100) NOT NULL
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
-- Name: photo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.photo (
    photo_id integer NOT NULL,
    info text,
    name character varying(100) NOT NULL,
    zoom integer NOT NULL
);


ALTER TABLE public.photo OWNER TO freecodecamp;

--
-- Name: photo_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.photo_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photo_photo_id_seq OWNER TO freecodecamp;

--
-- Name: photo_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.photo_photo_id_seq OWNED BY public.photo.photo_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    diameter numeric,
    is_habitable boolean,
    has_magnetic_field boolean,
    star_id integer NOT NULL,
    name character varying(100) NOT NULL
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
    galaxy_id integer NOT NULL,
    mass numeric NOT NULL,
    color character varying(100),
    name character varying(100) NOT NULL
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
-- Name: photo photo_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.photo ALTER COLUMN photo_id SET DEFAULT nextval('public.photo_photo_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 345, 123, 'Milky Way', 'galaxy1');
INSERT INTO public.galaxy VALUES (2, 678, 789, 'Andromeda', 'galaxy2');
INSERT INTO public.galaxy VALUES (3, 901, 234, 'Triangulum', 'galaxy3');
INSERT INTO public.galaxy VALUES (4, 456, 567, 'Milky Way', 'galaxy4');
INSERT INTO public.galaxy VALUES (5, 789, 901, 'Andromeda', 'galaxy5');
INSERT INTO public.galaxy VALUES (6, 123, 345, 'Triangulum', 'galaxy6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'First moon of Earth', 5, 'New, Full, Crescent', 'Moon 1');
INSERT INTO public.moon VALUES (2, 'Second moon of Earth', 3, 'Waxing, Waning, Gibbous', 'Moon 2');
INSERT INTO public.moon VALUES (3, 'Moon of Mars', 1, 'First Quarter, Third Quarter', 'Phobos');
INSERT INTO public.moon VALUES (4, 'Another moon of Mars', 4, 'Full, New, Crescent', 'Deimos');
INSERT INTO public.moon VALUES (5, 'Moon of Jupiter', 2, 'Waning, Full', 'Io');
INSERT INTO public.moon VALUES (6, 'Another moon of Jupiter', 6, 'Gibbous, Crescent', 'Europa');
INSERT INTO public.moon VALUES (7, 'Moon of Saturn', 1, 'First Quarter, Third Quarter', 'Titan');
INSERT INTO public.moon VALUES (8, 'Moon of Saturn', 5, 'Full, New, Crescent', 'Rhea');
INSERT INTO public.moon VALUES (9, 'Moon of Uranus', 2, 'Waning, Full', 'Titania');
INSERT INTO public.moon VALUES (10, 'Another moon of Uranus', 3, 'Gibbous, Crescent', 'Oberon');
INSERT INTO public.moon VALUES (11, 'Moon of Neptune', 4, 'First Quarter, Third Quarter', 'Triton');
INSERT INTO public.moon VALUES (12, 'Another moon of Neptune', 6, 'Full, New, Crescent', 'Nereid');
INSERT INTO public.moon VALUES (13, 'Moon of Pluto', 1, 'Waning, Full', 'Charon');
INSERT INTO public.moon VALUES (14, 'Another moon of Pluto', 5, 'Gibbous, Crescent', 'Styx');
INSERT INTO public.moon VALUES (15, 'Moon of Kepler-22b', 2, 'First Quarter, Third Quarter', 'K22b Moon 1');
INSERT INTO public.moon VALUES (16, 'Another moon of Kepler-22b', 3, 'Full, New, Crescent', 'K22b Moon 2');
INSERT INTO public.moon VALUES (17, 'Moon of Proxima Centauri b', 4, 'Waning, Full', 'Proxima Moon 1');
INSERT INTO public.moon VALUES (18, 'Another moon of Proxima Centauri b', 6, 'Gibbous, Crescent', 'Proxima Moon 2');
INSERT INTO public.moon VALUES (19, 'Moon of TRAPPIST-1d', 1, 'First Quarter, Third Quarter', 'TRAPPIST Moon 1');
INSERT INTO public.moon VALUES (20, 'Another moon of TRAPPIST-1d', 5, 'Full, New, Crescent', 'TRAPPIST Moon 2');


--
-- Data for Name: photo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.photo VALUES (1, 'lore lore', 'photo1', 2);
INSERT INTO public.photo VALUES (2, 'lore lore', 'photo2', 2);
INSERT INTO public.photo VALUES (3, 'lore lore', 'photo3', 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 12742, true, true, 1, 'Earth');
INSERT INTO public.planet VALUES (2, 6787, true, true, 2, 'Mars');
INSERT INTO public.planet VALUES (3, 142984, false, false, 3, 'Jupiter');
INSERT INTO public.planet VALUES (4, 120536, false, false, 2, 'Saturn');
INSERT INTO public.planet VALUES (5, 51118, false, true, 3, 'Mercury');
INSERT INTO public.planet VALUES (6, 49528, false, false, 4, 'Venus');
INSERT INTO public.planet VALUES (7, 49532, false, true, 5, 'Neptune');
INSERT INTO public.planet VALUES (8, 48800, false, true, 5, 'Uranus');
INSERT INTO public.planet VALUES (9, 2274, true, false, 6, 'Pluto');
INSERT INTO public.planet VALUES (10, 120536, false, false, 1, 'Kepler-22b');
INSERT INTO public.planet VALUES (11, 142984, false, false, 2, 'Proxima Centauri b');
INSERT INTO public.planet VALUES (12, 49532, false, true, 3, 'TRAPPIST-1d');
INSERT INTO public.planet VALUES (13, 120536, false, false, 4, 'Gliese 581d');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 2.5, 'Red', 'Sirius');
INSERT INTO public.star VALUES (2, 2, 3.2, 'Blue', 'Canopus');
INSERT INTO public.star VALUES (3, 3, 1.8, 'Yellow', 'Vega');
INSERT INTO public.star VALUES (4, 4, 4.1, 'White', 'Betelgeuse');
INSERT INTO public.star VALUES (5, 5, 2.9, 'Orange', 'Antares');
INSERT INTO public.star VALUES (6, 6, 3.5, 'Yellow', 'Capella');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: photo_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.photo_photo_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


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
-- Name: photo photo_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_name_key UNIQUE (name);


--
-- Name: photo photo_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_pkey PRIMARY KEY (photo_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

