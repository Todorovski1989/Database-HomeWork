--Calculate the count of all grades per Teacher in the system

SELECT TeacherID, SUM(Grade) as totalGrades FROM Grade
GROUP BY TeacherID

--Calculate the count of all grades per Teacher in the system for first 100 Students (ID < 100)

SELECT TeacherID, SUM (Grade) as totalGrades FROM Grade
WHERE StudentID < 100
GROUP BY TeacherID

--Find the Maximal Grade, and the Average Grade per Student on all grades in the system

SELECT StudentID, Student.FirstName, MAX(Grade) as maxGrade, AVG(Grade) as avgGrade FROM Grade
JOIN Student on StudentID = Student.Id
GROUP BY StudentID, Student.FirstName
ORDER BY AVG(Grade) DESC

--Calculate the count of all grades per Teacher in the system and filter only grade count greater then 200

SELECT TeacherID, SUM(Grade) as totalGrades FROM Grade
GROUP BY TeacherID
HAVING SUM(Grade) > 2000

--Find the Grade Count, Maximal Grade, and the Average Grade per Student on all grades in the system. 
--Filter only records where Maximal Grade is equal to Average Grade

SELECT StudentID, Student.FirstName, SUM(Grade) AS gradeCount, MAX(Grade) as maxGrade, AVG(Grade) as avgGrade FROM Grade
JOIN Student on StudentID = Student.Id
GROUP BY StudentID, Student.FirstName
HAVING MAX(Grade) = AVG(Grade)

--List Student First Name and Last Name next to the other details from previous query

SELECT StudentID, Student.FirstName, Student.LastName, SUM(Grade) AS gradeCount, MAX(Grade) as maxGrade, AVG(Grade) as avgGrade FROM Grade
JOIN Student on StudentID = Student.Id
GROUP BY StudentID, Student.FirstName, Student.LastName
HAVING MAX(Grade) = AVG(Grade)

--Create new view (vv_StudentGrades) that will List all StudentIds and count of Grades per student
GO;
CREATE VIEW vw_StudentGrades AS
(
	SELECT StudentID, SUM(Grade) as gradeCount FROM Grade
	GROUP BY StudentID
);
GO;
SELECT * FROM vw_StudentGrades 

--Change the view to show Student First and Last Names instead of StudentID
GO;
ALTER VIEW vw_StudentGrades AS
(
	SELECT Student.FirstName, Student.LastName, SUM(Grade) as gradeCount FROM [Grade]
	INNER JOIN Student on StudentID = Student.Id
	GROUP BY Student.FirstName, Student.LastName
);
GO;
SELECT * FROM vw_StudentGrades

--List all rows from view ordered by biggest Grade Count
GO;
ALTER VIEW vw_StudentGrades AS
(
	SELECT TOP 1000 Student.FirstName, Student.LastName, SUM(Grade) as gradeCount FROM [Grade]
	INNER JOIN Student on StudentID = Student.Id
	GROUP BY Student.FirstName, Student.LastName
	ORDER BY SUM(Grade) DESC
);
GO;
SELECT * FROM vw_StudentGrades