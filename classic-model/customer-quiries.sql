select * from customers;

-- select by primary key
select * from customers
where customerNumber = 131;

-- count function
select count(*) from customers;

-- count with an alias, shorthand
select count(*)  row_count 
from customers;

-- select sum of credit limits
select sum(creditLimit) 
from customers;

-- avg and format function
select format (avg(creditlimit),2)
from customers;


-- -- group by:  avg and format and concat function by country
select country, concat('$',format(avg(creditlimit),2)) as avg_credit_limit
from customers
group by country
order by avg(creditlimit) desc;

---- -- group by, having:  avg and format and concat function by country where average is greater than zero
select country, concat('$',format(avg(creditlimit),2)) as avg_credit_limit
from customers
group by country
having avg(creditlimit) > 0
order by avg(creditlimit) desc;

-- max creditlimit
select max(creditlimit)
from customers;

-- min creditlimit
select min(creditlimit)
from customers;



