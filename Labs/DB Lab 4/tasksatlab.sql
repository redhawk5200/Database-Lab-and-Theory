--1
select department_id, count(EMPLOYEE_ID), avg(salary) from employees group by department_id;

--2
select job_id, count(employee_id) from employees group by job_id;

--3
select first_name, hire_date from employees where hire_date > (select hire_date from employees where employee_id = 110);

--4
select department_id from employees group by department_id having max(salary) >= 15000;

--5
select employee_id, first_name || ' ' || last_name, job_id, salary from employees where salary < ALL (select salary from employees where job_id = 'IT_PROG');

--6
select * from employees where employee_id != ALL (select employee_id from job_history);

--7
select manager_id, min(salary) from employees where salary > ALL (select salary from employees where salary <= 2000) and manager_id is not null group by manager_id order by min(salary);

--8
insert into employees_BKP select * from employees where employee_id IN (select employee_id from job_history where start_date = '13-JAN-01');

--9
update employees set salary = salary + (salary*0.2) where employee_id  IN (select employee_id from employees where salary < 6000);

--10
delete from emp_bkp where job_id = 'FI_MGR';

--11
select department_id, count(employee_id) from employees where salary > 20000 group by department_id;













--select min(salary) from employees where salary != (select min(salary) from employees);

--2!
--select department_id, count(employee_id), max(salary) from employees group by department_id having count(employee_id) > 5;

--3
--select count(employee_id) from employees group by job_id;
