-- Script generated by Redgate Compare v1.21.3.23109
SET check_function_bodies = false;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating bluebox.rental_rental_period_upper_null...';END$$;
CREATE INDEX rental_rental_period_upper_null ON bluebox.rental USING btree (upper(rental_period))
WHERE upper(rental_period) IS NULL;

SET check_function_bodies = true;
