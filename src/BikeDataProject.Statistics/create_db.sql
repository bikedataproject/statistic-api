
--
-- TOC entry 202 (class 1259 OID 42275)
-- Name: AreaAttributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AreaAttributes" (
                                         "AreaAttributeId" integer NOT NULL,
                                         "AreaId" integer NOT NULL,
                                         "Key" text,
                                         "Value" text
);

--
-- TOC entry 201 (class 1259 OID 42273)
-- Name: AreaAttributes_AreaAttributeId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."AreaAttributes" ALTER COLUMN "AreaAttributeId" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."AreaAttributes_AreaAttributeId_seq"
START WITH 1
          INCREMENT BY 1
          NO MINVALUE
          NO MAXVALUE
          CACHE 1
          );


--
-- TOC entry 200 (class 1259 OID 42265)
-- Name: AreaStatistics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AreaStatistics" (
                                         "AreaStatisticId" integer NOT NULL,
                                         "AreaId" integer NOT NULL,
                                         "Key" text,
                                         "Value" numeric NOT NULL
);


--
-- TOC entry 199 (class 1259 OID 42263)
-- Name: AreaStatistics_AreaStatisticId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."AreaStatistics" ALTER COLUMN "AreaStatisticId" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."AreaStatistics_AreaStatisticId_seq"
START WITH 1
          INCREMENT BY 1
          NO MINVALUE
          NO MAXVALUE
          CACHE 1
          );


--
-- TOC entry 198 (class 1259 OID 42255)
-- Name: Areas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Areas" (
                                "AreaId" integer NOT NULL,
                                "Geometry" bytea,
                                "ParentAreaId" integer
);


--
-- TOC entry 197 (class 1259 OID 42253)
-- Name: Areas_AreaId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Areas" ALTER COLUMN "AreaId" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Areas_AreaId_seq"
START WITH 1
          INCREMENT BY 1
          NO MINVALUE
          NO MAXVALUE
          CACHE 1
          );


--
-- TOC entry 196 (class 1259 OID 42248)
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."__EFMigrationsHistory" (
                                                "MigrationId" character varying(150) NOT NULL,
                                                "ProductVersion" character varying(32) NOT NULL
);
--
-- TOC entry 2767 (class 2606 OID 42282)
-- Name: AreaAttributes PK_AreaAttributes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AreaAttributes"
    ADD CONSTRAINT "PK_AreaAttributes" PRIMARY KEY ("AreaAttributeId");


--
-- TOC entry 2764 (class 2606 OID 42272)
-- Name: AreaStatistics PK_AreaStatistics; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AreaStatistics"
    ADD CONSTRAINT "PK_AreaStatistics" PRIMARY KEY ("AreaStatisticId");


--
-- TOC entry 2762 (class 2606 OID 42262)
-- Name: Areas PK_Areas; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Areas"
    ADD CONSTRAINT "PK_Areas" PRIMARY KEY ("AreaId");


--
-- TOC entry 2760 (class 2606 OID 42252)
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- TOC entry 2765 (class 1259 OID 42288)
-- Name: IX_AreaAttributes_AreaId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_AreaAttributes_AreaId" ON public."AreaAttributes" USING btree ("AreaId");


--
-- TOC entry 2768 (class 2606 OID 42283)
-- Name: AreaAttributes FK_AreaAttributes_Areas_AreaId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AreaAttributes"
    ADD CONSTRAINT "FK_AreaAttributes_Areas_AreaId" FOREIGN KEY ("AreaId") REFERENCES public."Areas"("AreaId") ON DELETE CASCADE;


-- Completed on 2020-07-27 12:49:18 BST

--
-- PostgreSQL database dump complete
--

