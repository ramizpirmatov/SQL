-- Display department ID, name, year, and Number of employees joined.

select d.department_id, d.department_name, extract(year from e.hire_date) as year, count(e.employee_id) as number_of_employees
from hr.employees e join hr.departments d on e.department_id = d.department_id
group by d.department_id, d.department_name, extract(year from e.hire_date)
order by department_id