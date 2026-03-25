## Experiment 07- Simple, Complex, and Materialized Views

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
To design and implement a materialized view and to compare and analyze execution time and performance differences between simple views, complex views, and materialized views.

---

## Software Requirements
- PostgreSQL  
- pgAdmin  
- Oracle Database Express Edition (optional)

---

## Objectives
- Create simple views
- Create complex views
- Create materialized views
- Compare execution time and performance of each

---

## Problem Statement
In large-scale enterprise systems, frequent execution of complex queries can significantly affect performance. Optimized mechanisms are required to improve query response time without compromising data consistency. This experiment demonstrates how different types of views impact data retrieval speed.
---

PROGRAM:

## Step-1-Table Creation and Data Setup

```sql
CREATE TABLE Stud1 (
    id NUMERIC PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(30),
    marks NUMERIC(10,0)
);

INSERT INTO Stud1 VALUES (1, 'Aman', 'Mohali', 85);
INSERT INTO Stud1 VALUES (2, 'Rohit', 'Mohali', 78);
INSERT INTO Stud1 VALUES (3, 'Neha', 'Mohali', 92);
INSERT INTO Stud1 VALUES (4, 'Simran', 'Amritsar', 88);
INSERT INTO Stud1 VALUES (5, 'Karan', 'Amritsar', 75);

SELECT * FROM Stud1;

```
---

## Step 2: Creating and Testing a Simple View

```sql
-- Creating the view
CREATE OR REPLACE VIEW student_view_g2 AS
SELECT id, name, marks 
FROM Stud1 
WHERE marks > 80;

SELECT * FROM student_view_g2;

INSERT INTO student_view_g2 VALUES (6, 'vishesh', 92);
```
---

## Step 3: Creating a Materialized View

```sql
CREATE MATERIALIZED VIEW studentmat_view_g2 AS
SELECT id, name, marks 
FROM Stud1
WHERE marks > 80;

SELECT * FROM studentmat_view_g2;
```
---
## Step 4: Refreshing a Materialized View

```sql
CREATE MATERIALIZED VIEW nodata_view_g2 AS
SELECT id, name, marks 
FROM Stud1
WHERE marks > 80;

REFRESH MATERIALIZED VIEW nodata_view_g2;

SELECT * FROM nodata_view_g2;
```

---

## Learning Outcomes
- Abstraction: Learned how Simple Views provide a virtual table for specific data subsets.
- DML through Views: Understood that simple views allow data modification in the base table.
- Persistence: Identified that Materialized Views store data physically to improve query performance on large datasets.
- Synchronization: Learned the importance of the REFRESH command to maintain data consistency in materialized views.

---

## Screenshot
<img src="Experiment-7 Screenshots/Screenshot-1.png" width="700">
<img src="Experiment-7 Screenshots/Screenshot-2.png" width="700">
<img src="Experiment-7 Screenshots/Screenshot-3.png" width="700">
<img src="Experiment-7 Screenshots/Screenshot-4.png" width="700">
<img src="Experiment-7 Screenshots/Screenshot-5.png" width="700">
<img src="Experiment-7 Screenshots/Screenshot-6.png" width="700">
