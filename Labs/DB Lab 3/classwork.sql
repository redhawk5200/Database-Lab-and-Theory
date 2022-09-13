--created a table with variables fid of type integer, fname of varchar(20)
create table faculty(
    fid int,
    fname varchar(20),
    age int
)

--added another variable into the table with variable nic of type int
alter table faculty
add nic int;

--deleted variable nic of type int
alter table faculty
drop column nic;

--renamed the table to faculties from faculty
alter table faculty
rename to faculties;

--renamed the column fname to firstname
alter table faculties
rename column fname to firstname;

--not allowing the user to enter nullk values into the column age
alter table faculties
modify age not null;

--deleting the whole table
drop table faculty;
drop table student;

--again creating a table, with keeping a check on the age that it should be greater than 20, dob with date type, nic with each entry being unique
create table faculty(
    fid int primary key,
    fname varchar(20) Not null,
    age int check(age>20),
    dob date,
    nic int unique,
    --this sets the default vale to No value of the column lname whenever the table is created.
    lname varchar(20) default ('No value')
)

create table student(
    --making a primary key in the student table
    sid int primary key,
    sname varchar(20),
    --foreign key to the varibel fid of table faculty
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
