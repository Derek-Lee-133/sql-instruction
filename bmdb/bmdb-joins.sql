select * from movie ;
select * from credit;

-- inner join data in common 2 tables
select * from movie
	join credit
		on movie.id = credit.movieID;
        
        -- inner join credit and actor
        select * from credit c
        join actor a
        on c.actorid = a.id;
        
	-- outer (left) join, all movies and actors assigned
    select * from movie
    left join credit
    on movie.id = credit.Movieid;
    
    
        