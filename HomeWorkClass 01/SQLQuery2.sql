USE SEDCACADEMYDB

CREATE TABLE [Teacher](
[Id] [int] IDENTITY(1,1) NOT NULL,
[FirstName] [nvarchar](100) NULL,
[LastName] [nvarchar](100) NULL,
[DateOfBirth] [date] NULL,
[AcademicRanc] [nvarchar](100) NULL,
[HireDate] [date] NULL
CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED ([Id] ASC)
)