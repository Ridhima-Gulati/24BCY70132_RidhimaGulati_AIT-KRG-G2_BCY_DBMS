-----VIEWS
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

select * from Stud1;

create or replace view student_view_g2
as
select id, name, marks from Stud1 where marks>80;

select * from student_view_g2;

insert into student_view_g2 values(6,'vishesh',92);

---materialized view
create materialized view studentmat_view_g2
as
select id, name, marks from Stud1
where marks>80;

select * from studentmat_view_g2;

create materialized view nodata_view_g2
as
select id, name, marks from Stud1
where marks>80;

select * from nodata_view_g2;

REFRESH materialized view nodata_view_g2;

SELECT * FROM nodata_view_g2;