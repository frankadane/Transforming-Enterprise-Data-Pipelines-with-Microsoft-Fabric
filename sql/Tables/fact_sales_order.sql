CREATE TABLE [SalesDB].[fact_sales_order] (

	[sales_order_id] int NULL, 
	[sales_order_detail_id] int NULL, 
	[customer_id] int NULL, 
	[product_id] int NULL, 
	[address_id] int NULL, 
	[order_qty] smallint NULL, 
	[unit_price] decimal(38,18) NULL, 
	[unit_price_discount] decimal(38,18) NULL, 
	[line_total] decimal(18,2) NULL, 
	[order_date] varchar(8000) NULL, 
	[modified_date] varchar(8000) NULL
);


GO
ALTER TABLE [SalesDB].[fact_sales_order] ADD CONSTRAINT FK_0431c885_5192_4c3b_afa4_dfe8d843e846 FOREIGN KEY ([address_id]) REFERENCES [SalesDB].[address]([address_id]);
GO
ALTER TABLE [SalesDB].[fact_sales_order] ADD CONSTRAINT FK_45db5cc2_d0d6_452a_8384_c7b4cecfff87 FOREIGN KEY ([product_id]) REFERENCES [SalesDB].[product]([product_id]);
GO
ALTER TABLE [SalesDB].[fact_sales_order] ADD CONSTRAINT FK_e74047c2_470e_4a97_8c2e_d06e0816b626 FOREIGN KEY ([customer_id]) REFERENCES [SalesDB].[customer]([customer_id]);