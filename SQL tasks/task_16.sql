-- Display the department id, name, month in which more than 5 employees joined in any department located in Seattle.

select d.department_id, d.department_name, to_char(to_date(extract(month from e.hire_date), 'mm'), 'month') as month
from hr.departments d join hr.employees e on d.department_id = e.department_id
join hr.locations loc on d.location_id = loc.location_id
where loc.city = 'Seattle'
group by d.department_id, d.department_name, extract(month from e.hire_date)
having count(e.employee_id) > 5