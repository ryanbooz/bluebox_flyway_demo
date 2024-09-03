CREATE INDEX customer_geog_gist_idx ON bluebox.customer USING GIST (geog);
CREATE INDEX store_geog_gist_idx ON bluebox.store USING GIST (geog);