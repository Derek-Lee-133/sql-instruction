select m.id, title, g.id, name
  from movie as m
  join genre as g
    on m.id = g.name = 'romance';
    
    select m.id, title, c.id, role 
  from movie as m
  join credit as c
    on m.id = c.name;
    
-- bmdb genre queries
-- id of comedy genre
select id from genre
where name = 'Comedy';

-- three table join list comedy movies
select m.title, g.name 
from movie m
join moviegenre mg
	on mg.movieID = m.id
join genre g
	on g.id = mg.genreid
where g.id = (select id from genre
where name = 'Comedy');

/* 5 table join
show all movies, actore and genres
-movie title, movie year, actor fname lname and role, genre name
five tables in order movie,credit,actor, moviegenre,genre
*/
select m.title, m.year, a.firstname, a.lastname, c.role, g.name
	from movie m
	join credit c 
		on c.movieid = m.id
	join actor a
		on a.id = c. actorid
	join moviegenre mg
		on mg.movieid = m.id
	join genre g
		on g.id = mg.genreid;
    
    