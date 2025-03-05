
CREATE VIEW SalesDB.product_vw AS
SELECT 
    p.product_i_d AS product_id,
    p.name AS product_name,
    p.product_number,
    p.color,
    p.standard_cost,
    p.list_price,
    pc.name AS product_category,
    pm.name AS product_model,
    p.modified_date
FROM LH_Demo.dbo.product p
LEFT JOIN LH_Demo.dbo.productcategory pc 
    ON p.product_category_i_d = pc.product_category_i_d
LEFT JOIN LH_Demo.dbo.productmodel pm 
    ON p.product_model_i_d = pm.product_model_i_d;