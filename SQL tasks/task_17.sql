-- Display job title and average salary for employees who did a job in the past.

select j.job_title, avg(e.salary) as average_salary
from hr.employees e join hr.job_history jh on e.employee_id = jh.employee_id join hr.jobs j on jh.job_id = j.job_id
group by j.job_title