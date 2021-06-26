/*Write a query in SQL to display the details of jobs which was done by any of 
the employees who is presently earning a salary on and above 12000.
*/

select j.*
from hr.employees e left join hr.job_history jh on e.employee_id = jh.employee_id 
left join hr.jobs j on jh.job_id = j.job_id
where e.salary >= 12000
order by j.job_title nulls last, e.employee_id;