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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    name character varying(30) NOT NULL,
    id integer
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    galaxy_id integer NOT NULL,
    is_spherical boolean,
    years numeric NOT NULL,
    distance integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    moon_id integer NOT NULL,
    planet_id integer,
    distance integer,
    years integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    planet_id integer NOT NULL,
    is_spherical boolean,
    star_id integer,
    id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    star_id integer NOT NULL,
    is_spherical boolean,
    galaxy_id integer,
    other_name text NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'A', NULL);
INSERT INTO public.description VALUES (2, 'B', NULL);
INSERT INTO public.description VALUES (3, 'C', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 1, NULL, 1000, NULL);
INSERT INTO public.galaxy VALUES ('pegaso', 2, NULL, 2000, NULL);
INSERT INTO public.galaxy VALUES (NULL, 3, NULL, 3000, NULL);
INSERT INTO public.galaxy VALUES (NULL, 4, NULL, 4000, NULL);
INSERT INTO public.galaxy VALUES (NULL, 5, NULL, 5000, NULL);
INSERT INTO public.galaxy VALUES (NULL, 6, NULL, 6000, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (NULL, 1, NULL, NULL, 10);
INSERT INTO public.moon VALUES (NULL, 2, NULL, NULL, 20);
INSERT INTO public.moon VALUES (NULL, 3, NULL, NULL, 30);
INSERT INTO public.moon VALUES (NULL, 4, NULL, NULL, 40);
INSERT INTO public.moon VALUES (NULL, 5, NULL, NULL, 50);
INSERT INTO public.moon VALUES (NULL, 6, NULL, NULL, 60);
INSERT INTO public.moon VALUES (NULL, 7, NULL, NULL, 70);
INSERT INTO public.moon VALUES (NULL, 8, NULL, NULL, 80);
INSERT INTO public.moon VALUES (NULL, 9, NULL, NULL, 90);
INSERT INTO public.moon VALUES (NULL, 10, NULL, NULL, 100);
INSERT INTO public.moon VALUES (NULL, 11, NULL, NULL, 110);
INSERT INTO public.moon VALUES (NULL, 12, NULL, NULL, 120);
INSERT INTO public.moon VALUES (NULL, 13, NULL, NULL, 130);
INSERT INTO public.moon VALUES (NULL, 14, NULL, NULL, 140);
INSERT INTO public.moon VALUES (NULL, 15, NULL, NULL, 150);
INSERT INTO public.moon VALUES (NULL, 16, NULL, NULL, 160);
INSERT INTO public.moon VALUES (NULL, 17, NULL, NULL, 170);
INSERT INTO public.moon VALUES (NULL, 18, NULL, NULL, 180);
INSERT INTO public.moon VALUES (NULL, 19, NULL, NULL, 190);
INSERT INTO public.moon VALUES (NULL, 29, NULL, NULL, 200);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (NULL, 1, NULL, NULL, 1);
INSERT INTO public.planet VALUES (NULL, 2, NULL, NULL, 2);
INSERT INTO public.planet VALUES (NULL, 3, NULL, NULL, 3);
INSERT INTO public.planet VALUES (NULL, 4, NULL, NULL, 4);
INSERT INTO public.planet VALUES (NULL, 5, NULL, NULL, 5);
INSERT INTO public.planet VALUES (NULL, 6, NULL, NULL, 6);
INSERT INTO public.planet VALUES (NULL, 7, NULL, NULL, 7);
INSERT INTO public.planet VALUES (NULL, 8, NULL, NULL, 8);
INSERT INTO public.planet VALUES (NULL, 9, NULL, NULL, 9);
INSERT INTO public.planet VALUES (NULL, 10, NULL, NULL, 10);
INSERT INTO public.planet VALUES (NULL, 11, NULL, NULL, 11);
INSERT INTO public.planet VALUES (NULL, 12, NULL, NULL, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (NULL, 1, NULL, 1, 'a');
INSERT INTO public.star VALUES (NULL, 2, NULL, NULL, 'b');
INSERT INTO public.star VALUES (NULL, 3, NULL, NULL, 'c');
INSERT INTO public.star VALUES (NULL, 4, NULL, NULL, 'd');
INSERT INTO public.star VALUES (NULL, 5, NULL, NULL, 'e');
INSERT INTO public.star VALUES (NULL, 6, NULL, NULL, 'f');


--
-- Name: description description_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_name_key UNIQUE (name);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_years_key UNIQUE (years);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_other_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_other_name_key UNIQUE (other_name);


--
-- Name: star star_other_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_other_name_key1 UNIQUE (other_name);


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

