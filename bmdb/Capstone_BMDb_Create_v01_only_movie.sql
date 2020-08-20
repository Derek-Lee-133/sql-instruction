-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;
-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID 			integer 		primary key auto_increment,
Title 		varchar(255) 	not null,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null,
CONSTRAINT unq_movie unique (Title, year)
);

-- create Actor table
Create table Actor (
ID 			integer 		primary key auto_increment,
FirstName 	varchar(255) 	not null,
LastName 	varchar(255) 	not null,
Gender 		varchar(1) 		not null,
BirthDate 	date 			not null,
CONSTRAINT unq_actor unique (FirstName, LastName, BirthDate)
);

-- create credit table
create table Credit (
ID integer primary key auto_increment,
ActorID    integer          not null,
movieID    integer          not null,
role       varchar(255)     not null,
Foreign Key (ActorID) references Actor(ID),
Foreign Key (MovieID) references Movie(ID),
CONSTRAINT act_mov unique (ActorID, MovieID)
);
-- Add some movies
 insert into Movie VALUES
 	(1, 'Star Wars', 1977, 'PG', 'George Lucas'),
 	(2, 'Sixteen Candles', 1984, 'PG', 'John Hughes'),
  	(3, 'Fifth Element', 1997, 'PG-13', 'Luc Besson'),
 	(4, 'Better Off Dead', 1985, 'PG', 'Savage Steve Holland'),
 	(5, 'Blazing Saddles', 1994, 'R', 'Mel Brooks'),
    (6, 'Streets of Fire', 1984, 'PG', 'Walter Hill'),
    (7, 'Highlander', 1986, 'R', 'Russell Mulcahy'),
    (8, 'Ghostbusters', 1984, 'PG', 'Ivan Reitman'),
    (9, 'Boonedock Saints', 1999, 'R','Troy Duffy'),
    (10, 'Legend', 1985, 'PG', 'Ridley Scott'),
    (11, 'Excaliber', 1981, 'PG', 'John Boorman'),
    (12, 'Top Gun', 1986, 'PG', 'Tony Scott'),
    (13, 'Escape from NewYork', 0000, 'NA', 'Leigh Whannell'),
    (14, 'Big Trouble in Little China', 1986, 'PG-13', 'John Carpenter'),
    (15, 'Road Warrior', 1981, 'R', 'George Miller');
    
    -- Add some actors
    -- date feilds are YYYY-MM-DD
 insert into actor VALUES
 	(1, 'Mark', 'Hamill', 'M', '1951-09-25'),
    (2, 'Harrison', 'Ford', 'M', '1942-07-13'),
    (3, 'Molly', 'Ringwald', 'F', '1968-02-18'),
    (4, 'Anthoney Micheal', 'Hall', 'M', '1968-04-14');
    
    -- add some crdits
insert into Credit VALUES
 	(1, 1, 1, 'Luke Skywalker'),
 	(2, 2, 1, 'Han Solo'),
    (3, 3, 2, 'Samantha Baker'),
    (4, 4, 2, 'Geek')
    ;
	