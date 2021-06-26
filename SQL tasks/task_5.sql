-- Display department name, manager name, and salary of the manager for all managers whose experience is more than 5 years.

select d.department_name, e.first_name, e.salary
from hr.departments d join hr.employees e on d.manager_id = e.employee_id
where e.hire_date < add_months(sysdate, -60);