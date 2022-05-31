USE SEDCACADEMYDB

--Find all Students  with FirstName = Antonio

SELECT * FROM Student
WHERE FirstName = 'Antonio'

--Find all Students with DateOfBirth greater than ‘01.01.1999’

SELECT * FROM Student
WHERE DateOfBirth > '1999-01-01'

--Find all Students with LastName starting With ‘J’ enrolled in January/1998

SELECT * FROM Student
WHERE LastName like 'J%' and EnrolledDate between '1998-01-01' and '1998-01-31'

--List all Students ordered  by FirstName

SELECT * FROM Student
ORDER BY FirstName ASC

--List all Teacher  Last Names and Student Last Names in single result set. Remove  duplicates

SELECT [LastName]
FROM Teacher
UNION 
SELECT [LastName]
FROM Student

--Create  Foreign key constraints  from diagram or with script

ALTER TABLE [dbo].[Grade] WITH CHECK
ADD CONSTRAINT [FK_Grade_Student]
FOREIGN KEY ([StudentId])
REFERENCES [dbo].[Student] ([Id])

--List all possible combinations  of Courses  names and AchievementType names that can be passed  by student

SELECT C.Name, A.Name FROM Course AS C
CROSS JOIN AchievementType AS A

--List all Teachers  without exam Grade

SELECT * FROM Teacher AS T
LEFT JOIN Grade AS G
ON T.Id = G.Grade
WHERE G.Id IS NULL
