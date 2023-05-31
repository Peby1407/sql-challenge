-- 1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT 
	b.emp_no,b.last_name,b.first_name,b.sex,a.salary
FROM 
	employees AS b
LEFT JOIN 
	salaries AS a ON b.emp_no=a.emp_no
;
--2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date LIKE '1986%';

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT m.dept_no,d.dept_name,m.emp_no,e.last_name,e.first_name
FROM dept_manager AS m
  JOIN departments AS d
  ON (m.dept_no = d.dept_no)
    JOIN employees AS e
    ON (m.emp_no = e.emp_no)
 ;
 
--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name

SELECT m.emp_no,m.dept_no,d.dept_name,e.last_name,e.first_name
FROM dept_emp AS m
  JOIN departments AS d
  ON (m.dept_no = d.dept_no)
    JOIN employees AS e
    ON (m.emp_no = e.emp_no)
 ;
 
 --5.  List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
 
SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

SELECT e.emp_no, e.last_name,e.first_name,d.dept_no
FROM employees AS e
  JOIN dept_emp AS d
  ON (e.emp_no = d.emp_no)
WHERE dept_no = 'd007'     
 ;
 
-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).