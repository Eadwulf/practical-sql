/*
CREATE TABLE char_data_types (
	char_column char(10),
	varchar_column varchar(10),
	text_column text
);

INSERT INTO char_data_types
VALUES
	('abc', 'abc', 'abc'),
	('defghi', 'defghi', 'defghi');
*/

COPY char_data_types TO '/home/adolfoj/workspace/typetest.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

