--sequence 

drop SEQUENCE emaillist_seq;

create SEQUENCE emaillist_seq
start with 1
increment by 1
maxvalue 9999999999;

