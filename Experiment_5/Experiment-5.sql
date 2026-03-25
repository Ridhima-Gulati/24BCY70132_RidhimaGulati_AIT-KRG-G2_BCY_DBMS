CREATE TABLE Employee2 (
    emp_id NUMERIC,
    emp_name VARCHAR(50),
    salary NUMERIC
);

INSERT INTO Employee2 (emp_id, emp_name, salary) VALUES
(1, 'Rahul', 20000),
(2, 'Amit', 0),
(3, 'Neha', 25000),
(4, 'Jay', 56011),
(5, 'Sushmita', 24013);


SELECT emp_id, salary,
    CASE 
        WHEN MOD(salary, 2) = 0 THEN 'Even'
        ELSE 'Odd'
    END AS salary_type
FROM Employee2;

SELECT * FROM Employee2
WHERE MOD(salary, 2) = 0;

SELECT * FROM Employee2
WHERE MOD(salary, 2) <> 0;

SELECT 
    CASE 
        WHEN MOD(salary, 2) = 0 THEN 'Even'
        ELSE 'Odd'
    END AS salary_type,
    COUNT(*) AS total_employees
FROM Employee2
GROUP BY 
    CASE 
        WHEN MOD(salary, 2) = 0 THEN 'Even'
        ELSE 'Odd'
    END;