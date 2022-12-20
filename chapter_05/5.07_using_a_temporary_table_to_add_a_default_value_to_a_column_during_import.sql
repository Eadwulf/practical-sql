CREATE TEMPORARY TABLE supervisor_salaries_temp
	(LIKE supervisor_salaries INCLUDING ALL);

COPY supervisor_salaries_temp (town, supervisor, salary)
FROM '$HOME/adolfoj/workspace/practical-sql/chaper_05/supervisor.csv'
WITH (FORMAT CSV, HEADER);

INSERT INTO supervisor_salaries (town, county, supervisor, salary)
SELECT town, 'Mills', supervisor, salary
FROM supervisor_salaries_temp;

DROP TABLE supervisor_salaries_temp;
