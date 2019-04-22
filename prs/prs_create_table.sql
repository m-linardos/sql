DROP DATABASE IF EXISTS prs;
CREATE DATABASE prs;
USE prs;

-- Table #1
Create table user (
	ID int not null primary key auto_increment,
    UserName varchar(20) not null,
    Password varchar(10) not null,
	FirstName varchar(20) not null,
    LastName varchar(20) not null,
	PhoneNumber varchar(12) not null,
    Email varchar(75) not null,
    IsReviewer tinyint(1) default 1 not null,
    IsAdmin tinyint(1) default 1 not null,
    IsActive tinyint(1) default 1 not null,
    DateCreated datetime default current_timestamp not null,
    DateUpdated datetime default current_timestamp on update current_timestamp not null,
    UpdatedByUser int not null,
    CONSTRAINT uname UNIQUE (UserName)
    );


-- Table #2    
Create table vendor (
	ID int not null primary key auto_increment,	
	Code varchar(10) not null,
    Name varchar(255) not null,
    Address varchar(255) not null,
    City varchar(255) not null,
    State varchar(2) not null,
    Zip varchar(5) not null,
    PhoneNumber varchar(12) not null,
    Email varchar(100) not null,
    IsPreApproved Tinyint(1) default 1 not null,
    IsActive Tinyint(1) default 1 not null,
    DateCreated datetime default current_timestamp not null,
    DateUpdated datetime default current_timestamp not null,
    UpdatedByUser int not null,
    CONSTRAINT vcode UNIQUE (Code)
    );
    
    
    -- table #3
Create table purchaserequest (
	ID int not null primary key auto_increment,	
	UserID int not null,
    Description varchar(100) not null,
    Justification varchar(255) not null,
    DateNeeded date not null,
    DeliveryMode varchar(25) not null,
    Status varchar(20)not null,
    Total decimal(10,2) not null,
    SubmittedDate  datetime default current_timestamp not null,
    ReasonForRejection varchar(100),
    IsActive Tinyint(1) not null,
    DateCreated datetime default current_timestamp not null,
    DateUpdated datetime default current_timestamp not null,
    UpdatedByUser int not null,
	FOREIGN KEY (UserID) references user (ID)    
    );
    
    
     -- table #4
Create table product (
	ID int not null primary key auto_increment,
    VendorID int not null,
    PartNumber varchar(50) not null,
	Name varchar(150) not null,
    Price decimal(10,2) not null,
    Unit varchar(255),
    PhotoPath varchar(255),
	IsActive tinyint(1) default 1 not null,
    DateCreated datetime default current_timestamp not null,
    DateUpdated datetime default current_timestamp not null,
    UpdatedByUser int not null,
    FOREIGN KEY (VendorID) references vendor (ID),
    CONSTRAINT vendor_part UNIQUE (VendorID,PartNumber)
    );  
     
    
     -- table #5
Create table purchaserequestlineitem (
	ID int not null primary key auto_increment,
    PurchaseRequestID int not null,
    ProductID int not null,
    Quantity int not null,
	IsActive tinyint(1) default 1 not null,
    DateCreated datetime default current_timestamp not null,
    DateUpdated datetime default current_timestamp not null,
    UpdatedByUser int not null,
    FOREIGN KEY (ProductID) references product (ID),    
    FOREIGN KEY (PurchaseRequestID) references purchaserequest (ID),
    CONSTRAINT req_pdt UNIQUE (PurchaseRequestID,ProductID)
    );     
   
   
CREATE USER sdb_user@localhost IDENTIFIED BY 'sesame';
	GRANT SELECT, INSERT, DELETE, UPDATE ON sdb.* TO sdb_user@localhost;

-- Table #1 Insert  -->  Datetime getting error
Insert User (ID, UserName, Password, Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (10235, 'adubanowski', '1kelp341', 'Amy', 'Dubanowski', '513-754-3461', 'amy.dubanowski@Cloud9.com', 1, 0, 1, 2004-06-25 12:12:56, 2015-12-26 23:50:30, 10235);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (25641, 'jsimms', 'Haa!yreX', 'Jonah', 'Simms', '513-655-9173', 'jonah.simms@Cloud9.com', 0, 0, 1, , 2014-04-24 08:05:32, 2018-03-27 11:45:12, 36841);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (10653, 'dfox', '$~!e1294', 'Dina', 'Fox', '343-346-9713', 'dina.fox@Cloud9.com', 0, 1, 1, 2016-06-10 17:15:58, 2019-03-15 16:32:01, 36841);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (26484, 'gmcneil', '825642$rest', 'Garrett', 'McNeil', '515-645-3146', 'garrett.mcneil@Cloud9.com', 0, 0, 1, 2008-07-21 15:32:45, 10653);

--Finish dates
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (45564, 'cthompson', '$$!H@ppee', 'Cheyenne', 'Thompson', '643-357-9146', 'cheyenne.thompson@Cloud9.com', 0, 0, 1, 10235);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (36841, 'gsturgis', '347245left', 'Glenn', 'Sturgis', '937-363-5828', 'glenn.sturgis@Cloud9.com', 1, 1, 1, 10653);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (27648, 'bthompson', '$~!e1294', 'Bilbo', 'Thompson', '643-919-6431', 'bilbo.thompson@Cloud9.com', 0, 0, 0, 10653);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (36858, 'maquinoliwanag', '3142pony$@!', 'Mateo Fernando', 'Aquino Liwanag', '515-645-3146', 'mateo.aquinoliwanag@Cloud9.com', 0, 0, 1, 10653);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (24755, 'skaluiokalani', 'IluvJerry@', 'Sandra', 'Kaluiokalani', '342-645-7984', 'sandra.kaluiokalani@Cloud9.com', 0, 0, 1, 10653);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (36671, 'tstaskiewicz', 'rudfarm@', 'Tate', 'Staskiewicz', '937-171-3491', 'tate.staskiewicz@Cloud9.com', 0, 1, 1, 10235);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (26479, 'mvartanian', 'Wise$$@', 'Myrtle', 'Vartanian', '364-645-1793', 'myrtle.vartanian@Cloud9.com', 0, 0, 0, 36841);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (13858, 'mwhite', '3631slet!lk', 'Marcus', 'White', '313-695-4613', 'marcus.white@Cloud9.com', 0, 0, 1, 36841);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (23749, 'skazlauskas', '3melishy145142', 'Sal', 'Kazlauskas', '656-252-3175', 'sal.kazlauskas@Cloud9.com', 0, 0, 0, 10235);


-- Table #2 Insert
Insert vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email, IsPreApproved, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (1024, 'Staples', '342 Happy Valley Rd.', 'Mason', 'OH', '45013', '512-313-1596', 'order@staples.com', 1, 1, 10653);
Insert vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email, IsPreApproved, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (0021, 'Joes Pencil Shop', '354162 Commerce Way', 'Liberty', 'MI', '31546', '525-645-9696', 'joe@joespencilshop.com', 0, 0, 10653);
Insert vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email, IsPreApproved, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (0998, 'Office Mart', '32654 Pete Rose Way', 'Cincinnati', 'OH', '45013', '513-896-3032', 'placeorder@officemart.com', 1, 1, 10653);
Insert vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email, IsPreApproved, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (0456, 'Furniture Frenzy', '23 Frenzy st.', 'Woohoo', 'PA', '63652', '313-969-5641', 'jlawson@furniturefrenzy.com', 0, 0, 10235);
Insert vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email, IsPreApproved, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (1185, 'Ur Snow Removal', '252 Sunny Acre Rd.', 'Simmons', 'IN', '52546', '545-943-8246', 'butch@Ursnowremoval.com', 0, 1, 10235);
Insert vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email, IsPreApproved, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (3521, 'Office Mart', '32654 Pete Rose Way', 'Cincinnati', 'OH', '45013', '513-896-3032', 'placeorder@officemart.com', 1, 1, 36841);
Insert vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email, IsPreApproved, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (0998, 'Cute Creations', '32 Winding Rd.', 'Dragons Pitt', 'IN', '36412', '656-225-3353', 'bunny@cutecreations.com', 1, 0, 10235);


-- Table #4 Insert
Insert product values (63632, 



-- Table #3 Insert / transactional
Insert  purchaserequest (ID, UserID, Description, DateNeeded, DeliveryMode, Status, Total, SubmittedDate, ReasonForRejection, IsActive, UpdatedByUser) values (31365, 36841, 'desk chair', 'My desk chair is broken', 2017-07-03, 'UPS', 'Approved', 123.98, 2017-06-21, null, 0, 10235),
Insert  purchaserequest (ID, UserID, Description, DateNeeded, DeliveryMode, Status, Total, SubmittedDate, ReasonForRejection, IsActive, UpdatedByUser) values (25631, 36841, 'nail polish remover', 'Remove nail polish', 2016-12-15, 'Instacart', 'Not Approved', 2.89, 2016-12-21, 'Unneccesary to perform job.', 0, 10653),
Insert  purchaserequest (ID, UserID, Description, DateNeeded, DeliveryMode, Status, Total, SubmittedDate, ReasonForRejection, IsActive, UpdatedByUser) values (35614, 10653, 'Baby Changing Station', 'Baby Changing Station in family restroom is broken.', 2018-02-14, 'UPS', 'Approved', 315.25, 2018-02-04, null, 0, 10235),
Insert  purchaserequest (ID, UserID, Description, DateNeeded, DeliveryMode, Status, Total, SubmittedDate, ReasonForRejection, IsActive, UpdatedByUser) values (10654, 36841, 'Plane ticket to Jamaica', 'I am tired of working and want to go to Jamaica', 2019-04-30, 'US Mail', 'Denied', 123.98, 2019-06-21, null, 1, 10235),