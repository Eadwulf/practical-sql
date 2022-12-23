/* 1. Write a SQL statement for calculating the area of a circle whose radius is 5 inches.
    Do you need parentheses in your calculation? Why or why not? */

-- Create a temporary table to hold circles data
CREATE TEMPORARY TABLE circles_data_temp (
    id bigserial,
    radius numeric(5, 2)
);

-- Insert some data to the table
INSERT INTO circles_data_temp (radius)
VALUES
    (5),
    (7),
    (3.5),
    (22);

-- Query radius rows, calculate the area for each circle and represent it as area_of_cirle
SELECT
    radius,
    PI() * POWER(radius, 2) AS area_of_circle
FROM circles_data_temp;

-- Answer to the question: Parenthesis were only needed due to the use of pi() and power() functions.
