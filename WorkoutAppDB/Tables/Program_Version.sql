CREATE TABLE dbo.Program_Version
	(
	  Program_Version_ID INT IDENTITY(1,1)
	 ,Program_Id INT NOT NULL
	 ,Program_Version_Desc VARCHAR(500) NOT NULL
	 ,Program_Version_Date_Active DATETIME CONSTRAINT df_Program_Version_Date  DEFAULT( GETDATE() ) NOT NULL
	 ,CONSTRAINT pk_Program_Version PRIMARY KEY CLUSTERED( Program_Version_ID )	 
	)