/*
Write a query in SQL to display the full name (first and last name), and salary of 
those employees who working in any department located in London.
*/

select e.first_name, e.last_name, e.salary, d.department_name
from hr.employees e left join hr.departments d on e.department_id = d.department_id
join hr.locations loc on d.location_id = loc.location_id
where loc.city = 'London'