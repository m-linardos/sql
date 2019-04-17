DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
use bank_db;

CREATE TABLE Transactions (
ID int not null primary key auto_increment,
amouunt  decimal (6,2),
txn_type text (12),
account_ID numeric (5)
);
    
    INSERT Transactions Values (50000, 'Deposit',3);
     INSERT Transactions Values (-20000, 'Withdrawal',4);
      INSERT Transactions Values (20000, 'Deposit',4);
       INSERT Transactions Values (24800, 'Deposit',1);
    
    CREATE TABLE Accounts (
ID int not null primary key auto_increment,
account_holder nvarchar (30) NOT NULL,
 balance decimal (6,2),
fee decimal (6,2));

 INSERT Accounts Values ('Anna Bengel', 888800, 25000);
  INSERT Accounts Values ('Chase Williams', 544400, 17500);
   INSERT Accounts Values ('Jonelle Wehrman', 333300, 8800);
    INSERT Accounts Values ('Steven Ross', 332200, 8800);