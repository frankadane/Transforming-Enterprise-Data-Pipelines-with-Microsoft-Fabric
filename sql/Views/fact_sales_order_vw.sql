
CREATE VIEW SalesDB.fact_sales_order_vw AS
SELECT 
    sod.sales_order_i_d AS sales_order_id,
    sod.sales_order_detail_i_d AS sales_order_detail_id,
    ca.customer_i_d AS customer_id,
    sod.product_i_d AS product_id,
    ca.ship_to_address_i_d AS address_id,
    sod.order_qty,
    sod.unit_price,
    sod.unit_price_discount,
    CAST(sod.line_total AS DECIMAL(18,2)) AS line_total, -- Convert from varchar
    ca.order_date AS order_date,
    sod.modified_date
FROM LH_Demo.dbo.salesorderdetail sod
LEFT JOIN LH_Demo.dbo.salesorderheader ca 
    ON sod.sales_order_i_d = ca.sales_order_i_d;