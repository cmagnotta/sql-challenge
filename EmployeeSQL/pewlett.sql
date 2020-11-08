Create table titles (
	title_id VARCHAR(6) PRIMARY KEY NOT NULL,
	title VARCHAR
);


Create table employees (
	emp_no INTEGER PRIMARY KEY NOT NULL,
	title_id VARCHAR(6) NOT NULL,
	birth_date VARCHAR(10) NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date VARCHAR(10) NOT NULL,
	FOREIGN KEY (title_id)references titles (title_id)
);
	

Create table departments (
	dept_no VARCHAR (4) PRIMARY KEY NOT NULL,
	dept_name VARCHAR NOT NULL
);


Create table dept_emp (
	emp_no int NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (emp_no)references employees (emp_no),
	FOREIGN KEY (dept_no)references departments (dept_no)
);

Create table dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no int NOT NULL,
	FOREIGN KEY (emp_no)references employees (emp_no),
	FOREIGN KEY (dept_no)references departments (dept_no)
);

Create table salaries (
	emp_no int NOT NULL,
	salary int NOT NULL,
	FOREIGN KEY (emp_no)references employees (emp_no)
);
