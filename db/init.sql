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
    ('Charlotte', 56, 24.24),
    ('Charlotte', 54, 8.54),
    ('Charlotte', 43, 13.30),
    ('New York', 9, 10.90),
    ('New York', 10, 27.10),
    ('New York', 11, 14.20),
    ('New York', 12, 67.30),
    ('New York', 13, 12.40),
    ('New York', 14, 17.10),
    ('New York', 15, 90.70),
    ('New York', 18, 23.10),
    ('New York', 26, 22.40),
    ('San Francisco', 11, 12.20),
    ('San Francisco', 13, 12.10),
    ('San Francisco', 15, 16.40),
    ('San Francisco', 17, 11.50),
    ('San Francisco', 19, 13.70),
    ('San Francisco', 21, 12.20),
    ('San Francisco', 25, 12.80),
    ('San Francisco', 28, 29.30);