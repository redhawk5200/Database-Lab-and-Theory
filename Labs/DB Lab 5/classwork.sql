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


