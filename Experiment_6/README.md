## Experiment 06- Working with Cursors in PL/SQL

## Student Information
- Name: Ridhima Gulati
- UID: 24BCY70132
- Branch: AIT-CSE(Cyber Security) 
- Section: 24AIT-KRG-G2  
- Semester: 4
- Subject: Database Management System
- Date of Performance: 27/02/2026  

---

## Aim
To understand the concept and working of cursors in PL/SQL for row-by-row data processing, and to analyze how implicit cursors, explicit cursors, and cursor attributes are used to implement business logic on multiple rows in a database table.

---

## Software Requirements
- PostgreSQL  
- pgAdmin  
- Oracle Database Express Edition (optional)

---

## Objectives
- To implement and analyze the use of Implicit cursors
- To implement and analyze the use of Explicit cursors
- To implement and analyze the use of Cursor attributes for processing multiple rows from a database table and applying business logic effectively.

---

## Problem Statement
In real-world enterprise applications, database queries often return multiple rows that need to be processed individually to apply specific business rules. PRACTICAL/EXPERIMENT STEPS: Design and execute PL/SQL programs that demonstrate:
-The use of implicit cursors for single-row DML operations 
-The use of explicit cursors to fetch and process multiple records 
-The application of cursor attributes to control program execution.

---

PROGRAM:

## Step-1-Implicit Cursor

```sql
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

```
---

## Step 2: Explicit Cursor

```sql
DECLARE
    CURSOR emp_cursor IS
        SELECT emp_id, emp_name, salary FROM Employee_data;
    v_id Employee_data.emp_id%TYPE;
    v_name Employee_data.emp_name%TYPE;
    v_salary Employee_data.salary%TYPE;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO v_id, v_name, v_salary;
        EXIT WHEN emp_cursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE(v_id || ' ' || v_name || ' ' || v_salary);
    END LOOP;
    CLOSE emp_cursor;
END;
```
---

## Step 3: Cursor Attributes

```sql
DECLARE
    CURSOR emp_cursor IS
        SELECT emp_id FROM Employee_data;
    v_id Employee_data.emp_id%TYPE;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO v_id;
        IF emp_cursor%FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_id);
        END IF;
        
        EXIT WHEN emp_cursor%NOTFOUND;
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('Total Rows Fetched: ' || emp_cursor%ROWCOUNT);
    CLOSE emp_cursor;
END;
```
---


## Learning Outcomes
- Understood the role of cursors in PL/SQL for handling multi-row query results.
- Learned the difference between implicit and explicit cursors.
- Used cursor attributes such as %FOUND, %NOTFOUND, %ROWCOUNT, and %ISOPEN.
- Developed PL/SQL programs to process records row by row.
- Applied cursor-based logic in practical database scenarios.

---

## Screenshot
<img src="Experiment-6 Screenshots/Screenshot-1.png" width="700">
<img src="Experiment-6 Screenshots/Screenshot-2.png" width="700">
<img src="Experiment-6 Screenshots/Screenshot-3.png" width="700">
<img src="Experiment-6 Screenshots/Screenshot-4.png" width="700">
<img src="Experiment-6 Screenshots/Screenshot-5.png" width="700">
<img src="Experiment-6 Screenshots/Screenshot-6.png" width="700">
<img src="Experiment-6 Screenshots/Screenshot-7.png" width="700">
<img src="Experiment-6 Screenshots/Screenshot-8.png" width="700">
