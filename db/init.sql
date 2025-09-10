CREATE TABLE trips (
    id SERIAL PRIMARY KEY,
    city TEXT NOT NULL,
    minutes INT NOT NULL,
    fare NUMERIC(6,2) NOT NULL
);

INSERT INTO trips (city, minutes, fare) VALUES
    ('Charlotte', 12, 12.50),
    ('Charlotte', 21, 20.00),
    ('Charlotte', 34, 19.35),
    ('Los Angeles', 56, 24.24),
    ('Los Angeles', 54, 8.54),
    ('Los Angeles', 43, 13.30),
    ('New York', 9, 10.90),
    ('New York', 10, 27.10),
    ('New York', 11, 14.20),
    ('Chicago', 12, 67.30),
    ('Chicago', 13, 12.40),
    ('Chicago', 14, 17.10),
    ('Houston', 15, 90.70),
    ('Houston', 18, 23.10),
    ('Houston', 26, 22.40),
    ('San Francisco', 11, 12.20),
    ('San Francisco', 13, 12.10),
    ('San Francisco', 15, 16.40),
    ('Seattle', 17, 11.50),
    ('Seattle', 19, 13.70),
    ('Seattle', 21, 12.20),
    ('Boston', 25, 12.80),
    ('Boston', 28, 29.30),
    ('Boston', 26, 22.40);