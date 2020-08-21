SELECT * FROM movie;
insert into movie
	values 
            (17, 'Knotting Hill', '1999', 'PG-13', 'Roger Michell'),
            (18, 'Brotherhood of the Wolf', '2001', 'R', 'Christophe Gans'),
            (19, 'The Crow', '1994', 'R', 'Alex Proyas'),
            (20, 'The Terminater', '1984', 'R', 'James Cameron');
 
 
 select * from actor;
 insert into actor 
	(firstname, lastname, gender, birthdate)
    values

    ('Norman', 'Reedus', 'M', '1969-01-06');
    
    select * from credit;
    
    
    
    insert into credit 
    ( actorid, movieid, role) values
    
    ( 5, 19, 'Eric');
            
            
select * from actor
where firstname = 'brandon';

update actor
	set id = 6
    where id = 8;
    
    update actor
    
    set id = 6
    where id = 8;
delete from actor
	where id = 8;
 select * from credit;
 


delete from actor

where id = 8; 

