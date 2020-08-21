/* let's test the maintenance sql*
we should test in the order of:
-select (read)
-insert (create)
-update (update)
-delete (delete) 

*/

select * from movie;

insert into movie values
(16, 'dummy movie', 2020, 'G', 'Test Director');

update movie
	set title = 'dummy movie 2'
    where id = 16;
    
    select * from movie;
    


select * from actor;
select * from credit;

delete 
from credit
where id = 5;

update actor
set id = 6
where firstname = 'norman';

insert into credit
values
(5, 6, 9,'Murphy MacManus');