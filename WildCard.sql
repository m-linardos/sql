insert into customer
values (14, 'Fender', 'Scottsdale', 'AZ', 456789000,1);
select* from customer
	where name like 'a%'
		and state = 'NJ';