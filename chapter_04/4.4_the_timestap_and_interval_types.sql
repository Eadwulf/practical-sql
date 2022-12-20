CREATE TABLE date_time_types (
	timestamp_column TIMESTAMP WITH TIME ZONE,
	interval_column INTERVAL
);

INSERT INTO date_time_types
VALUES
	('2022-11-26 16:45 EST', '2 days'),
	('2022-11-26 16:45 -4', '1 month'),
	('2022-11-26 16:45 Australia/Melbourne', '1 century'),
	(now(), '1 week');

SELECT * FROM date_time_types;
