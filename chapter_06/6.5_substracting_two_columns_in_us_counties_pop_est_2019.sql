SELECT
	state_name AS state,
	county_name as county,
	births_2019 AS births,
	deaths_2019 AS deaths,
	births_2019 - deaths_2019 AS natural_increase
FROM us_counties_pop_est_2019
ORDER BY births ASC;
