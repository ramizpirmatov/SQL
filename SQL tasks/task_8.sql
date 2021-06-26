-- Write a query in SQL to display the country name, city, and number of those departments where at least 2 employees are working.

select c.country_name, loc.city, count(d.department_id) as count_of_departments
from hr.departments d join hr.locations loc on d.location_id = loc.location_id join hr.countries c on loc.country_id = c.country_id
where d.department_id in 
(
select e.department_id
from hr.employees e
group by e.department_id
having count(e.employee_id) >= 2
)
group by loc.city, c.country_name