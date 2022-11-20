-- 1. List schools in alphabetic order along with teachers order by last name A-Z.
SELECT school, last_name, first_name, hire_date, salary FROM teachers
ORDER BY school ASC, last_name ASC;

-- 2. List the one teacher whose first name starts with the letter S and who earn more than $40,000.
SELECT last_name, first_name, school, hire_date, salary FROM teachers
WHERE first_name LIKE 'S%' AND (salary > 40000);

-- 3. Rank teachers hired since January 1, 2010, ordered by highest paid to lowest.
SELECT last_name, first_name, school, hire_date, salary FROM teachers
WHERE hire_date	> '01-01-2010' ORDER BY salary DESC;
