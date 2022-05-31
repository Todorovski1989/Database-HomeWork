USE SEDCACADEMYDB

CREATE TABLE [Students](
[Id] [int] IDENTITY(1,1) NOT NULL,
[FirstName] [nvarchar](100) NULL,
[LastName] [nvarchar](100) NULL,
[DateOfBirth] [date] NULL,
[EnrolledDate] [date] NULL,
[Gender] [nchar](1) NULL,
[NationalIDNumber] [nvarchar](20) NULL,
[StudentCardNumber] [int] NULL
CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED ([Id] ASC)
)

INSERT INTO [Students] ([FirstName], [LastName], [DateOfBirth], [EnrolledDate], [Gender], [NationalIDNumber], [StudentCardNumber])
VALUES ('Bojan', 'Todorovski', '1989-01-18', '2022-05-24', 'M', '1111', '2222')

SELECT * FROM [Students]