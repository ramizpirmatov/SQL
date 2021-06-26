--Display employee name, job title for the jobs employee did in the past where the job was done less than six months.

select e.first_name, e.last_name, j.job_title
from hr.employees e join hr.job_history jh on e.employee_id = jh.employee_id join hr.jobs j on jh.job_id = j.job_id
where jh.start_date > add_months(jh.end_date, -6);