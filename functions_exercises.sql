use employees;


SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name in Action'
FROM employees
WHERE first_name LIKE '%E%';


SELECT birth_date, first_name, last_name FROM employees
WHERE MONTH(birth_date) = 12
    AND DAY(birth_date) = 25
ORDER BY last_name;

SELECT hire_date, birth_date, first_name, last_name FROM employees
WHERE YEAR(hire_date) = 1990
    AND MONTH(birth_date) = 12
    AND DAY(birth_date) = 25
ORDER BY hire_date;

SELECT hire_date, birth_date, first_name, last_name
FROM employees
WHERE YEAR(hire_date) = 1990
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
ORDER BY hire_date DESC, birth_date;

select *, datediff(now(), hire_date)
from employees
where month(birth_date) = 12
  and day(birth_date) = 25
  and year(hire_date) between 1990 and 1999
order by birth_date, hire_date desc;

SELECT CONCAT(first_name, ' ', last_name, ' has worked for the company for ', datediff(curdate(), hire_date), ' days.') AS 'Days in Company'
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND (birth_date LIKE '%-12-25')
ORDER By 'Days in Company';


