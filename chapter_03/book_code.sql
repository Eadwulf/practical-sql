-- 3.1 Querying all rows and columns from the teachers table
SELECT * FROM teachers;
TABLE teachers;

-- 3.2 Querying a subset of columns
SELECT hire_date, school, salary FROM teachers;

-- 3.3 Sorting data with ORDER BY
SELECT last_name, school, hire_date, salary FROM teachers ORDER BY salary DESC;

-- 3.4 Sorting multiple columns with ORDER BY
SELECT last_name, school, hire_date, salary FROM teachers ORDER BY school asc, hire_date DESC;

-- 3.5 Using DISTINCT to find unique values
SELECT DISTINCT school FROM teachers ORDER BY school;

-- 3.6 Using DISTINCT to query distinct pairs of values
SELECT DISTINCT school, salary FROM teachers ORDER BY school, salary;

-- 3.7.0 Filtering data using the WHERE clause
SELECT last_name, school, hire_date FROM teachers WHERE school = 'Myers Middle School';

-- 3.7.1 Using multiple operatos to fileter data with the WHERE clause
SELECT last_name, school, hire_date FROM teachers WHERE school <> 'Myers Middle School';
SELECT last_name, school, hire_date FROM teachers WHERE school != 'Myers Middle School';

SELECT first_name, hire_date, salary FROM teachers
WHERE salary BETWEEN 50000 AND 20000 AND hire_date <= '2005-08-30';
-- the above returns nothins due to the salary being out of range (I'm assuming)

SELECT first_name, hire_date, salary FROM teachers
WHERE hire_date <= '2005-08-30' AND salary BETWEEN 35000 AND 55000
AND last_name NOT IN ('Reynolds', 'Bush');

-- 3.8.1 Using LIKE to filter case sensitive patterns
SELECT first_name FROM teachers WHERE first_name LIKE 'sam%';

-- 3.8.2 Using ILIKE to filter case insensitive patterns
SELECT first_name FROM teachers WHERE first_name ILIKE 'sam%';
SELECT first_name, last_name FROM teachers WHERE first_name ILIKE '%A%';

-- 3.9.0 Combining operators using AND and OR
SELECT * FROM teachers WHERE school = 'F.D. Roosevelt HS' AND (salary < 38000 OR salary > 40000);

-- 3.10.0 A SELECT statement including WHERE and ORDER BY
SELECt first_name, last_name, school, hire_date, salary
FROM teachers WHERE school LIKE '%Roos%' ORDER BY hire_date DESC;
