-- Select all movies
SELECT * FROM movie;

-- Select a movie by id
-- Uses a 'where' clause
select * from movie
where id = 2;

-- select certain columns all rows
select title, year from movie; 


-- select all movies rated pg
select * from movie
where rating = 'PG';



-- select all movies rated pg, ordered by title (alpha)
select * from movie
where rating = 'PG'
order by title;

-- select all movies rated pg, ordered by title (alpha)
select * from movie
where rating = 'PG'
order by title desc;
-- select statment using the 'in' keyword
select * from movie
where year in (1977,1997);

-- select statment using a range <>
select * from movie
where year > 1980
and year < 1990;

-- select statment using the 'like' keyword
select * from movie
where title like '%e%';