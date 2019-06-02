CREATE TABLE dbo.Excercise_Muscle
	(
	  Excercise_Id INT 
	 ,Muscle_Id INT
	 ,CONSTRAINT pk_Excercise_Id_Muscle_Id PRIMARY KEY( Excercise_Id, Muscle_Id )
	)