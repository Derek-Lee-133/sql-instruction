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
    ('Bruce', 'Willis', 'M','1955-03-19'),
    ('John', 'Cusak', 'M','1966-06-28'),
    ('Cleavon','Little', 'M', '1939-06-01'),
    ('Diane', 'Lane', 'F', '1965-01-22'),
    ('Christopher', 'Lambert', 'M', '1957-03-29'),
    ('Sigourney', 'Weaver', 'F', '1949-10-08'),
    ('Mia', 'Sara', 'F','1957-06-19'),
    ('Nigel', 'Terry', 'M', '1945-08-15'),
    ('Val', 'Kilmer', 'M', '1959-12-31');
    
    
    select * from credit;
    
    
    
    insert into credit 
    ( actorid, movieid, role) values
    ( 6,8,'Ellen Aim'),
    ( 11, 12, 'King Arthur'),
    ( 12, 13, 'Iceman');      
            
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

