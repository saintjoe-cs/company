---
--- PostgreSQL database dump
---
-
-SET statement_timeout = 0;
-SET lock_timeout = 0;
-SET client_encoding = 'LATIN1';
-SET standard_conforming_strings = on;
-SET check_function_bodies = false;
-SET client_min_messages = warning;
-
---
--- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
---
-
-CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
-
-
---
--- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
---
-
-COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
-
-
-SET search_path = public, pg_catalog;
-
-SET default_tablespace = '';
-
-SET default_with_oids = false;
-
---
--- Name: department; Type: TABLE; Schema: public; Owner: brianc; Tablespace: 
---
-
-CREATE TABLE employee (
-    fname character varying(15) NOT NULL,
-    minit character(1),
-    lname character varying(15) NOT NULL,
-    ssn character(9) NOT NULL,
-    bdate date,
-    address character varying(30),
-    sex character(1),
-    salary numeric(10,2),
-    super_ssn character(9),
-    dno integer NOT NULL
-);
-
-
-ALTER TABLE ONLY employee
-    ADD CONSTRAINT employee_pkey PRIMARY KEY (ssn);
-
-
-
-CREATE TABLE department (
-    dname character varying(15) NOT NULL,
-    dnumber integer NOT NULL,
-    mgr_ssn character(9) NOT NULL,
-    mgr_start_date date
-);
-
-CREATE TABLE dept_locations (
-    dnumber integer NOT NULL,
-    dlocation character varying(15) NOT NULL
-);
-
-CREATE TABLE dependent (
-    essn character(9) NOT NULL,
-    dependent_name character varying(15) NOT NULL,
-    sex character(1),
-    bdate date,
-    relationship character varying(8)
-);

CREATE TABLE WORKS_ON (
	Essn character(9) NOT NULL,
	Pno integer NOT NULL,
	Hours decimal(3,1) NOT NULL
);

CREATE TABLE PROJECT (
	Pname charater varying(15) NOT NULL,
	Pnumber integer NOT NULL,
	Plovation character varying(15) NOT NULL,
	Dnum integer NOT NULL
);
-

-
-ALTER TABLE department OWNER TO brianc;
-
---
--- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: brianc
---
-
-COPY department (dname, dnumber, mgr_ssn, mgr_start_date) FROM stdin;
-\.
-
-
---
--- Name: department_dname_key; Type: CONSTRAINT; Schema: public; Owner: brianc; Tablespace: 
---
-
-ALTER TABLE ONLY department
-    ADD CONSTRAINT department_dname_key UNIQUE (dname);
-
-ALTER TABLE ONLY dept_locations
-    ADD CONSTRAINT dept_locations_pkey PRIMARY KEY (dnumber, dlocation);
-
-
---
--- Name: department_pkey; Type: CONSTRAINT; Schema: public; Owner: brianc; Tablespace: 
---
-
-ALTER TABLE ONLY department
-    ADD CONSTRAINT department_pkey PRIMARY KEY (dnumber);
-
-ALTER TABLE ONLY WORKS_ON
	ADD CONSTRAINT WORKS_ON PRIMARY KEY (Essn, Pno);
---
--- Name: public; Type: ACL; Schema: -; Owner: postgres
---
-
-REVOKE ALL ON SCHEMA public FROM PUBLIC;
-REVOKE ALL ON SCHEMA public FROM postgres;
-GRANT ALL ON SCHEMA public TO postgres;
-GRANT ALL ON SCHEMA public TO PUBLIC;
-
-
---
--- PostgreSQL database dump complete
---
---
