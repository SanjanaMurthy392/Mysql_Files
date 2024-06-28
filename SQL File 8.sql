show tables;
desc employees;
desc departments;
select first_name,department_name
from employees e inner join departments d
on (e.department_id=d.department_id);
desc job_history;
desc employees;
select distinct e.employee_id, first_name from employees e join job_history jh on (e.employee_id=jh.employee_id);
select e.employee_id,first_name from employees e
left outer join job_history jh on (e.employee_id=jh.employee_id)
where jh.employee_id is null;
select count(employee_id) from employees;
desc locations;
select count(department_id), city 
from departments d right outer join locations l 
on (d.location_id=l.location_id)
group by city;
desc jobs;
select first_name, job_title
from employees e inner join jobs j
on(e.job_id=j.job_id);