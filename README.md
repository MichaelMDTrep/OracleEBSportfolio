#  portfolio
# Highly motivated Technical Analyst with a strong track record of delivering results and optimizing business operations. 
# Identifies strategies for enhancing efficiency by reengineering processes using Cobol and Mainframe. 
# Proficient in identifying cost-effective solution designs, analyzing data to identify trends, patterns, and valuable insights for decision-making processes, and providing critical support for major business systems. 
# Experienced in data cleaning, transformation, and validation, ensuring data quality and consistency. 
# Exceptional collaboration and communication skills, adept at eliciting requirements and visualizing business processes.



## SQL demonstration

### 1. SQL Code demonstrating coding Ability. 


- [`Coding sample.sql`](link-to-file):
 ## Script Overview

This script demonstrates:
  - **Establishing relational database structures with referential integrity.**
- **Populating and transferring data across tables.**
- **Using cursors for row-wise processing and complex joins.**
- **Enforcing database rules for robust and consistent data handling.**

It is an excellent example of blending **declarative SQL** with **procedural logic** for advanced database operations.
  - [`CountriesPLSQL.sql`](link-to-file): Populates tables with sample data.
# Script Summary: Countries Table and Data Retrieval
## Description
This script demonstrates the following:

1. **Table Creation**  
   Defines a `countries` table with columns for `country_id`, `country_name`, and `region_id`.

2. **Data Retrieval Using PL/SQL**  
   - Declares a variable to store a specific `country_id`.  
   - Fetches a full row of data from the `countries` table based on the `country_id` into a record variable.  
   - Displays the retrieved data using `DBMS_OUTPUT.PUT_LINE`.

3. **Exception Handling**  
   Includes error handling for cases where no matching country is found (`NO_DATA_FOUND` exception), ensuring the program can handle missing data gracefully.

## Key Features
- Combines table creation, data retrieval, and exception handling.
- Illustrates the use of PL/SQL for interacting with database tables.

  - [`Cursor Questions.sql`](link-to-file): Includes queries for customer trend analysis.
 
# Script Summary: Cursor Operations for Employee and Department Data

This script demonstrates the use of cursors to fetch and display specific columns from various tables in a database. Each cursor serves a distinct purpose, as summarized below:

## 1. **Cursor: cur_emp_cursor**
- Fetches employee details (`EMPLOYEE_ID`, `LAST_NAME`, `EMAIL`, `SALARY`, `DEPARTMENT_ID`) for employees working in the **Training department**.

---

## 2. **Cursor: cur_dept_cursor**
- Fetches department details (`DEPARTMENT_ID`, `DEPARTMENT_NAME`, `LOCATION_ID`, `CITY`) for departments located in **Montreal**.

---

## 3. **Cursor: cur_emp_cursor2**
- Fetches employee details for the **Training department**, grouped by `JOB_ID`.

---

## 4. **Cursor: cur_loc_cursor2**
- Fetches location details (`LOCATION_ID`, `STREET_ADDRESS`, `POSTAL_CODE`, `CITY`, `STATE_PROVINCE`, `COUNTRY_ID`) grouped by `COUNTRY_ID`.

---

## 5. **Cursor: cur_emp_cursor3 (Parameterized by Job)**
- Fetches employee details for a specific `JOB_ID` passed as a parameter.

---

## 6. **Cursor: cur_emp_cursor3 (Parameterized by Department)**
- Fetches employee details for a specific `DEPARTMENT_ID` passed as a parameter.

---

## 7. **Cursor: cur_dept_cursor2**
- Fetches department details (`DEPARTMENT_ID`, `DEPARTMENT_NAME`, `LOCATION_ID`) for a specific `LOCATION_ID` passed as a parameter.

---

## 8. **Cursor: cur_emp_cursor4**
- Fetches employee details (`EMPLOYEE_ID`, `FULL_NAME`, `EMAIL`, `ANNUAL SALARY`, `DEPARTMENT_ID`) for employees hired between two specific dates (`startDate` and `endDate` parameters).

---

## 9. **Cursor: cur_loc_cursor2**
- Fetches location details (`LOCATION_ID`, `STREET_ADDRESS`, `POSTAL_CODE`, `CITY`, `STATE_PROVINCE`, `COUNTRY_ID`) for a specific `CITY` passed as a parameter.

---

## 10. **Cursor: cur_reg_cursor**
- Fetches **all information** from the `REGIONS` table.

---

## 11. **Cursor: cur_worker_cursor**
- Fetches employee-manager details using a self-join:
  - `EMPLOYEE_NAME`, `EMPLOYEE_NUMBER`, `MANAGER_NAME`, `MANAGER_NUMBER`.

---

## 12. **Cursor: cur_loc_dept_emp_cursor**
- Fetches a joined result of:
  - `EMPLOYEE_ID`, `LAST_NAME`, `DEPARTMENT_NAME`, `CITY`
  - Joins `EMPLOYEES`, `DEPARTMENTS`, and `LOCATIONS` tables.

### Notes:
- Each cursor demonstrates specific use cases such as filtering, grouping, parameterized queries, and joining tables.
- Parameters ensure dynamic and reusable cursor operations for various queries.





    - [`SchemaObjects.sql`](link-to-file): Includes queries for customer trend analysis.
 
    - # SQL Script Summary: Table Creation, Modifications, and Constraints

This script demonstrates various SQL operations including table creation, data insertion, constraint addition, and table deletion.

## 1. **Create Table `DEPT2`**
```sql
CREATE TABLE DEPT2 (ID NUMBER(7), NAME VARCHAR2(25));
SELECT table_name FROM user_tables WHERE table_name = 'DEPT2';

 


