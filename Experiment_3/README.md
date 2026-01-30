# Experiment 03 – Declaration and Execution in SQL

---
---

## Student Information
- Name: Ridhima Gulati
- UID: 24BCY70132
- Branch: AIT-CSE(Cyber Security) 
- Section: 24AIT-KRG-G2  
- Semester: 4
- Subject: Database Management System
- Date of Performance: 28/01/2026  

---
---

## Aim
This experiment aims to understand the basic structure of a PL/SQL program by creating and executing a simple PL/SQL block that includes declaration and execution sections, and to display output using built-in procedures.

---
---

## Software Requirements
Database Management System:
- PostgreSQL
- Oracle Database (Oracle SQL / Oracle Express Edition)

Database Administration Tool:
- pgAdmin
- Oracle SQL Developer

---
---

## Objectives
- To understand the basic structure of a PL/SQL program.
- To learn how to use the DECLARE section to define and initialize variables.
- To understand the BEGIN…END execution section of a PL/SQL block.
- To perform operations using declared variables.
- To display output using the built-in procedure DBMS_OUTPUT.PUT_LINE.
- To gain practical experience in writing and executing a simple PL/SQL program.  

---
---

## Problem Statement
Design and implement a simple PL/SQL program that demonstrates the basic structure of a PL/SQL block. The program should include a declaration section to define variables and an execution section to perform operations using those variables and display the results using appropriate output statements.

---
---

## Practical / Experiment Steps
- Start the PostgreSQL server.
- Open pgAdmin and connect to the PostgreSQL server.
- Open a new SQL worksheet.
- Write a PL/SQL block using DECLARE, BEGIN, and END sections.
- Declare variables for employee id, employee name, and employee salary.
- Initialize the declared variables with suitable values.
- Use DBMS_OUTPUT.PUT_LINE to display variable values.
- Execute the PL/SQL program.
- Verify the displayed output.
- Save the program and take screenshots of execution and results.

---
---

## Procedure of the Experiment
- Log in to the system.
- Open pgAdmin and connect to the PostgreSQL database.
- Open the SQL editor.
- Declare variables in the DECLARE section.
- Write executable statements inside the BEGIN…END block.
- Use output statements to display values.
- Execute the PL/SQL block.
- Observe and verify the output generated.

---
---

## Program
## Step1- Declaring the data
```sql
DECLARE
    emp_id INTEGER := 101;
    emp_name VARCHAR(50) := 'Rahul Sharma';
    emp_salary NUMERIC(10,2) := 45000.50;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Employee Id : ' || emp_id);
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_name);
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || emp_salary);
END;
```
---
---

## Input / Output Details
Input
- PL/SQL commands for declaring variables, executing statements, and displaying output using DBMS_OUTPUT.PUT_LINE.
---
<img src="Experiment-3 Screenshots/Screenshot-1.png" width="700">
---
Output
- Successful execution of the PL/SQL program displaying:
- Employee Id
- Employee Name
- Employee Salary
---
<img src="Experiment-3 Screenshots/Screenshot-2.png" width="700">

---
---

## Result
Thus, the PL/SQL program was successfully executed. The declaration section and execution section were implemented correctly, and output was displayed using built-in procedures.

---
---

## Learning Outcomes
- Understood the basic structure of a PL/SQL program.
- Learned how to declare and initialize variables using the DECLARE section.
- Gained understanding of the BEGIN…END execution block in PL/SQL.
- Learned how to perform operations using declared variables.
- Understood the use of the built-in procedure DBMS_OUTPUT.PUT_LINE for displaying output.
- Gained practical experience in writing, executing, and verifying a simple PL/SQL program using database tools.

---
