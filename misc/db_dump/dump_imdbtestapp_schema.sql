--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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

--
-- Name: rental; Type: SCHEMA; Schema: -; Owner: imdbtestapp
--

CREATE SCHEMA rental;


ALTER SCHEMA rental OWNER TO imdbtestapp;

--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: gender; Type: TYPE; Schema: public; Owner: imdbtestapp
--

CREATE TYPE public.gender AS ENUM (
    'male',
    'female'
);


ALTER TYPE public.gender OWNER TO imdbtestapp;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: actor; Type: TABLE; Schema: public; Owner: imdbtestapp
--

CREATE TABLE public.actor (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    gender public.gender,
    firstname character varying,
    lastname character varying,
    birth_date smallint
);


ALTER TABLE public.actor OWNER TO imdbtestapp;

--
-- Name: actor_film_asso; Type: TABLE; Schema: public; Owner: imdbtestapp
--

CREATE TABLE public.actor_film_asso (
    actor_id uuid NOT NULL,
    film_id integer NOT NULL
);


ALTER TABLE public.actor_film_asso OWNER TO imdbtestapp;

--
-- Name: film_id_seq; Type: SEQUENCE; Schema: public; Owner: imdbtestapp
--

CREATE SEQUENCE public.film_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_id_seq OWNER TO imdbtestapp;

--
-- Name: film; Type: TABLE; Schema: public; Owner: imdbtestapp
--

CREATE TABLE public.film (
    id integer DEFAULT nextval('public.film_id_seq'::regclass) NOT NULL,
    code_name character varying,
    year smallint NOT NULL
);


ALTER TABLE public.film OWNER TO imdbtestapp;

--
-- Name: actor_film_asso actor_film_asso_pkey; Type: CONSTRAINT; Schema: public; Owner: imdbtestapp
--

ALTER TABLE ONLY public.actor_film_asso
    ADD CONSTRAINT actor_film_asso_pkey PRIMARY KEY (actor_id, film_id);


--
-- Name: actor actor_pk; Type: CONSTRAINT; Schema: public; Owner: imdbtestapp
--

ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pk PRIMARY KEY (id);


--
-- Name: film film_pk; Type: CONSTRAINT; Schema: public; Owner: imdbtestapp
--

ALTER TABLE ONLY public.film
    ADD CONSTRAINT film_pk PRIMARY KEY (id);


--
-- Name: fki_actor_film_asso_actor_id_fk; Type: INDEX; Schema: public; Owner: imdbtestapp
--

CREATE INDEX fki_actor_film_asso_actor_id_fk ON public.actor_film_asso USING btree (actor_id);


--
-- Name: fki_actor_film_asso_film_id_fk; Type: INDEX; Schema: public; Owner: imdbtestapp
--

CREATE INDEX fki_actor_film_asso_film_id_fk ON public.actor_film_asso USING btree (film_id);


--
-- Name: actor_film_asso actor_film_asso_actor_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: imdbtestapp
--

ALTER TABLE ONLY public.actor_film_asso
    ADD CONSTRAINT actor_film_asso_actor_id_fk FOREIGN KEY (actor_id) REFERENCES public.actor(id) ON DELETE CASCADE NOT VALID;


--
-- Name: actor_film_asso actor_film_asso_film_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: imdbtestapp
--

ALTER TABLE ONLY public.actor_film_asso
    ADD CONSTRAINT actor_film_asso_film_id_fk FOREIGN KEY (film_id) REFERENCES public.film(id) ON DELETE CASCADE NOT VALID;


--
-- PostgreSQL database dump complete
--

