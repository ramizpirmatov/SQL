-- Display department name, average salary and number of employees with commission within the department.

select d.department_name, round(avg(e.salary), 2) as average_salary, count(e.employee_id) as count_of_employees
from hr.departments d right join hr.employees e on d.department_id = e.department_id
where e.commission_pct is not null
group by d.department_name
order by count(e.employee_id) desc