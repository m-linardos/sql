SELECT * 
	FROM customer 
where sales > 3000000 and sales < 7000000 
	order by sales desc;
    
select name as 'Customer Name', sales as 'Total Sales'
    from customer;