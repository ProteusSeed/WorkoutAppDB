CREATE TABLE dbo.Excercise
	(
	  Excercise_Id INT IDENTITY(1,1)
	 ,Excercise_Name VARCHAR(50) NOT NULL
	 ,Excercise_Desc VARCHAR(500) NOT NULL
	 ,CONSTRAINT pk_Excercise PRIMARY KEY CLUSTERED( Excercise_Id )
	 ,CONSTRAINT unq_Excercise_Name UNIQUE( Excercise_Name )
	)