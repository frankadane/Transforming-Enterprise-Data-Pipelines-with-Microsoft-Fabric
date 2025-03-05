CREATE TABLE [SalesDB].[address] (

	[address_id] int NULL, 
	[address_line1] varchar(8000) NULL, 
	[address_line2] varchar(8000) NULL, 
	[city] varchar(8000) NULL, 
	[state_province] varchar(8000) NULL, 
	[country_region] varchar(8000) NULL, 
	[postal_code] varchar(8000) NULL, 
	[modified_date] varchar(8000) NULL
);


GO
ALTER TABLE [SalesDB].[address] ADD CONSTRAINT UQ_d7308cc2_a85b_4b8d_9188_0de59dbc4b55 unique NONCLUSTERED ([address_id]);