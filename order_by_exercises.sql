use employees;

SELECT first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;



select first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name asc,
         first_name desc;


select *
from employees
where last_name like '%E%'
order by emp_no asc;