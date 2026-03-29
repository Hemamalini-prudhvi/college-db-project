-- Create Database
CREATE DATABASE college_db;

-- Use Database
USE college_db;

-- Create Student Table
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    class VARCHAR(10)
);

-- Create Course Table
CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

-- Create Marks Table (after student & course)
CREATE TABLE marks (
    student_id INT,
    course_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

-- Insert Data into Student
INSERT INTO student VALUES (1, 'Hema', 20, 'BCA');
INSERT INTO student VALUES (2, 'Krishna', 21, 'BBA');

-- Insert Data into Course
INSERT INTO course VALUES (101, 'Maths');
INSERT INTO course VALUES (102, 'Computer Science');

-- Insert Data into Marks
INSERT INTO marks VALUES (1, 101, 95);
INSERT INTO marks VALUES (1, 102, 90);
INSERT INTO marks VALUES (2, 101, 85);

-- View Tables
SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM marks;

-- JOIN Query (Main Logic)
SELECT s.name, c.course_name, m.marks
FROM student s
JOIN marks m ON s.id = m.student_id
JOIN course c ON c.course_id = m.course_id;

-- Update Example
UPDATE student
SET age = 22
WHERE id = 1;

-- Delete Example
DELETE FROM student
WHERE id = 2;

-- Add New Column (Optional)
ALTER TABLE student
ADD email VARCHAR(50);