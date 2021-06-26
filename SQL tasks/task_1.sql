-- Display the first name and join date of the employees who joined between 2002 and 2005.

select first_name , hire_date
from hr.employees
where hire_date >= DATE '2002-01-01' and hire_date <= DATE '2005-12-31';