--List the following details of each employee: 
--employee number, last name, first name, sex, and salary.


Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
From employees
Left Join salaries
On employees.emp_no = salaries.emp_no;


--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

--so i need departments and department managers, joined, and employees


SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
LEFT JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
LEFT JOIN employees
ON dept_manager.emp_no = employees.emp_no;


--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.emp_no, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no;


--List first name, last name, and sex 
--for employees whose first name is "Hercules" and last names begin with "B."

select employees.first_name, employees.last_name, employees.sex
from employees
where first_name = 'Hercules' and last_name like 'B%';


--List all employees in the Sales department
--including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.emp_no, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';


--List all employees in the Sales and Development departments
--including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.emp_no, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development';

--In descending order, list the frequency count 
--of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) as "repeat last names"
FROM employees
GROUP BY last_name
ORDER BY "repeat last names" DESC;

