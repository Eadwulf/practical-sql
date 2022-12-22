SELECT
    sum(pop_est_2019) AS county_sum,
    round(avg(pop_est_2019), 0) AS county_average,
    percentile_cont(.5)
    WITHIN GROUP (ORDER BY pop_est_2019) AS county_median
FROM us_counties_pop_est_2019;