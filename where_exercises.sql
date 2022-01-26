USE employees;

describe employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya' or gender = 'm';
SELECT * FROM employees WHERE last_name LIKE 'E%' or last_name LIKE '%E';
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE '%q%'  AND last_name NOT LIKE '%qu%';
