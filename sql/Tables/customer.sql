CREATE TABLE [SalesDB].[customer] (

	[customer_id] int NULL, 
	[full_name] varchar(8000) NOT NULL, 
	[company_name] varchar(8000) NULL, 
	[sales_person] varchar(8000) NULL, 
	[email_address] varchar(8000) NULL, 
	[phone] varchar(8000) NULL, 
	[modified_date] varchar(8000) NULL
);


GO
ALTER TABLE [SalesDB].[customer] ADD CONSTRAINT UQ_aea5a1f4_bc21_4804_a9aa_6798cc2ffcdb unique NONCLUSTERED ([customer_id]);