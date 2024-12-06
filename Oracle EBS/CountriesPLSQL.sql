CREATE TABLE countries (
    country_id VARCHAR2(2),
    country_name VARCHAR2(50),
    region_id NUMBER
    );
    
    
    
DECLARE
    -- Declare a variable to hold the country ID
    v_countryid VARCHAR2(2) := 'CA';
    
    -- Declare a record variable using %ROWTYPE to hold a full row from the countries table
    v_country_record countries%ROWTYPE;
BEGIN
    -- Fetch the country details from the countries table where country_id matches the variable
    SELECT *
    INTO v_country_record
    FROM countries
    WHERE country_id = v_countryid;
    
    -- Display selected information about the country
    DBMS_OUTPUT.PUT_LINE('Country ID: ' || v_country_record.country_id);
    DBMS_OUTPUT.PUT_LINE('Country Name: ' || v_country_record.country_name);
    DBMS_OUTPUT.PUT_LINE('Region ID: ' || v_country_record.region_id);
    
EXCEPTION
    -- Handle exception if no country with the given ID is found
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No country found with ID ' || v_countryid);
END;

