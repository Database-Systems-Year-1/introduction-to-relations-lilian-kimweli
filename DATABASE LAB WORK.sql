create table Branch
(branch_id INT PRIMARY KEY,
branch_name char(9),
mgr_id INT,
mgr_start_date date
);

create table Client
(client_id INT PRIMARY KEY,
client_name char(20),
branch_id INT
);

create table Works_With
(emp_id INT,
client_id INT,
total_sales DECIMAL (12,2)
);

create table Branch_Supplier
(branch_id INT,
supplier_name char (20),
supply_type char (20)
);

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),  
    birth_date DATE,
    sex CHAR(1),
    salary DECIMAL(10,2),
    super_id INT,
    branch_id INT
);

INSERT INTO Employee (emp_id, first_name, last_name, birth_date, sex, salary, super_id, branch_id) VALUES
(100, 'David', 'Wallace', '1967-11-17', 'M', 250000.00, NULL, 1),
(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000.00, 100, 1),
(102, 'Michael', 'Scott', '1964-03-15', 'M', 75000.00, 100, 2),
(103, 'Angela', 'Martin', '1971-06-25', 'F', 63000.00, 102, 2),
(104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000.00, 102, 2),
(105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000.00, 102, 2),
(106, 'Josh', 'Porter', '1969-09-05', 'M', 78000.00, 100, 3),
(107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000.00, 106, 3),
(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000.00, 106, 3);

INSERT INTO Branch (branch_id, branch_name, mgr_id, mgr_start_date)VALUES
(1, 'Corporate', 100, '2006-02-09'),
(2, 'Scranton', 102, '1992-04-06'),
(3, 'Stamford', 106, '1998-02-13');

INSERT INTO Client (client_id, client_name, branch_id)VALUES
(400, 'Dunmore Highschool', 2),
(401, 'Lackawana Country', 2),
(402, 'FedEx', 3),
(403, 'John Daly Law, LLC', 3),
(404, 'Scranton Whitepages', 2),
(405, 'Times Newspaper', 3),
(406, 'FedEx', 2);

INSERT INTO Works_With (emp_id, client_id, total_sales) VALUES
(105, 400, 55000),
(102, 401, 267000),
(108, 402, 22500),
(107, 403, 5000),
(108, 403, 12000),
(105, 404, 33000),
(107, 405, 26000),
(102, 406, 15000),
(105, 406, 130000);

INSERT INTO Branch_Supplier (branch_id,supplier_name,supply_type)VALUES
(2, 'Hammer Mill', 'Paper'),
(2, 'Uni-ball', 'Writing Utensils'),
(3, 'Patriot Paper', 'Paper'),
(2, 'J.T. Forms & Labels', 'Custom Forms'),
(3, 'Uni-ball', 'Writing Utensils'),
(3, 'Hammer Mill', 'Paper'),
(3, 'Stamford Lables', 'Custom Forms');

UPDATE Employee
SET salary = 75000.00, super_id = 101
WHERE employee.emp_id = 105;

ALTER TABLE Employee 
ADD employee_email VARCHAR(255);


ALTER TABLE Employee
ALTER COLUMN employee_email TYPE VARCHAR(320);


ALTER TABLE Employee
DROP COLUMN employee_email;


DROP TABLE Branch_Supplier;

SELECT * FROM employee;

SELECT * FROM branch;










