alter table genre
add constraint unique (name);

alter table genre
add auto_increment (id);

select * from genre;