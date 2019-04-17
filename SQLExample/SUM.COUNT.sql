
select sum(amount) as 'total'
from transactions;

select count(*) from transactions 
where TransactionType = 'Deposit';
