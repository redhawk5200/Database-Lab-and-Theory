--Classwork

--InnerJoin
select e.first_name || ' ' || e.last_name as Fullname
from EMPLOYEES e join DEPARTMENTS d 
on e.department_id=d.department_id;

--leftouterjoin
select e.first_name || ' ' || e.last_name as Fullname
from EMPLOYEES e left outer join DEPARTMENTS d 
on e.department_id=d.department_id;

--rightouterjoin
select e.first_name || ' ' || e.last_name as Fullname
from EMPLOYEES e right outer join DEPARTMENTS d 
on e.department_id=d.department_id;

--fullouterjoin
select e.first_name || ' ' || e.last_name as Fullname
from EMPLOYEES e full outer join DEPARTMENTS d 
on e.department_id=d.department_id;

--crossjoin
select e.first_name, d.department_name
from employees e, departments d;

--selfjoin



--Task1
select e.first_name || ' ' || e.last_name as Fullname, d.department_name  
from EMPLOYEES e, DEPARTMENTS d 
where e.manager_id=d.manager_id;

--Task2
select e.employee_id, e.job_id, to_date(sysdate,'DD-MM-YYYY')-to_date(e.hire_date,'DD-MM_YYYY') noofdaysworked from employees e where e.department_id=80;

--Task3
select e.first_name || ' ' || e.last_name as Fullname,
e.job_id as Jobtitle,j.start_date,j.end_date
from employees e, job_history j 
where e.commission_pct is null;

--Task4
select d.department_name, d.department_id, count(*) as employees
from departments d join employees e
on d.department_id=e.department_id
group by d.department_name, d.department_id; 

--task5
select E.FIRST_NAME || E.LAST_NAME as Name , E.SALARY  from Employees E
inner join DEPARTMENTS D
on D.DEPARTMENT_ID=E.DEPARTMENT_ID
inner join Locations L
on L.LOCATION_ID=D.LOCATION_ID
where L.CITY= 'London';

--TASK 6:
select distinct E.FIRST_NAME || E.LAST_NAME as Name   from Employees E
left join JOB_HISTORY J on J.EMPLOYEE_ID=E.EMPLOYEE_ID
where J.EMPLOYEE_ID is NULL;


--TASK 7:
select * from COUNTRIES C
inner join REGIONS R on C.REGION_ID=R.REGION_ID
where R.REGION_NAME = 'Asia';


--TASK 8:
select  E.FIRST_NAME || E.LAST_NAME as Name, D.DEPARTMENT_NAME, E.SALARY from Employees E
inner join DEPARTMENTS D on D.DEPARTMENT_ID=E.DEPARTMENT_ID
order by D.DEPARTMENT_NAME asc;



--TASK 9:
select  D.DEPARTMENT_NAME from Employees E
inner join Departments D on D.Department_ID=E.DEPARTMENT_ID
group by D.DEPARTMENT_NAME
Having (count (E.EMPLOYEE_ID) >=2);


--TASK 10:
Select * from Employees E
inner join JOBS J on E.JOB_ID=J.JOB_ID
where E.SALARY < J.MIN_SALARY;

--task11
select e.first_name || ' ' || e.last_name as Fullname, e.job_id as Jobname, e.salary*12 as annualsalary, e.department_id, l.city  
from employees e join location l
on 


--Task12
select * from employees e join employees m
on e.employee_id=m.manager_id;

--task13
select 
