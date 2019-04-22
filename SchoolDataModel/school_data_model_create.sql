DROP DATABASE IF EXISTS sdb;
CREATE DATABASE sdb;
USE sdb;

Create table Course (
	ID int not null primary key auto_increment,
	Number INT unique not null,
	Subject varchar(25) not null,
    Name varchar(25) not null
    );
    

    
Create table Student (
ID int not null primary key auto_increment,	
	FirstName varchar(25) not null,
    LastName varchar(25) not null,
    StreetAddress varchar(25),
    City varchar(25),
    State varchar(25),
    Zip varchar(5),
    Birthdate date not null,
    Phonenumber varchar(12) not null,
    email varchar(25) not null,
    SSN varchar(11) not null
    );
    
Create table Enrollment (
ID int not null primary key auto_increment,	
StudentID int,
CourseID int,
Grade decimal(5,2),
FOREIGN KEY (StudentID) references Student (ID),
FOREIGN KEY (CourseID) references Course (ID)
);

Create table Instructor (
ID int not null primary key auto_increment,	
	CourseID int,
    FirstName varchar(25) not null,
    LastName varchar(25) not null,
    FOREIGN KEY (CourseID) references Course (ID)
    );

Insert Course (ID, Number, Subject, Name) Values (1,30145, 'History','American Civil War Period');
Insert Course (ID, Number, Subject, Name) Values (2,110654, 'History','Modern History');


Insert Student (FirstName, LastName, StreetAddress, City, State, Zip, Birthdate, PhoneNumber, Email, SSN) 
	Values ('John','Archdeacon','6356 Happy Path Lane', 'Mason', 'OH','45040','1989-12-08', '513-82-4012', 'Happyme@gmail.com', '270-88-0288');
Insert Student (FirstName, LastName, StreetAddress, City, State, Zip, Birthdate, PhoneNumber, Email, SSN) 
	Values ('Sean','Blessing','232 Oxford Street', 'Fairfield', 'OH','45011','1969-03-05', '513-83-5022', 'Blessed@gmail.com', '270-88-0288');
    
Insert Instructor (CourseID, FirstName, LastName) Values (1,'Mary','Jones');
Insert Instructor (CourseID, FirstName, LastName) Values (1,'Alexx','Kastrup');
Insert Instructor (CourseID, FirstName, LastName) Values (2,'Sammy','Linardos');


-- Insert Enrollment (StudentID, Grade) Values (1, '64547351','321','American Civil War Period');


-- CREATE USER sdb_user@localhost IDENTIFIED BY 'sesame';
-- GRANT SELECT, INSERT, DELETE, UPDATE ON sdb.* TO sdb_user@localhost;





