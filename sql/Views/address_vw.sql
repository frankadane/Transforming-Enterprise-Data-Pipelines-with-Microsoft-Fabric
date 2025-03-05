
CREATE VIEW SalesDB.address_vw AS
SELECT 
    a.address_i_d AS address_id,
    a.address_line1,
    a.address_line2,
    a.city,
    a.state_province,
    a.country_region,
    a.postal_code,
    a.modified_date
FROM LH_Demo.dbo.address a;