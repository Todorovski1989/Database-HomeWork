USE SEDCACADEMYDB

CREATE TABLE [GradeDetails](
[Id] [int] IDENTITY(1,1) NOT NULL,
[GradeID] [int] NULL,
[AchievmentTypeID] [int] NULL,
[AchievmentPoints] [int] NULL,
[AchievmentMaxPoints] [int] NULL,
[AchievmentDate] [date] NULL
CONSTRAINT [PK_GradeDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
)