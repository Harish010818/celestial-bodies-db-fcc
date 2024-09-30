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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    human_visitors_count integer,
    time_travel_possible boolean,
    near_planet text
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_count_in_billions integer,
    planet_count integer,
    distance_from_earth numeric(12,3),
    has_life boolean,
    galaxy_type text,
    is_visible boolean
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
    human_visitors_count integer,
    distance_from_earth numeric(12,2),
    is_visible boolean,
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
    name character varying(30) NOT NULL,
    people_count_in_billions integer,
    temp integer,
    distance_from_earth numeric(15,3),
    time_travel boolean,
    has_life boolean,
    description text,
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
    name character varying(30) NOT NULL,
    temp integer,
    age_in_millions_of_yr integer,
    is_active boolean,
    is_large boolean,
    star_type text,
    mass numeric(15,5),
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Gargantua', 0, true, 'Miller''s Planet');
INSERT INTO public.blackhole VALUES (2, 'Cygnus X-1', 0, false, 'None');
INSERT INTO public.blackhole VALUES (3, 'Sagittarius A', 0, false, 'None');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100, 8, 0.000, true, 'Spiral', true);
INSERT INTO public.galaxy VALUES (2, 'Sombrero Galaxy', 200, 9, 29000000.000, false, 'Lenticular', true);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool Galaxy', 100, 5, 23000000.000, false, 'Spiral', true);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 1000, 12, 54000000.000, false, 'Elliptical', true);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 40, 6, 3000000.000, false, 'Spiral', true);
INSERT INTO public.galaxy VALUES (6, 'Andromeda', 1000, 14, 2537000.000, false, 'Spiral', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 12, 384400.00, true, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 0, 628000000.00, true, 3);
INSERT INTO public.moon VALUES (3, 'Ganymede', 0, 628000000.00, true, 3);
INSERT INTO public.moon VALUES (4, 'Io', 0, 628000000.00, true, 3);
INSERT INTO public.moon VALUES (5, 'Titan', 0, 1270000000.00, true, 6);
INSERT INTO public.moon VALUES (6, 'Enceladus', 0, 1300000000.00, true, 6);
INSERT INTO public.moon VALUES (7, 'Callisto', 0, 628000000.00, true, 3);
INSERT INTO public.moon VALUES (8, 'Rhea', 0, 1270000000.00, true, 6);
INSERT INTO public.moon VALUES (9, 'Dione', 0, 1270000000.00, true, 6);
INSERT INTO public.moon VALUES (10, 'Triton', 0, 3550000000.00, true, 7);
INSERT INTO public.moon VALUES (11, 'Charon', 0, 587000000.00, true, 7);
INSERT INTO public.moon VALUES (12, 'Phobos', 0, 60000000.00, true, 2);
INSERT INTO public.moon VALUES (13, 'Deimos', 0, 24000000.00, true, 2);
INSERT INTO public.moon VALUES (14, 'Miranda', 0, 1300000000.00, true, 4);
INSERT INTO public.moon VALUES (15, 'Ariel', 0, 1300000000.00, true, 4);
INSERT INTO public.moon VALUES (16, 'Umbriel', 0, 1300000000.00, true, 4);
INSERT INTO public.moon VALUES (17, 'Titania', 0, 1300000000.00, true, 4);
INSERT INTO public.moon VALUES (18, 'Oberon', 0, 1300000000.00, true, 4);
INSERT INTO public.moon VALUES (19, 'Mimas', 0, 1270000000.00, true, 6);
INSERT INTO public.moon VALUES (20, 'Hyperion', 0, 1270000000.00, true, 6);
INSERT INTO public.moon VALUES (21, 'Iapetus', 0, 1270000000.00, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 8, 15, 0.000, false, true, 'The only known planet with life, home to humans.', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 0, -60, 225000000.000, false, false, 'A red planet with evidence of water in its past.', 1);
INSERT INTO public.planet VALUES (3, 'Proxima b', 0, -39, 40200000000.000, false, true, 'A potentially habitable exoplanet orbiting Proxima Centauri.', 2);
INSERT INTO public.planet VALUES (4, 'Kepler-452b', 0, 22, 14020000000.000, false, true, 'A super-Earth orbiting in the habitable zone of a Sun-like star.', 3);
INSERT INTO public.planet VALUES (5, 'GJ 1214b', 0, 200, 42000000.000, false, false, 'A watery planet with a thick atmosphere.', 4);
INSERT INTO public.planet VALUES (6, 'Hoth', 0, -70, 4000000.000, true, false, 'A frozen world with potential life.', 5);
INSERT INTO public.planet VALUES (7, 'Vulcan', 0, 35, 1600000.000, true, true, 'Home to an advanced, logical species.', 6);
INSERT INTO public.planet VALUES (8, 'Tatooine', 0, 45, 1400000.000, true, false, 'A desert planet with twin suns.', 6);
INSERT INTO public.planet VALUES (9, 'Pandora', 0, 25, 4200000.000, true, true, 'Lush, habitable, with a rich ecosystem.', 2);
INSERT INTO public.planet VALUES (10, 'Dagobah', 0, 30, 5000000.000, true, false, 'Swampy and wild, with strange life forms.', 4);
INSERT INTO public.planet VALUES (11, 'LV-426', 0, -50, 39000000.000, false, false, 'A barren planet with a hostile environment.', 3);
INSERT INTO public.planet VALUES (12, 'Miller''s Planet', 0, 30, 100000000.000, true, false, 'A water-covered planet with extreme time dilation, orbiting near the black hole Gargantua.', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 9940, 200, true, true, 'Main Sequence', 2.10000, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 3050, 4500, true, false, 'Red Dwarf', 0.12000, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 3500, 100, false, true, 'Red Supergiant', 18.50000, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 5790, 5000, true, true, 'Main Sequence', 1.10000, 1);
INSERT INTO public.star VALUES (5, 'Vega', 9600, 455, true, true, 'Main Sequence', 2.10000, 1);
INSERT INTO public.star VALUES (6, 'Rigel', 12000, 850, true, true, 'Blue Supergiant', 21.00000, 1);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: blackhole unique_blackhole_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT unique_blackhole_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

