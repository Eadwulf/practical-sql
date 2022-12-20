COPY us_counties_pop_est_2019
	(county_name, internal_point_lat, internal_point_lon)
TO '$HOME/workspace/datascience/practical-sql/chapter_05/us_counties_latlon_export.csv'
WITH (FORMAT CSV, HEADER, DELIMITER '|');
