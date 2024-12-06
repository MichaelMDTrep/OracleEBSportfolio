1. Create a Cursor named cur_emp_cursor to fetch and display following columns

    EMPLOYEE_ID, LAST_NAME, EMAIL, SALARY, DEPARTMENT_ID  for employees working in Training department.


DECLARE cur_emp_cursor CURSOR FOR
SELECT EMPLOYEE_ID, LAST_NAME, EMAIL, SALARY, DEPARTMENT_ID
FROM employees
WHERE DEPARTMENT_ID= (SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME = 'Training');


- Here, the column names EMPLOYEE_ID, LAST_NAME, EMAIL, SALARY, and DEPARTMENT_ID are taken directly from the
employees table


 
2. Create a Cursor named cur_dept_cursor to fetch and display following columns

    DEPARTMENT_ID,DEPARTMENT_NAME,LOCATION_ID,CITY  for the city Montreal.


Declare cur_dept_cursor CURSOR FOR

SELECT d.DEPARTMENT_ID, d.DEPARTMENT_NAME, d.LOCATION_ID, l.CITY
FROM DEPARTMENTS d
JOIN LOCATIONS l
ON d.LOCATION_ID = l.LOCATION_ID
WHERE l.CITY = 'Montreal';


 
3. Create a Cursor named cur_emp_cursor2 to fetch and display following columns
      
    EMPLOYEE_ID, LAST_NAME, EMAIL, SALARY, DEPARTMENT_ID  for employees working in Training department

    Group the results based on Job ID.
      DECLARE cur_emp_cursor2 CURSOR FOR
      SELECT emp.EMPLOYEE_ID, emp.LAST_NAME, emp.EMAIL, emp.SALARY, d.DEPARTMENT_ID
      FROM EMPLOYEES emp
      JOIN DEPARTMENTS d
      ON emp.DEPARTMENT_ID = d.DEPARTMENT_ID
      WHERE d.DEPARTMENT_NAME = 'Training'
      GROUP BY emp.JOB_ID, emp.EMPLOYEE_ID, emp.LAST_NAME, emp.EMAIL, emp.SALARY, emp.DEPARTMENT_ID;

--Grouping by JOB_ID group the result set based on JOB_ID. These are displayed in employee specific columns like
EMPLOYEE_ID, LAST_NAME
In the Group BY clause to avoid aggregation


4. Create a Cursor named cur_loc_cursor2 to fetch and display following columns

    LOCATION_ID, STREET_ADDRESS,POSTAL_CODE, CITY,STATE_PROVINCE,COUNTRY_ID

    Group the results based on Country ID.

      DECLARE cur_loc_cursor2 CURSOR FOR
      SELECT loc.LOCATION_ID, loc.STREET_ADDRESS, loc.POSTAL_CODE, loc.CITY, loc.STATE_PROVINCE, loc.COUNTRY_ID
      FROM LOCATIONS loc
      JOIN COUNTRY c
      ON loc.LOCATION_ID = c.COUNTRY_ID




5. Create a Cursor named cur_emp_cursor3 with job as the parameter to fetch and display following columns

    EMPLOYEE_ID, LAST_NAME, EMAIL, SALARY, DEPARTMENT_ID.


      DECLARE cur_emp_cursor3 CURSOR FOR
      SELECT EMPLOYEE_ID, LAST_NAME, EMAIL, SALARY, DEPARTMENT_ID
      FROM employees
      WHERE JOB_ID = 'job';
      




 
6. Create a Cursor named cur_emp_cursor3 with deptNum as the parameter to fetch and display following columns

    EMPLOYEE_ID, LAST_NAME, EMAIL, SALARY, DEPARTMENT_ID.



            DECLARE cur_emp_cursor3 CURSOR FOR
            SELECT EMPLOYEE_ID, LAST_NAME, EMAIL, SALARY, DEPARTMENT_ID
            FROM EMPLOYEES
            WHERE DEPARTMENT_ID = deptNum;

-- FROM EMPLOYEES table since you want to fetch employee details, the query should target the Employees table not
departments

Parameter deptNum: Assuming deptNum is passed into the cursor as a parameter, it is used in the where clause to
filter employees by their DEPARTMENT_ID

This ensures that deptNum is properly defined and passed when invoking the cursor

            

 
7. Create a Cursor named cur_dept_cursor2 with location as the parameter to fetch and display following     columns        DEPARTMENT_ID,DEPARTMENT_NAME,LOCATION_ID.

      DECLARE cur_dept_cursor2 Cursor FOR
      SELECT DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID
      FROM DEPARTMENTS
      WHERE LOCATION_ID = location;
      The query checks if the Location_ID matches the location parameter, which is what you want to filter by
      Parameter Location: makes sure the location parameter is correctly passed when invoking the cursor
      


8. Create a Cursor named cur_emp_cursor4 to fetch and display following columns


    EMPLOYEE_ID, FULL_NAME, EMAIL, ANNUAL SALARY, DEPARTMENT_ID  for those employees joined between 2         specific dates(use 2 parameter both of DATE datatype).

      DECLARE cur_emp_cursor4 Cursor FOR
      SELECT EMPLOYEE_ID, FULL_NAME, EMAIL, ANNUAL SALARY, DEPARTMENT_ID
      FROM EMPLOYEES
      WHERE hire_date BETWEEN startDate AND endDate;


--StartDate and endDate are placeholders for the date parameters
--THe BETWEEN operator checks whether the hire_date falls between the two provided dates.


9. Create a Cursor named cur_loc_cursor2 to fetch and display following columns

    LOCATION_ID, STREET_ADDRESS,POSTAL_CODE, CITY,STATE_PROVINCE,COUNTRY_ID

    (use city as the parameter)

      DECLARE cur_loc_cursor2 Cursor FOR
      SELECT LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID
      FROM LOCATIONS
      WHERE CITY = city;



10. Create a Cursor named cur_reg_cursor to fetch and display ALL the information from the REGIONS table.

            DECLARE cur_reg_cursor Cursor FOR
            SELECT * FROM REGIONS;


11. Create a Cursor named cur_worker_cursor to fetch and display

    EMPLOYEE_NAME, EMPLOYEE_NUMBER, MANAGER_NAME, MANAGER_NUMBER from EMPLOYEES table(use SELF-JOIN).

      DECLARE cur_worker_cursor CURSOR FOR
      SELECT

         e1.EMPLOYEE_NAME AS EMPLOYEE_NAME,
       e1.EMPLOYEE_NUMBER AS EMPLOYEE NUMBER,
       e2.MANAGER_NAME AS MANAGER_NAME,
       e2.MANAGER_NUMBER AS Manager_Number
      FROM
            EMPLOYEES e1
      LEFT JOIN
            EMPLOYEES e2 ON e1.MANAGER_NUMBER = e2.EMPLOYEE_NUMBER;
      
      
      

 
12. Create a Cursor named cur_loc_dept_emp_cursor to fetch and display

    EMPLOYEE_ID, LAST_NAME, DEPARTMENT_NAME, CITY by Joining the required (3)tables.




DECLARE cur_loc_dept_emp_cursor CURSOR FOR

SELECT
e1.EMPLOYEE_ID AS EMPLOYEE_ID,
e1.LAST_NAME AS EMPLOYEE LAST NAME,
d.DEPARTMENT_NAME AS DEPARTMENT_NAME,
c.CITY AS CITY
FROM EMPLOYEES e1
JOIN
      DEPARTMENTS d ON e1.DEPARTMENT_ID = d.DEPARTMENT_ID
JOIN
      LOCATIONS c ON d.LOCATION_ID = c.LOCATION_ID;



--Join the EMPLOYEES table with the DEPARTMENTS table (using DEPARTMENT_ID) and then join the DEPARTMENTS table
--with the LOCATIONS table (using LOCATION_ID)

--The first JOIN links EMPLOYEES and DEPARTMENTS based on DEPARTMENT_ID
--The Second JOIN links DEPARTMENTS and LOCATIONs based on LOCATION_ID

The query selects EMPLOYEE_ID, LAST_NAME, DEPARTMENT_NAME and CITY, renaming them with aliases for clarity