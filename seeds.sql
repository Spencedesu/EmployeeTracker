
USE employee_db;

INSERT INTO department (department)
VALUES ("Finances"),("Engineering"),("Tech");

INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 80000, 1), 
("Mechanical Engineer", 75000, 2),
("Electrical Engineer", 85000, 2),
("Sr. Engineer", 110000,2),
("Sotware Developer", 90000, 3),
("Web Developer", 80000, 3);


INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES
("Jotaru", "Kujo", 2 , 1),
("Johnny", "Johnson", 3, 1),
("Old man", "Joestar", 4, 1),
("Suzie", "Q", 6 , 1),
("Lisa", "Lisa", 4, 2)


