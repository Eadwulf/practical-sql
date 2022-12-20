CREATE TABLE number_data_types (
	numeric_column NUMERIC(20, 5),
	real_column REAL,
	double_column DOUBLE PRECISION
);

INSERT INTO number_data_types
VALUES
	(.7, .7, .7),
	(3.14159, 3.14159, 3.14159),
	(3.1415926535, 3.1415926535, 3.1415926535);

SELECT * FROM number_data_types;
