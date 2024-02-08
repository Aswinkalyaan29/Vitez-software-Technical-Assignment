create database attedndance 

use attedndance 


CREATE TABLE Studentt (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name varchar(100) ,
    RollNumber varchar(50) 
);
 

CREATE TABLE Attendance (
   AttendanceId INT constraint Attendance_AttendanceId_PK primary key IDENTITY(1,1),
    StudentId INT constraint Attendance_StudentId_FK FOREIGN KEY REFERENCES Studentt(Id),
    CreateDate DATE ,
	UpdateDate DATE );


insert into Studentt (Name,RollNumber)values ('Shiva',1001),('sai',1002),('charan',1003);
insert into Attendance (StudentId,CreateDate,UpdateDate)values(1,'2024-02-07','2024-02-10');

select * from Studentt

select * from Attendance