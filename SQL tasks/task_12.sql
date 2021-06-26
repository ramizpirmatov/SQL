-- Display employee name if the employee joined before his manager.

select concat(concat(e.first_name, ' '), e.last_name) as full_name
from hr.employees e join hr.employees m on e.manager_id = m.employee_id
where e.hire_date < m.hire_date