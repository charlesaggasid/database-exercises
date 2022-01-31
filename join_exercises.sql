# CREATE DATABASE IF NOT EXISTS join_test_db;
# USE join_test_db;
#
# CREATE TABLE roles (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        email VARCHAR(100) NOT NULL,
#                        role_id INT UNSIGNED DEFAULT NULL,
#                        PRIMARY KEY (id),
#                        FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
#                                              ('bob', 'bob@example.com', 1),
#                                              ('joe', 'joe@example.com', 2),
#                                              ('sally', 'sally@example.com', 3),
#                                              ('adam', 'adam@example.com', 3),
#                                              ('jane', 'jane@example.com', null),
#                                              ('mike', 'mike@example.com', null);
#
# describe users;

USE employees;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date > now()
ORDER BY dept_name;

# Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date > now()
  AND gender = 'F'
ORDER BY dept_name;


# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title as 'Titles', COUNT(t.emp_no) as 'Total'
FROM titles AS t
    JOIN dept_emp AS de
        ON de.emp_no = t.emp_no
    JOIN departments as d
        ON de.dept_no = d.dept_no
WHERE de.to_date > NOW()
AND d.dept_name = 'Customer Service'
AND t.to_date > NOW()
GROUP BY title;

# Find the current salary of all current managers
SELECT d.dept_name AS 'Department Name', concat(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS Salary
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
         JOIN salaries AS s
              ON e.emp_no = s.emp_no
WHERE dm.to_date > now()
  AND s.to_date > now()
ORDER BY dept_name;






