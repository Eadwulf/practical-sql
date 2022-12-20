COPY (
	SELECT county_name, state_name, births_2019
	FROM us_counties_pop_est_2019
	ORDER BY births_2019 DESC
	LIMIT 20
	)
TO '$/HOME/workspace/practical-sql/chapter_05/us_counties_births_2019_export.csv'
WITH (FORMAT CSV, HEADER);
