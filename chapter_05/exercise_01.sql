-- First, let's create a table to store the imaginary data
CREATE TABLE imaginary_cinema (
	id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	movie text,
	actor text
);

COPY imaginary_cinema
FROM '$HOME/workspace/practical-sql/chapter_05/imaginary_text_file.csv'
WITH (FORMAT CSV, HEADER, QUOTE '#', DELIMITER ':');

/* TABLE imaginary_cinema; returns:
 id |         movie         |   actor
----+-----------------------+------------
 50 | #Mission: Impossible# | Tom Cruise
(1 row)
*/

