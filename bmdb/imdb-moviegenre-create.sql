create table MovieGenre (
	id int primary key auto_increment,
    movieId integer not null,
    genreId integer not null,
     foreign key (movieid) references movie(id), 
	 foreign key (genreid) references genre(id)
     );
 
    
insert into movieGenre (movieid,genreid)
values
(1,1),
(2,4),
(2,2),
(3,1),
(3,3),
(4,4),
(4,2),
(5,4),
(5,10);


insert into genre (name)
values
    ('adventure');
	