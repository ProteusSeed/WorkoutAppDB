CREATE TABLE dbo.Program_Version_Excercise
	(
	  Program_Version_ID INT 
	 ,Excercise_Id INT 
	 ,Number_Of_Sets TINYINT NOT NULL
	 ,Number_Of_Reps TINYINT NOT NULL
	 ,CONSTRAINT pk_Program_Version_Excercise PRIMARY KEY CLUSTERED( Program_Version_ID, Excercise_Id )
	 )