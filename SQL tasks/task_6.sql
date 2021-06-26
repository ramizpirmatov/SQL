-- Write a query in SQL to display job title and average salary of employees.

select j.job_title, avg(e.salary) as avarage_salalry
from hr.employees e join hr.jobs j on e.job_id = j.job_id
group by j.job_title, j.job_id