/*
Write a query in SQL to display the full name (firt and last name ) of employee
 with ID and name of the country presently where (s)he is working.
*/

select e.first_name, e.last_name, c.country_id, c.country_name
from hr.employees e left join hr.departments d on e.department_id = d.department_id
left join hr.locations loc on d.location_id = loc.location_id left join hr.countries c on loc.country_id = c.country_id