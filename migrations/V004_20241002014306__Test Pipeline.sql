﻿-- Script generated by Redgate Compare v1.22.1.23470
SET check_function_bodies = false;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating bluebox.person.place_of_birth2...';END$$;
ALTER TABLE bluebox.person ADD COLUMN place_of_birth2 text;

SET check_function_bodies = true;
