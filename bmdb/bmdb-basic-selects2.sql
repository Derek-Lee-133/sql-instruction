SELECT * FROM bmdb.movie;

select year,count(*)
 from movie
  group by (year)
   order by count(*) desc;
   
select rating,count(*)
from movie
 group by (rating)
  order by count(*) asc;