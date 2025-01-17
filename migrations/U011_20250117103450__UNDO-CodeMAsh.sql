-- Script generated by Redgate Compare v1.25.1.24968
SET check_function_bodies = false;

DO language plpgsql $$BEGIN RAISE NOTICE 'Dropping bluebox.idx_social_network_id...';END$$;
DROP INDEX bluebox.idx_social_network_id;


DO language plpgsql $$BEGIN RAISE NOTICE 'Dropping bluebox.idx_person_social_person_id...';END$$;
DROP INDEX bluebox.idx_person_social_person_id;


DO language plpgsql $$BEGIN RAISE NOTICE 'Dropping bluebox.person_social.person_social_social_network_id_fkey...';END$$;
ALTER TABLE bluebox.person_social DROP CONSTRAINT person_social_social_network_id_fkey;


DO language plpgsql $$BEGIN RAISE NOTICE 'Dropping bluebox.social_networks...';END$$;
DROP TABLE bluebox.social_networks;


DO language plpgsql $$BEGIN RAISE NOTICE 'Dropping bluebox.person_social.person_social_person_id_fkey...';END$$;
ALTER TABLE bluebox.person_social DROP CONSTRAINT person_social_person_id_fkey;


DO language plpgsql $$BEGIN RAISE NOTICE 'Dropping bluebox.person_social...';END$$;
DROP TABLE bluebox.person_social;


DO language plpgsql $$BEGIN RAISE NOTICE 'Dropping bluebox.hello_conf_withareallyreallylongname(text)...';END$$;
DROP FUNCTION bluebox.hello_conf_withareallyreallylongname(text);

SET check_function_bodies = true;