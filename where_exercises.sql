USE employees;

describe employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE gender = 'm' AND (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya');
SELECT * FROM employees WHERE last_name LIKE 'E%' or last_name LIKE '%E';
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE '%q%'  AND last_name NOT LIKE '%qu%';

SELECT first_name AS 'First Name lists', last_name AS 'Last Name' from employees where gender = 'm';
