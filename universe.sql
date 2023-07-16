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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(40) NOT NULL,
    size numeric,
    age_in_millions integer,
    home_galaxy character varying(40),
    galaxy_id integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    size numeric,
    galaxy_type text,
    age_in_millions_of_years integer
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
    name character varying(40) NOT NULL,
    size numeric,
    age_in_millions integer,
    has_life boolean NOT NULL,
    home_planet character varying(40),
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
    name character varying(40) NOT NULL,
    size numeric,
    has_moon boolean,
    has_life boolean NOT NULL,
    home_star character varying(40),
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
    name character varying(40) NOT NULL,
    size numeric,
    color character varying,
    age_in_millions_of_years integer,
    home_galaxy character varying(40),
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Saggittarius_A', 800000000, 100000, 'Milky_way', 2);
INSERT INTO public.black_hole VALUES (2, 'Cygnus_X3', 8000000, 10000, 'Milky_way', 2);
INSERT INTO public.black_hole VALUES (3, 'Cygnus_X1', 80000, 12060, 'Milky_way', 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky_way', 52.850, 'Spiral', 1000000);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 110.850, 'Barrel_spiral', 1600000);
INSERT INTO public.galaxy VALUES (4, 'Magellanic', 7.542, 'Irregular', 1500);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 25.392, 'Spiral', 1000300);
INSERT INTO public.galaxy VALUES (6, 'Sagitarius', 2.392, 'Irregular', 20300);
INSERT INTO public.galaxy VALUES (7, 'Canis', 7.392, 'Irregular', 62902);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Luna', 529, 5025, false, 'Earth', 3);
INSERT INTO public.moon VALUES (3, 'Phobos', 202, 235, false, 'Mars', 4);
INSERT INTO public.moon VALUES (5, 'Deimos', 202, 235, false, 'Mars', 4);
INSERT INTO public.moon VALUES (6, 'Europa', 3022, 2315, false, 'Jupiter', 5);
INSERT INTO public.moon VALUES (7, 'Ganimides', 1022, 2315, false, 'Jupiter', 5);
INSERT INTO public.moon VALUES (8, 'Io', 2173, 3194, false, 'Jupiter', 5);
INSERT INTO public.moon VALUES (9, 'Calisto', 573, 5381, false, 'Jupiter', 5);
INSERT INTO public.moon VALUES (10, 'Amaltea', 273, 782, false, 'Jupiter', 5);
INSERT INTO public.moon VALUES (11, 'Carme', 133, 245, false, 'Jupiter', 5);
INSERT INTO public.moon VALUES (12, 'Carpo', 213, 774, false, 'Jupiter', 5);
INSERT INTO public.moon VALUES (13, 'Temisto', 613, 774, false, 'Jupiter', 5);
INSERT INTO public.moon VALUES (14, 'Herse', 231, 774, false, 'Jupiter', 5);
INSERT INTO public.moon VALUES (15, 'Cilene', 231, 774, false, 'Jupiter', 5);
INSERT INTO public.moon VALUES (16, 'Isonoe', 231, 774, false, 'Jupiter', 5);
INSERT INTO public.moon VALUES (17, 'Adrastea', NULL, NULL, false, 'Jupiter', 5);
INSERT INTO public.moon VALUES (18, 'Eirene', NULL, NULL, false, 'Jupiter', 5);
INSERT INTO public.moon VALUES (19, 'Aitne', NULL, NULL, false, 'Jupiter', 5);
INSERT INTO public.moon VALUES (20, 'Encelado', NULL, NULL, false, 'Saturn', 6);
INSERT INTO public.moon VALUES (21, 'Titan', NULL, NULL, false, 'Saturn', 6);
INSERT INTO public.moon VALUES (22, 'Mimas', NULL, NULL, false, 'Saturn', 6);
INSERT INTO public.moon VALUES (23, 'Japeto', NULL, NULL, false, 'Saturn', 6);
INSERT INTO public.moon VALUES (24, 'Tetis', NULL, NULL, false, 'Saturn', 6);
INSERT INTO public.moon VALUES (25, 'Dione', NULL, NULL, false, 'Saturn', 6);
INSERT INTO public.moon VALUES (1, 'Tulandia', 640, 1205, false, 'Cuco', 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 2450, false, false, 'Sol', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 6050, false, false, 'Sol', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 6210, true, true, 'Sol', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4180, false, true, 'Sol', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 8000000, false, true, 'Sol', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 6000000, false, true, 'Sol', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 5000000, false, true, 'Sol', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 6000000, false, true, 'Sol', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 1540, false, false, 'Sol', 1);
INSERT INTO public.planet VALUES (12, 'Cuco', 7640, true, true, 'Caco', 4);
INSERT INTO public.planet VALUES (13, 'Tuland', 6640, false, false, 'Caco', 4);
INSERT INTO public.planet VALUES (11, 'Pandora', 7640, true, true, 'Alpha_centauri', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 700.000, 'Yellow', 4601, 'Milky_way', 2);
INSERT INTO public.star VALUES (2, 'Sirius', 1400000.0, 'Blue', 201, 'Milky_way', 2);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 140000000, 'Red', 9, 'Milky_way', 2);
INSERT INTO public.star VALUES (6, 'Alpha_centauri', 1500000, 'Yellow', 2689, 'Milky_way', 2);
INSERT INTO public.star VALUES (3, 'Hell', 10200000.0, 'Red', 865, 'Andromeda', 3);
INSERT INTO public.star VALUES (4, 'Caco', 73000.0, 'Brown', 56365, 'Magellanic', 4);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

