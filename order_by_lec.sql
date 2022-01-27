USE employees;

SELECT first_name, last_name
FROM employees
ORDER BY last_name;

SELECT first_name, last_name
FROM employees
ORDER BY last_name DESC;

SELECT first_name, last_name
FROM employees
ORDER BY last_name ASC;

SELECT first_name, last_name
FROM employees
ORDER BY last_name DESC, first_name ASC;