# **Transforming Enterprise Data Pipelines with Microsoft Fabric – A Scalable Solution for SQL Server Migration & Analytics**

## **1️⃣ Introduction & Objectives**
### **Project Overview**
This project demonstrates an **end-to-end data engineering pipeline** using **Microsoft Fabric** to automate the migration, transformation, and analysis of enterprise data from an **on-premises SQL Server database (AdventureWorks SalesLT schema)**. The goal is to create a **scalable, analytics-ready architecture** for structured reporting in **Power BI**.

### **Objectives**
✅ **Automate daily data ingestion** from SQL Server into Microsoft Fabric.  
✅ **Transform a highly normalized Snowflake Schema into a Star Schema** for optimized reporting.  
✅ **Implement a structured multi-layered data architecture** (Bronze, Silver, and Gold).  
✅ **Ensure data consistency and incremental updates** in the Fabric Warehouse.  
✅ **Create Power BI dashboards for real-time business insights.**  

---

## **2️⃣ Project Architecture & Workflow**

The project follows a **multi-layered architecture**:  

1️⃣ **Bronze Layer**: Raw data ingestion from on-prem SQL Server into Microsoft Fabric Lakehouse.  
2️⃣ **Silver Layer**: Data cleansing, transformations, and schema optimization.  
3️⃣ **Gold Layer (Fabric Warehouse)**: Star Schema implementation for analytics.  
4️⃣ **Power BI Reporting**: Interactive dashboards for business insights.  

### **🔹 Data Flow Diagram**
```
SQL Server → Fabric Pipelines → Lakehouse (Bronze) → Fabric Notebooks → Lakehouse (Silver) → Fabric Warehouse (Gold) → Power BI Dashboards
```

---

## **3️⃣ Data Ingestion (Bronze Layer)**
### **Process**
- **Data Source**: On-prem SQL Server (AdventureWorks SalesLT schema).  
- **Fabric Pipelines**: Automates daily ingestion of tables into **Microsoft Fabric Lakehouse (Files section, Parquet format)**.
- **Data Storage**: Raw tables are stored in the **Bronze Layer** of the **Lakehouse**.

### **Key SQL Tables Ingested**
| Table Name | Description |
|------------|-------------|
| SalesOrderHeader | Contains sales order summary |
| SalesOrderDetail | Contains detailed sales transactions |
| Customer | Customer details |
| Product | Product details |
| ProductCategory | Product classification |
| ProductModel | Product model details |

---

## **4️⃣ Data Transformation & Schema Optimization (Silver & Gold Layers)**

### **🔹 Silver Layer (Cleansing & Normalization)**
- Uses **Fabric Notebooks (SQL & Python)** for:
  ✅ **Handling missing values**
  ✅ **Data type standardization**
  ✅ **Removing duplicates**

### **🔹 Gold Layer (Star Schema in Fabric Warehouse)**
- **Denormalization** of Snowflake Schema into **Star Schema** for optimized queries.
- **Fact & Dimension Tables** created in **Fabric Warehouse**.

#### **🔹 Fact Table: `fact_sales_order`**
| Column | Data Type | Description |
|---------|------------|-------------|
| sales_order_id | INT | Unique Order ID |
| customer_id | INT | Foreign Key to Customer |
| product_id | INT | Foreign Key to Product |
| order_qty | SMALLINT | Quantity ordered |
| unit_price | DECIMAL(18,2) | Sale price per unit |
| line_total | DECIMAL(18,2) | Total transaction value |
| order_date | DATETIME2(3) | Order placement date |

#### **🔹 Dimension Table: `dim_customer`**
| Column | Data Type | Description |
|---------|------------|-------------|
| customer_id | INT | Unique Customer ID |
| full_name | VARCHAR(255) | Customer full name |
| company_name | VARCHAR(255) | Company name |
| email_address | VARCHAR(255) | Email |
| phone | VARCHAR(50) | Contact number |
| modified_date | DATETIME2(3) | Last update timestamp |

#### **🔹 Dimension Table: `dim_product`**
| Column | Data Type | Description |
|---------|------------|-------------|
| product_id | INT | Unique Product ID |
| product_name | VARCHAR(255) | Name of product |
| product_category | VARCHAR(255) | Product category |
| standard_cost | DECIMAL(18,2) | Base production cost |
| list_price | DECIMAL(18,2) | Retail price |
| modified_date | DATETIME2(3) | Last update timestamp |

---

## **5️⃣ Fabric Warehouse & Reporting**



### **Power BI Integration**
- **Direct Lake Mode** enables real-time reporting.
- **Dashboards provide insights on:**
  ✅ **Sales Trends** (Top-selling products, revenue breakdowns)  
  ✅ **Customer Analytics** (Repeat buyers, location-based insights)  
  ✅ **Inventory Performance**  

---

## **6️⃣ Key Technologies & Implementation Steps**
| **Technology** | **Purpose** |
|--------------|-------------|
| **Fabric Lakehouse** | Stores raw & transformed data |
| **Fabric Pipelines** | Automates data ingestion |
| **Fabric Notebooks** | Data cleansing & transformation |
| **Fabric Warehouse** | Stores Star Schema tables |
| **SQL Views & Stored Procedures** | Ensures data consistency |
| **Power BI** | Interactive reporting |

---

## **7️⃣ Results & Business Impact**
✅ **Fully automated daily data refresh** from SQL Server to Fabric.  
✅ **Optimized reporting queries with Star Schema in Fabric Warehouse**.  
✅ **Real-time analytics powered by Power BI dashboards**.  
✅ **Scalable architecture ready for enterprise adoption**.  

---

## **8️⃣ Conclusion & Next Steps**
This project **demonstrates the power of Microsoft Fabric** in building **modern, scalable data pipelines**.  

🚀 **This case study proves that Microsoft Fabric is the ultimate platform for seamless data engineering & analytics.**

