
CREATE VIEW SalesDB.customer_vw AS
SELECT 
    c.customer_i_d AS customer_id,
    CONCAT_WS(' ', c.first_name, c.middle_name, c.last_name) AS full_name,
    c.company_name,
    c.sales_person,
    c.email_address,
    c.phone,
    c.modified_date
FROM LH_Demo.dbo.customer c;