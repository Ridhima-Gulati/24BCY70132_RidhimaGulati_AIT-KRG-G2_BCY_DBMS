CREATE TABLE Employee_data (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR(50),
    salary NUMBER
);


INSERT INTO Employee_data VALUES (101, 'Rahul', 20000);
INSERT INTO Employee_data VALUES (102, 'Amit', 25000);
INSERT INTO Employee_data VALUES (103, 'Neha', 30000);
INSERT INTO Employee_data VALUES (104, 'Jay', 35000);
COMMIT;

SET SERVEROUTPUT ON;
BEGIN
    UPDATE Employee_data
    SET salary = salary + 1000
    WHERE emp_id = 101;

    
    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Rows Updated: ' || SQL%ROWCOUNT);
    ELSE
        DBMS_OUTPUT.PUT_LINE('No rows updated');
    END IF;
END;

DECLARE
    
    CURSOR emp_cursor IS
        SELECT emp_id, emp_name, salary FROM Employee_data;
        
    v_id Employee_data.emp_id%TYPE;
    v_name Employee_data.emp_name%TYPE;
    v_salary Employee_data.salary%TYPE;
BEGIN
    
    OPEN emp_cursor;
    
    DBMS_OUTPUT.PUT_LINE('ID | NAME | SALARY');
    DBMS_OUTPUT.PUT_LINE('------------------');
    
    LOOP
        
        FETCH emp_cursor INTO v_id, v_name, v_salary;
        
        
        EXIT WHEN emp_cursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE(v_id || ' | ' || v_name || ' | ' || v_salary);
    END LOOP;
    
    
    CLOSE emp_cursor;
END;

DECLARE
    CURSOR emp_cursor IS
        SELECT emp_id FROM Employee_data;
    v_id Employee_data.emp_id%TYPE;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO v_id;
        EXIT WHEN emp_cursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Processing record number: ' || emp_cursor%ROWCOUNT);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('Final Total Rows Fetched: ' || emp_cursor%ROWCOUNT);
    CLOSE emp_cursor;
END;
