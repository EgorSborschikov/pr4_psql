--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Ubuntu 16.4-1.pgdg22.04+1)
-- Dumped by pg_dump version 16.4 (Ubuntu 16.4-1.pgdg22.04+1)

-- Started on 2024-12-06 15:20:30 +07

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
-- TOC entry 223 (class 1259 OID 26052)
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    "IDClient" integer NOT NULL,
    "ClientSurname" character varying(15) NOT NULL,
    "ClientName" character varying(20) NOT NULL,
    "ClientPatronymic" character varying(25) NOT NULL,
    "PhoneNumber" character varying(20) NOT NULL
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 26051)
-- Name: clients_IDClient_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."clients_IDClient_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."clients_IDClient_seq" OWNER TO postgres;

--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 222
-- Name: clients_IDClient_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."clients_IDClient_seq" OWNED BY public.clients."IDClient";


--
-- TOC entry 224 (class 1259 OID 26058)
-- Name: clients_sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients_sales (
    "IDClient" integer NOT NULL,
    "IDSale" integer NOT NULL
);


ALTER TABLE public.clients_sales OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 26040)
-- Name: indications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.indications (
    "IDIndicator" integer NOT NULL,
    "IndicatorName" character varying(100) NOT NULL
);


ALTER TABLE public.indications OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 26039)
-- Name: indications_IDIndicator_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."indications_IDIndicator_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."indications_IDIndicator_seq" OWNER TO postgres;

--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 219
-- Name: indications_IDIndicator_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."indications_IDIndicator_seq" OWNED BY public.indications."IDIndicator";


--
-- TOC entry 216 (class 1259 OID 26026)
-- Name: medicines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicines (
    "Articul(ID)" integer NOT NULL,
    "MedicinesName" character varying(100) NOT NULL,
    "PriceForOnePreparate" money NOT NULL
);


ALTER TABLE public.medicines OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 26025)
-- Name: medicines_Articul(ID)_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."medicines_Articul(ID)_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."medicines_Articul(ID)_seq" OWNER TO postgres;

--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 215
-- Name: medicines_Articul(ID)_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."medicines_Articul(ID)_seq" OWNED BY public.medicines."Articul(ID)";


--
-- TOC entry 221 (class 1259 OID 26046)
-- Name: medicines_indications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicines_indications (
    "IDMedicines" integer NOT NULL,
    "IDIndicator" integer NOT NULL
);


ALTER TABLE public.medicines_indications OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 26033)
-- Name: sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales (
    "IDSales" integer NOT NULL,
    "ArticulMedicine" integer NOT NULL,
    "SaleDate" timestamp(6) without time zone NOT NULL,
    "NumberOfPackagesSold" integer NOT NULL,
    "SummaryPrice" money NOT NULL
);


ALTER TABLE public.sales OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 26032)
-- Name: sales_IDSales_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."sales_IDSales_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."sales_IDSales_seq" OWNER TO postgres;

--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 217
-- Name: sales_IDSales_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."sales_IDSales_seq" OWNED BY public.sales."IDSales";


--
-- TOC entry 3242 (class 2604 OID 26055)
-- Name: clients IDClient; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients ALTER COLUMN "IDClient" SET DEFAULT nextval('public."clients_IDClient_seq"'::regclass);


--
-- TOC entry 3241 (class 2604 OID 26043)
-- Name: indications IDIndicator; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indications ALTER COLUMN "IDIndicator" SET DEFAULT nextval('public."indications_IDIndicator_seq"'::regclass);


--
-- TOC entry 3239 (class 2604 OID 26029)
-- Name: medicines Articul(ID); Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicines ALTER COLUMN "Articul(ID)" SET DEFAULT nextval('public."medicines_Articul(ID)_seq"'::regclass);


--
-- TOC entry 3240 (class 2604 OID 26036)
-- Name: sales IDSales; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales ALTER COLUMN "IDSales" SET DEFAULT nextval('public."sales_IDSales_seq"'::regclass);


--
-- TOC entry 3411 (class 0 OID 26052)
-- Dependencies: 223
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clients VALUES (1, 'Федоров', 'Федор', 'Федорович', '76542030916');
INSERT INTO public.clients VALUES (2, 'Эдуардов', 'Дмитрий', 'Филиппович', '79990001020');
INSERT INTO public.clients VALUES (3, 'Ильина', 'Ирина', 'Ильинична', '79619834576');
INSERT INTO public.clients VALUES (4, 'Викторова', 'Виктория', 'Викторовна', '79824659825');
INSERT INTO public.clients VALUES (5, 'Денисов', 'Денис', 'Денисович', '79835759023');
INSERT INTO public.clients VALUES (6, 'Егорова', 'Евгения', 'Егоровна', '77779992233');
INSERT INTO public.clients VALUES (7, 'Антонов', 'Анатолий', 'Антонович', '79534334373');
INSERT INTO public.clients VALUES (8, 'Сергеева', 'Серафима', 'Сергеевна', '79512345678');
INSERT INTO public.clients VALUES (9, 'Петров', 'Пётр', 'Петрович', '79528139801');
INSERT INTO public.clients VALUES (10, 'Иванов', 'Иван', 'Иванович', '79528129900');


--
-- TOC entry 3412 (class 0 OID 26058)
-- Dependencies: 224
-- Data for Name: clients_sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clients_sales VALUES (10, 1);
INSERT INTO public.clients_sales VALUES (9, 2);
INSERT INTO public.clients_sales VALUES (8, 3);
INSERT INTO public.clients_sales VALUES (7, 4);
INSERT INTO public.clients_sales VALUES (6, 5);
INSERT INTO public.clients_sales VALUES (5, 6);
INSERT INTO public.clients_sales VALUES (4, 7);
INSERT INTO public.clients_sales VALUES (3, 8);
INSERT INTO public.clients_sales VALUES (2, 9);
INSERT INTO public.clients_sales VALUES (1, 10);


--
-- TOC entry 3408 (class 0 OID 26040)
-- Dependencies: 220
-- Data for Name: indications; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.indications VALUES (1, 'Головная боль');
INSERT INTO public.indications VALUES (2, 'Лихорадка');
INSERT INTO public.indications VALUES (3, 'Воспаление');
INSERT INTO public.indications VALUES (4, 'Инфекции');
INSERT INTO public.indications VALUES (5, 'Диабет');
INSERT INTO public.indications VALUES (6, 'Гастроэзофагеальная рефлюксная болезнь (ГЭРБ)');
INSERT INTO public.indications VALUES (7, 'Аллергия');
INSERT INTO public.indications VALUES (8, 'Боль');
INSERT INTO public.indications VALUES (9, 'Инфекции мочевыводящих путей');
INSERT INTO public.indications VALUES (10, 'Инфекции дыхательных путей');
INSERT INTO public.indications VALUES (11, 'Головная боль');
INSERT INTO public.indications VALUES (12, 'Лихорадка');
INSERT INTO public.indications VALUES (13, 'Воспаление');
INSERT INTO public.indications VALUES (14, 'Инфекции');
INSERT INTO public.indications VALUES (15, 'Диабет');
INSERT INTO public.indications VALUES (16, 'Гастроэзофагеальная рефлюксная болезнь (ГЭРБ)');
INSERT INTO public.indications VALUES (17, 'Аллергия');
INSERT INTO public.indications VALUES (18, 'Боль');
INSERT INTO public.indications VALUES (19, 'Инфекции мочевыводящих путей');
INSERT INTO public.indications VALUES (20, 'Инфекции дыхательных путей');


--
-- TOC entry 3404 (class 0 OID 26026)
-- Dependencies: 216
-- Data for Name: medicines; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.medicines VALUES (1, 'Аспирин', '50,00 ₽');
INSERT INTO public.medicines VALUES (2, 'Парацетамол', '70,00 ₽');
INSERT INTO public.medicines VALUES (3, 'Ибупрофен', '90,00 ₽');
INSERT INTO public.medicines VALUES (4, 'Амоксициллин', '150,00 ₽');
INSERT INTO public.medicines VALUES (5, 'Метформин', '200,00 ₽');
INSERT INTO public.medicines VALUES (6, 'Омепразол', '120,00 ₽');
INSERT INTO public.medicines VALUES (7, 'Лоратадин', '180,00 ₽');
INSERT INTO public.medicines VALUES (8, 'Ацетилсалициловая кислота', '60,00 ₽');
INSERT INTO public.medicines VALUES (9, 'Ципрофлоксацин', '250,00 ₽');
INSERT INTO public.medicines VALUES (10, 'Азитромицин', '300,00 ₽');
INSERT INTO public.medicines VALUES (11, 'Аспирин', '50,00 ₽');
INSERT INTO public.medicines VALUES (12, 'Парацетамол', '70,00 ₽');
INSERT INTO public.medicines VALUES (13, 'Ибупрофен', '90,00 ₽');
INSERT INTO public.medicines VALUES (14, 'Амоксициллин', '150,00 ₽');
INSERT INTO public.medicines VALUES (15, 'Метформин', '200,00 ₽');
INSERT INTO public.medicines VALUES (16, 'Омепразол', '120,00 ₽');
INSERT INTO public.medicines VALUES (17, 'Лоратадин', '180,00 ₽');
INSERT INTO public.medicines VALUES (18, 'Ацетилсалициловая кислота', '60,00 ₽');
INSERT INTO public.medicines VALUES (19, 'Ципрофлоксацин', '250,00 ₽');
INSERT INTO public.medicines VALUES (20, 'Азитромицин', '300,00 ₽');
INSERT INTO public.medicines VALUES (21, 'Аспирин', '50,00 ₽');
INSERT INTO public.medicines VALUES (22, 'Парацетамол', '70,00 ₽');
INSERT INTO public.medicines VALUES (23, 'Ибупрофен', '90,00 ₽');
INSERT INTO public.medicines VALUES (24, 'Амоксициллин', '150,00 ₽');
INSERT INTO public.medicines VALUES (25, 'Метформин', '200,00 ₽');
INSERT INTO public.medicines VALUES (26, 'Омепразол', '120,00 ₽');
INSERT INTO public.medicines VALUES (27, 'Лоратадин', '180,00 ₽');
INSERT INTO public.medicines VALUES (28, 'Ацетилсалициловая кислота', '60,00 ₽');
INSERT INTO public.medicines VALUES (29, 'Ципрофлоксацин', '250,00 ₽');
INSERT INTO public.medicines VALUES (30, 'Азитромицин', '300,00 ₽');


--
-- TOC entry 3409 (class 0 OID 26046)
-- Dependencies: 221
-- Data for Name: medicines_indications; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.medicines_indications VALUES (1, 10);
INSERT INTO public.medicines_indications VALUES (2, 9);
INSERT INTO public.medicines_indications VALUES (3, 8);
INSERT INTO public.medicines_indications VALUES (4, 7);
INSERT INTO public.medicines_indications VALUES (5, 6);
INSERT INTO public.medicines_indications VALUES (6, 5);
INSERT INTO public.medicines_indications VALUES (7, 4);
INSERT INTO public.medicines_indications VALUES (8, 3);
INSERT INTO public.medicines_indications VALUES (9, 2);
INSERT INTO public.medicines_indications VALUES (10, 1);


--
-- TOC entry 3406 (class 0 OID 26033)
-- Dependencies: 218
-- Data for Name: sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sales VALUES (1, 1, '2023-10-01 10:00:00', 5, '250,00 ₽');
INSERT INTO public.sales VALUES (2, 2, '2023-10-02 11:00:00', 3, '210,00 ₽');
INSERT INTO public.sales VALUES (3, 3, '2023-10-03 12:00:00', 7, '630,00 ₽');
INSERT INTO public.sales VALUES (4, 4, '2023-10-04 13:00:00', 2, '300,00 ₽');
INSERT INTO public.sales VALUES (5, 5, '2023-10-05 14:00:00', 4, '800,00 ₽');
INSERT INTO public.sales VALUES (6, 6, '2023-10-06 15:00:00', 6, '720,00 ₽');
INSERT INTO public.sales VALUES (7, 7, '2023-10-07 16:00:00', 8, '1 440,00 ₽');
INSERT INTO public.sales VALUES (8, 8, '2023-10-08 17:00:00', 1, '60,00 ₽');
INSERT INTO public.sales VALUES (9, 9, '2023-10-09 18:00:00', 9, '2 250,00 ₽');
INSERT INTO public.sales VALUES (10, 10, '2023-10-10 19:00:00', 10, '3 000,00 ₽');


--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 222
-- Name: clients_IDClient_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clients_IDClient_seq"', 10, true);


--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 219
-- Name: indications_IDIndicator_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."indications_IDIndicator_seq"', 20, true);


--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 215
-- Name: medicines_Articul(ID)_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."medicines_Articul(ID)_seq"', 30, true);


--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 217
-- Name: sales_IDSales_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."sales_IDSales_seq"', 10, true);


--
-- TOC entry 3252 (class 2606 OID 26057)
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY ("IDClient");


--
-- TOC entry 3254 (class 2606 OID 26062)
-- Name: clients_sales clients_sales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_sales
    ADD CONSTRAINT clients_sales_pkey PRIMARY KEY ("IDClient", "IDSale");


--
-- TOC entry 3248 (class 2606 OID 26045)
-- Name: indications indications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indications
    ADD CONSTRAINT indications_pkey PRIMARY KEY ("IDIndicator");


--
-- TOC entry 3250 (class 2606 OID 26050)
-- Name: medicines_indications medicines_indications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicines_indications
    ADD CONSTRAINT medicines_indications_pkey PRIMARY KEY ("IDMedicines", "IDIndicator");


--
-- TOC entry 3244 (class 2606 OID 26031)
-- Name: medicines medicines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicines
    ADD CONSTRAINT medicines_pkey PRIMARY KEY ("Articul(ID)");


--
-- TOC entry 3246 (class 2606 OID 26038)
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY ("IDSales");


--
-- TOC entry 3258 (class 2606 OID 26078)
-- Name: clients_sales clients_sales_IDClient_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_sales
    ADD CONSTRAINT "clients_sales_IDClient_fkey" FOREIGN KEY ("IDClient") REFERENCES public.clients("IDClient") NOT VALID;


--
-- TOC entry 3259 (class 2606 OID 26083)
-- Name: clients_sales clients_sales_IDSale_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_sales
    ADD CONSTRAINT "clients_sales_IDSale_fkey" FOREIGN KEY ("IDSale") REFERENCES public.sales("IDSales") NOT VALID;


--
-- TOC entry 3256 (class 2606 OID 26073)
-- Name: medicines_indications medicines_indications_IDIndicator_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicines_indications
    ADD CONSTRAINT "medicines_indications_IDIndicator_fkey" FOREIGN KEY ("IDIndicator") REFERENCES public.indications("IDIndicator") NOT VALID;


--
-- TOC entry 3257 (class 2606 OID 26068)
-- Name: medicines_indications medicines_indications_IDMedicines_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicines_indications
    ADD CONSTRAINT "medicines_indications_IDMedicines_fkey" FOREIGN KEY ("IDMedicines") REFERENCES public.medicines("Articul(ID)") NOT VALID;


--
-- TOC entry 3255 (class 2606 OID 26063)
-- Name: sales sales_ArticulMedicine_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT "sales_ArticulMedicine_fkey" FOREIGN KEY ("ArticulMedicine") REFERENCES public.medicines("Articul(ID)") NOT VALID;


-- Completed on 2024-12-06 15:20:30 +07

--
-- PostgreSQL database dump complete
--

