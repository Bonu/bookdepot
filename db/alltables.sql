--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: bookdepotschema; Type: SCHEMA; Schema: -; Owner: janardhanbonu
--

CREATE SCHEMA bookdepotschema;


ALTER SCHEMA bookdepotschema OWNER TO janardhanbonu;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: lot; Type: TABLE; Schema: bookdepotschema; Owner: janardhanbonu
--

CREATE TABLE bookdepotschema.lot (
    name character varying(50),
    id bigint NOT NULL,
    duration integer NOT NULL,
    seats_limit integer DEFAULT 40 NOT NULL,
    attendies integer,
    dates character varying(200),
    presenter character varying(100)
);


ALTER TABLE bookdepotschema.lot OWNER TO janardhanbonu;

--
-- Name: lot_id_seq; Type: SEQUENCE; Schema: bookdepotschema; Owner: janardhanbonu
--

CREATE SEQUENCE bookdepotschema.lot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookdepotschema.lot_id_seq OWNER TO janardhanbonu;

--
-- Name: lot_id_seq; Type: SEQUENCE OWNED BY; Schema: bookdepotschema; Owner: janardhanbonu
--

ALTER SEQUENCE bookdepotschema.lot_id_seq OWNED BY bookdepotschema.lot.id;


--
-- Name: role; Type: TABLE; Schema: bookdepotschema; Owner: janardhanbonu
--

CREATE TABLE bookdepotschema.role (
    id bigint NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE bookdepotschema.role OWNER TO janardhanbonu;

--
-- Name: role_id_seq; Type: SEQUENCE; Schema: bookdepotschema; Owner: janardhanbonu
--

CREATE SEQUENCE bookdepotschema.role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookdepotschema.role_id_seq OWNER TO janardhanbonu;

--
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: bookdepotschema; Owner: janardhanbonu
--

ALTER SEQUENCE bookdepotschema.role_id_seq OWNED BY bookdepotschema.role.id;


--
-- Name: user; Type: TABLE; Schema: bookdepotschema; Owner: janardhanbonu
--

CREATE TABLE bookdepotschema."user" (
    id bigint NOT NULL,
    user_id character varying(20) NOT NULL,
    password character varying(20) NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50),
    role_id bigint
);


ALTER TABLE bookdepotschema."user" OWNER TO janardhanbonu;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: bookdepotschema; Owner: janardhanbonu
--

CREATE SEQUENCE bookdepotschema.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookdepotschema.user_id_seq OWNER TO janardhanbonu;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: bookdepotschema; Owner: janardhanbonu
--

ALTER SEQUENCE bookdepotschema.user_id_seq OWNED BY bookdepotschema."user".id;


--
-- Name: lot id; Type: DEFAULT; Schema: bookdepotschema; Owner: janardhanbonu
--

ALTER TABLE ONLY bookdepotschema.lot ALTER COLUMN id SET DEFAULT nextval('bookdepotschema.lot_id_seq'::regclass);


--
-- Name: role id; Type: DEFAULT; Schema: bookdepotschema; Owner: janardhanbonu
--

ALTER TABLE ONLY bookdepotschema.role ALTER COLUMN id SET DEFAULT nextval('bookdepotschema.role_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: bookdepotschema; Owner: janardhanbonu
--

ALTER TABLE ONLY bookdepotschema."user" ALTER COLUMN id SET DEFAULT nextval('bookdepotschema.user_id_seq'::regclass);


--
-- Data for Name: lot; Type: TABLE DATA; Schema: bookdepotschema; Owner: janardhanbonu
--

INSERT INTO bookdepotschema.lot (name, id, duration, seats_limit, attendies, dates, presenter) VALUES ('Spring Boot', 3, 120, 40, 12, '21-05-2018', 'Joshua');


--
-- Data for Name: role; Type: TABLE DATA; Schema: bookdepotschema; Owner: janardhanbonu
--

INSERT INTO bookdepotschema.role (id, name) VALUES (1, 'admin');
INSERT INTO bookdepotschema.role (id, name) VALUES (2, 'registered_user');
INSERT INTO bookdepotschema.role (id, name) VALUES (3, 'lot_presenter');


--
-- Data for Name: user; Type: TABLE DATA; Schema: bookdepotschema; Owner: janardhanbonu
--

INSERT INTO bookdepotschema."user" (id, user_id, password, first_name, last_name, role_id) VALUES (1, 'jbonu', 'jbonu', 'Janardhan', 'Bonu', 1);
INSERT INTO bookdepotschema."user" (id, user_id, password, first_name, last_name, role_id) VALUES (2, 'joshua', 'joshua', 'joshua', NULL, 3);


--
-- Name: lot_id_seq; Type: SEQUENCE SET; Schema: bookdepotschema; Owner: janardhanbonu
--

SELECT pg_catalog.setval('bookdepotschema.lot_id_seq', 3, true);


--
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: bookdepotschema; Owner: janardhanbonu
--

SELECT pg_catalog.setval('bookdepotschema.role_id_seq', 3, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: bookdepotschema; Owner: janardhanbonu
--

SELECT pg_catalog.setval('bookdepotschema.user_id_seq', 2, true);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: bookdepotschema; Owner: janardhanbonu
--

ALTER TABLE ONLY bookdepotschema.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: bookdepotschema; Owner: janardhanbonu
--

ALTER TABLE ONLY bookdepotschema."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: user user_bookdepot-schema"."role_id_fk; Type: FK CONSTRAINT; Schema: bookdepotschema; Owner: janardhanbonu
--

ALTER TABLE ONLY bookdepotschema."user"
    ADD CONSTRAINT "user_bookdepot-schema"".""role_id_fk" FOREIGN KEY (role_id) REFERENCES bookdepotschema.role(id);


--
-- PostgreSQL database dump complete
--

