CREATE PROCEDURE SalesDB.Update_Warehouse_Daily  
AS  
BEGIN  
    -- 1️ Update existing records in dim_customer
    UPDATE SalesDB.customer
    SET full_name = src.full_name, 
        company_name = src.company_name, 
        sales_person = src.sales_person, 
        email_address = src.email_address, 
        phone = src.phone, 
        modified_date = src.modified_date
    FROM SalesDB.customer AS dest
    INNER JOIN SalesDB.customer_vw AS src 
    ON dest.customer_id = src.customer_id;

    -- Insert new customers
    INSERT INTO SalesDB.customer (customer_id, full_name, company_name, sales_person, email_address, phone, modified_date)
    SELECT src.customer_id, src.full_name, src.company_name, src.sales_person, src.email_address, src.phone, src.modified_date
    FROM SalesDB.customer_vw AS src
    LEFT JOIN SalesDB.customer AS dest 
    ON src.customer_id = dest.customer_id
    WHERE dest.customer_id IS NULL; -- Only insert new records

    -- 2️ Update existing records in dim_product
    UPDATE SalesDB.product
    SET product_name = src.product_name, 
        product_category = src.product_category, 
        product_model = src.product_model, 
        color = src.color, 
        standard_cost = src.standard_cost, 
        list_price = src.list_price, 
        modified_date = src.modified_date
    FROM SalesDB.product AS dest
    INNER JOIN SalesDB.product_vw AS src 
    ON dest.product_id = src.product_id;

    -- Insert new products
    INSERT INTO SalesDB.product (product_id, product_name, product_number, color, standard_cost, list_price, product_category, product_model, modified_date)
    SELECT src.product_id, src.product_name, src.product_number, src.color, src.standard_cost, src.list_price, src.product_category, src.product_model, src.modified_date
    FROM SalesDB.product_vw AS src
    LEFT JOIN SalesDB.product AS dest 
    ON src.product_id = dest.product_id
    WHERE dest.product_id IS NULL; -- Only insert new records

    -- 3️ Update existing records in dim_address
    UPDATE SalesDB.address
    SET address_line1 = src.address_line1, 
        address_line2 = src.address_line2, 
        city = src.city, 
        state_province = src.state_province, 
        country_region = src.country_region, 
        postal_code = src.postal_code, 
        modified_date = src.modified_date
    FROM SalesDB.address AS dest
    INNER JOIN SalesDB.address_vw AS src 
    ON dest.address_id = src.address_id;

    -- Insert new addresses
    INSERT INTO SalesDB.address (address_id, address_line1, address_line2, city, state_province, country_region, postal_code, modified_date)
    SELECT src.address_id, src.address_line1, src.address_line2, src.city, src.state_province, src.country_region, src.postal_code, src.modified_date
    FROM SalesDB.address_vw AS src
    LEFT JOIN SalesDB.address AS dest 
    ON src.address_id = dest.address_id
    WHERE dest.address_id IS NULL; -- Only insert new records

    -- 4️ Insert new records into fact_sales_order
    INSERT INTO SalesDB.fact_sales_order (sales_order_id, sales_order_detail_id, customer_id, product_id, address_id, order_qty, unit_price, unit_price_discount, line_total, order_date, modified_date)
    SELECT sales_order_id, sales_order_detail_id, customer_id, product_id, address_id, order_qty, unit_price, unit_price_discount, line_total, order_date, modified_date
    FROM SalesDB.fact_sales_order_vw;
    
END;