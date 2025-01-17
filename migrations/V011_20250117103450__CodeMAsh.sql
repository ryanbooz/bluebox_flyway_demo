-- Script generated by Redgate Compare v1.25.1.24968
SET check_function_bodies = false;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating bluebox.social_networks...';END$$;
CREATE TABLE bluebox.social_networks (
    social_network_id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    name text NOT NULL,
    required boolean DEFAULT false
);
ALTER TABLE bluebox.social_networks ADD CONSTRAINT social_networks_pkey PRIMARY KEY (social_network_id);
ALTER TABLE bluebox.social_networks OWNER TO postgres;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating bluebox.person_social...';END$$;
CREATE TABLE bluebox.person_social (
    person_id integer,
    social_network_id integer,
    handle text NOT NULL
);
ALTER TABLE bluebox.person_social OWNER TO postgres;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating bluebox.idx_social_network_id...';END$$;
CREATE INDEX idx_social_network_id ON bluebox.person_social USING btree (social_network_id);


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating bluebox.idx_person_social_person_id...';END$$;
CREATE INDEX idx_person_social_person_id ON bluebox.person_social USING btree (person_id);


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating bluebox.person_social.person_social_social_network_id_fkey...';END$$;
ALTER TABLE bluebox.person_social ADD CONSTRAINT person_social_social_network_id_fkey FOREIGN KEY (social_network_id) REFERENCES bluebox.social_networks (social_network_id) ON DELETE CASCADE;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating bluebox.person_social.person_social_person_id_fkey...';END$$;
ALTER TABLE bluebox.person_social ADD CONSTRAINT person_social_person_id_fkey FOREIGN KEY (person_id) REFERENCES bluebox.person (person_id) ON DELETE CASCADE;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating bluebox.hello_conf(text)...';END$$;
CREATE FUNCTION bluebox.hello_conf(IN conf_name text DEFAULT 'World!'::text)
RETURNS text
LANGUAGE plpgsql
AS $_$
DECLARE hw text;
BEGIN
    hw := 'Hello ' || conf_name;
    RETURN hw;
END $_$;
ALTER FUNCTION bluebox.hello_conf(IN conf_name text) OWNER TO postgres;

SET check_function_bodies = true;