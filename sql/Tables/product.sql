CREATE TABLE [SalesDB].[product] (

	[product_id] int NULL, 
	[product_name] varchar(8000) NULL, 
	[product_number] varchar(8000) NULL, 
	[color] varchar(8000) NULL, 
	[standard_cost] decimal(38,18) NULL, 
	[list_price] decimal(38,18) NULL, 
	[product_category] varchar(8000) NULL, 
	[product_model] varchar(8000) NULL, 
	[modified_date] varchar(8000) NULL
);


GO
ALTER TABLE [SalesDB].[product] ADD CONSTRAINT UQ_73b4457d_c18a_4460_a9bb_8f67d537ea1c unique NONCLUSTERED ([product_id]);