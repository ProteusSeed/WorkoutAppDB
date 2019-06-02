CREATE TABLE dbo.Workout
	(
	  Workout_DateTime DATETIME
	 ,Program_Version_Id INT
	 ,Workout_Note VARCHAR(MAX)
	 ,CONSTRAINT pk_Workout PRIMARY KEY CLUSTERED( Workout_DateTime, Program_Version_Id )
	)