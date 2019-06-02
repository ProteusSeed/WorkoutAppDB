CREATE TABLE dbo.Body_Area
	(
	  Body_Area_Id INT
	 ,Body_Area_Name VARCHAR(50) NOT NULL
	 ,Body_Area_Desc VARCHAR(500) NOT NULL
	 ,CONSTRAINT pk_Body_Area PRIMARY KEY CLUSTERED( Body_Area_Id )
	 ,CONSTRAINT unq_Body_Area_Name UNIQUE( Body_Area_Name )
	 )