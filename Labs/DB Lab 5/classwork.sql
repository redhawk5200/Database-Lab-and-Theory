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



select first_name from employees where department_id IN ( select department_id from departments);

select first_name from employees natural join departments;

--Task1
select d.department_name, e.first_name || '' || e.last_name as Fullname, l.city
from employees e inner join departments d 
on e.manager_id = d.manager_id
inner join locations l
on d.location_id=l.location_id;

--task2
select to_date(sysdate,'DD-MM-YYYY')-to_date(e.hire_date,'DD-MM-YYYY') as noofdaysworked, e.employee_id, e.job_id
from employees e inner join departments d
on e.department_id=d.department_id
where d.department_id=80;

--task3
select e.first_name || '' || e.last_name as Fullname, e.job_id, j.start_date, j.end_date
from employees e right outer join job_history j 
on e.employee_id=j.employee_id
where e.commission_pct is null;

--task4
select d.department_name, d.department_id, count(*) 
from employees e inner join departments d 
on e.department_id=d.department_id
group by d.DEPARTMENT_ID, d.DEPARTMENT_NAME;

--task5
select e.first_name || '' || e.last_name as Fullname, e.salary 
from employees e inner join departments d
on e.department_id=d.department_id
inner join locations l
on l.location_id=d.location_id
where l.city='London';

--task6
select e.first_name || '' || e.last_name as Fullname
from employees e inner join job_history j
on e.employee_id=j.employee_id
where j.employee_id is null;

--task7
select c.country_name
from countries c inner join regions r
on c.region_id=r.region_id
where r.region_name='Asia';

--task8
select e.first_name || '' || e.last_name as Fullname, j.job_title as Jobname, d.department_name, e.salary
from employees e inner join departments d
on e.department_id=d.department_id
inner join jobs j
on j.job_id=e.job_id
order by d.DEPARTMENT_NAME asc;

--task9
select d.department_name
from employees e inner join departments d 
on e.department_id=d.department_id
group by d.DEPARTMENT_NAME
having (count(*)>=2);

--task10
select *
from employees e inner join jobs j
on j.job_id=e.job_id
where e.salary<j.min_salary;

--task11
select e.first_name || '' || e.last_name as Fullname, j.job_title as jobname, e.salary*12, d.department_id, d.department_name, l.city
from employees e inner join jobs j 
on e.job_id=j.job_id
inner join departments d
on e.department_id=d.department_id
inner join locations l
on l.location_id=d.location_id
where e.salary*12 > 60000 and j.job_title <> 'Analyst';

--task12
select *
from employees e1 join employees e2
on e1.employee_id=e2.manager_id;

--Task13
select  d.department_id,d.department_name
from departments d left outer join employees e
on d.department_id=e.department_id
group by d.department_id,d.department_name 
having count(d.department_id) = 0;

--task14
select e.first_name || '' || e.last_name as Fullname,e.salary, d.department_name
from employees e left outer join departments d 
on e.department_id=d.department_id;

--task15
select e.first_name || '' || e.last_name as Fullname, e.job_id, d.department_name
from employees e inner join departments d
on e.department_id=d.department_id
inner join locations l
on d.location_id=l.location_id
where l.state_province is null;

--task16
select e.department_id
from employees e left join departments d
on e.department_id=d.department_id 
where d.department_id is null;

--task17
select *
from employees e inner join departments d
on e.department_id=d.department_id
inner join locations l 
on d.location_id=l.location_id
where l.country_id='US' and l.state_province <> 'Washington';
