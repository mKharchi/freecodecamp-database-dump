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
    description character varying(50),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types character varying(30),
    galaxy_types character varying(30),
    distance_from_earth integer NOT NULL,
    moon_name text NOT NULL,
    planet_name text NOT NULL,
    star_name text NOT NULL,
    name character varying(50),
    galaxy_name character varying(50),
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: galaxy_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_star_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_star_id_seq OWNED BY public.galaxy.star_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    description character varying(50),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types character varying(30),
    galaxy_types character varying(30),
    distance_from_earth integer,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(50)
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: moreinfor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moreinfor (
    lala text,
    lalaa integer NOT NULL,
    aaa integer NOT NULL,
    moreinfor_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.moreinfor OWNER TO freecodecamp;

--
-- Name: moreinfor_aaa_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moreinfor_aaa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moreinfor_aaa_seq OWNER TO freecodecamp;

--
-- Name: moreinfor_aaa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moreinfor_aaa_seq OWNED BY public.moreinfor.aaa;


--
-- Name: moreinfor_lalaa_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moreinfor_lalaa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moreinfor_lalaa_seq OWNER TO freecodecamp;

--
-- Name: moreinfor_lalaa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moreinfor_lalaa_seq OWNED BY public.moreinfor.lalaa;


--
-- Name: moreinfor_moreinfor_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moreinfor_moreinfor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moreinfor_moreinfor_id_seq OWNER TO freecodecamp;

--
-- Name: moreinfor_moreinfor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moreinfor_moreinfor_id_seq OWNED BY public.moreinfor.moreinfor_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    description character varying(50),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types character varying(30),
    galaxy_types character varying(30),
    distance_from_earth integer,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(50)
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    description character varying(50),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types character varying(30),
    galaxy_types character varying(30),
    distance_from_earth integer,
    starid_id integer NOT NULL,
    name character varying(50),
    galaxy_name character varying(50),
    star_id integer NOT NULL,
    glaxy_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_glaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_glaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_glaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_glaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_glaxy_id_seq OWNED BY public.star.glaxy_id;


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
-- Name: star_starid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_starid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_starid_id_seq OWNER TO freecodecamp;

--
-- Name: star_starid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_starid_id_seq OWNED BY public.star.starid_id;


--
-- Name: galaxy star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN star_id SET DEFAULT nextval('public.galaxy_star_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: moreinfor lalaa; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moreinfor ALTER COLUMN lalaa SET DEFAULT nextval('public.moreinfor_lalaa_seq'::regclass);


--
-- Name: moreinfor aaa; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moreinfor ALTER COLUMN aaa SET DEFAULT nextval('public.moreinfor_aaa_seq'::regclass);


--
-- Name: moreinfor moreinfor_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moreinfor ALTER COLUMN moreinfor_id SET DEFAULT nextval('public.moreinfor_moreinfor_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star starid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN starid_id SET DEFAULT nextval('public.star_starid_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star glaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN glaxy_id SET DEFAULT nextval('public.star_glaxy_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('it is cool', true, NULL, 5, 'one', 'one', 123, 'moon', 'earth', 'ah', NULL, NULL, 1, 1);
INSERT INTO public.galaxy VALUES ('it is cool too ', true, NULL, 5, 'one', 'one', 1234, 'moon1', 'earth1', 'ah1', NULL, NULL, 2, 2);
INSERT INTO public.galaxy VALUES ('it is cool too too ', true, NULL, 5, 'two', 'two', 12345, 'moon2', 'earth2', 'ah2', NULL, NULL, 3, 3);
INSERT INTO public.galaxy VALUES ('it is coooool ', true, NULL, 5, 'three', 'three', 123456789, 'moon3', 'earth3', 'ah3', NULL, NULL, 4, 4);
INSERT INTO public.galaxy VALUES ('it is scoooool ', true, NULL, 5, 'four', 'four', 123456789, 'moon4', 'earth4', 'ah4', NULL, NULL, 5, 5);
INSERT INTO public.galaxy VALUES ('it is ascoooool ', true, NULL, 5, 'five', 'five', 123456789, 'moon5', 'earth5', 'ah5', NULL, NULL, 6, 6);
INSERT INTO public.galaxy VALUES ('it is zascoooool ', true, NULL, 5, 'six', 'six', 123456789, 'moon6', 'earth6', 'ah6', NULL, NULL, 7, 7);
INSERT INTO public.galaxy VALUES ('haha', NULL, NULL, NULL, NULL, NULL, 5, 'balal', 'eee', 'aaadsd', NULL, NULL, 8, 8);
INSERT INTO public.galaxy VALUES ('haha', NULL, NULL, NULL, NULL, NULL, 5, 'balaal', 'eeae', 'aaaadsd', NULL, NULL, 9, 9);
INSERT INTO public.galaxy VALUES ('haha', NULL, NULL, NULL, NULL, NULL, 5, 'alaal', 'eae', 'aaad', NULL, NULL, 10, 10);
INSERT INTO public.galaxy VALUES ('haha', NULL, NULL, NULL, NULL, NULL, 5, 'asdokjbdflaal', 'eskjbdsae', 'ajhsbdaad', NULL, NULL, 11, 11);
INSERT INTO public.galaxy VALUES ('haha', NULL, NULL, NULL, NULL, NULL, 5, 'sdokjbdflaal', 'skjbdsae', 'jhsbdaad', NULL, NULL, 12, 12);
INSERT INTO public.galaxy VALUES ('haha', NULL, NULL, NULL, NULL, NULL, 5, 'sokjbdflaal', 'kjbdsae', 'hsbdaad', NULL, NULL, 13, 13);
INSERT INTO public.galaxy VALUES ('haha', NULL, NULL, NULL, NULL, NULL, 5, 'okjbdflaal', 'jbdsae', 'sbdaad', NULL, NULL, 14, 14);
INSERT INTO public.galaxy VALUES ('haha', NULL, NULL, NULL, NULL, NULL, 5, 'nsdkjbfdokjbdflaal', 'jbdsaekdbs', 'sdaadzdkjn', NULL, NULL, 15, 15);
INSERT INTO public.galaxy VALUES ('haha', NULL, NULL, NULL, NULL, NULL, 5, 'nsdkjbfdokjbdflal', 'bdsaekdbs', 'sdaadzdkj', NULL, NULL, 16, 16);
INSERT INTO public.galaxy VALUES ('haha', NULL, NULL, NULL, NULL, NULL, 5, 'sdkjbfdokjbdflal', 'dsaekdbs', 'sdaadzdk', NULL, NULL, 17, 17);
INSERT INTO public.galaxy VALUES ('haha', NULL, NULL, NULL, NULL, NULL, 5, 'dkjbfdokjbdflal', 'saekdbs', 'sdaadzd', NULL, NULL, 18, 18);
INSERT INTO public.galaxy VALUES ('haha', NULL, NULL, NULL, NULL, NULL, 5, 'dkjbfdokjbdfll', 'aekdbs', 'daadzd', NULL, NULL, 19, 19);
INSERT INTO public.galaxy VALUES ('haha', NULL, NULL, NULL, NULL, NULL, 5, 'dkjbfdokjbdfl', 'aekds', 'dadzd', NULL, NULL, 20, 20);
INSERT INTO public.galaxy VALUES ('haha', NULL, NULL, NULL, NULL, NULL, 5, 'dkjbfdokjdfl', 'aeks', 'dadd', NULL, NULL, 21, 21);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('it is cool', false, true, NULL, NULL, NULL, 123, 1, 1, NULL);
INSERT INTO public.moon VALUES ('it is cool', false, true, NULL, NULL, NULL, 123, 2, 2, NULL);
INSERT INTO public.moon VALUES ('it is cool', false, true, NULL, NULL, NULL, 123, 3, 3, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 4, 'earth2');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 5, 'earth3');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 6, 'earth4');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 7, 'earth5');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 8, 'earth6');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 9, 'earth7');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 10, 'earth8');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 11, 'earth9');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 12, 'earth10');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 13, 'earth11');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 14, 'earth1');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 15, 'eath1');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 16, 'eth1');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 17, 'th1');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 18, 'h1');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 19, '1');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 20, 'a1');


--
-- Data for Name: moreinfor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moreinfor VALUES (NULL, 1, 1, 1, NULL);
INSERT INTO public.moreinfor VALUES (NULL, 2, 2, 2, NULL);
INSERT INTO public.moreinfor VALUES (NULL, 3, 3, 3, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('it is cool', false, true, NULL, NULL, NULL, 0, 1, 1, NULL);
INSERT INTO public.planet VALUES ('it is cool', false, true, NULL, NULL, NULL, 0, 2, 2, NULL);
INSERT INTO public.planet VALUES ('it is cool', false, true, NULL, NULL, NULL, 0, 3, 3, NULL);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 5, 'earth');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 6, 'earth1');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 7, 'earth3');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 8, 'earth4');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 9, 'earth5');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 10, 'earth10');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 11, 'earth177');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 12, 'earth178');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 13, 'earth78');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 14, 'earth79');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 15, 'earth791');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 16, 'arth79');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 17, 'rth79');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 18, 'th79');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 19, 'h79');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 20, '79');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 21, '9');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('it is cool', false, true, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, 1, 1);
INSERT INTO public.star VALUES ('it is cool', false, true, NULL, NULL, NULL, 0, 2, NULL, NULL, 2, 2, 2);
INSERT INTO public.star VALUES ('it is cool', false, true, NULL, NULL, NULL, 0, 3, NULL, NULL, 3, 3, 3);
INSERT INTO public.star VALUES ('it is coooool ', true, NULL, 5, 'three', 'three', 123456789, 4, NULL, NULL, 4, 4, 4);
INSERT INTO public.star VALUES ('it is coooool ', true, NULL, 5, 'three', 'three', 123456789, 5, NULL, NULL, 5, 5, 5);
INSERT INTO public.star VALUES ('it is coooool ', true, NULL, 5, 'three', 'three', 123456789, 6, NULL, NULL, 6, 6, 6);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'earth2', NULL, 7, 7, 7);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'star3', NULL, 8, 8, 8);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'star4', NULL, 9, 9, 9);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 'star5', NULL, 10, 10, 10);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 'star6', NULL, 11, 11, 11);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 'star8', NULL, 12, 12, 12);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 'star9', NULL, 13, 13, 13);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 'earth246465', NULL, 14, 14, 14);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 'arth246465', NULL, 15, 15, 15);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 'rth246465', NULL, 16, 16, 16);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 'th246465', NULL, 17, 17, 17);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 't246465', NULL, 18, 18, 18);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '246465', NULL, 19, 19, 19);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, '46465', NULL, 20, 20, 20);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, '6465', NULL, 21, 21, 21);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, true);


--
-- Name: galaxy_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_star_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 3, true);


--
-- Name: moreinfor_aaa_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moreinfor_aaa_seq', 3, true);


--
-- Name: moreinfor_lalaa_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moreinfor_lalaa_seq', 3, true);


--
-- Name: moreinfor_moreinfor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moreinfor_moreinfor_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 7, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 21, true);


--
-- Name: star_glaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_glaxy_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 21, true);


--
-- Name: star_starid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_starid_id_seq', 25, true);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_moon_name_key UNIQUE (moon_name);


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
-- Name: galaxy galaxy_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_planet_name_key UNIQUE (planet_name);


--
-- Name: galaxy galaxy_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_key UNIQUE (star_id);


--
-- Name: galaxy galaxy_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_name_key UNIQUE (star_name);


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
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


--
-- Name: moreinfor moreinfor_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moreinfor
    ADD CONSTRAINT moreinfor_name_key UNIQUE (name);


--
-- Name: moreinfor moreinfor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moreinfor
    ADD CONSTRAINT moreinfor_pkey PRIMARY KEY (moreinfor_id);


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
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: star star_glaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_glaxy_id_key UNIQUE (glaxy_id);


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
-- Name: star star_starid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_starid_id_key UNIQUE (starid_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

