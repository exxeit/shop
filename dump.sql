--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

-- Started on 2023-05-09 01:54:00

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

DROP DATABASE "ONline_store";
--
-- TOC entry 3468 (class 1262 OID 16544)
-- Name: ONline_store; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "ONline_store" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';


ALTER DATABASE "ONline_store" OWNER TO postgres;

\connect "ONline_store"

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
-- TOC entry 220 (class 1259 OID 16610)
-- Name: basket_devices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket_devices (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "basketId" integer,
    "deviceId" integer
);


ALTER TABLE public.basket_devices OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16609)
-- Name: basket_devices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basket_devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basket_devices_id_seq OWNER TO postgres;

--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 219
-- Name: basket_devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.basket_devices_id_seq OWNED BY public.basket_devices.id;


--
-- TOC entry 230 (class 1259 OID 16719)
-- Name: basket_programs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket_programs (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "basketId" integer,
    "programId" integer
);


ALTER TABLE public.basket_programs OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16718)
-- Name: basket_programs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basket_programs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basket_programs_id_seq OWNER TO postgres;

--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 229
-- Name: basket_programs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.basket_programs_id_seq OWNED BY public.basket_programs.id;


--
-- TOC entry 212 (class 1259 OID 16558)
-- Name: baskets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baskets (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);


ALTER TABLE public.baskets OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16557)
-- Name: baskets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.baskets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.baskets_id_seq OWNER TO postgres;

--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 211
-- Name: baskets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.baskets_id_seq OWNED BY public.baskets.id;


--
-- TOC entry 216 (class 1259 OID 16579)
-- Name: brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.brands OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16578)
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brands_id_seq OWNER TO postgres;

--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 215
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;


--
-- TOC entry 234 (class 1259 OID 16772)
-- Name: device_infos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.device_infos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deviceId" integer
);


ALTER TABLE public.device_infos OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16771)
-- Name: device_infos_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.device_infos_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.device_infos_id_seq1 OWNER TO postgres;

--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 233
-- Name: device_infos_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.device_infos_id_seq1 OWNED BY public.device_infos.id;


--
-- TOC entry 232 (class 1259 OID 16750)
-- Name: devices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.devices (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    rating integer DEFAULT 0,
    img character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);


ALTER TABLE public.devices OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16588)
-- Name: programms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.programms (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    rating integer DEFAULT 0,
    img character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);


ALTER TABLE public.programms OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16587)
-- Name: devices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.devices_id_seq OWNER TO postgres;

--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 217
-- Name: devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.devices_id_seq OWNED BY public.programms.id;


--
-- TOC entry 231 (class 1259 OID 16749)
-- Name: devices_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.devices_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.devices_id_seq1 OWNER TO postgres;

--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 231
-- Name: devices_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.devices_id_seq1 OWNED BY public.devices.id;


--
-- TOC entry 226 (class 1259 OID 16684)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    price integer DEFAULT 0,
    email character varying(255),
    product_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16683)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO postgres;

--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 225
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- TOC entry 228 (class 1259 OID 16697)
-- Name: programs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.programs (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    rating integer DEFAULT 0,
    img character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);


ALTER TABLE public.programs OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16696)
-- Name: programs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.programs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.programs_id_seq OWNER TO postgres;

--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 227
-- Name: programs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.programs_id_seq OWNED BY public.programs.id;


--
-- TOC entry 222 (class 1259 OID 16627)
-- Name: ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings (
    id integer NOT NULL,
    rate integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer,
    "deviceId" integer
);


ALTER TABLE public.ratings OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16626)
-- Name: ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ratings_id_seq OWNER TO postgres;

--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 221
-- Name: ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;


--
-- TOC entry 224 (class 1259 OID 16658)
-- Name: type_brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type_brands (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);


ALTER TABLE public.type_brands OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16657)
-- Name: type_brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.type_brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.type_brands_id_seq OWNER TO postgres;

--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 223
-- Name: type_brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.type_brands_id_seq OWNED BY public.type_brands.id;


--
-- TOC entry 214 (class 1259 OID 16570)
-- Name: types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.types OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16569)
-- Name: types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_id_seq OWNER TO postgres;

--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 213
-- Name: types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;


--
-- TOC entry 210 (class 1259 OID 16546)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16545)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3231 (class 2604 OID 16613)
-- Name: basket_devices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_devices ALTER COLUMN id SET DEFAULT nextval('public.basket_devices_id_seq'::regclass);


--
-- TOC entry 3238 (class 2604 OID 16722)
-- Name: basket_programs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_programs ALTER COLUMN id SET DEFAULT nextval('public.basket_programs_id_seq'::regclass);


--
-- TOC entry 3226 (class 2604 OID 16561)
-- Name: baskets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets ALTER COLUMN id SET DEFAULT nextval('public.baskets_id_seq'::regclass);


--
-- TOC entry 3228 (class 2604 OID 16582)
-- Name: brands id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);


--
-- TOC entry 3241 (class 2604 OID 16775)
-- Name: device_infos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device_infos ALTER COLUMN id SET DEFAULT nextval('public.device_infos_id_seq1'::regclass);


--
-- TOC entry 3239 (class 2604 OID 16753)
-- Name: devices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq1'::regclass);


--
-- TOC entry 3234 (class 2604 OID 16687)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 3229 (class 2604 OID 16591)
-- Name: programms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programms ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq'::regclass);


--
-- TOC entry 3236 (class 2604 OID 16700)
-- Name: programs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programs ALTER COLUMN id SET DEFAULT nextval('public.programs_id_seq'::regclass);


--
-- TOC entry 3232 (class 2604 OID 16630)
-- Name: ratings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);


--
-- TOC entry 3233 (class 2604 OID 16661)
-- Name: type_brands id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands ALTER COLUMN id SET DEFAULT nextval('public.type_brands_id_seq'::regclass);


--
-- TOC entry 3227 (class 2604 OID 16573)
-- Name: types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);


--
-- TOC entry 3224 (class 2604 OID 16549)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3448 (class 0 OID 16610)
-- Dependencies: 220
-- Data for Name: basket_devices; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3458 (class 0 OID 16719)
-- Dependencies: 230
-- Data for Name: basket_programs; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3440 (class 0 OID 16558)
-- Dependencies: 212
-- Data for Name: baskets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.baskets (id, "createdAt", "updatedAt", "userId") VALUES (6, '2021-11-02 14:11:53.032+03', '2021-11-02 14:11:53.032+03', 6);
INSERT INTO public.baskets (id, "createdAt", "updatedAt", "userId") VALUES (1, '2021-11-01 12:08:36.268+03', '2021-11-01 12:08:36.268+03', NULL);
INSERT INTO public.baskets (id, "createdAt", "updatedAt", "userId") VALUES (2, '2021-11-01 12:35:47.393+03', '2021-11-01 12:35:47.393+03', NULL);
INSERT INTO public.baskets (id, "createdAt", "updatedAt", "userId") VALUES (3, '2021-11-01 12:36:59.392+03', '2021-11-01 12:36:59.392+03', NULL);
INSERT INTO public.baskets (id, "createdAt", "updatedAt", "userId") VALUES (4, '2021-11-02 09:19:23.757+03', '2021-11-02 09:19:23.757+03', NULL);
INSERT INTO public.baskets (id, "createdAt", "updatedAt", "userId") VALUES (5, '2021-11-02 09:29:28.14+03', '2021-11-02 09:29:28.14+03', NULL);
INSERT INTO public.baskets (id, "createdAt", "updatedAt", "userId") VALUES (7, '2021-11-02 14:30:47.284+03', '2021-11-02 14:30:47.284+03', NULL);
INSERT INTO public.baskets (id, "createdAt", "updatedAt", "userId") VALUES (11, '2022-10-17 10:51:48.901+03', '2022-10-17 10:51:48.901+03', 11);
INSERT INTO public.baskets (id, "createdAt", "updatedAt", "userId") VALUES (8, '2021-11-03 00:55:38.965+03', '2021-11-03 00:55:38.965+03', NULL);
INSERT INTO public.baskets (id, "createdAt", "updatedAt", "userId") VALUES (9, '2021-11-03 09:29:19.002+03', '2021-11-03 09:29:19.002+03', NULL);
INSERT INTO public.baskets (id, "createdAt", "updatedAt", "userId") VALUES (10, '2021-11-03 12:54:56.861+03', '2021-11-03 12:54:56.861+03', NULL);


--
-- TOC entry 3444 (class 0 OID 16579)
-- Dependencies: 216
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (49, 'Красный', '2023-04-29 01:41:43.413+03', '2023-04-29 01:41:43.413+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (50, 'Чёрный', '2023-04-29 01:41:47.126+03', '2023-04-29 01:41:47.126+03');
INSERT INTO public.brands (id, name, "createdAt", "updatedAt") VALUES (51, 'Белый', '2023-04-29 01:41:50.565+03', '2023-04-29 01:41:50.565+03');


--
-- TOC entry 3462 (class 0 OID 16772)
-- Dependencies: 234
-- Data for Name: device_infos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (251, 'Материал', 'натуральная кожа', '2023-04-29 02:01:42.66+03', '2023-04-29 02:01:42.66+03', 50);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (252, 'Назначение', 'для неё', '2023-04-29 02:01:42.66+03', '2023-04-29 02:01:42.66+03', 50);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (253, 'Тип', 'кошелёк', '2023-04-29 02:01:42.66+03', '2023-04-29 02:01:42.66+03', 50);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (254, 'Цвет', 'красный', '2023-04-29 02:01:42.66+03', '2023-04-29 02:01:42.66+03', 50);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (255, 'Полное наименование', 'кошелек сувенирный (натуральная кожа) с художественной вставкой', '2023-04-29 02:01:42.66+03', '2023-04-29 02:01:42.66+03', 50);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (256, 'Вес', '95 г', '2023-04-29 02:01:42.66+03', '2023-04-29 02:01:42.66+03', 50);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (257, 'Размер', '121*95*23 мм', '2023-04-29 02:01:42.66+03', '2023-04-29 02:01:42.66+03', 50);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (15, 'Лицензия', 'Бесплатная', '2022-11-16 01:42:51.021+03', '2022-11-16 01:42:51.021+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (16, 'Версия', '1.72.1', '2022-11-16 01:42:51.021+03', '2022-11-16 01:42:51.021+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (17, 'ОС', 'Windows 11, 10, 8, 8.1', '2022-11-16 01:42:51.021+03', '2022-11-16 01:42:51.021+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (18, 'Разработчик', 'Microsoft Corporation', '2022-11-16 01:42:51.021+03', '2022-11-16 01:42:51.021+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (19, 'Категории', 'Редакторы кода', '2022-11-16 01:42:51.021+03', '2022-11-16 01:42:51.021+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (20, 'Размер', '78 Мб', '2022-11-16 01:42:51.021+03', '2022-11-16 01:42:51.021+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (258, 'Коллекция', 'Геометрия', '2023-04-29 02:18:08.414+03', '2023-04-29 02:18:08.414+03', 51);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (259, 'Материал', 'натуральная кожа', '2023-04-29 02:18:08.414+03', '2023-04-29 02:18:08.414+03', 51);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (260, 'Назначение', 'для него, для неё', '2023-04-29 02:18:08.414+03', '2023-04-29 02:18:08.414+03', 51);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (261, 'Тип', 'кошелёк', '2023-04-29 02:18:08.414+03', '2023-04-29 02:18:08.414+03', 51);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (262, 'Цвет', 'чёрный', '2023-04-29 02:18:08.414+03', '2023-04-29 02:18:08.414+03', 51);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (263, 'Полное наименование', 'кошелек сувенирный (натуральная кожа) с художественной вставкой', '2023-04-29 02:18:08.414+03', '2023-04-29 02:18:08.414+03', 51);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (264, 'Вес', '95 г', '2023-04-29 02:18:08.414+03', '2023-04-29 02:18:08.414+03', 51);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (265, 'Размер', '121*95*23 мм', '2023-04-29 02:18:08.414+03', '2023-04-29 02:18:08.414+03', 51);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (129, 'Лицензия', 'Демо-версия | Ограничение 30 дней', '2022-11-16 03:25:18.225+03', '2022-11-16 03:25:18.225+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (130, 'Версия', '9.1.2', '2022-11-16 03:25:18.225+03', '2022-11-16 03:25:18.225+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (131, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:25:18.225+03', '2022-11-16 03:25:18.225+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (132, 'Интерфейс', 'Русский', '2022-11-16 03:25:18.225+03', '2022-11-16 03:25:18.225+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (133, 'Категория', 'Видео редакторы', '2022-11-16 03:25:18.225+03', '2022-11-16 03:25:18.225+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (134, 'Размер', '3 Гб', '2022-11-16 03:25:18.225+03', '2022-11-16 03:25:18.225+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (141, 'Лицензия', 'Демо-версия | Ограничение 30 дней', '2022-11-16 03:27:14.135+03', '2022-11-16 03:27:14.135+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (142, 'Версия', '17.1.2', '2022-11-16 03:27:14.135+03', '2022-11-16 03:27:14.135+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (143, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:27:14.135+03', '2022-11-16 03:27:14.135+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (144, 'Интерфейс', 'Русский', '2022-11-16 03:27:14.135+03', '2022-11-16 03:27:14.135+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (145, 'Категория', 'Видео редакторы', '2022-11-16 03:27:14.135+03', '2022-11-16 03:27:14.135+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (146, 'Размер', '3 Гб', '2022-11-16 03:27:14.135+03', '2022-11-16 03:27:14.135+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (123, 'Лицензия', 'Демо-версия | Ограничение 30 дней', '2022-11-16 03:22:20.636+03', '2022-11-16 03:22:20.636+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (124, 'Версия', '22.1.2', '2022-11-16 03:22:20.636+03', '2022-11-16 03:22:20.636+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (125, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:22:20.636+03', '2022-11-16 03:22:20.636+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (126, 'Интерфейс', 'Русский', '2022-11-16 03:22:20.636+03', '2022-11-16 03:22:20.636+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (127, 'Категория', 'Почта', '2022-11-16 03:22:20.636+03', '2022-11-16 03:22:20.636+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (128, 'Размер', '10 Мб', '2022-11-16 03:22:20.636+03', '2022-11-16 03:22:20.636+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (98, 'Размер', '350 Мб', '2022-11-16 02:56:17.321+03', '2022-11-16 02:56:17.321+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (99, 'Лицензия', 'Платная. Демо-версия', '2022-11-16 02:57:04.338+03', '2022-11-16 02:57:04.338+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (100, 'Ограничение', '30 дней', '2022-11-16 02:57:04.338+03', '2022-11-16 02:57:04.338+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (101, 'Версия', '2020.3.1', '2022-11-16 02:57:04.338+03', '2022-11-16 02:57:04.338+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (102, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 02:57:04.338+03', '2022-11-16 02:57:04.338+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (103, 'Категория', 'Редакторы кода', '2022-11-16 02:57:04.338+03', '2022-11-16 02:57:04.338+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (104, 'Размер', '500 Мб', '2022-11-16 02:57:04.338+03', '2022-11-16 02:57:04.338+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (105, 'Лицензия', 'Платная. Демо-версия', '2022-11-16 02:57:59.35+03', '2022-11-16 02:57:59.35+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (106, 'Ограничение', '30 дней', '2022-11-16 02:57:59.35+03', '2022-11-16 02:57:59.35+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (107, 'Версия', '2021.3.1', '2022-11-16 02:57:59.35+03', '2022-11-16 02:57:59.35+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (108, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 02:57:59.35+03', '2022-11-16 02:57:59.35+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (109, 'Категория', 'Редакторы кода', '2022-11-16 02:57:59.35+03', '2022-11-16 02:57:59.35+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (110, 'Размер', '500 Мб', '2022-11-16 02:57:59.351+03', '2022-11-16 02:57:59.351+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (111, 'Лицензия', 'бесплатная', '2022-11-16 03:07:55.03+03', '2022-11-16 03:07:55.03+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (112, 'Версия', '22.7.2', '2022-11-16 03:07:55.03+03', '2022-11-16 03:07:55.03+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (113, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:07:55.03+03', '2022-11-16 03:07:55.03+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (114, 'Интерфейс', 'Русский', '2022-11-16 03:07:55.03+03', '2022-11-16 03:07:55.03+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (115, 'Категория', 'Браузеры', '2022-11-16 03:07:55.03+03', '2022-11-16 03:07:55.03+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (116, 'Размер', '5 Мб', '2022-11-16 03:07:55.03+03', '2022-11-16 03:07:55.03+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (266, 'хар-ка', 'бла бла', '2023-04-29 09:59:37.931+03', '2023-04-29 09:59:37.931+03', 52);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (267, 'хар-ка 2', 'блабла2', '2023-04-29 09:59:37.931+03', '2023-04-29 09:59:37.931+03', 52);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (211, 'Лицензия', 'Платная', '2022-11-16 04:50:14.841+03', '2022-11-16 04:50:14.841+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (212, 'Версия', '10.4', '2022-11-16 04:50:14.841+03', '2022-11-16 04:50:14.841+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (213, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:50:14.841+03', '2022-11-16 04:50:14.841+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (214, 'Категория', 'Графический редактор', '2022-11-16 04:50:14.841+03', '2022-11-16 04:50:14.841+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (215, 'Размер', '2 Гб', '2022-11-16 04:50:14.841+03', '2022-11-16 04:50:14.841+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (167, 'Версия', '15.1', '2022-11-16 04:13:39.85+03', '2022-11-16 04:13:39.85+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (168, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:13:39.85+03', '2022-11-16 04:13:39.85+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (169, 'Интерфейс', 'Английский', '2022-11-16 04:13:39.85+03', '2022-11-16 04:13:39.85+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (170, 'Категории', 'Антивирусные программы', '2022-11-16 04:13:39.851+03', '2022-11-16 04:13:39.851+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (171, 'Размер', '1 Мб', '2022-11-16 04:13:39.851+03', '2022-11-16 04:13:39.851+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (69, 'Лицензия', 'Платная. Демо-версия', '2022-11-16 02:39:06.564+03', '2022-11-16 02:39:06.564+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (70, 'Ограничение', '30 дней', '2022-11-16 02:39:06.564+03', '2022-11-16 02:39:06.564+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (71, 'Версия', '9.7.5', '2022-11-16 02:39:06.564+03', '2022-11-16 02:39:06.564+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (72, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 02:39:06.564+03', '2022-11-16 02:39:06.564+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (73, 'Категория', 'Аудио редакторы', '2022-11-16 02:39:06.564+03', '2022-11-16 02:39:06.564+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (74, 'Размер', '2.6 Гб', '2022-11-16 02:39:06.564+03', '2022-11-16 02:39:06.564+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (75, 'Лицензия', 'Платная. Демо-версия', '2022-11-16 02:53:27.676+03', '2022-11-16 02:53:27.676+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (76, 'Ограничение', '30 дней', '2022-11-16 02:53:27.676+03', '2022-11-16 02:53:27.676+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (77, 'Версия', '2021.2.1', '2022-11-16 02:53:27.676+03', '2022-11-16 02:53:27.676+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (78, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 02:53:27.677+03', '2022-11-16 02:53:27.677+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (79, 'Категория', 'Редакторы кода', '2022-11-16 02:53:27.677+03', '2022-11-16 02:53:27.677+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (80, 'Размер', '415 Мб', '2022-11-16 02:53:27.677+03', '2022-11-16 02:53:27.677+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (81, 'Лицензия', 'Платная. Демо-версия', '2022-11-16 02:54:33.741+03', '2022-11-16 02:54:33.741+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (82, 'Ограничение', '30 дней', '2022-11-16 02:54:33.741+03', '2022-11-16 02:54:33.741+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (83, 'Версия', '2020.3.1', '2022-11-16 02:54:33.741+03', '2022-11-16 02:54:33.741+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (84, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 02:54:33.741+03', '2022-11-16 02:54:33.741+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (85, 'Категория', 'Редакторы кода', '2022-11-16 02:54:33.741+03', '2022-11-16 02:54:33.741+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (86, 'Размер', '400 Мб', '2022-11-16 02:54:33.741+03', '2022-11-16 02:54:33.741+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (87, 'Лицензия', 'Платная. Демо-версия', '2022-11-16 02:55:20.924+03', '2022-11-16 02:55:20.924+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (88, 'Ограничение', '30 дней', '2022-11-16 02:55:20.924+03', '2022-11-16 02:55:20.924+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (89, 'Версия', '2020.3.1', '2022-11-16 02:55:20.924+03', '2022-11-16 02:55:20.924+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (90, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 02:55:20.924+03', '2022-11-16 02:55:20.924+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (91, 'Категория', 'Редакторы кода', '2022-11-16 02:55:20.924+03', '2022-11-16 02:55:20.924+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (92, 'Размер', '400 Мб', '2022-11-16 02:55:20.924+03', '2022-11-16 02:55:20.924+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (93, 'Лицензия', 'Платная. Демо-версия', '2022-11-16 02:56:17.321+03', '2022-11-16 02:56:17.321+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (94, 'Ограничение', '30 дней', '2022-11-16 02:56:17.321+03', '2022-11-16 02:56:17.321+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (95, 'Версия', '2020.3.1', '2022-11-16 02:56:17.321+03', '2022-11-16 02:56:17.321+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (96, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 02:56:17.321+03', '2022-11-16 02:56:17.321+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (97, 'Категория', 'Редакторы кода', '2022-11-16 02:56:17.321+03', '2022-11-16 02:56:17.321+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (117, 'Лицензия', 'бесплатная', '2022-11-16 03:10:54.131+03', '2022-11-16 03:10:54.131+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (118, 'Версия', '22.1.2', '2022-11-16 03:10:54.132+03', '2022-11-16 03:10:54.132+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (119, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:10:54.132+03', '2022-11-16 03:10:54.132+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (120, 'Интерфейс', 'Русский', '2022-11-16 03:10:54.132+03', '2022-11-16 03:10:54.132+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (121, 'Категория', 'Почта', '2022-11-16 03:10:54.132+03', '2022-11-16 03:10:54.132+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (122, 'Размер', '10 Мб', '2022-11-16 03:10:54.132+03', '2022-11-16 03:10:54.132+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (135, 'Лицензия', 'Демо-версия | Ограничение 30 дней', '2022-11-16 03:26:06.229+03', '2022-11-16 03:26:06.229+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (136, 'Версия', '9.1.2', '2022-11-16 03:26:06.229+03', '2022-11-16 03:26:06.229+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (137, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:26:06.229+03', '2022-11-16 03:26:06.229+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (138, 'Интерфейс', 'Русский', '2022-11-16 03:26:06.229+03', '2022-11-16 03:26:06.229+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (139, 'Категория', 'Аудио редакторы', '2022-11-16 03:26:06.229+03', '2022-11-16 03:26:06.229+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (140, 'Размер', '3 Гб', '2022-11-16 03:26:06.229+03', '2022-11-16 03:26:06.229+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (147, 'Лицензия', 'Демо-версия | Ограничение 30 дней', '2022-11-16 03:28:21.401+03', '2022-11-16 03:28:21.401+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (148, 'Версия', '10.2.1', '2022-11-16 03:28:21.401+03', '2022-11-16 03:28:21.401+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (149, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:28:21.401+03', '2022-11-16 03:28:21.401+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (150, 'Интерфейс', 'Русский', '2022-11-16 03:28:21.401+03', '2022-11-16 03:28:21.401+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (151, 'Категория', 'Аудио редакторы', '2022-11-16 03:28:21.402+03', '2022-11-16 03:28:21.402+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (152, 'Размер', '2 Гб', '2022-11-16 03:28:21.402+03', '2022-11-16 03:28:21.402+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (153, 'Лицензия', 'Платная', '2022-11-16 03:32:17.723+03', '2022-11-16 03:32:17.723+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (154, 'Ограничение', 'Демо-версия 30 дней', '2022-11-16 03:32:17.723+03', '2022-11-16 03:32:17.723+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (155, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:32:17.723+03', '2022-11-16 03:32:17.723+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (156, 'Интерфейс', 'Английский', '2022-11-16 03:32:17.723+03', '2022-11-16 03:32:17.723+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (157, 'Категория', 'Видео редакторы', '2022-11-16 03:32:17.723+03', '2022-11-16 03:32:17.723+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (158, 'Размер', '800 Мб', '2022-11-16 03:32:17.723+03', '2022-11-16 03:32:17.723+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (159, 'Лицензия', 'Демо-версия', '2022-11-16 03:56:06.41+03', '2022-11-16 03:56:06.41+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (160, 'Ограничение', '30 дней, распознаёт 100 страниц', '2022-11-16 03:56:06.41+03', '2022-11-16 03:56:06.41+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (161, 'Версия', '11 pro', '2022-11-16 03:56:06.41+03', '2022-11-16 03:56:06.41+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (162, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 03:56:06.41+03', '2022-11-16 03:56:06.41+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (163, 'Интерфейс', 'Английский, Русский, Польский', '2022-11-16 03:56:06.41+03', '2022-11-16 03:56:06.41+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (164, 'Категории', 'Офис и текст', '2022-11-16 03:56:06.41+03', '2022-11-16 03:56:06.41+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (165, 'Размер', '350 Мб', '2022-11-16 03:56:06.41+03', '2022-11-16 03:56:06.41+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (166, 'Лицензия', 'Бесплатно', '2022-11-16 04:13:39.85+03', '2022-11-16 04:13:39.85+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (172, 'Лицензия', 'Бесплатно', '2022-11-16 04:14:40.065+03', '2022-11-16 04:14:40.065+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (173, 'Версия', '10.1', '2022-11-16 04:14:40.065+03', '2022-11-16 04:14:40.065+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (174, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:14:40.065+03', '2022-11-16 04:14:40.065+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (175, 'Интерфейс', 'Английский', '2022-11-16 04:14:40.065+03', '2022-11-16 04:14:40.065+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (176, 'Категории', 'Антивирусные программы', '2022-11-16 04:14:40.065+03', '2022-11-16 04:14:40.065+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (177, 'Размер', '2 Мб', '2022-11-16 04:14:40.065+03', '2022-11-16 04:14:40.065+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (178, 'Лицензия', 'Платно', '2022-11-16 04:15:54.921+03', '2022-11-16 04:15:54.921+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (179, 'Версия', '10.1', '2022-11-16 04:15:54.921+03', '2022-11-16 04:15:54.921+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (180, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:15:54.921+03', '2022-11-16 04:15:54.921+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (181, 'Интерфейс', 'Английский, Русский', '2022-11-16 04:15:54.921+03', '2022-11-16 04:15:54.921+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (182, 'Категории', 'Антивирусные программы', '2022-11-16 04:15:54.921+03', '2022-11-16 04:15:54.921+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (183, 'Размер', '50 Мб', '2022-11-16 04:15:54.921+03', '2022-11-16 04:15:54.921+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (196, 'Лицензия', 'Бесплатная', '2022-11-16 04:45:20.4+03', '2022-11-16 04:45:20.4+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (197, 'Версия', '11.1', '2022-11-16 04:45:20.4+03', '2022-11-16 04:45:20.4+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (198, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:45:20.4+03', '2022-11-16 04:45:20.4+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (199, 'Категория', 'Офис и текст', '2022-11-16 04:45:20.4+03', '2022-11-16 04:45:20.4+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (200, 'Размер', '1.5 Мб', '2022-11-16 04:45:20.4+03', '2022-11-16 04:45:20.4+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (201, 'Лицензия', 'Платная', '2022-11-16 04:48:10.388+03', '2022-11-16 04:48:10.388+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (202, 'Версия', '14.2', '2022-11-16 04:48:10.388+03', '2022-11-16 04:48:10.388+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (203, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:48:10.388+03', '2022-11-16 04:48:10.388+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (204, 'Категория', 'Графический редактор', '2022-11-16 04:48:10.388+03', '2022-11-16 04:48:10.388+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (205, 'Размер', '2 Мб', '2022-11-16 04:48:10.388+03', '2022-11-16 04:48:10.388+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (206, 'Лицензия', 'Платная', '2022-11-16 04:49:17.472+03', '2022-11-16 04:49:17.472+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (207, 'Версия', '14.2', '2022-11-16 04:49:17.473+03', '2022-11-16 04:49:17.473+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (208, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:49:17.473+03', '2022-11-16 04:49:17.473+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (209, 'Категория', 'Графический редактор', '2022-11-16 04:49:17.473+03', '2022-11-16 04:49:17.473+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (210, 'Размер', '2 Мб', '2022-11-16 04:49:17.473+03', '2022-11-16 04:49:17.473+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (216, 'Лицензия', 'Платная', '2022-11-16 04:51:47.102+03', '2022-11-16 04:51:47.102+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (217, 'Версия', '2017 14.2.198', '2022-11-16 04:51:47.102+03', '2022-11-16 04:51:47.102+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (218, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:51:47.102+03', '2022-11-16 04:51:47.102+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (219, 'Категория', 'Графический редактор', '2022-11-16 04:51:47.102+03', '2022-11-16 04:51:47.102+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (220, 'Размер', '3 Гб', '2022-11-16 04:51:47.102+03', '2022-11-16 04:51:47.102+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (221, 'Лицензия', 'Платная', '2022-11-16 04:53:59.422+03', '2022-11-16 04:53:59.422+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (222, 'Версия', '2019 10.2.101', '2022-11-16 04:53:59.422+03', '2022-11-16 04:53:59.422+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (223, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:53:59.422+03', '2022-11-16 04:53:59.422+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (224, 'Категория', 'Графический редактор', '2022-11-16 04:53:59.422+03', '2022-11-16 04:53:59.422+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (225, 'Размер', '1.5 Гб', '2022-11-16 04:53:59.422+03', '2022-11-16 04:53:59.422+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (21, 'Лицензия', 'Бесплатная', '2022-11-16 01:52:23.08+03', '2022-11-16 01:52:23.08+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (22, 'Версия', '1.72.1', '2022-11-16 01:52:23.08+03', '2022-11-16 01:52:23.08+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (23, 'ОС', 'Windows 11, 10, 8.1, 8', '2022-11-16 01:52:23.08+03', '2022-11-16 01:52:23.08+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (24, 'Интерфейс', 'Английский, русский', '2022-11-16 01:52:23.08+03', '2022-11-16 01:52:23.08+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (25, 'Категории', 'Редакторы кода', '2022-11-16 01:52:23.08+03', '2022-11-16 01:52:23.08+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (26, 'Размер', '78 Мб', '2022-11-16 01:52:23.08+03', '2022-11-16 01:52:23.08+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (27, 'Лицензия', 'Платная | Есть пробный период', '2022-11-16 02:03:30.524+03', '2022-11-16 02:03:30.524+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (28, 'Версия', '2019.1.1', '2022-11-16 02:03:30.524+03', '2022-11-16 02:03:30.524+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (29, 'ОС', 'Windows 11, 10, 8.1, 8', '2022-11-16 02:03:30.524+03', '2022-11-16 02:03:30.524+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (30, 'Интерфейс', 'Английский, Русский', '2022-11-16 02:03:30.524+03', '2022-11-16 02:03:30.524+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (31, 'Разработчик', 'Microsoft Corporation', '2022-11-16 02:03:30.525+03', '2022-11-16 02:03:30.525+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (32, 'Размер', '2.5 Гб', '2022-11-16 02:03:30.525+03', '2022-11-16 02:03:30.525+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (33, 'Лицензия', 'Бесплатная', '2022-11-16 02:13:22.712+03', '2022-11-16 02:13:22.712+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (34, 'Версия', '107.0.1381', '2022-11-16 02:13:22.712+03', '2022-11-16 02:13:22.712+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (35, 'ОС', 'Windows 11, 10, 8.1, 8 ', '2022-11-16 02:13:22.712+03', '2022-11-16 02:13:22.712+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (36, 'Интерфейс', 'Английский, Русский', '2022-11-16 02:13:22.712+03', '2022-11-16 02:13:22.712+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (37, 'Категория', 'Браузеры', '2022-11-16 02:13:22.712+03', '2022-11-16 02:13:22.712+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (38, 'Размер', '200 Мб', '2022-11-16 02:13:22.712+03', '2022-11-16 02:13:22.712+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (39, 'Лицензия', 'Платная | Есть пробный период', '2022-11-16 02:21:56.288+03', '2022-11-16 02:21:56.288+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (40, 'Версия', '2020.1.2', '2022-11-16 02:21:56.288+03', '2022-11-16 02:21:56.288+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (41, 'ОС', 'Windows 11, 10, 8.1, 8 ', '2022-11-16 02:21:56.289+03', '2022-11-16 02:21:56.289+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (42, 'Интерфейс', 'Английский, Русский', '2022-11-16 02:21:56.289+03', '2022-11-16 02:21:56.289+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (43, 'Категория', 'Офис и текст', '2022-11-16 02:21:56.289+03', '2022-11-16 02:21:56.289+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (44, 'Размер', '250 Мб', '2022-11-16 02:21:56.289+03', '2022-11-16 02:21:56.289+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (45, 'Лицензия', 'Платная | Есть пробный период', '2022-11-16 02:23:04.013+03', '2022-11-16 02:23:04.013+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (46, 'Версия', '2020.1.4', '2022-11-16 02:23:04.013+03', '2022-11-16 02:23:04.013+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (47, 'ОС', 'Windows 11, 10, 8.1, 8 ', '2022-11-16 02:23:04.013+03', '2022-11-16 02:23:04.013+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (48, 'Интерфейс', 'Английский, Русский', '2022-11-16 02:23:04.013+03', '2022-11-16 02:23:04.013+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (49, 'Категория', 'Офис и текст', '2022-11-16 02:23:04.013+03', '2022-11-16 02:23:04.013+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (50, 'Размер', '210 Мб', '2022-11-16 02:23:04.013+03', '2022-11-16 02:23:04.013+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (51, 'Лицензия', 'Платная | Есть пробный период', '2022-11-16 02:23:44.545+03', '2022-11-16 02:23:44.545+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (52, 'Версия', '2019.1.1', '2022-11-16 02:23:44.545+03', '2022-11-16 02:23:44.545+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (53, 'ОС', 'Windows 11, 10, 8.1, 8 ', '2022-11-16 02:23:44.545+03', '2022-11-16 02:23:44.545+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (54, 'Интерфейс', 'Английский, Русский', '2022-11-16 02:23:44.545+03', '2022-11-16 02:23:44.545+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (55, 'Категория', 'Офис и текст', '2022-11-16 02:23:44.545+03', '2022-11-16 02:23:44.545+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (56, 'Размер', '300 Мб', '2022-11-16 02:23:44.545+03', '2022-11-16 02:23:44.545+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (57, 'Лицензия', 'Платная | Есть пробный период', '2022-11-16 02:24:26.161+03', '2022-11-16 02:24:26.161+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (58, 'Версия', '2020.1.5', '2022-11-16 02:24:26.161+03', '2022-11-16 02:24:26.161+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (59, 'ОС', 'Windows 11, 10, 8.1, 8 ', '2022-11-16 02:24:26.161+03', '2022-11-16 02:24:26.161+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (60, 'Интерфейс', 'Английский, Русский', '2022-11-16 02:24:26.161+03', '2022-11-16 02:24:26.161+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (61, 'Категория', 'Офис и текст', '2022-11-16 02:24:26.161+03', '2022-11-16 02:24:26.161+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (62, 'Размер', '300 Мб', '2022-11-16 02:24:26.161+03', '2022-11-16 02:24:26.161+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (63, 'Лицензия', 'Платная | Есть пробный период', '2022-11-16 02:25:08.052+03', '2022-11-16 02:25:08.052+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (64, 'Версия', '2020.1.11', '2022-11-16 02:25:08.052+03', '2022-11-16 02:25:08.052+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (65, 'ОС', 'Windows 11, 10, 8.1, 8 ', '2022-11-16 02:25:08.052+03', '2022-11-16 02:25:08.052+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (66, 'Интерфейс', 'Английский, Русский', '2022-11-16 02:25:08.052+03', '2022-11-16 02:25:08.052+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (67, 'Категория', 'Офис и текст', '2022-11-16 02:25:08.052+03', '2022-11-16 02:25:08.052+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (68, 'Размер', '320 Мб', '2022-11-16 02:25:08.052+03', '2022-11-16 02:25:08.052+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (241, 'Лицензия', 'Бесплатная', '2022-11-16 05:12:43.236+03', '2022-11-16 05:12:43.236+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (242, 'Версия', '10.2018.3', '2022-11-16 05:12:43.236+03', '2022-11-16 05:12:43.236+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (243, 'ОС', 'Windows  10, 8.1, 8, 7, Vista, XP', '2022-11-16 05:12:43.236+03', '2022-11-16 05:12:43.236+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (244, 'Категория', 'Видео редакторы', '2022-11-16 05:12:43.236+03', '2022-11-16 05:12:43.236+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (245, 'Размер', '560 Мб', '2022-11-16 05:12:43.236+03', '2022-11-16 05:12:43.236+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (184, 'Лицензия', 'Бесплатно', '2022-11-16 04:20:47.677+03', '2022-11-16 04:20:47.677+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (185, 'Версия', '10.1', '2022-11-16 04:20:47.677+03', '2022-11-16 04:20:47.677+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (186, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:20:47.677+03', '2022-11-16 04:20:47.677+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (187, 'Интерфейс', 'Многонациональный', '2022-11-16 04:20:47.677+03', '2022-11-16 04:20:47.677+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (188, 'Категории', 'Почта', '2022-11-16 04:20:47.677+03', '2022-11-16 04:20:47.677+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (189, 'Размер', '150 Мб', '2022-11-16 04:20:47.677+03', '2022-11-16 04:20:47.677+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (190, 'Лицензия', 'Бесплатно', '2022-11-16 04:22:34.439+03', '2022-11-16 04:22:34.439+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (191, 'Версия', '20.2', '2022-11-16 04:22:34.439+03', '2022-11-16 04:22:34.439+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (192, 'ОС', 'Windows 11, 10, 8.1, 8, 7', '2022-11-16 04:22:34.439+03', '2022-11-16 04:22:34.439+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (193, 'Интерфейс', 'Многонациональный', '2022-11-16 04:22:34.439+03', '2022-11-16 04:22:34.439+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (194, 'Категории', 'Браузер', '2022-11-16 04:22:34.439+03', '2022-11-16 04:22:34.439+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (195, 'Размер', '300 Мб', '2022-11-16 04:22:34.439+03', '2022-11-16 04:22:34.439+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (226, 'Лицензия', 'Условно-бесплатная', '2022-11-16 05:02:28.605+03', '2022-11-16 05:02:28.605+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (227, 'Ограничение', '30 дней', '2022-11-16 05:02:28.605+03', '2022-11-16 05:02:28.605+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (228, 'ОС', 'Windows 10, 8.1, 8, 7, Vista, XP', '2022-11-16 05:02:28.605+03', '2022-11-16 05:02:28.605+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (229, 'Категории', 'Графический редактор', '2022-11-16 05:02:28.605+03', '2022-11-16 05:02:28.605+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (230, 'Размер', '560 Мб', '2022-11-16 05:02:28.605+03', '2022-11-16 05:02:28.605+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (231, 'Лицензия', 'Условно-бесплатная', '2022-11-16 05:06:08.837+03', '2022-11-16 05:06:08.837+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (232, 'Ограничение', '30 дней', '2022-11-16 05:06:08.838+03', '2022-11-16 05:06:08.838+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (233, 'ОС', 'Windows 10, 8.1, 8, 7, Vista, XP', '2022-11-16 05:06:08.838+03', '2022-11-16 05:06:08.838+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (234, 'Категории', 'Графический редактор', '2022-11-16 05:06:08.838+03', '2022-11-16 05:06:08.838+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (235, 'Размер', '360 Мб', '2022-11-16 05:06:08.838+03', '2022-11-16 05:06:08.838+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (236, 'Лицензия', 'Условно-бесплатная', '2022-11-16 05:07:05.865+03', '2022-11-16 05:07:05.865+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (237, 'Ограничение', '30 дней', '2022-11-16 05:07:05.865+03', '2022-11-16 05:07:05.865+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (238, 'ОС', 'Windows 10, 8.1, 8, 7, Vista, XP', '2022-11-16 05:07:05.865+03', '2022-11-16 05:07:05.865+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (239, 'Категории', 'Графический редактор', '2022-11-16 05:07:05.866+03', '2022-11-16 05:07:05.866+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (240, 'Размер', '553 Мб', '2022-11-16 05:07:05.866+03', '2022-11-16 05:07:05.866+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (246, 'Лицензия', 'Платно', '2022-11-16 05:14:31.666+03', '2022-11-16 05:14:31.666+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (247, 'Версия', '10.2020.201', '2022-11-16 05:14:31.666+03', '2022-11-16 05:14:31.666+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (248, 'ОС', 'Windows  10, 8.1, 8', '2022-11-16 05:14:31.666+03', '2022-11-16 05:14:31.666+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (249, 'Категория', 'Видео редакторы', '2022-11-16 05:14:31.666+03', '2022-11-16 05:14:31.666+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (250, 'Размер', '2.5 Гб', '2022-11-16 05:14:31.666+03', '2022-11-16 05:14:31.666+03', NULL);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (268, 'Небольшой кошелёк из натуральной кожи с геометрическим объёмным тиснением имеет 2 отделения для купюр или бумаг, карман для мелочи, 3 секции для кредитных карт и 1 потайное отделение. Аксессуар распашной, без фиксации на кнопку', 'ред', '2023-05-03 22:04:47.126+03', '2023-05-03 22:04:47.126+03', 53);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (269, 'хар ка', 'деп', '2023-05-03 22:04:47.126+03', '2023-05-03 22:04:47.126+03', 53);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (270, 'хар ка', 'дпеп', '2023-05-03 22:04:47.126+03', '2023-05-03 22:04:47.126+03', 53);
INSERT INTO public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") VALUES (271, 'хар ка', 'деп', '2023-05-03 22:04:47.126+03', '2023-05-03 22:04:47.126+03', 53);


--
-- TOC entry 3460 (class 0 OID 16750)
-- Dependencies: 232
-- Data for Name: devices; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId") VALUES (50, 'Кошелёк GEOMETRY', 104, 0, '1ce7cd3c-4860-4870-9631-315463177fb2.jpg', '2023-04-29 02:01:42.609+03', '2023-04-29 02:01:42.609+03', 14, 50);
INSERT INTO public.devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId") VALUES (51, 'Кошелёк GEOMETRY BLACK', 103, 0, '5d63eaae-1269-460f-899f-d947af2c9f2b.jpg', '2023-04-29 02:18:08.364+03', '2023-04-29 02:18:08.364+03', 14, 50);
INSERT INTO public.devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId") VALUES (52, 'НОВЫЙ ТОВАР', 555, 0, 'cc838b12-b412-4b5d-bd25-228d7bd007af.jpg', '2023-04-29 09:59:37.844+03', '2023-04-29 09:59:37.844+03', 26, 49);
INSERT INTO public.devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId") VALUES (53, 'ккуку', 21, 0, '458d7297-7900-4692-9301-610c0b326a60.jpg', '2023-05-03 22:04:47.065+03', '2023-05-03 22:04:47.065+03', 14, 51);


--
-- TOC entry 3454 (class 0 OID 16684)
-- Dependencies: 226
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders (id, price, email, product_id, "createdAt", "updatedAt") VALUES (16, 499, 'marks@012mail.ru', 4, '2022-10-17 01:22:01.066+03', '2022-10-17 01:22:01.066+03');
INSERT INTO public.orders (id, price, email, product_id, "createdAt", "updatedAt") VALUES (17, 499, 'marks@mail.ru', 4, '2022-10-17 10:43:05.787+03', '2022-10-17 10:43:05.787+03');


--
-- TOC entry 3446 (class 0 OID 16588)
-- Dependencies: 218
-- Data for Name: programms; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3456 (class 0 OID 16697)
-- Dependencies: 228
-- Data for Name: programs; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3450 (class 0 OID 16627)
-- Dependencies: 222
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3452 (class 0 OID 16658)
-- Dependencies: 224
-- Data for Name: type_brands; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3442 (class 0 OID 16570)
-- Dependencies: 214
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.types (id, name, "createdAt", "updatedAt") VALUES (14, 'Кошельки', '2022-10-16 21:44:14.251+03', '2022-10-16 21:44:14.251+03');
INSERT INTO public.types (id, name, "createdAt", "updatedAt") VALUES (16, 'Портмоне', '2022-10-17 01:13:52.318+03', '2022-10-17 01:13:52.318+03');
INSERT INTO public.types (id, name, "createdAt", "updatedAt") VALUES (18, 'Сумки', '2022-11-16 00:49:29.862+03', '2022-11-16 00:49:29.862+03');
INSERT INTO public.types (id, name, "createdAt", "updatedAt") VALUES (20, 'Перчатки', '2022-11-16 00:51:39.276+03', '2022-11-16 00:51:39.276+03');
INSERT INTO public.types (id, name, "createdAt", "updatedAt") VALUES (21, 'Обложки на паспорт', '2022-11-16 00:51:56.751+03', '2022-11-16 00:51:56.751+03');
INSERT INTO public.types (id, name, "createdAt", "updatedAt") VALUES (22, 'Обложки на права', '2022-11-16 00:53:10.006+03', '2022-11-16 00:53:10.006+03');
INSERT INTO public.types (id, name, "createdAt", "updatedAt") VALUES (23, 'Обложки на удостоверение', '2022-11-16 00:53:46.159+03', '2022-11-16 00:53:46.159+03');
INSERT INTO public.types (id, name, "createdAt", "updatedAt") VALUES (25, 'Брелоки и украшения', '2022-11-16 01:13:44.47+03', '2022-11-16 01:13:44.47+03');
INSERT INTO public.types (id, name, "createdAt", "updatedAt") VALUES (26, 'Новое', '2023-04-29 09:58:27.329+03', '2023-04-29 09:58:27.329+03');


--
-- TOC entry 3438 (class 0 OID 16546)
-- Dependencies: 210
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, email, password, role, "createdAt", "updatedAt") VALUES (6, 'ADMIN', '$2b$05$kYTdRS6ytIpuTA6ebFjeheO6osNQGb3bBXXWrk3fJInXFZwzr2.aO', 'ADMIN', '2021-11-02 14:11:53.022+03', '2021-11-02 14:11:53.022+03');
INSERT INTO public.users (id, email, password, role, "createdAt", "updatedAt") VALUES (11, 'mark@mail.ru', '$2b$05$POCgQlhzbtAUFHE4LjI4I.wiwLE5CcFj9r12yg7fC1GA8tOp/4VnO', 'USER', '2022-10-17 10:51:48.897+03', '2022-10-17 10:51:48.897+03');


--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 219
-- Name: basket_devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_devices_id_seq', 1, false);


--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 229
-- Name: basket_programs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_programs_id_seq', 1, false);


--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 211
-- Name: baskets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.baskets_id_seq', 11, true);


--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 215
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brands_id_seq', 51, true);


--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 233
-- Name: device_infos_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.device_infos_id_seq1', 271, true);


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 217
-- Name: devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.devices_id_seq', 81, true);


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 231
-- Name: devices_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.devices_id_seq1', 53, true);


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 225
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 17, true);


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 227
-- Name: programs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.programs_id_seq', 3, true);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 221
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 223
-- Name: type_brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.type_brands_id_seq', 1, false);


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 213
-- Name: types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_id_seq', 26, true);


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 3261 (class 2606 OID 16615)
-- Name: basket_devices basket_devices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT basket_devices_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 16724)
-- Name: basket_programs basket_programs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_programs
    ADD CONSTRAINT basket_programs_pkey PRIMARY KEY (id);


--
-- TOC entry 3247 (class 2606 OID 16563)
-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);


--
-- TOC entry 3253 (class 2606 OID 16586)
-- Name: brands brands_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_name_key UNIQUE (name);


--
-- TOC entry 3255 (class 2606 OID 16584)
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- TOC entry 3281 (class 2606 OID 16779)
-- Name: device_infos device_infos_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device_infos
    ADD CONSTRAINT device_infos_pkey1 PRIMARY KEY (id);


--
-- TOC entry 3257 (class 2606 OID 16598)
-- Name: programms devices_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programms
    ADD CONSTRAINT devices_name_key UNIQUE (name);


--
-- TOC entry 3277 (class 2606 OID 16760)
-- Name: devices devices_name_key1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_name_key1 UNIQUE (name);


--
-- TOC entry 3259 (class 2606 OID 16596)
-- Name: programms devices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programms
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);


--
-- TOC entry 3279 (class 2606 OID 16758)
-- Name: devices devices_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_pkey1 PRIMARY KEY (id);


--
-- TOC entry 3269 (class 2606 OID 16690)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3271 (class 2606 OID 16707)
-- Name: programs programs_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programs
    ADD CONSTRAINT programs_name_key UNIQUE (name);


--
-- TOC entry 3273 (class 2606 OID 16705)
-- Name: programs programs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programs
    ADD CONSTRAINT programs_pkey PRIMARY KEY (id);


--
-- TOC entry 3263 (class 2606 OID 16632)
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);


--
-- TOC entry 3265 (class 2606 OID 16663)
-- Name: type_brands type_brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT type_brands_pkey PRIMARY KEY (id);


--
-- TOC entry 3267 (class 2606 OID 16665)
-- Name: type_brands type_brands_typeId_brandId_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_brandId_key" UNIQUE ("typeId", "brandId");


--
-- TOC entry 3249 (class 2606 OID 16577)
-- Name: types types_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_name_key UNIQUE (name);


--
-- TOC entry 3251 (class 2606 OID 16575)
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);


--
-- TOC entry 3243 (class 2606 OID 16556)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 3245 (class 2606 OID 16554)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3285 (class 2606 OID 16616)
-- Name: basket_devices basket_devices_basketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT "basket_devices_basketId_fkey" FOREIGN KEY ("basketId") REFERENCES public.baskets(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3286 (class 2606 OID 16621)
-- Name: basket_devices basket_devices_deviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT "basket_devices_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.programms(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3293 (class 2606 OID 16725)
-- Name: basket_programs basket_programs_basketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_programs
    ADD CONSTRAINT "basket_programs_basketId_fkey" FOREIGN KEY ("basketId") REFERENCES public.baskets(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3294 (class 2606 OID 16730)
-- Name: basket_programs basket_programs_programId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_programs
    ADD CONSTRAINT "basket_programs_programId_fkey" FOREIGN KEY ("programId") REFERENCES public.programs(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3282 (class 2606 OID 16564)
-- Name: baskets baskets_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT "baskets_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3297 (class 2606 OID 16780)
-- Name: device_infos device_infos_deviceId_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device_infos
    ADD CONSTRAINT "device_infos_deviceId_fkey1" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3284 (class 2606 OID 16604)
-- Name: programms devices_brandId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programms
    ADD CONSTRAINT "devices_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3296 (class 2606 OID 16766)
-- Name: devices devices_brandId_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT "devices_brandId_fkey1" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3283 (class 2606 OID 16599)
-- Name: programms devices_typeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programms
    ADD CONSTRAINT "devices_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3295 (class 2606 OID 16761)
-- Name: devices devices_typeId_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT "devices_typeId_fkey1" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3292 (class 2606 OID 16713)
-- Name: programs programs_brandId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programs
    ADD CONSTRAINT "programs_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3291 (class 2606 OID 16708)
-- Name: programs programs_typeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programs
    ADD CONSTRAINT "programs_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3288 (class 2606 OID 16638)
-- Name: ratings ratings_deviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.programms(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3287 (class 2606 OID 16633)
-- Name: ratings ratings_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3290 (class 2606 OID 16671)
-- Name: type_brands type_brands_brandId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3289 (class 2606 OID 16666)
-- Name: type_brands type_brands_typeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2023-05-09 01:54:00

--
-- PostgreSQL database dump complete
--

