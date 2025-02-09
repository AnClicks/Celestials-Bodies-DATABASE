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
-- Name: author; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.author (
    author_id character varying(30) NOT NULL,
    age integer NOT NULL,
    grade character varying(10),
    name character varying
);


ALTER TABLE public.author OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    color_no integer,
    size numeric NOT NULL,
    discription text,
    life boolean,
    human boolean,
    galaxy_no integer
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
    human boolean,
    water boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    star_id integer,
    water boolean,
    human boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    human boolean,
    water boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.author VALUES ('ANKIT', 20, 'A', NULL);
INSERT INTO public.author VALUES ('RAJ', 20, 'B', NULL);
INSERT INTO public.author VALUES ('NO', 20, 'CD', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'AA', 234, 33245, 'Very big', true, false, 10);
INSERT INTO public.galaxy VALUES (2, 'BB', 324, 123432, 'Small', false, true, 20);
INSERT INTO public.galaxy VALUES (3, 'BB', 324, 123432, 'Small', false, true, 30);
INSERT INTO public.galaxy VALUES (4, 'BB', 324, 123432, 'Small', false, true, 40);
INSERT INTO public.galaxy VALUES (5, 'BB', 324, 123432, 'Small', false, true, 50);
INSERT INTO public.galaxy VALUES (6, 'BB', 324, 123432, 'Small', false, true, 60);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'CC', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'DD', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'EE', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'FF', 5, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'FF', 6, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'FF', 8, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'FF', 9, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'FF', 10, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'FF', 11, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'FF', 12, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'FF', 13, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'FF', 4, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'FF', 5, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'FF', 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'FF', 8, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'FF', 9, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'FF', 10, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'FF', 11, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'FF', 12, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'FF', 13, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'CC', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'DD', 2, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'EE', 3, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'FF', 4, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'FF', 5, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'FF', 6, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'FF', 1, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'FF', 2, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'FF', 3, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'FF', 4, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'FF', 5, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'FF', 6, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'BB', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'CC', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'DD', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'EE', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'FF', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'GG', 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: author author_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (author_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: author grade; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT grade UNIQUE (grade);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


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

