USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;



select now();