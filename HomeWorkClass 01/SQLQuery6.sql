USE SEDCACADEMYDB

CREATE TABLE [AchievmentType](
[Id] [int] IDENTITY(1,1) NOT NULL,
[Name] [nvarchar](100) NULL,
[Description] [nvarchar](100) NULL,
[ParticipationRate] [nvarchar](100) NULL
CONSTRAINT [PK_AchievmentType] PRIMARY KEY CLUSTERED ([Id] ASC)
)