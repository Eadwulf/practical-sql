COPY us_counties_pop_est_2019
TO '$HOME/workspace/practical-sql-2/Chapter_05/us_counties_pop_est_2019_export.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

