USE [DB_A2A837_talentnewDB]
GO
/****** Object:  StoredProcedure [dbo].[_drdateavailable]    Script Date: 05-06-2022 16:37:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[_drdateavailable]
(@drdate datetime,
@patientdate datetime)
as
--set @drdate=CONVERT(date,@drdate,103)
declare @patientdates varchar(50)


select @patientdates=DATEOFAPPOINTMENT from medicalform where DATEOFAPPOINTMENT=@patientdate

if
@patientdates<>@drdate



 begin
 --insert into drdateavailable(drdate,patientdate)
 --values(@drdate,@patientdate)

 select 'success' as Status,'Appointment Not Available'  as msg
 end
GO
/****** Object:  StoredProcedure [dbo].[_MedicalForm]    Script Date: 05-06-2022 16:37:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[_MedicalForm] --'22','priya','priya@12gmail.com','1234567896','111'
(
	@MEMBERID varchar(50) ,
	@NAME varchar(50) ,
	@EMAIL varchar(50) ,
	@MOBILENO varchar(50) ,
	@AGE varchar(50) ,
	
	@DOB varchar(50) ,
	@BLOODGROUP VARCHAR(50) ,
	@ADDRESS varchar(500),
	@DATEOFAPPOINTMENT varchar(50),
	
	@PATIENTDOC varchar(50) 


)
as
set @DATEOFAPPOINTMENT=CONVERT(date,@DATEOFAPPOINTMENT,103)
set @DOB=CONVERT(date,@DOB,103)
begin


	
	insert into MedicalForm (MEMBERID,NAME,EMAIL,MOBILENO,AGE,DOB,BLOODGROUP,ADDRESS,DATEOFAPPOINTMENT,PATIENTDOC)values(@MEMBERID,@NAME,@EMAIL,@MOBILENO,@AGE,@DOB,@BLOODGROUP,@ADDRESS,@DATEOFAPPOINTMENT,@PATIENTDOC)

select 'success' as Status,'Added Successfully'  as msg
end




--select * from SIGNUP
--update signup set role=3
GO
