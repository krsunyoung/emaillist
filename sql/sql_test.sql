-- sql(crud) test

--insert
insert into EMAILLIST VALUES ( emaillist_seq.nextval, '고','둘리', 'dooly@gmail.com'); 

commit;

--select
select no, last_name, first_name, email 
from EMAILLIST 
order by no;



