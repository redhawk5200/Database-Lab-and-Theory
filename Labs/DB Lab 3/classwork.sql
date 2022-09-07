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
    fid int primary key,
    fname varchar(20) Not null,
    age int check(age>20),
    dob date,
    nic int unique,
    lname varchar(20) default ('No value')
)

create table student(
    sid int primary key,
    sname varchar(20),
    fid int references faculty (fid)
)

insert into faculty values (101,'Abdul', 31, '12-sep-2020', 4141124,'Wahab');
insert into student values (3,'Amna',101);

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

--when you missed making a variable a primary key
alter table faculty modify age primary key;
