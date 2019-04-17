SELECT name as 'Contact Name', 
	concat(city, ', ', state) as 'Location',
	concat('$', format(sales, ))as 'Sales'
from customer;