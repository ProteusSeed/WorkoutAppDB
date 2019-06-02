CREATE TABLE dbo.Workout_Excercise
	(
	  Workout_DateTime DATETIME
	 ,Program_Version_Id INT
	 ,Excercise_Id INT NOT NULL
	 ,Weight SMALLINT NOT NULL
	 ,Set_Number TINYINT NOT NULL
	 ,Rep_Number TINYINT NOT NULL
	 ,Workout_Excercise_Note VARCHAR(MAX)
	 ,Workout_Excercise_DateTime DATETIME NOT NULL CONSTRAINT def_Workout_Excercise_DateTime DEFAULT( GETDATE() )
	 ,CONSTRAINT pk_Workout_Excercise PRIMARY KEY CLUSTERED( Workout_DateTime, Program_Version_Id, Set_Number ) 
	)