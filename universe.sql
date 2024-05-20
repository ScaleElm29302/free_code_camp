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
    name character varying(255) NOT NULL,
    total_solar_systems integer,
    description text,
    has_life boolean
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
    name character varying(255) NOT NULL,
    moon_id integer NOT NULL,
    habitiable boolean,
    has_life boolean,
    description text,
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
    name character varying(255) NOT NULL,
    planet_id integer NOT NULL,
    total_moons integer,
    description text,
    habitiable boolean,
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
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    name character varying(255) NOT NULL,
    solar_system_id integer NOT NULL,
    description text
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(255) NOT NULL,
    star_id integer NOT NULL,
    distance_to_earth numeric,
    description text,
    is_dying boolean,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1000000000, 'The Milky Way is the galaxy that contains our Solar System.', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1000000000, 'The Andromeda Galaxy is the nearest spiral galaxy to the Milky Way.', false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 50000000, 'The Triangulum Galaxy is a member of the Local Group of galaxies.', false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 200000000, 'The Whirlpool Galaxy is a spiral galaxy located in the constellation Canes Venatici.', false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 100000000, 'The Sombrero Galaxy is an unbarred spiral galaxy in the constellation Virgo.', false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 100000000, 'The Pinwheel Galaxy is a face-on spiral galaxy located in the constellation Ursa Major.', false);
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', 30000, 'The Large Magellanic Cloud is a satellite galaxy of the Milky Way.', false);
INSERT INTO public.galaxy VALUES (8, 'Small Magellanic Cloud', 7000, 'The Small Magellanic Cloud is a dwarf galaxy near the Milky Way.', false);
INSERT INTO public.galaxy VALUES (9, 'Centaurus A', 200000000, 'Centaurus A is a prominent galaxy in the constellation Centaurus.', false);
INSERT INTO public.galaxy VALUES (10, 'Messier 87', 100000000, 'Messier 87 is a supergiant elliptical galaxy in the constellation Virgo.', false);
INSERT INTO public.galaxy VALUES (11, 'NGC 1300', 100000000, 'NGC 1300 is a barred spiral galaxy located in the constellation Eridanus.', false);
INSERT INTO public.galaxy VALUES (12, 'Cartwheel', 50000000, 'The Cartwheel Galaxy is a lenticular galaxy and ring galaxy in the constellation Sculptor.', false);
INSERT INTO public.galaxy VALUES (13, 'NGC 1398', 100000000, 'NGC 1398 is a barred spiral galaxy in the constellation Fornax.', false);
INSERT INTO public.galaxy VALUES (14, 'IC 1101', 100000000, 'IC 1101 is a supergiant elliptical galaxy at the center of the Abell 2029 galaxy cluster.', false);
INSERT INTO public.galaxy VALUES (15, 'NGC 4414', 30000000, 'NGC 4414 is a flocculent spiral galaxy in the constellation Coma Berenices.', false);
INSERT INTO public.galaxy VALUES (16, 'NGC 6744', 25000000, 'NGC 6744 is an intermediate spiral galaxy about 30 million light-years away in the constellation Pavo.', false);
INSERT INTO public.galaxy VALUES (17, 'Hoag''s Object', 0, 'Hoag''s Object is a rare ring galaxy in the constellation Serpens.', false);
INSERT INTO public.galaxy VALUES (18, 'NGC 4676', 100000000, 'NGC 4676, also known as the Mice Galaxies, are a pair of interacting spiral galaxies in the constellation Coma Berenices.', false);
INSERT INTO public.galaxy VALUES (19, 'Messier 81', 25000000, 'Messier 81, also known as Bode''s Galaxy, is a spiral galaxy in the constellation Ursa Major.', false);
INSERT INTO public.galaxy VALUES (20, 'NGC 3031', 30000000, 'NGC 3031, also known as Bode''s Galaxy, is a spiral galaxy about 12 million light-years away.', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Luna', 1, true, true, 'Luna, also known as the Moon, is Earth’s only natural satellite.', 3);
INSERT INTO public.moon VALUES ('Phobos', 2, false, false, 'Phobos is the larger and closer of the two natural satellites of Mars.', 4);
INSERT INTO public.moon VALUES ('Deimos', 3, false, false, 'Deimos is the smaller and farther of Mars’s two natural satellites.', 4);
INSERT INTO public.moon VALUES ('Europa', 4, true, false, 'Europa is one of Jupiter’s moons and is believed to have a subsurface ocean.', 5);
INSERT INTO public.moon VALUES ('Ganymede', 5, true, false, 'Ganymede is the largest moon of Jupiter and the largest in the Solar System.', 5);
INSERT INTO public.moon VALUES ('Callisto', 6, false, false, 'Callisto is the second-largest moon of Jupiter and the third-largest moon in the Solar System.', 5);
INSERT INTO public.moon VALUES ('Io', 7, false, false, 'Io is the innermost of the four Galilean moons of Jupiter and the fourth-largest moon in the Solar System.', 5);
INSERT INTO public.moon VALUES ('Titan', 8, true, false, 'Titan is the largest moon of Saturn and the only moon known to have a dense atmosphere.', 6);
INSERT INTO public.moon VALUES ('Rhea', 9, false, false, 'Rhea is the second-largest moon of Saturn and the ninth-largest moon in the Solar System.', 6);
INSERT INTO public.moon VALUES ('Iapetus', 10, false, false, 'Iapetus is the third-largest moon of Saturn and has a distinctive two-tone coloration.', 6);
INSERT INTO public.moon VALUES ('Dione', 11, false, false, 'Dione is the fourth-largest moon of Saturn and is primarily composed of water ice.', 6);
INSERT INTO public.moon VALUES ('Tethys', 12, false, false, 'Tethys is the fifth-largest moon of Saturn and has a large impact crater called Odysseus.', 6);
INSERT INTO public.moon VALUES ('Enceladus', 13, true, false, 'Enceladus is the sixth-largest moon of Saturn and has geysers that expel water ice.', 6);
INSERT INTO public.moon VALUES ('Mimas', 14, false, false, 'Mimas is the seventh-largest moon of Saturn and has a large impact crater called Herschel.', 6);
INSERT INTO public.moon VALUES ('Oberon', 15, false, false, 'Oberon is the second-largest moon of Uranus and the ninth-largest moon in the Solar System.', 7);
INSERT INTO public.moon VALUES ('Titania', 16, false, false, 'Titania is the largest moon of Uranus and the eighth-largest moon in the Solar System.', 7);
INSERT INTO public.moon VALUES ('Umbriel', 17, false, false, 'Umbriel is the third-largest moon of Uranus and the thirteenth-largest moon in the Solar System.', 7);
INSERT INTO public.moon VALUES ('Ariel', 18, false, false, 'Ariel is the fourth-largest moon of Uranus and has the brightest and youngest surface of Uranus’s moons.', 7);
INSERT INTO public.moon VALUES ('Miranda', 19, false, false, 'Miranda is the smallest and innermost of Uranus’s five major moons.', 7);
INSERT INTO public.moon VALUES ('Triton', 20, true, false, 'Triton is the largest moon of Neptune and the only large moon in the Solar System with a retrograde orbit.', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 0, 'Mercury is the closest planet to the Sun and has no moons.', false, 1);
INSERT INTO public.planet VALUES ('Venus', 2, 0, 'Venus is the second planet from the Sun and has no moons.', false, 1);
INSERT INTO public.planet VALUES ('Earth', 3, 1, 'Earth is the third planet from the Sun and the only known planet to support life. It has one moon.', true, 1);
INSERT INTO public.planet VALUES ('Mars', 4, 2, 'Mars is the fourth planet from the Sun and has two moons.', false, 1);
INSERT INTO public.planet VALUES ('Jupiter', 5, 79, 'Jupiter is the fifth planet from the Sun and the largest in the Solar System. It has 79 moons.', false, 1);
INSERT INTO public.planet VALUES ('Saturn', 6, 83, 'Saturn is the sixth planet from the Sun and is known for its extensive ring system. It has 83 moons.', false, 1);
INSERT INTO public.planet VALUES ('Uranus', 7, 27, 'Uranus is the seventh planet from the Sun and has a ring system. It has 27 moons.', false, 1);
INSERT INTO public.planet VALUES ('Neptune', 8, 14, 'Neptune is the eighth planet from the Sun and has 14 moons.', false, 1);
INSERT INTO public.planet VALUES ('Pluto', 9, 5, 'Pluto is a dwarf planet in the Kuiper belt and has 5 moons.', false, 1);
INSERT INTO public.planet VALUES ('Proxima Centauri b', 15, 0, 'Proxima Centauri b is an exoplanet orbiting within the habitable zone of the red dwarf star Proxima Centauri.', true, 2);
INSERT INTO public.planet VALUES ('Kepler-452b', 10, 0, 'Kepler-452b is an exoplanet orbiting within the habitable zone of the Sun-like star Kepler-452.', true, 3);
INSERT INTO public.planet VALUES ('HD 209458 b', 11, 0, 'HD 209458 b, also known as Osiris, is an exoplanet known for being the first to be observed transiting its host star.', false, 4);
INSERT INTO public.planet VALUES ('Gliese 667 Cc', 12, 0, 'Gliese 667 Cc is an exoplanet located within the habitable zone of the star Gliese 667 C.', true, 5);
INSERT INTO public.planet VALUES ('55 Cancri e', 13, 0, '55 Cancri e is an exoplanet that is known for its extreme temperature and being a potential carbon planet.', false, 6);
INSERT INTO public.planet VALUES ('Tau Ceti e', 14, 0, 'Tau Ceti e is an exoplanet orbiting in the habitable zone of the star Tau Ceti.', true, 7);
INSERT INTO public.planet VALUES ('TRAPPIST-1e', 16, 0, 'TRAPPIST-1e is one of seven Earth-sized planets orbiting the ultracool dwarf star TRAPPIST-1.', true, 8);
INSERT INTO public.planet VALUES ('LHS 1140 b', 17, 0, 'LHS 1140 b is a rocky planet in the habitable zone of the red dwarf LHS 1140.', true, 9);
INSERT INTO public.planet VALUES ('K2-18b', 18, 0, 'K2-18b is an exoplanet that lies within the habitable zone of the red dwarf K2-18.', true, 10);
INSERT INTO public.planet VALUES ('Wolf 1061c', 19, 0, 'Wolf 1061c is an exoplanet orbiting within the habitable zone of the star Wolf 1061.', true, 11);
INSERT INTO public.planet VALUES ('Ross 128 b', 20, 0, 'Ross 128 b is an exoplanet orbiting the red dwarf Ross 128, located within the habitable zone.', true, 12);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES ('Solar System', 1, 'The Solar System is the gravitationally bound system of the Sun and the objects that orbit it, either directly or indirectly.');
INSERT INTO public.solar_system VALUES ('Alpha Centauri', 2, 'Alpha Centauri is the closest star system to the Solar System, consisting of three stars: Alpha Centauri A, Alpha Centauri B, and Proxima Centauri.');
INSERT INTO public.solar_system VALUES ('TRAPPIST-1', 3, 'TRAPPIST-1 is a star system in the constellation Aquarius, hosting seven Earth-sized planets, some of which are within the habitable zone.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 0.0000158, 'The Sun is the star at the center of the Solar System.', false, 1);
INSERT INTO public.star VALUES ('Proxima Centauri', 2, 4.24, 'Proxima Centauri is the closest known star to the Sun.', false, 1);
INSERT INTO public.star VALUES ('Betelgeuse', 3, 642.5, 'Betelgeuse is a red supergiant star in the constellation Orion.', true, 2);
INSERT INTO public.star VALUES ('Sirius', 4, 8.6, 'Sirius is the brightest star in the night sky.', false, 2);
INSERT INTO public.star VALUES ('Vega', 5, 25, 'Vega is the fifth-brightest star in the night sky.', false, 3);
INSERT INTO public.star VALUES ('Antares', 6, 550, 'Antares is the brightest star in the constellation Scorpius.', true, 3);
INSERT INTO public.star VALUES ('Altair', 7, 16.7, 'Altair is the brightest star in the constellation Aquila.', false, 1);
INSERT INTO public.star VALUES ('Aldebaran', 8, 65, 'Aldebaran is a red giant star in the constellation Taurus.', false, 1);
INSERT INTO public.star VALUES ('Polaris', 9, 323, 'Polaris, also known as the North Star, is the brightest star in the constellation Ursa Minor.', false, 1);
INSERT INTO public.star VALUES ('Rigel', 10, 860, 'Rigel is the brightest star in the constellation Orion.', true, 2);
INSERT INTO public.star VALUES ('Arcturus', 11, 36.7, 'Arcturus is the brightest star in the constellation Boötes.', false, 1);
INSERT INTO public.star VALUES ('Capella', 12, 42.9, 'Capella is the brightest star in the constellation Auriga.', false, 1);
INSERT INTO public.star VALUES ('Spica', 13, 250, 'Spica is the brightest star in the constellation Virgo.', false, 2);
INSERT INTO public.star VALUES ('Deneb', 14, 2600, 'Deneb is one of the brightest stars in the constellation Cygnus.', true, 2);
INSERT INTO public.star VALUES ('Canopus', 15, 310, 'Canopus is the second-brightest star in the night sky.', false, 3);
INSERT INTO public.star VALUES ('Procyon', 16, 11.5, 'Procyon is the brightest star in the constellation Canis Minor.', false, 1);
INSERT INTO public.star VALUES ('Alpha Centauri', 17, 4.37, 'Alpha Centauri is the closest star system to the Solar System.', false, 1);
INSERT INTO public.star VALUES ('Barnard''s Star', 18, 5.96, 'Barnard''s Star is a red dwarf about six light-years away from Earth in the constellation Ophiuchus.', false, 1);
INSERT INTO public.star VALUES ('Wolf 359', 19, 7.78, 'Wolf 359 is a red dwarf star located in the constellation Leo.', false, 1);
INSERT INTO public.star VALUES ('Luyten 726-8', 20, 8.73, 'Luyten 726-8 is a binary star system in the constellation Cetus.', false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: solar_system solar_system_solar_system_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_solar_system_id_key UNIQUE (solar_system_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

