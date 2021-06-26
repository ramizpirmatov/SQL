--Display how many employees joined in each month of the current year.

with months as 
(select to_char(add_months(to_date('01-Jan-1998', 'dd-Mon-yyyy'), level - 1), 'Month') month_name,
extract(month from add_months(to_date('01-Jan-1998', 'dd-Mon-yyyy'), level - 1)) as month_number
from dual
connect by level <= 12)
select months.month_name, count(e.employee_id) as count_of_employees
from hr.employees e right join months on extract(month from e.hire_date) = months.month_number 
and extract(year from e.hire_date) = extract(year from sysdate)
group by months.month_name, months.month_number
order by months.month_number