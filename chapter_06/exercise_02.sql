/* 2. Using the 2019 US Census county estimates data, calculate a ratio of births to deaths
      for each county in New York state. Which region of the state generally saw a higher
      ratio of births to deaths in 2019? */

-- Query births and deaths for 2019 and...
    -- calculate the ratio of birsth/deaths
    -- calculate the ration of deaths/births
    -- sort by births_ratio descending order
SELECT
    county_name AS county,
    state_name AS state,
    births_2019 AS births,
    deaths_2019 AS deaths,
    CASE
        WHEN deaths_2019 > 0 THEN
            CAST(births_2019 AS numeric) / deaths_2019
    END
    AS births_ratio,
    CASE
        WHEN births_2019 > 0 THEN
        CAST(deaths_2019 AS numeric) / births_2019
    END
    AS deaths_ration
FROM us_counties_pop_est_2019
ORDER BY births_ratio DESC;

-- Answer: The county that shows the higher births to deaths ratio is Chattahoochee County, Georgia state with a total of 9.95 births per deaths.