--task1
select department_id, avg(salary)
from employees
group by department_id
order by department_id asc;

--
select department_id, avg(salary)
from employees
group by department_id
having avg(salary)>9000
order by department_id asc;

--
select first_name, department_id
from employees
where department_id IN (select department_id
from DEPARTMENTS
where location_id < 1700);

--any works like or | all works like and
select first_name, department_id 
from employees
where salary > any (select salary from employees where salary = 2000 or salary = 4000);
