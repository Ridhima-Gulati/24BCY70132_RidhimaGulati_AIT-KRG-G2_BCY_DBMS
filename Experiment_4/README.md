## Experiment 04- IF, IF-ELSE, ELSE-IF, CASE-STATEMENT 

## Student Information
- Name: Ridhima Gulati
- UID: 24BCY70132
- Branch: AIT-CSE(Cyber Security) 
- Section: 24AIT-KRG-G2  
- Semester: 4
- Subject: Database Management System
- Date of Performance: 30/01/2026  

---

## Aim
To design and implement PL/SQL programs utilizing conditional control statements such as IF–ELSE, IF–ELSIF–ELSE, ELSIF ladder, and CASE constructs in order to control the flow of execution based on logical conditions and to analyze decision-making capabilities in PL/SQL blocks.

---

## Software Requirements
- PostgreSQL  
- pgAdmin  
- Oracle Database Express Edition (optional)

---

## Objectives
- To understand and implement conditional control statements in PL/SQL
- To analyze decision-making using IF–ELSE, ELSIF ladder, and CASE statements
- To enhance logical thinking using PL/SQL blocks

---

## ProblenM Statement
Develop and execute PL/SQL programs that demonstrate the use of conditional control statements. The programs should employ IF–ELSE, IF–ELSIF–ELSE, ELSIF ladder, and CASE statements to evaluate given conditions and control the flow of execution accordingly.

---


## PROBLEM STATEMENT – IF-STATEMENT
Write a PL/SQL program to check whether a given condition is true using the IF conditional control statement and display an appropriate message.

---

PROGRAM:

## Step-1- IF STATEMENT

```sql
DECLARE

NUM1 NUMBER:=20;
NUM2 NUMBER:=10;
BEGIN
    IF NUM1>NUM2 THEN
    DBMS_OUTPUT.PUT_LINE('NUM1 IS GREATER AND NUM1 VALUES IS ' || NUM1 
    || ' AND NUM2 VALUE IS ' || NUM2
    );
    END IF;
END;

```
---
## PROBLEM STATEMENT – IF–ELSE STATEMENT
Write a PL/SQL program to check whether a given number is GREATER or SMALLER using the IF–ELSE conditional control statement and display an appropriate message.

---

PROGRAM:

## Step 2: IF-ELSE-STATEMENT

```sql
DECLARE

NUM1 NUMBER:=20;
NUM2 NUMBER:=30;
BEGIN
    IF NUM1>NUM2 THEN
    DBMS_OUTPUT.PUT_LINE('NUM1 IS GREATER AND NUM1 VALUES IS ' || NUM1 
    || ' AND NUM2 VALUE IS ' || NUM2
    );

    ELSE 
 DBMS_OUTPUT.PUT_LINE('NUM2 IS GREATER AND NUM2 VALUES IS ' || NUM2 
    || ' AND NUM1 VALUE IS ' || NUM1
    );

    END IF;
END;

```
---

## PROBLEM STATEMENT – IF–ELSIF–ELSE STATEMENT

Write a PL/SQL program to   evaluate whichj of the given 3 numbers are greater

PROGRAM:

## Step 3: IF-ELSEIF STATEMENT

```sql
DECLARE
NUM1 NUMBER:=30;
NUM2 NUMBER:=20;
NUM3 NUMBER:=10;
BEGIN
    IF NUM1>NUM2  AND NUM1 > NUM3 THEN
    DBMS_OUTPUT.PUT_LINE('NUM1 IS GREATER');
    ELSIF NUM2>NUM1 AND NUM2>NUM3 THEN
     DBMS_OUTPUT.PUT_LINE('NUM2 IS GREATER');
     ELSE
     DBMS_OUTPUT.PUT_LINE('NUM3 IS GREATER ');https://codeshare.io/login
     END IF;

END;
```
---
## PROBLEM STATEMENT – CASE STATEMENT

Write a PL/SQL program to display the name of the day based on a given day number using the CASE statement.

---

PROGRAM:

```sql
DECLARE
DAY_NO NUMBER := 3;
BEGIN
    CASE DAY_NO
        WHEN 1 THEN DBMS_OUTPUT. PUT_LINE ('Monday');
        WHEN 2 THEN DBMS_OUTPUT. PUT_LINE ('Tuesday');
        WHEN 3 THEN DBMS_OUTPUT. PUT_LINE ('Wednesday');
        WHEN 4 THEN DBMS_OUTPUT.PUT_LINE ('Thursday');
        WHEN 5 THEN DBMS_OUTPUT. PUT_LINE ('Friday');
        WHEN 6 THEN DBMS_OUTPUT. PUT_LINE ('Saturday');
        WHEN 7 THEN DBMS_OUTPUT. PUT_LINE ('Sunday');
        
        ELSE
             DBMS_OUTPUT. PUT_LINE ('Invalid Day Number');
    END CASE;

END;
```

---

## Learning Outcomes
- Understood the use of conditional control statements in PL/SQL.
- Learned to apply IF–ELSE and IF–ELSIF–ELSE statements for decision-making.
- Implemented ELSIF ladder for evaluating multiple conditions.
- Used CASE statements to simplify complex conditional logic.
- Improved logical reasoning and procedural programming skills in PL/SQL.

---

## Screenshot
<img src="Experiment-4 Screenshots/Screenshot-1.png" width="700">
<img src="Experiment-4 Screenshots/Screenshot-2.png" width="700">
<img src="Experiment-4 Screenshots/Screenshot-3.png" width="700">
<img src="Experiment-4 Screenshots/Screenshot-4.png" width="700">
<img src="Experiment-4 Screenshots/Screenshot 5.png" width="700">
<img src="Experiment-4 Screenshots/Screenshot-6.png" width="700">
<img src="Experiment-4 Screenshots/Screenshot-7.png" width="700">
<img src="Experiment-4 Screenshots/Screenshot-8.png" width="700">
