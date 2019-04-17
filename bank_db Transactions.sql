DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
use bank_db;

-- CREATE TABLE Transactions (
-- ID int not null primary key auto_increment,
	-- amouunt  decimal (6,2),
    -- txn_type text (12),
    -- account_ID numeric (5)
    -- );
    
    INSERT Transactions Values (50000, 'Deposit',3);
     INSERT Transactions Values (-20000, 'Withdrawal',4);
      INSERT Transactions Values (20000, 'Deposit',4);
       INSERT Transactions Values (24800, 'Deposit',1);
    