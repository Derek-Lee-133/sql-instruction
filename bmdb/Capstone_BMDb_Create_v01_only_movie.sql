-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID 			integer 		primary key auto_increment,
Title 		varchar(255) 	not null unique,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null
-- CONSTRAINT utitle unique (Title)
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
    
