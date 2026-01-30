DECLARE
    emp_id INTEGER := 101;
    emp_name VARCHAR(50) := 'Rahul Sharma';
    emp_salary NUMERIC(10,2) := 45000.50;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Employee Id : ' || emp_id);
    DBMS_OUTPUT.PUT_LINE ('Employee Name:' || emp_name);
    DBMS_OUTPUT.PUT_LINE ('Employee Salary: ' || emp_salary);
END ;