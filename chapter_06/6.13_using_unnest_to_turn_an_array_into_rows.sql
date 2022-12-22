SELECT unnest(
    percentile_cont(ARRAY[.25, .50, .75])
    WITHIN GROUP (ORDER BY pop_est_2019)
    ) AS quartiles
FROM us_counties_pop_est_2019;