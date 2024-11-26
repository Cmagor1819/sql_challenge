-- Create the departments table
CREATE TABLE Departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	CONSTRAINT pk_Departments PRIMARY KEY(dept_no)
);

-- Create the Dept_Emp table
CREATE TABLE Dept_Emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	CONSTRAINT pk_Dept_Emp PRIMARY KEY(emp_no, dept_no)
);

-- Create the Dept_Manager table
CREATE TABLE Dept_Manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	CONSTRAINT pk_Dept_Manager PRIMARY KEY(dept_no, emp_no)
);

-- Create the Employees table
CREATE TABLE Employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	CONSTRAINT pk_Employees PRIMARY KEY (emp_no)
);

-- Create the Salaries table
CREATE TABLE Salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	CONSTRAINT pk_Salaries PRIMARY KEY (emp_no)
);

-- Create the Titles table
CREATE TABLE Titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	CONSTRAINT pk_Titles PRIMARY KEY (title_id)
);

-- Alter the table to recognize foreign keys
ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (title_id);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);