--Display the departments into which no employee joined in last two years.

select d.department_id, d.department_name
from hr.departments d left join hr.employees e on d.department_id = e.department_id
group by d.department_id, d.department_name
having max(e.hire_date) < add_months(sysdate, -24) or max(e.hire_date) is null
order by d.department_id