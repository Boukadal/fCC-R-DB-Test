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
    name character varying(40),
    description text,
    age_in_millions_of_years numeric(6,1),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    planets_numbers integer
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
    description text,
    age_in_millions_of_years numeric(6,1),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
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
    name character varying(40),
    description text,
    age_in_millions_of_years numeric(6,1),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    number_of_moon integer,
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(20),
    number_of_planets integer NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    description text,
    age_in_millions_of_years numeric(6,1),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Galaxy that includes Solar system and Planet Earth', NULL, true, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Paramecium Galaxy', 'Named after its appearance to the orgsnisme', NULL, false, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Sombrero Galaxy', 'Similar in appearance to a sombrero', NULL, false, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Spider Galaxy', 'Named after its appearance of a spider', NULL, false, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Spiderweb Galaxy', 'Its irregular shape and continuous structure resembles a spiderweb', NULL, false, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Starfish Galaxy', 'Similar in appearance to a starfish', NULL, false, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, true, true, 3);
INSERT INTO public.moon VALUES (2, 'Io', NULL, NULL, true, true, 5);
INSERT INTO public.moon VALUES (3, 'Europa', NULL, NULL, true, true, 5);
INSERT INTO public.moon VALUES (4, 'Ganymede', NULL, NULL, true, true, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', NULL, NULL, true, true, 5);
INSERT INTO public.moon VALUES (6, 'Mimas', NULL, NULL, true, true, 6);
INSERT INTO public.moon VALUES (7, 'Enceladus', NULL, NULL, true, true, 6);
INSERT INTO public.moon VALUES (8, 'Tethys', NULL, NULL, true, true, 6);
INSERT INTO public.moon VALUES (9, 'Dione', NULL, NULL, true, true, 6);
INSERT INTO public.moon VALUES (10, 'Rhea', NULL, NULL, true, true, 6);
INSERT INTO public.moon VALUES (11, 'Titan', NULL, NULL, true, true, 6);
INSERT INTO public.moon VALUES (12, 'Iapetus', NULL, NULL, true, true, 6);
INSERT INTO public.moon VALUES (13, 'Miranda', NULL, NULL, true, true, 7);
INSERT INTO public.moon VALUES (14, 'Ariel', NULL, NULL, true, true, 7);
INSERT INTO public.moon VALUES (15, 'Umbriel', NULL, NULL, true, true, 7);
INSERT INTO public.moon VALUES (16, 'Titania', NULL, NULL, true, true, 7);
INSERT INTO public.moon VALUES (17, 'Oberon', NULL, NULL, true, true, 7);
INSERT INTO public.moon VALUES (18, 'Triton', NULL, NULL, true, true, 8);
INSERT INTO public.moon VALUES (19, 'Charon', NULL, NULL, true, false, 10);
INSERT INTO public.moon VALUES (20, 'Styx', NULL, NULL, true, true, 10);
INSERT INTO public.moon VALUES (21, 'Nix', NULL, NULL, true, true, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Discovery year: Prehistoric', NULL, true, true, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Discovery year: Prehistoric', NULL, true, true, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Discovery year: Prehistoric', NULL, true, true, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Discovery year: Prehistoric', NULL, true, true, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Discovery year: Prehistoric', NULL, true, true, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Discovery year: Prehistoric', NULL, true, true, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Discovery year: Prehistoric', NULL, true, true, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Discovery year: Prehistoric', NULL, true, true, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', 'Dwarf planets discovery year: 1801', NULL, true, true, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', 'Dwarf planets discovery year: 1930', NULL, true, true, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', 'Dwarf planets discovery year: 2004', NULL, true, true, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 'Dwarf planets discovery year: 2005', NULL, true, true, NULL, 1);
INSERT INTO public.planet VALUES (13, 'Eris', 'Dwarf planets discovery year: 2005', NULL, true, true, NULL, 1);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial planet', 4);
INSERT INTO public.planet_types VALUES (2, 'Gas giant', 2);
INSERT INTO public.planet_types VALUES (3, 'Ice giant', 2);
INSERT INTO public.planet_types VALUES (4, 'Asteroid belt', 1);
INSERT INTO public.planet_types VALUES (5, 'Kuiper belt', 3);
INSERT INTO public.planet_types VALUES (6, 'Scattered disc', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'eight recognized planets and more dwarf planets', NULL, true, true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'flare star one confirmed planet b 2016 and two candidate planets', NULL, false, false, 1);
INSERT INTO public.star VALUES (3, 'Rigil Kentaurus', 'one directly imaged habitable-zone planet candidate', NULL, false, false, 1);
INSERT INTO public.star VALUES (4, 'Toliman (B)', 'planet b refuted in 2015', NULL, false, false, 1);
INSERT INTO public.star VALUES (5, 'Barnards Star', 'flare star, largest-known proper motion, one confirmed planet', NULL, false, false, 1);
INSERT INTO public.star VALUES (6, 'Luhman 16(WISE 1049−5319)', 'nearest brown dwarfs', NULL, false, false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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

