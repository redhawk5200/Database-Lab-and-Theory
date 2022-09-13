--Task2

create table Jobs(
    job_id varchar(20) primary key,
    job_title varchar(30),
    min_salary int,
    max_salary int
)

create table job_History(
    employee_id int primary key,
    start_date date,
    end_date date,
    job_id varchar(20),
    department_id int
)

--Task 3
alter table job_History
modify job_id int;

--Task 4
alter table job_History
add foreign key(job_id)
references Jobs(job_id);

--Task5
insert into jobs values (69,'Software',12133, 14511);

--Task6
alter table jobs
add Job_Nature varchar(20);

--Task7
CREATE TABLE  employees ( 
EMPLOYEE_ID decimal(6,0) NOT NULL PRIMARY KEY, 
FIRST_NAME varchar(20) DEFAULT NULL, 
LAST_NAME varchar(25) NOT NULL, 
EMAIL varchar(25) NOT NULL, 
PHONE_NUMBER varchar(20) DEFAULT NULL, 
HIRE_DATE date NOT NULL, 
JOB_ID varchar(10) NOT NULL, 
SALARY decimal(8,2) DEFAULT NULL, 
COMMISSION_PCT decimal(2,2) DEFAULT NULL, 
MANAGER_ID decimal(6,0) DEFAULT NULL, 
DEPARTMENT_ID decimal(4,0) DEFAULT NULL
);

--Task8
alter table job_History
add foreign key(employee_id)
references employees(employee_id);

--Task9
alter table jobs
drop column job_nature;

--Task10
alter table employees
add constraint check_name check(first_name=upper(first_name));

--Task11
alter table employees
modify salary unique;

--Task12
alter table employees
modify phone_number not null;

--Task13
insert into employees values(101,'ABDUL','WAHAB','abdl@gmail.com',0332364844,'12-may-2001',120,1000,null,101,4);

--Task14
update employees set salary = 2000 where employee_id= 105 and salary <= 1000;

--Task16
delete from employees;

--Task17
create index index_job
on job_history(job_id);




