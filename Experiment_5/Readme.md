## Experiment 05- Conditional Logic using MOD Operator

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
To understand and apply conditional logic in SQL using the MOD (%) operator to classify employee salaries as odd or even.

---

## Software Requirements
- PostgreSQL  
- pgAdmin  
- Oracle Database Express Edition (optional)

---

## Objectives
- Use the MOD (%) operator
- Identify whether salary values are odd or even
- Display employee details based on salary classification

---

## Problem Statement
Develop and execute SQL queries that utilize conditional logic to analyze employee salary data. The queries should determine whether salaries are odd or even using the MOD operator and display appropriate results.

---

PROGRAM:

## Step-1-Display Salary Type (Odd/Even)

```sql
SELECT emp_id, salary,
    CASE 
        WHEN MOD(salary, 2) = 0 THEN 'Even'
        ELSE 'Odd'
    END AS salary_type
FROM Employee2;

```
---

## Step 2: Display Employees with Even Salaries

```sql
SELECT * FROM Employee2
WHERE MOD(salary, 2) = 0;
```
---

## Step 3: Display Employees with Odd Salaries

```sql
SELECT * FROM Employee2
WHERE MOD(salary, 2) <> 0;
```
---
## Step 4: Count Odd and Even Salaries

```sql
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
```

---

## Learning Outcomes
- Learned how to use the MOD (%) operator in SQL.
- Understood classification of data into odd and even values.
- Gained knowledge of CASE statements in SQL.
- Improved data filtering and grouping techniques.
- Enhanced SQL query writing skills.

---

## Screenshot
<img src="Experiment-5 Screenshots/Screenshot-1.png" width="700">
<img src="Experiment-5 Screenshots/Screenshot-2.png" width="700">
<img src="Experiment-5 Screenshots/Screenshot-3.png" width="700">
<img src="Experiment-5 Screenshots/Screenshot-4.png" width="700">
<img src="Experiment-5 Screenshots/Screenshot-5.png" width="700">
<img src="Experiment-5 Screenshots/Screenshot-6.png" width="700">
<img src="Experiment-5 Screenshots/Screenshot-7.png" width="700">
<img src="Experiment-5 Screenshots/Screenshot-8.png" width="700">
