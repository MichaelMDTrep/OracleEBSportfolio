
CREATE TABLE SUPPLIER_STG_12 (
    SUPPLIER_ID         NUMBER,
    SUPPLIER_NAME       VARCHAR2(100),
    ADDRESS_LINE1       VARCHAR2(255),
    ADDRESS_LINE2       VARCHAR2(255),
    ADDRESS_LINE3       VARCHAR2(255),
    ADDRESS_LINE4       VARCHAR2(255),
    CITY                VARCHAR2(100),
    STATE_PROVINCE      VARCHAR2(100),
    COUNTRY             VARCHAR2(100),
    POSTAL_CODE         NUMBER);
    CREATE TABLE ITEMS_STG_12 (
    ITEM_ID             NUMBER,
    ITEM_NAME           VARCHAR2(100),
    QUANTITY            NUMBER,
    UNIT_OF_MEASURE     VARCHAR2(50),
    DATE_OF_EXPIRY      DATE,
    DATE_OF_MFG         NUMBER,
    UNIT_PRICE          NUMBER,
    SUPPLIER_ID        NUMBER,
    CONSTRAINT fk_supplier_id FOREIGN KEY (SUPPLIER_ID)REFERENCES SUPPLIER_STG_12(SUPPLIER_ID)
);


---When a foreign key constraint is defined on SUPPLIER_ID in ITEMS_STG_12, the database enforces that any value inserted
---into Supplier_ID in ITEMS_stg_12 must already exist in the SUPPLIER_ID column of SUPPLIER_STG_12
---THis guarantees referential integrity between the two tables, meaning there are no items in ITEMS_STG_12
---with a SUPPLIER_ID that doesn't correspond to a real supplier
--- SUPPLIER ID in ITEMS_STG_12 is now a foreign key, referencing Supplier_ID in SUPPLIER_STG_12
----This ensures referential integrity: any Supplier_ID in ITEMS_STG_12 must exist in SUPPLIER_STG_12
-----The foreign key constraint helps ensure that relationships between tables remain consistent, preventing orphaned
---- records in ITEMS_STG_12. THis creates a rule for the database to automatically verift that all supplier references
--- are valid and prevent inconsistencies across related tables

-----Insertion: If you try to insert a record into the Items table with a supplier_ID that doesn't exist in SUPPLIER_STG_12,
---the database will reject the insertion

-----Update: If you try to change a SUPPLIER_ID in SUPPLIER_STG_12, the database checks if there are dependent rows in
--ITEMS_STG_12. If any items depend on that SUPPLIER_ID, the update will be prevented unless cascade behavior is set

----DELETION: IF you try to delete a supplier from SUPPLIER_STG_12 that is still referenced by items in ITEMS_STG_12
---The delete action will be blocked(again, unless cascade behavior is specified)



INSERT INTO SUPPLIER_STG_12 (
    SUPPLIER_ID, SUPPLIER_NAME, ADDRESS_LINE1, ADDRESS_LINE2, ADDRESS_LINE3, ADDRESS_LINE4,
    CITY, STATE_PROVINCE, COUNTRY, POSTAL_CODE, ITEM_ID, ITEM_NAME, QUANTITY,
    UNIT_OF_MEASURE, DATE_OF_EXPIRY, DATE_OF_MFG, UNIT_PRICE
) VALUES
(1, 'Supplier A', '123 Main St', NULL, NULL, NULL, 'New York', 'NY', 'USA', 10001, 101, 'Item A', 50, 'Box', TO_DATE('2025-12-31', 'YYYY-MM-DD'), 20231001, 20.00),
(2, 'Supplier B', '456 Oak St', 'Suite 200', NULL, NULL, 'Los Angeles', 'CA', 'USA', 90001, 102, 'Item B', 100, 'Carton', TO_DATE('2024-11-30', 'YYYY-MM-DD'), 20220915, 35.00),
(3, 'Supplier C', '789 Pine St', NULL, NULL, NULL, 'Chicago', 'IL', 'USA', 60601, 103, 'Item C', 150, 'Package', TO_DATE('2026-01-31', 'YYYY-MM-DD'), 20230721, 10.50),
(4, 'Supplier D', '101 Maple St', NULL, NULL, NULL, 'Houston', 'TX', 'USA', 77001, 104, 'Item D', 200, 'Piece', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 20231005, 5.75),
(5, 'Supplier E', '202 Birch St', NULL, NULL, NULL, 'Miami', 'FL', 'USA', 33101, 105, 'Item E', 75, 'Box', TO_DATE('2023-10-31', 'YYYY-MM-DD'), 20211210, 15.25);


---------------------------------------------

# CREATE TABLE SUPPLIER_STG_20_2 AS SELECT * FROM SUPPLIER_STG_20 WHERE 1 = 0;


-----This basically creates the table AS SELECTED WHERE 1=0 statement creates
--------- a new table with the same column names, data types, and constraints as the
--------- original table but without copying the data
---- CREATE TABLE...AS SELECT * FROM.. defines a new table based on the structure
-----of an existing one where 1 =0 is a condition that is always false, so no rows
------are selected, ensuring that only the table structure is copied, not the data
----- in other words it creates an empty table with identical columns but no records from the
----source table


-----------------------------------------------

------CREATE a procedure which will read the data from the 1st table and insert into the
-----2nd table(Use Cursor)

CREATE OR REPLACE PROCEDURE copy_supplier_data IS
---Declare a cursor to select data from the first table
    CURSOR supplier_cursor IS
        SELECT * FROM SUPPLIER_STG_12;
        --RECORD to hold each row of data from the cursor
        SUPPLIER_RECORD SUPPLIER_CURSOR%ROWTYPE;
    BEGIN
       --OPEN the cursor and loop through each row
       OPEN supplier_cursor;
       LOOP
           FETCH supplier_cursor INTO supplier_record;
           EXIT WHEN supplier_cursor%NOTFOUND;
           
             -- Insert each row into the second table
        INSERT INTO SUPPLIER_STG_12_2 (
            SUPPLIER_ID, SUPPLIER_NAME, ADDRESS_LINE1, ADDRESS_LINE2, ADDRESS_LINE3, ADDRESS_LINE4,
            CITY, STATE_PROVINCE, COUNTRY, POSTAL_CODE, ITEM_ID, ITEM_NAME, QUANTITY,
            UNIT_OF_MEASURE, DATE_OF_EXPIRY, DATE_OF_MFG, UNIT_PRICE
        ) VALUES (
            supplier_record.SUPPLIER_ID, supplier_record.SUPPLIER_NAME, supplier_record.ADDRESS_LINE1,
            supplier_record.ADDRESS_LINE2, supplier_record.ADDRESS_LINE3, supplier_record.ADDRESS_LINE4,
            supplier_record.CITY, supplier_record.STATE_PROVINCE, supplier_record.COUNTRY,
            supplier_record.POSTAL_CODE, supplier_record.ITEM_ID, supplier_record.ITEM_NAME,
            supplier_record.QUANTITY, supplier_record.UNIT_OF_MEASURE, supplier_record.DATE_OF_EXPIRY,
            supplier_record.DATE_OF_MFG, supplier_record.UNIT_PRICE
        );
    END LOOP;

    -- Close the cursor after processing all rows
    CLOSE supplier_cursor;

    -- Commit the transaction
    COMMIT;
END copy_supplier_data;






DECLARE
    -- Define a record type based on the result set of the join query
    CURSOR supplier_items_cursor IS
        SELECT
            s.SUPPLIER_ID,
            s.SUPPLIER_NAME,
            s.CITY,
            i.ITEM_ID,
            i.ITEM_NAME,
            i.QUANTITY,
            i.UNIT_PRICE
        FROM
            SUPPLIER_STG_12 s
        JOIN
            ITEMS_STG_12 i
        ON
            s.SUPPLIER_ID = i.SUPPLIER_ID;  -- Joining on SUPPLIER_ID

    -- Variable to hold each row fetched from the cursor
    supplier_item_record supplier_items_cursor%ROWTYPE;

BEGIN
    -- Open and loop through the cursor
    OPEN supplier_items_cursor;
    LOOP
        FETCH supplier_items_cursor INTO supplier_item_record;
        EXIT WHEN supplier_items_cursor%NOTFOUND;

        -- Process each row, for example, display the values (or perform some other operation)
        DBMS_OUTPUT.PUT_LINE('Supplier: ' || supplier_item_record.SUPPLIER_NAME ||
                             ', City: ' || supplier_item_record.CITY ||
                             ', Item: ' || supplier_item_record.ITEM_NAME ||
                             ', Quantity: ' || supplier_item_record.QUANTITY ||
                             ', Price: ' || supplier_item_record.UNIT_PRICE);
    END LOOP;

    -- Close the cursor after processing
    CLOSE supplier_items_cursor;
END;


/