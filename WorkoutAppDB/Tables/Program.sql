CREATE TABLE dbo.Program
	(
	  Program_Id INT IDENTITY(1000, 1)
	 ,Program_Name VARCHAR(50) NOT NULL
	 ,Program_Desc VARCHAR(500) NOT NULL
	 ,CONSTRAINT pk_Program PRIMARY KEY CLUSTERED( Program_Id ) ON [PRIMARY]
	 ,CONSTRAINT unq_Program_Program_Name UNIQUE( Program_Name )
	)