SELECT
	sum(pop_est_2019) AS county_sum,
	round(avg(pop_est_2019), 2) AS county_average
FROM us_counties_pop_est_2019;

