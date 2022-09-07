create table faculty(
    fid int,
    fname varchar(20),
    age int
)

alter table faculty
add nic int;

alter table faculty
drop column nic;

alter table faculty
rename to faculties;

alter table faculties
rename column fname to firstname;

alter table faculties
modify age not null;

drop table faculty;

create table faculty(
    fid int,
    fname varchar(20) Not null,
    age int,
    dob date,
    nic int unique
)

insert into faculty values (101,NULL, 16, '12-sep-2020', 4141124);

insert into faculty (fid, age) values (102, 11);

insert into faculty values (103,'Hashir', 14);

insert into faculty values (104,'Khuzema', 16);

update faculty
set fname='Huraira'
where fid=102;

delete from faculty
where fid=101;

delete from faculty;

select * from faculty;

