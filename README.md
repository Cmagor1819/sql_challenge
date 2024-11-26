# sql_challenge

### Objective:

The first major task is to do a research project about people whom the company employed during the 1980s and 1990s

Design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

### Data Modeling:

This section's purpose was to generate a diagram of the database table relationships regarding their attributes and primary keys & foreign keys.

### Provided below is the code to generate those tables and the relationships:

# Modify this code to update the DB schema diagram.
# To reset the sample schema, replace everything with
# two dots ('..' - without quotes).

Departments
-
dept_no VARCHAR Pk
dept_name VARCHAR

Employees
-
emp_no INT Pk
emp_title_id VARCHAR
birth_date DATE
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date DATE

Dept_Manager
-
dept_no VARCHAR Pk Fk - Departments.dept_no
emp_no INT Pk Fk - Employees.emp_no


Salaries
-
emp_no INT Pk Fk - Employees.emp_no
salary INT


Titles
-
title_id INT Pk Fk - Employees.emp_title_id
title VARCHAR


Dept_Emp
-
emp_no INT Pk Fk - Employees.emp_no
dept_no VARCHAR Pk Fk - Departments.dept_no

### Data Engineering:

This section's purpose is to create a table schema for each csv file that's provided and import those files into each table.

### Data Analysis:

This section's purpose is to do the following:

List the employee number, last name, first name, sex, and salary of each employee.

List the first name, last name, and hire date for the employees who were hired in 1986.

List the manager of each department along with their department number, department name, employee number, last name, and first name.

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

List each employee in the Sales department, including their employee number, last name, and first name.

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

### Code source/citing:

The following lines of code were referenced/gotten from Xpert Learning Assistant/GitHub:

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

SELECT last_name, COUNT(*) AS frequency_count
FROM Employees
GROUP BY last_name
ORDER BY frequency_count DESC;

JOIN Departments ON Dept_Emp.dept_no = Departments.dept_no
WHERE dept_name IN ('Sales','Development');



