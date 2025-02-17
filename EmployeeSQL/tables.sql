-- Create departments table 1st
CREATE TABLE departments (
    dept_no CHAR(4) NOT NULL ,
    dept_name VARCHAR(50) NOT NULL ,
   	PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

-- Create titles table 2nd
CREATE TABLE titles (
   title_id CHAR(6) NOT NULL,
   title VARCHAR(50) NOT NULL,
   PRIMARY KEY (title_id)
);

SELECT * FROM titles;

-- Create employees table 3rd
CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id CHAR(6) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex CHAR(6) NOT NULL,
    hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	);

SELECT * FROM employees;

-- Create salaries table 4th
CREATE TABLE salaries (
    emp_no INT  NOT NULL,
    salary INT  NOT NULL,
    PRIMARY KEY (emp_no), 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
    );

SELECT * FROM salaries;

-- Create dept_manager table 5th
CREATE TABLE dept_manager (
    dept_no CHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;

-- Create dept_emp table last
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_emp;


