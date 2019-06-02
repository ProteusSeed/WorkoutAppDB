
--sp_help 'Excercise'
INSERT dbo.Excercise(Excercise_Name,Excercise_Desc)
values('Squat','Squat with bar behind shoulders');

INSERT dbo.Excercise(Excercise_Name,Excercise_Desc)
values('Bench Press','Bench Press'),
	('Power Clean','Power Clean'),
	('Military Press','Military Press');

--sp_help 'Program'
INSERT dbo.Program(Program_Name,Program_Desc)
values('Starting Strength','Mark Ripptoe''s Starting Strength')

--sp_help 'Program_Version'
INSERT dbo.Program_Version(
	 Program_Id
	,Program_Version_Desc
	,Program_Version_Date_Active
	)
select 
	 Program_Id
	,'Starting Strength Basic'
	,getdate()
--select *
from dbo.Program
where Program_Name = 'Starting Strength'

INSERT dbo.Program_Version(
	 Program_Id
	,Program_Version_Desc
	,Program_Version_Date_Active
	)
select 
	 Program_Id
	,'Starting Strength Advanced'
	,getdate()
--select *
from dbo.Program
where Program_Name = 'Starting Strength'

--sp_help 'Program_Version_Excercise'
INSERT dbo.Program_Version_Excercise
	(
	 Program_Version_ID
	,Excercise_Id
	,Number_Of_Sets
	,Number_Of_Reps
	)
select
	 Program_Version_ID
	,Excercise_Id
	,Number_Of_Sets = 6
	,Number_Of_Reps = 5
--select *
from dbo.Program_Version pv
cross join excercise e
where pv.Program_Version_Desc='Starting Strength Basic'
	and e.Excercise_Name = 'Squat'

INSERT dbo.Program_Version_Excercise
	(
	 Program_Version_ID
	,Excercise_Id
	,Number_Of_Sets
	,Number_Of_Reps
	)
select
	 Program_Version_ID
	,Excercise_Id
	,Number_Of_Sets = 6
	,Number_Of_Reps = 5
--select *
from dbo.Program_Version pv
cross join excercise e
where pv.Program_Version_Desc='Starting Strength Basic'
	and e.Excercise_Name IN( 'Military Press','Bench Press','Power Clean')


--select * from excercise e