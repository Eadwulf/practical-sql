SELECT
	state_name AS state,
	county_name AS county,
	area_water::numeric / (area_land + area_water) * 100 AS water_percentage
FROM us_counties_pop_est_2019
ORDER BY water_percentage DESC;
