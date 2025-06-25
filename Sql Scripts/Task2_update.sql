-- Updating Missing Values --
UPDATE Students SET Age = 21 WHERE StudentID = 2;

UPDATE Students SET City = 'Pune' WHERE StudentID = 5;

UPDATE Enrollments SET CourseID = 104 WHERE StudentID = 4;

UPDATE Enrollments SET Grade = 'A+' WHERE StudentID = 1;

UPDATE Enrollments SET Grade = 'A' WHERE StudentID = 4;