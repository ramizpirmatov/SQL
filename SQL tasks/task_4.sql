-- Display departments where any manager is managing more than 5 employees.

select d.department_id, d.department_name
from hr.employees e join hr.employees m on e.manager_id = m.employee_id join hr.departments d on m.department_id = d.department_id
group by m.employee_id, m.first_name, m.last_name, m.department_id, d.department_id, d.department_name
having count(e.employee_id) > 5
order by m.department_id