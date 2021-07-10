CREATE TABLE post_json_collections (
    id uuid DEFAULT uuid_generate_v4() NOT NULL,
    name text,
    meta json,
    use_timestamps boolean DEFAULT true,
    created_at_attribute_name text DEFAULT 'created_at'::text NOT NULL,
    updated_at_attribute_name text DEFAULT 'updated_at'::text NOT NULL,
    use_version_number boolean DEFAULT true,
    version_attribute_name text DEFAULT 'version'::text NOT NULL,
    use_dynamic_index boolean DEFAULT true,
    create_dynamic_index_milliseconds_threshold integer DEFAULT 50,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: post_json_documents; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE post_json_documents (
    id text NOT NULL,
    __doc__version integer,
    __doc__body json,
    __doc__collection_id uuid
);


--
-- Name: post_json_dynamic_indexes; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE post_json_dynamic_indexes (
    id uuid DEFAULT uuid_generate_v4() NOT NULL,
    selector text NOT NULL,
    collection_id uuid,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


--
-- Name: post_json_collections_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY post_json_collections
    ADD CONSTRAINT post_json_collections_pkey PRIMARY KEY (id);


--
-- Name: post_json_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY post_json_documents
    ADD CONSTRAINT post_json_documents_pkey PRIMARY KEY (id);


--
-- Name: post_json_dynamic_indexes_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY post_json_dynamic_indexes
    ADD CONSTRAINT post_json_dynamic_indexes_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user",public;

INSERT INTO schema_migrations (version) VALUES ('20131011050841');

INSERT INTO schema_migrations (version) VALUES ('20131011050842');

INSERT INTO schema_migrations (version) VALUES ('20131011050843');

INSERT INTO schema_migrations (version) VALUES ('20131011050844');

INSERT INTO schema_migrations (version) VALUES ('20131011050845');
