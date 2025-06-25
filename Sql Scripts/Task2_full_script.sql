-- Creating Tables (Students, Courses, and Enrollments) --

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(150),
    Age INT,
    Gender VARCHAR(5),
    City VARCHAR(50)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollDate DATE,
    Grade STRING,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses (CourseID)
);

-- Inserting Data Into Tables --

INSERT INTO Students (StudentID, Name, Email, Age, Gender, City) VALUES
(1, 'Aman Sharma', 'aman@gmail.com', 20, 'M', 'Mumbai'),
(2, 'Priya Verma', 'priya@gmail.com', NULL, 'F', 'Delhi'),
(3, 'Ravi Kumar', 'ravi@outlook.com', 22, 'M', NULL),
(4, 'Sneha Joshi', 'sneha@gmail.com', NULL, 'F', NULL),
(5, 'Atharva Patil', 'atharava@gmail.com', 23, 'M', NULL);

INSERT INTO Courses (CourseID, CourseName, Credits) VALUES
(101, 'Data Structures', 4),
(102, 'Database Systems', 3),
(103, 'Web Development', 3),
(104, 'Data Engineering',2),
(105, 'DevOps',4);

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollDate, Grade) VALUES
(1, 1, 101, '2025-05-01', 'A'),
(2, 2, 102, '2025-05-01', NULL),
(3, 3, 103, '2025-05-02', 'B'),
(4, 4, 101, '2025-05-03', NULL),
(5, 5, 105, '2025-05-01', 'B');

-- Updating Missing Values --
UPDATE Students SET Age = 21 WHERE StudentID = 2;

UPDATE Students SET City = 'Pune' WHERE StudentID = 5;

UPDATE Enrollments SET CourseID = 104 WHERE StudentID = 4;

UPDATE Enrollments SET Grade = 'A+' WHERE StudentID = 1;

UPDATE Enrollments SET Grade = 'A' WHERE StudentID = 4;

-- Deleting enrollment record with no Grade --
DELETE FROM Enrollments WHERE Grade IS NULL;

-- Deleting enrollments where enrolled date is 03-05-2025 or more --
DELETE FROM Enrollments WHERE EnrollDate >= '2025-05-03' ;