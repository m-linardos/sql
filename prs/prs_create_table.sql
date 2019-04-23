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
    IsActive Tinyint(1) default 1 not null,
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
   
   
   -- Table #1 user Insert  
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (10235, 'adubanowski', '1kelp41', 'Amy', 'Dubanowski', '513-754-3461', 'amy.dubanowski@Cloud9.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 10235);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (25641, 'jsimms', 'Haa!yX', 'Jonah', 'Simms', '513-655-9173', 'jonah.simms@Cloud9.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 36841);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (10653, 'dfox', '$~!e124', 'Dina', 'Fox', '343-346-9713', 'dina.fox@Cloud9.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 36841);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (26484, 'gmcneil', '8252$rt', 'Garrett', 'McNeil', '515-645-3146', 'garrett.mcneil@Cloud9.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 10653);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (45564, 'cthompson', '$H@ppee', 'Cheyenne', 'Thompson', '643-357-9146', 'cheyenne.thompson@Cloud9.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 10235);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (36841, 'gsturgis', '34724t', 'Glenn', 'Sturgis', '937-363-5828', 'glenn.sturgis@Cloud9.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 10653);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (27648, 'bthompson', '$~1294', 'Bilbo', 'Thompson', '643-919-6431', 'bilbo.thompson@Cloud9.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 10653);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (36858, 'maquinoliwanag', '3142po$@!', 'Mateo Fernando', 'Aquino Liwanag', '515-645-3146', 'mateo.aquinoliwanag@Cloud9.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 10653);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (24755, 'skaluiokalani', 'Iluvrry@', 'Sandra', 'Kaluiokalani', '342-645-7984', 'sandra.kaluiokalani@Cloud9.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 10653);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (36671, 'tstaskiewicz', 'rIfarm@', 'Tate', 'Staskiewicz', '937-171-3491', 'tate.staskiewicz@Cloud9.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 10235);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (26479, 'mvartanian', 'Wise$$@', 'Myrtle', 'Vartanian', '364-645-1793', 'myrtle.vartanian@Cloud9.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 36841);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (13858, 'mwhite', '36et!lk', 'Marcus', 'White', '313-695-4613', 'marcus.white@Cloud9.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 36841);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (23749, 'skazlauskas', '3melis42', 'Sal', 'Kazlauskas', '656-252-3175', 'sal.kazlauskas@Cloud9.com', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 10235);

 -- Table #2 vendor Insert
Insert vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email, IsPreApproved, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (100024, '101', 'Staples', '342 Happy Valley Rd.', 'Mason', 'OH', '45013', '512-313-1596', 'order@staples.com', default, default, default, default, 10653);
Insert vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email, IsPreApproved, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (100021, '075', 'Joes Pencil Shop', '354162 Commerce Way', 'Liberty', 'MI', '31546', '525-645-9696', 'joe@joespencilshop.com', default, default, default, default,  10653);
Insert vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email, IsPreApproved, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (100998, '125', ' Office Mart', '32654 Pete Rose Way', 'Cincinnati', 'OH', '45013', '513-896-3032', 'placeorder@officemart.com', default, default, default, default, 10653);
Insert vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email, IsPreApproved, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (090456, '232', 'Furniture Frenzy', '23 Frenzy st.', 'Woohoo', 'PA', '63652', '313-969-5641', 'jlawson@furniturefrenzy.com', default, default, default, default, 10235);
Insert vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email, IsPreApproved, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (091185, '022', 'Ur Snow Removal', '252 Sunny Acre Rd.', 'Simmons', 'IN', '52546', '545-943-8246', 'butch@Ursnowremoval.com', default, default, default, default, 10235);
Insert vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email, IsPreApproved, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (073521, '275', 'Office Depot', '32654 Pete Rose Way', 'Cincinnati', 'OH', '45013', '513-896-3032', 'placeorder@officemart.com', default, default, default, default, 36841);
Insert vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email, IsPreApproved, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (100648, '145', 'Cute Creations', '32 Winding Rd.', 'Dragons Pitt', 'IN', '36412', '656-225-3353', 'bunny@cutecreations.com', default, default, default, default, 10235);
 

-- Table #4 product Insert
Insert product (ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (100324, 073521, '3654UE1', 'Earphones', 5.99, '12', null, default, default, default, 10235);
Insert product (ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (364578, 100024, '253649', 'No. 2 Pencil', 1.00, '8', null, default, default, default, 10235);
Insert product (ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (031485, 100648, '306', 'Blue Table Runner', 16.50, '1', 'https://wwww.crutecreations.com/tablerunnerblue', default, default, default, 10653);
Insert product (ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath, IsActive, DateCreated, DateUpdated, UpdatedByUser) Values (053461, 091185, '306', 'Snow Removal', 150.00, null, null, default, default, default, 36841);


CREATE USER prs_user@localhost IDENTIFIED BY 'happydays';
	GRANT SELECT, INSERT, DELETE, UPDATE ON prs.* TO prs_user@localhost;
