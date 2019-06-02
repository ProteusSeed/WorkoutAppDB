CREATE TABLE dbo.Body_Part
	(
	  Body_Party_ID INT
	 ,Body_Part_Name VARCHAR(50) NOT NULL
	 ,Body_Party_Area_Id INT NOT NULL
	 ,CONSTRAINT pk_Body_Part PRIMARY KEY CLUSTERED( Body_Party_ID )
	 ,CONSTRAINT unq_Body_Part_Name UNIQUE( Body_Part_Name )
	)