1)
CREATE TABLE DEPT2(ID NUMBER(7), NAME VARCHAR2(25));
SELECT table_name FROM user_tables WHERE table_name = 'DEPT2';



2) 

INSERT INTO DEPT2(ID, NAME)
SELECT DEPARTMENT_ID, DEPARTMENT_NAME
FROM DEPARTMENTS;

SELECT * FROM DEPT2


3) 

CREATE TABLE EMP2 ( DEPT_ID NUMBER(7), ID NUMBER(7), LAST_NAME VARCHAR2(25), FIRST_NAME VARCHAR2(25));

SELECT table_name FROM user_tables WHERE table_name = 'EMP2';


4) 

ALTER TABLE EMP2
ADD CONSTRAINT my_emp_id_pk PRIMARY KEY (ID);


5)
ALTER TABLE DEPT2
ADD CONSTRAINT my_dept_id_pk PRIMARY KEY (ID);



6) 

ALTER TABLE EMP2
ADD CONSTRAINT my_emp_dept_id_fk
Foreign key(DEPT_ID)
REFERENCES DEPT2(ID)

7) 

ALTER TABLE EMP2
ADD COMMISSION NUMBER(2, 2);
-- MODIFY the employee table by adding a commission column with a precision of 2 and a scale of 2 
--- and to add a constraint ensuring that the commission value is greater than zero, you can use the following SQL statements.

ALTER TABLE EMP2
ADD CONSTRAINT check_commission_gt_zero
CHECK (COMMISSION > 0);

--- ADD THE CONSTRAINT TO ENSURE THE COMMISSION IS GREATER THAN ZERO



8) 

DROP TABLE EMP2 PURGE;
DROP TABLE DEPT2 PURGE;