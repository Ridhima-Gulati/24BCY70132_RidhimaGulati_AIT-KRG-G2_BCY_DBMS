CREATE TABLE employeedata(
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50),
    gender VARCHAR(10),
    salary NUMERIC(10,2)
);

INSERT INTO employeedata(emp_name, gender, salary)
VALUES
('Amit', 'Male',30000),
('Riya', 'Female',35000),
('John', 'Male',28000),
('Sneha', 'Female',40000);


CREATE OR REPLACE PROCEDURE count_emp(
    IN p_gen VARCHAR(20),
    OUT emp_count INT,
    INOUT status VARCHAR
)
AS $$
BEGIN
    SELECT COUNT(*)
    INTO emp_count
    FROM employeedata
    WHERE gender = p_gen;

    status := 'SUCCESS';
END;
$$ LANGUAGE plpgsql;


DO $$
DECLARE
    GEN VARCHAR(20) := 'Male';
    COUNT_BY_GEN INT;
    STATUS VARCHAR(20) := 'Fail';
BEGIN

    CALL COUNT_EMP(GEN, COUNT_BY_GEN, STATUS);

    RAISE NOTICE
    'YOUR GENDER IS % YOUR COUNT IS % AND STATUS IS %',
    GEN, COUNT_BY_GEN, STATUS;

END;
$$;