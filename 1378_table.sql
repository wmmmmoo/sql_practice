-- Create the Employees table
CREATE TABLE sql_practice.Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert data into the Employees table
INSERT INTO sql_practice.Employees (id, name) VALUES
(1, 'Alice'),
(7, 'Bob'),
(11, 'Meir'),
(90, 'Winston'),
(3, 'Jonathan');

-- Create the EmployeeUNI table
CREATE TABLE sql_practice.EmployeeUNI (
    id INT PRIMARY KEY,
    unique_id INT
);

-- Insert data into the EmployeeUNI table
INSERT INTO sql_practice.EmployeeUNI (id, unique_id) VALUES
(3, 1),
(11, 2),
(90, 3);