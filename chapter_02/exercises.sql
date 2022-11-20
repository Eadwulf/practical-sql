-- Create animal table
CREATE TABLE animal (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    animal_name VARCHAR(50),
    quantity INTEGER
);

-- Create amimal_characteristics table
CREATE TABLE animal_characteristics (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    animal_type VARCHAR(50),
    domain VARCHAR(50),
    kingdom VARCHAR(50),
    live_time INTEGER,
    predator BOOLEAN,
    animal_id BIGINT REFERENCES animal(id),
    UNIQUE(animal_id)
);

-- Inser data into animal table
INSERT INTO animal (animal_name, quantity)
VALUES ('Western Taipan', 10),
        ('Assasin Caterpillar', 5),
        ('Sidney Funnel-Web Spider', 15),
        ('Golden Poison Frog', 7),
        ('Hammerhead Worm', 54);

-- Inser data into animal_characteristics table
INSERT INTO animal_characteristics (animal_type, domain, kingdom, live_time, predator)
VALUES  ('Reptilia', 'Eukaryotic', 'Animalia', 15, TRUE),
        ('Insecta', 'Eukaryotic', 'Animalia', 0, FALSE),
        ('Arachnida', 'Eukaryotic', 'Animalia', 2, TRUE),
        ('Amphibian', 'Eukaryotic', 'Animalia', 10, TRUE),
        ('Bipalium', 'Eukaryotic', 'Animalia', 9999999, TRUE);

-- Relate animal_characteristics' rows to animal's rows
UPDATE animal_characteristics SET animal_id = 1 WHERE id = 1;
UPDATE animal_characteristics SET animal_id = 2 WHERE id = 2;
UPDATE animal_characteristics SET animal_id = 3 WHERE id = 3;
UPDATE animal_characteristics SET animal_id = 4 WHERE id = 4;
UPDATE animal_characteristics SET animal_id = 5 WHERE id = 5;