--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    c_id integer NOT NULL,
    c_name text NOT NULL,
    c_email character varying NOT NULL,
    c_mobile character varying NOT NULL,
    eid integer NOT NULL,
    data_id integer NOT NULL,
    c_age integer NOT NULL
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Name: dataplan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dataplan (
    data_id integer NOT NULL,
    data_size character varying NOT NULL,
    data_duration integer NOT NULL,
    data_price character varying NOT NULL
);


ALTER TABLE public.dataplan OWNER TO postgres;

--
-- Name: department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department (
    dept_managerid integer NOT NULL,
    dept_no integer NOT NULL,
    dept_name text NOT NULL,
    dept_location character(50) NOT NULL,
    number integer NOT NULL
);


ALTER TABLE public.department OWNER TO postgres;

--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project (
    project_number integer NOT NULL,
    project_name text NOT NULL,
    project_duration character(50) NOT NULL,
    project_mangerid integer NOT NULL
);


ALTER TABLE public.project OWNER TO postgres;

--
-- Name: staff; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staff (
    staff_id integer NOT NULL,
    staff_name text NOT NULL,
    dept_no integer NOT NULL,
    staff_sal real NOT NULL,
    age integer NOT NULL,
    mobile character varying(15) NOT NULL
);


ALTER TABLE public.staff OWNER TO postgres;

--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (c_id, c_name, c_email, c_mobile, eid, data_id, c_age) FROM stdin;
110	Musta Karim	m_karim@gmail.com	08055089112	102	5	35
111	Lilian Jaiya	l_jaiye@gmail.com	08055185341	100	3	43
112	Arthur Musa	a_musa@gmail.com	07055282813	107	10	50
113	Philip Akonio	p_akonjo@gmail.com	09052356772	100	2	41
115	Oghenero Agor	o_agor@gmail.com	07055566774	117	11	50
114	Marylene Mapa	m_mapa@gmail.com	08053333551	120	1	33
116	Adams Bree	a_bree@gmail.com	08056765424	102	1	33
117	Okafor Mathias	o_mathias@gmail.com	08056763367	120	10	45
118	Samson Adeleke	s_adeleke@gmail.com	07056774423	117	11	65
119	Lawal Tamire	l_tamire@gmail.com	09052111101	107	5	35
120	James Job	j_job@gmail.com	08059693919	100	8	44
121	Mattew Jakande	m_jakande@gmail.com	07051232144	120	2	21
122	Jimila Adegboye	j_adegboye@gmail.com	08054921923	107	5	20
\.


--
-- Data for Name: dataplan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dataplan (data_id, data_size, data_duration, data_price) FROM stdin;
1	350MB	2	200.00
2	1.8MB	14	500.00
3	3.9GB	30	1000.00
4	7.5GB	30	1500.00
5	9.2GB	30	2000.00
6	10.8GB	30	2500.00
7	14GB	30	3000.00
8	18GB	30	4000.00
9	24GB	30	8000.00
11	50GB	30	10000.00
10	29.9GB	30	8000
\.


--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department (dept_managerid, dept_no, dept_name, dept_location, number) FROM stdin;
108	1	Administration	Ikeja                                             	44
101	2	Account	Egbeda                                            	11
100	3	Packaging	Ajah                                              	44
120	4	Research	V.I                                               	33
97	5	Account	Magodo                                            	22
122	6	Operations	Mile 2                                            	44
107	7	Packaging	Ketu                                              	55
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project (project_number, project_name, project_duration, project_mangerid) FROM stdin;
11	 A	9 Months                                          	102
22	B	14 Months                                         	97
33	 C	16 Months                                         	120
44	D	25 Months                                         	108
55	 E	9 Months                                          	107
\.


--
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staff (staff_id, staff_name, dept_no, staff_sal, age, mobile) FROM stdin;
101	Alade Joy	2	250000	33	8023089832
100	Mustapha Ali	2	175000	32	8063285831
107	Alokwe Martin	7	380000	48	7090082812
97	Dankande Aminat	5	550000	40	9023688832
102	Mankinde Mary	2	450000	55	9023487830
120	Adeleke Jane	4	200000	38	7061045862
122	Osahon Mark	6	320000	44	8022289842
104	Kuti Lawal	1	750000	35	9145689842
180	Josiah Joshua	1	120000	30	8053189131
117	Suleman Ajavi	3	800000	50	7030089981
\.


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (c_id);


--
-- Name: dataplan dataplan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dataplan
    ADD CONSTRAINT dataplan_pkey PRIMARY KEY (data_id);


--
-- Name: department department_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (dept_managerid);


--
-- Name: staff employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT employees_pkey PRIMARY KEY (staff_id);


--
-- PostgreSQL database dump complete
--

