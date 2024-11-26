-- List the employee number, last name, first name, sex, and salary of each employee
SELECT Employees.emp_no, last_name, first_name, sex, salary
FROM Employees JOIN Salaries
ON Employees.emp_no = Salaries.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date 
FROM Employees
WHERE extract(year from hire_date) = 1986;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT Departments.dept_no, dept_name, Employees.emp_no, last_name, first_name
FROM Employees JOIN Dept_Manager
ON Employees.emp_no = Dept_Manager.emp_no
JOIN Departments
ON Dept_Manager.dept_no = Departments.dept_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT Employees.emp_no, last_name, first_name, dept_name
FROM Employees JOIN Dept_Emp
ON Employees.emp_no = Dept_Emp.emp_no
JOIN Departments
ON Dept_Emp.dept_no = Departments.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name
SELECT Employees.emp_no, last_name, first_name, dept_name
FROM Employees JOIN Dept_Emp
ON Employees.emp_no = Dept_Emp.emp_no
JOIN Departments ON Dept_Emp.dept_no = Departments.dept_no
WHERE dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT Employees.emp_no, last_name, first_name, dept_name
FROM Employees JOIN Dept_Emp
ON Employees.emp_no = Dept_Emp.emp_no
JOIN Departments ON Dept_Emp.dept_no = Departments.dept_no
WHERE dept_name IN ('Sales','Development');

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(*) AS frequency_count
FROM Employees
GROUP BY last_name
ORDER BY frequency_count DESC;






