\COPY us_counties_pop_est_2019
FROM '$HOME/workspace/practical-sql/chapter_05/us_counties_pop_est_2019.csv'
WITH (FORMAT CSV, HEADER);
