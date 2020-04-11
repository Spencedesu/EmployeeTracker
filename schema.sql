DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;


CREATE TABLE department (
	id INT NOT NULL AUTO_INCREMENT,
 department VARCHAR(100) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE role(
	id INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL,
	salary DECIMAL(10)NOT NULL,
	department_id INT NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE employees (
	id	INT NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
  role_id	INT NOT NULL,
	manager_ID INT NOT NULL,
	PRIMARY KEY (id)
	
); 

ALTER TABLE employees ADD CONSTRAINT FK_roleid FOREIGN KEY (role_id) REFERENCES role(id);
ALTER TABLE employees ADD	CONSTRAINT FK_employeesid FOREIGN KEY (manager_id) REFERENCES employees(id);
ALTER TABLE role ADD CONSTRAINT FK_departmentid FOREIGN KEY (department_id) REFERENCES department(id)