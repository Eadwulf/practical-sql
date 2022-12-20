COPY supervisor_salaries (town, supervisor, salary)
FROM '$HOME/workspace/practical-sql/chapter_05/supervisor_salaries.csv'
WITH (FORMAT CSV, HEADER)
WHERE town = 'New Brillig';
