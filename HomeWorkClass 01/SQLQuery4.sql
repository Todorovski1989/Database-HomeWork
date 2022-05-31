USE SEDCACADEMYDB

CREATE TABLE [Course](
[Id] [int] IDENTITY(1,1) NOT NULL,
[Name] [nvarchar](100) NULL,
[Credit] [int] NULL,
[AcademicYear] [date] NULL,
[Semester] [int] NULL
CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED ([Id] ASC)
)