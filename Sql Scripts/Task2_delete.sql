-- Deleting enrollment record with no Grade --
DELETE FROM Enrollments WHERE Grade IS NULL;

-- Deleting enrollments where enrolled date is 03-05-2025 or more --
DELETE FROM Enrollments WHERE EnrollDate >= '2025-05-03' ;