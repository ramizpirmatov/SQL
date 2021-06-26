--Display country name, city, and number of departments where department has more than 5 employees.

select c.country_name, loc.city, count(d.department_id)
from hr.departments d join hr.locations loc on d.location_id = loc.location_id join hr.countries c on loc.country_id = c.country_id
where d.department_id in 
(
select e.department_id
from hr.employees e
group by e.department_id
having count(e.employee_id) > 5
)
group by loc.city, c.country_name
order by count(d.department_id) desc