-- Create employee table
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(50),
    position VARCHAR(50),
    date_joined DATE
);

-- Create attendance table
CREATE TABLE attendance (
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(id),
    date DATE,
    status VARCHAR(10) CHECK (status IN ('Present', 'Absent', 'Late', 'On Leave'))
);

-- Create leave_requests table
CREATE TABLE leave_requests (
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(id),
    start_date DATE,
    end_date DATE,
    leave_type VARCHAR(50),
    status VARCHAR(20)
);

-- Sample data for employees
INSERT INTO employees (name, email, department, position, date_joined) VALUES
('Alice Johnson', 'alice@company.com', 'HR', 'Manager', '2021-01-15'),
('Bob Smith', 'bob@company.com', 'Engineering', 'Developer', '2022-02-10'),
('Carol Lee', 'carol@company.com', 'Marketing', 'Content Creator', '2023-03-20');

-- Sample attendance
INSERT INTO attendance (employee_id, date, status) VALUES
(1, '2024-06-17', 'Present'),
(2, '2024-06-17', 'Late'),
(3, '2024-06-17', 'Absent'),
(1, '2024-06-18', 'Present'),
(2, '2024-06-18', 'Present'),
(3, '2024-06-18', 'Present');

-- Sample leave requests
INSERT INTO leave_requests (employee_id, start_date, end_date, leave_type, status) VALUES
(1, '2024-07-01', '2024-07-05', 'Annual Leave', 'Approved'),
(3, '2024-07-10', '2024-07-12', 'Sick Leave', 'Pending');
