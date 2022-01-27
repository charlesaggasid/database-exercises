USE employees;

SELECT DISTINCT title FROM employees.titles;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY last_name
ORDER BY last_name;

select concat(last_name, ' ', first_name) as 'Full Name'
from employees
where last_name like 'E%'
  and last_name like '%E'
group by last_name, first_name
order by last_name, first_name;

select last_name
from employees
where last_name like '%q%'
  and last_name not like '%qu%'
group by last_name
order by last_name;

select count(last_name), last_name
from employees
where last_name like '%q%'
  and last_name not like '%qu%'
group by last_name
order by last_name;

SELECT CONCAT(count(*), ' ', gender)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
group by gender
order by gender;

