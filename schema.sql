DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;


CREATE TABLE department (
	id INT NOT NULL AUTO_INCREMENT,
 name VARCHAR(100),
	PRIMARY KEY(id)
);
CREATE TABLE roles(
	id INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(100),
	salary INT,
	department_id INT NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id)
);
CREATE TABLE employees (
	id	INT NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
  role_ID	INT NOT NULL,
	manager_ID INT NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES roles(id),
	CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employees(id)
); 