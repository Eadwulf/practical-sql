COPY (
	SELECT county_name, state_name
	FROM us_counties_pop_est_2019
	WHERE county_name ILIKE '%mill%'
	)
TO '/home/adolfoj/workspace/datascience/practical-sql/chapter_05/us_counties_mill_export.csv'
WITH (FORMAT CSV, HEADER);
