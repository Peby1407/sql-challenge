CREATE TABLE employees(
    emp_no INT PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR (50),
	birth_date VARCHAR(50),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(50),
	hire_date VARCHAR(50)
);

CREATE TABLE departments(
    dept_no VARCHAR (50) PRIMARY KEY,
    dept_name VARCHAR (50)
);

CREATE TABLE dept_emp(
    emp_no  VARCHAR (50),
    dept_no VARCHAR (50)
);

CREATE TABLE dept_manager(
    dept_no VARCHAR (50),
    emp_no INT PRIMARY KEY NOT NULL
);

CREATE TABLE salaries(
    emp_no INT PRIMARY KEY NOT NULL,
    salary INT NOT NULL
);

CREATE TABLE titles(
    title_id VARCHAR (50) PRIMARY KEY NOT NULL,
    salary VARCHAR (50)
);

