DROP DATABASE IF EXISTS mma;
CREATE DATABASE mma;
USE mma;

CREATE TABLE Product (
ID int not null primary key auto_increment,
code int (10),
description varchar (120),
price decimal (10,2)
);


 CREATE TABLE Lineitem_m (
 ID int not null auto_increment,
 invoiceid int (10),
 Product_id (10),
 quantity (10);
 FOREIGN KEY ('productid') references 'product' ('id'),
 FOREIGN KEY (`invoiceid`) REFERENCES `invoice` (`id`)
 );
 
 
 CREATE TABLE Invoice (
 ID int not null primary key auto_increment,
 ordernumber int (10),
 customername (30),
 orderdate dat,
 total int (10,2)
 );
 
 
 
 