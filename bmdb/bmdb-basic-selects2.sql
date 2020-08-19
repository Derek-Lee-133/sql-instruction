SELECT * FROM movie;

select year,count(*)
 from movie
  group by (year)
   order by count(*) desc;
   
select rating,count(*)
from movie
 group by (rating)
  order by count(*) asc;

select * from movie;


select * from movie
where rating = 'r';

select 'director',count(*)
from movie
where 'director' = 'John carpenter';

select * from movie
where 'director' = 'john carpenter';

select *  from movie 
where 'name' = 'john carpenter';

select * from movie
where rating = 'r';

select * from movie 
where director = 'john carpenter';

select   *
from movie
where year > 1989
order by director;

select * from movie
where year > 1980;

select count(*) 
from movie;

select count(*), concat('rating, director')
from movie;

select avg(year)
from movie;

select max(year)
from movie;


select director, title
from movie;

select * from movie;
