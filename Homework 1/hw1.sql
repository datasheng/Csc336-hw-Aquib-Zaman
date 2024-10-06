-- Creating the student table
CREATE TABLE student (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    start_year INTEGER,
    major VARCHAR(5)
);

-- Inserting 50 rows of data into the student table
INSERT INTO student (first_name, last_name, start_year, major) VALUES
('Johnny', 'Doe', 2022, 'comp'),
('Alice', 'Johnson', 2021, 'math'),
('Bob', 'Smith', 2023, 'biol'),
('David', 'Davis', 2020, 'hist'),
('Emily', 'Lee', 2022, 'phys'),
('Frank', 'Brown', 2021, 'comp'),
('Grace', 'White', 2022, 'math'),
('Henry', 'Garcia', 2023, 'biol'),
('Isabel', 'Taylor', 2020, 'hist'),
('Jack', 'Martinez', 2022, 'phys'),
('Oscar', 'Reed', 2021, 'comp'),
('Penelope', 'Turner', 2022, 'math'),
('Quentin', 'Adams', 2023, 'biol'),
('Rachel', 'Nelson', 2021, 'hist'),
('Samuel', 'Cook', 2022, 'phys'),
('Taylor', 'Morris', 2020, 'comp'),
('Ulysses', 'Simmons', 2022, 'math'),
('Victoria', 'Bryant', 2021, 'biol'),
('William', 'Cooper', 2023, 'hist'),
('Xander', 'Howard', 2021, 'phys'),
('Zoe', 'Fisher', 2022, 'comp'),
('Grace', 'Turner', 2021, 'hist'),
('Henry', 'Stewart', 2022, 'phys'),
('Isabel', 'Hughes', 2020, 'comp'),
('Jack', 'Simmons', 2022, 'math'),
('Karen', 'Richardson', 2023, 'biol'),
('Leo', 'Carter', 2021, 'hist'),
('Megan', 'Wright', 2022, 'phys'),
('Adam', 'Rodriguez', 2021, 'math'),
('Bella', 'Barnes', 2023, 'biol'),
('Chris', 'Ward', 2019, 'hist'),
('Dana', 'Olson', 2019, 'phys'),
('Edward', 'Price', 2019, 'comp'),
('Fiona', 'Wright', 2020, 'math'),
('George', 'Reed', 2023, 'biol'),
('Hazel', 'Murphy', 2021, 'hist'),
('Isaac', 'Powell', 2022, 'phys'),
('Jasmine', 'Lopez', 2019, 'comp'),
('Kevin', 'Perry', 2021, 'math'),
('Laura', 'Russell', 2023, 'biol'),
('Michael', 'Harris', 2019, 'hist'),
('Nina', 'Jenkins', 2022, 'phys');

-- 1. Full names of students who started in 2019
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM student
WHERE start_year = 2019;

-- 2. Majors of Laura and Dana
SELECT major
FROM student
WHERE first_name IN ('Laura', 'Dana');

-- 3. Start years of students who major in Biology (distinct values)
SELECT DISTINCT start_year
FROM student
WHERE major = 'biol';
