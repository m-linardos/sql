-- SELECT * FROM customer
-- WHERE name like 'A%';
-- or name like 'D%';
select * from customer
where neme like 'A%'
and state = 'NJ';
-- Use a Regular Expression Expression to return all records with names starting with a vowel

select * from customer
where name REGEXP "^{aeiou}.*";