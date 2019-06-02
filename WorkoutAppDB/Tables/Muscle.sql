CREATE TABLE dbo.Muscle
	(
	  Muscle_Id INT
	 ,Muscle_Name VARCHAR(50) NOT NULL
	 ,Body_Part_Id INT NOT NULL
	 ,CONSTRAINT pk_Muscle PRIMARY KEY CLUSTERED( Muscle_Id ) 
	 ,CONSTRAINT unq_Muscle_Name UNIQUE( Muscle_Name )
	)