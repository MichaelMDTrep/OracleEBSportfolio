# Portfolio


![Alt text](URL_or_local_path_to_image)

## Overview
As a highly motivated and results-driven Technical Analyst, I specialize in optimizing business operations through innovative process reengineering. With a strong background in working with Cobol and Mainframe systems, I excel in identifying cost-effective solutions and leveraging data to drive strategic decisions. My expertise includes data cleaning, transformation, and validation to ensure high-quality, consistent datasets. Additionally, I am adept at collaborating with cross-functional teams to elicit requirements, visualize business processes, and implement efficient solutions.

In my experience, I’ve developed a solid track record in managing major business systems, including proficiency in SQL, Oracle E-Business Suite (EBS), and General Ledger tasks. I’m committed to delivering tangible value through thoughtful analysis and ensuring that processes are not only optimized but also aligned with broader business goals.

Whether it’s designing complex SQL scripts or enhancing inventory management processes, I pride myself on my ability to blend technical proficiency with a strong understanding of business needs. I continuously seek opportunities to grow my skills and contribute to impactful, high-quality solutions in the technology and business sectors.

## All the documents can be found in my Oracle EBS directory 

## SQL demonstration

### 1. SQL Code demonstrating coding Ability. 


- [`Coding sample.sql`](C:\Users\Micha\OneDrive\Desktop\Professional headshot.jpg):
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



# General Ledger Assessment - Michael Trepanier

## Overview
This project demonstrates my ability to navigate and complete key tasks in Oracle’s General Ledger (GL) module, which involves managing user roles, reviewing financial setups, querying journal entries, and working with the Chart of Accounts.

## Steps & Actions

### 1. **User Definition Setup**
- Navigate to: `System Administrator > Security > User > Define`
- Actions:
  - Create a user with a temporary password.
  - Assign relevant responsibilities: 
    - Vision Operation General Ledger
    - Vision Operation Inventory
    - Vision Operation Procurement
  - Set the password expiration to 60 days.

### 2. **Ledger Details Setup**
- Navigate to: `Vision Operation General Ledger > Setup > Financials > Accounting Setup Manager`
- Actions:
  - Search for the Vision Operation Primary Ledger.
  - Review Calendar (Accounting Calendar), Currency (Translation Options), and Control (Budgetary Control).

### 3. **Account Code Combinations**
- Navigate to: `General Ledger > Setup > Accounts > Combinations`
- Review and query all available account code combinations.

### 4. **Find Journals**
- Navigate to: `Journals > Enter`
- Actions:
  - Filter journal entries by Payables source.
  - Query all Payables journals to retrieve relevant journal entries.

### 5. **Identify Data Table Name**
- Navigate to a journal header and use `Help > Record History` to find the associated Database Table Name for the journal header.

### 6. **Find Manual and Payable Journals**
- Query for journals by source: 
  - Manual Journal
  - Payables Journal

### 7. **Review Posted Journal Entries**
- Navigate to `Query by Example` in the `Journal Enter` screen.
- Review all posted journal entries.

### 8. **Chart of Accounts Setup**
- Navigate to: `Setup > Financials > Flexfields > Key > Segments`
- Actions:
  - Query and review the structure of the Chart of Accounts.

### 9. **Trial Balance Report**
- Navigate to: `Reports > Requests > Submit a New Request`
- Actions:
  - Submit the Trial Balance report and track its status.

### 10. **Ledger Set Components**
- Navigate to: `Setup > Financials > Ledger Sets`
- Query and identify common components within a Ledger Set (e.g., Chart of Accounts, Calendar, Currency).

---

## Conclusion
This project highlights my ability to manage and query financial setups in Oracle's General Ledger, including user creation, ledger setup, journal entry reviews, and financial reporting. It demonstrates my proficiency in handling complex financial systems and performing essential GL tasks.




# Oracle E-Business Suite Inventory Assignment
**Date:** 15th November 2024

## Overview
This assignment explores various functionalities within the Oracle Inventory module of Oracle E-Business Suite, which is integral for managing items, inventory levels, transactions, and integration with other modules like Order Management and Purchasing. The tasks performed include inventory management, item creation, and generating reports, showcasing proficiency in navigating the Oracle system.

## Steps & Actions

### 1. **Understanding the Oracle Inventory Module**
The Oracle Inventory module provides tools to manage items, inventory levels, sub-inventories, and inventory transactions. It integrates with other Oracle modules like Order Management and Purchasing for comprehensive inventory control.

### 2. **Switching User Responsibility**
- **Action:** Switched to `Vision Operation Inventory` responsibility to access inventory-related functions.

### 3. **Finding Master Items**
- **Navigation:** `Items > Master Items > Vision Operations`
- **Action:** Located and viewed master items within the inventory section.

### 4. **Assigning an Item to All Inventory Orgs**
- **Action:** Selected an item and assigned it to all Inventory Orgs using the "Assign All" button.

### 5. **Unassigning an Item from All Inventory Orgs**
- **Action:** Unassigned the same item from all Inventory Orgs using the "Unassign All" button.

### 6. **Checking On-Hand Quantity**
- **Navigation:** `Inventory > On-Hand Availability > On-Hand Quantity`
- **Action:** Checked the on-hand quantity of a selected item within the Vision Operations inventory.

### 7. **Unit of Measure (UOM) Definition**
- **Navigation:** `Inventory > Setup > Units of Measure`
- **Action:** Displayed where the Unit of Measure (UOM) has been defined within the system.

### 8. **Creating a New Inventory Item**
- **Navigation:** `Inventory > Items > Master Items`
- **Action:** Created a new inventory item by filling out the Master Item form and saving it.

### 9. **Running Inventory Valuation Report**
- **Navigation:** `View > Requests`
- **Action:** Ran the Inventory Valuation Report by submitting it with the appropriate parameters and tracking the request ID.

### 10. **Changing Inventory Organization**
- **Navigation:** `Inventory > Change Organization`
- **Action:** Changed the current responsibility’s inventory organization by selecting from a list of available organizations.

### 11. **Master Data in Oracle Inventory**
Master Data is a set of data used to maintain consistency and data integrity across Oracle modules. It includes information like item descriptions, Units of Measure, Costing Methods, and more.

### 12. **Viewing Existing Organizations**
- **Navigation:** `Inventory > Setup > Organizations > Organizations`
- **Action:** Queried and displayed the existing organizations for Vision Operations.

### 13. **Managing Different Types of Inventory**
Oracle Inventory is not limited to finished goods. It can manage various types of inventory, including:
- Raw Materials
- Work-in-Progress (WIP) items
- Finished Goods
- Maintenance, Repair, and Operations (MRO) items
- Expense Items

### 14. **Item Creation Before Inventory Transactions**
- **True/False:** True. A Master Item must be created before performing any inventory transactions.

### 15. **Sub-Inventories in Oracle Inventory**
- **True/False:** True. Sub-inventories are optional but provide more efficient management and tracking of physical inventory items.

---

## Conclusion
This assignment demonstrates my ability to navigate the Oracle E-Business Suite Inventory module, including managing master items, querying inventory data, generating reports, and handling various inventory-related transactions. Through hands-on tasks, I have gained experience with key features of Oracle Inventory and its integration with other business processes.




# Order Management Process Assignment
**Date:** [Insert Date]

## Overview
This document outlines the process of managing sales orders, customer accounts, and invoice generation within the Oracle Order Management module. The steps include setting up system parameters, creating customer accounts, entering and processing sales orders, and integrating with Oracle Receivables for invoicing.

## Steps & Actions

### 1. **Navigate to Responsibility**
- **Action:** Accessed the required responsibility in Oracle, either "Order Management Super User" or "Order Management Setup."

### 2. **Open System Parameters**
- **Navigation:** `Setup > System Parameters > Values`
- **Action:** Opened the System Parameters screen and filled in the required values according to the activity guide:
  - **Parameter Code:** ENABLE_FULFILLMENT_ACCEPTANCE
  - **Name and Description:** Filled in the same as the parameter code, in lowercase without underscores.
  - **Category:** Generic Parameters
  - **Value Set:** OM: Yes or No
  - **Open Orders Check:** Enabled for processing open orders.

### 3. **Create a Customer Account**
- **Navigation:** `Customers > Standard`
- **Action:** Used the simple search page to look up customer "Ame%" and selected the customer. 
- **Steps:**
  1. Created a new customer account by filling in the necessary details.
  2. Saved the account and filled out additional information, including billing and shipping addresses.
  3. Applied the changes and saved the customer account.

### 4. **Enter a Sales Order**
- **Navigation:** `Orders > Sales Orders`
- **Action:** 
  1. Entered order details such as Order Type, Customer Name, and Bill-To/Ship-To addresses.
  2. Added line items for products/services, including quantities and pricing.
  3. Validated the order by clicking "Book Order" to confirm the order details.

### 5. **Use the Order Import Interface**
- **Action:**
  1. Populated the Order Import Interface Tables (`OE_HEADERS_IFACE_ALL`, `OE_LINES_IFACE_ALL`) with order data from external systems.
  2. Ran the Order Import Concurrent Program by navigating to `Order Management > Requests > Run Requests`, selecting "Order Import," and submitting the request.

### 6. **Generate Invoices upon Shipment or Fulfillment**
- **Action:** 
  1. **Set Up Autoinvoice Integration:** 
     - Navigated to `Receivables > Setup > Transactions > Sources` and defined the source as "Order Entry" to integrate with Order Management.
  2. **Define Transaction Types:** 
     - Went to `Receivables > Setup > Transactions > Transaction Types` and defined transaction types for sales invoices.
  3. **Ship Confirm Sales Orders:** 
     - In the Sales Order module, navigated to `Shipping > Transactions` and performed "Ship Confirm" for the order.
  4. **Generate Invoices:** 
     - Navigated to `Receivables > Interfaces > Autoinvoice` and ran the program to generate invoices from the fulfilled sales orders.

---

## Conclusion
This assignment demonstrates the process of managing customer accounts, entering sales orders, integrating with the Order Import Interface, and generating invoices in Oracle Order Management. The integration with Oracle Receivables ensures smooth order-to-cash processing, automating key steps in the sales cycle.


### Navigating to Payment Overview with Invoices in Payables (Oracle EBS)

To access the **Payment Overview** for invoices in Oracle E-Business Suite (EBS), follow these steps:

1. Navigate to **Payables > Invoices > Invoice Entry**.
2. In the **Invoice Entry** screen, use the shortcut `Ctrl + Fn + F11` to query the standard invoice.
3. Upon querying, a list of invoices will appear. Select the relevant **Standard Invoice** from the list.
4. Once the invoice is selected, click on **Actions**. The system will prompt you with the option to pay the invoice in full. Confirm by selecting **OK**.
5. Next, navigate to **View Payments** to view the payment associated with the invoice.
6. Select the payment record, and click on **Payment Overview** to view the details of the payment transaction.

By following these steps, you can efficiently access and review the Payment Overview for any invoice within the Payables module of Oracle EBS.


 


