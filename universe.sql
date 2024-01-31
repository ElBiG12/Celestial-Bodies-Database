
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
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years integer,
    galaxy_types_id integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moone_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moone_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moone_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    planet_types_id integer
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
    description text,
    name character varying NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moone_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our own galaxy. It is said to look like a band of light', 13600, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'In mythology, Andromeda is the daughter of the kings of Ethiopia and is said to be more beautiful than the Nereids. She becomes queen of Greece when she marries Perseus.', 10000, 1);
INSERT INTO public.galaxy VALUES (3, 'Centaurus A', 'Named because it’s located in the Centaurus constellation', 13300, 2);
INSERT INTO public.galaxy VALUES (4, 'Circinus', 'Latin for compass. Named after the constellation of the same name.', 200, 1);
INSERT INTO public.galaxy VALUES (5, 'Eye of Sauron', 'Looks like the eye of Sauron, from Lord of the rings.', 62, 1);
INSERT INTO public.galaxy VALUES (6, 'Medusa Merger', 'Named after the snakes in the Greek myth of Medusa', 200, 3);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', 'Galaxies with spiral arms and a central bulge.');
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical', 'Galaxies with an elliptical or spherical shape.');
INSERT INTO public.galaxy_types VALUES (3, 'Irregular', 'Galaxies with irregular or chaotic shapes.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth''s natural satellite', 4500, 384400, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars''s inner moon', 4500, 9378, true, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars''s outer moon', 4500, 23459, true, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiter''s volcanic moon', 4500, 421800, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter''s icy moon', 4500, 671034, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon of Jupiter', 4500, 1070400, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Jupiter''s heavily cratered moon', 4500, 1882700, true, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn''s largest moon', 4500, 1221860, true, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Saturn''s icy moon with geysers', 4500, 238037, true, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Saturn''s "Death Star" moon', 4500, 185539, true, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 'Neptune''s retrograde moon', 4500, 354800, true, 7);
INSERT INTO public.moon VALUES (12, 'Charon', 'Pluto''s largest moon', 4500, 19571, true, 8);
INSERT INTO public.moon VALUES (13, 'Phoebe', 'Saturn''s irregular-shaped moon', 4500, 12814877, true, 6);
INSERT INTO public.moon VALUES (14, 'Larissa', 'Neptune''s inner moon', 4500, 73548, true, 7);
INSERT INTO public.moon VALUES (15, 'Hyperion', 'Saturn''s sponge-like moon', 4500, 1481000, true, 6);
INSERT INTO public.moon VALUES (16, 'Oberon', 'Uranus''s outer moon', 4500, 584000, true, 9);
INSERT INTO public.moon VALUES (17, 'Rhea', 'Saturn''s second-largest moon', 4500, 527000, true, 6);
INSERT INTO public.moon VALUES (18, 'Iapetus', 'Saturn''s two-toned moon', 4500, 3561000, true, 6);
INSERT INTO public.moon VALUES (19, 'Miranda', 'Uranus''s smallest and innermost moon', 4500, 129780, true, 9);
INSERT INTO public.moon VALUES (20, 'Dione', 'Saturn''s fourth-largest moon', 4500, 377400, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Rocky planet, closest to the Sun', 4567, 0.000000030682, false, true, 1, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Hot, thick atmosphere', 4567, 0.000000013972, false, true, 1, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Blue planet with diverse ecosystems', 4567, 0.000000042637, true, true, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Red planet, potential for colonization', 4567, 0.000000064770, false, true, 1, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas giant, largest planet', 4567, 0.000000223009, false, false, 1, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Ringed gas giant', 4567, 0.000000410118, NULL, false, 1, 2);
INSERT INTO public.planet VALUES (7, 'Kepler-22b', 'Super-Earth, potentially habitable', NULL, NULL, false, true, 2, 1);
INSERT INTO public.planet VALUES (8, 'Proxima b', 'Rocky exoplanet in the habitable zone', NULL, NULL, false, true, 2, 1);
INSERT INTO public.planet VALUES (9, 'TRAPPIST-1e', 'Habitable-zone exoplanet with water', NULL, NULL, false, true, 2, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-62f', 'Super-Earth in the habitable zone', NULL, NULL, false, true, 3, 1);
INSERT INTO public.planet VALUES (11, 'Kepler-283c', 'Super-Earth in the habitable zone', NULL, NULL, false, true, 3, 1);
INSERT INTO public.planet VALUES (12, 'Kepler-442c', 'Super-Earth in the habitable zone', NULL, NULL, false, true, 3, 1);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Rocky planets with solid surfaces', 'Terrestrial');
INSERT INTO public.planet_types VALUES (2, 'Gas giants with thick atmospheres', 'Gas Giant');
INSERT INTO public.planet_types VALUES (3, 'Ice giants with icy compositions', 'Ice Giant');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'α Centauri C (Proxima Centauri)', 'Proxima Centauri c is a super-Earth or mini-Neptune exoplanet candidate that orbits the red dwarf star Proxima Centauri, which is the closest star to the Sun and part of a triple star system.', 4850, 4.2, true, 1);
INSERT INTO public.star VALUES (2, 'Tau Ceti', 'Tau Ceti, Latinized from τ Ceti, is a single star in the constellation Cetus that is spectrally similar to the Sun, although it has only about 78''%'' of the Sun''s mass. At a distance of just under 12 light-years (3.7 parsecs) from the Solar System, it is a relatively nearby star and the closest solitary G-class star.', 6000, 11.75, true, 1);
INSERT INTO public.star VALUES (3, 'Sigma Draconis', 'Sigma Draconis is a single star in the northern constellation of Draco. It has the proper name Alsafi /ælˈseɪfi/, while Sigma Draconis, which is latinised from σ Draconis and abbreviated Sig Dra or σ Dra, is the Bayer designation.', 3000, 18.8, false, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 'Sirius is the brightest star in the night sky. Its name is derived from the Greek word Σείριος (Latin script: Seirios), meaning lit. ''glowing'' or ''scorching''. The star is designated α Canis Majoris, Latinized to Alpha Canis Majoris, and abbreviated α CMa or Alpha CMa.', 233, 8.6, true, 1);
INSERT INTO public.star VALUES (5, 'Canopus', 'Canopus is the brightest star in the southern constellation of Carina and the second-brightest star in the night sky. It is also designated α Carinae, which is romanized (transliterated) to Alpha Carinae.', 27, 310, false, 1);
INSERT INTO public.star VALUES (6, 'Rigel', 'Rigel is a blue supergiant star in the constellation of Orion. It has the Bayer designation β Orionis, which is Latinized to Beta Orionis and abbreviated Beta Ori or β Ori. Rigel is the brightest and most massive component – and the eponym – of a star system of at least four stars that appear as a single blue-white point of light to the naked eye.', 9, 860, true, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 1, false);


--
-- Name: moon_moone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moone_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 3, true);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key1 UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet_types planet_types_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key1 UNIQUE (name);


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
-- Name: galaxy galaxy_galaxy_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_id_fkey FOREIGN KEY (planet_types_id) REFERENCES public.planet_types(planet_types_id);


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
