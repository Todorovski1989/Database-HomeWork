USE SEDCACADEMYDB

CREATE TABLE [Grade](
[Id] [int] IDENTITY(1,1) NOT NULL,
[StudentID] [int] NULL,
[CourseID] [nvarchar](100) NULL,
[TeacherID] [int] NULL,
[Grade] [int] NULL,
[Comment] [nvarchar](100) NULL,
[CreateDate] [date] NULL
CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED ([Id] ASC)
)