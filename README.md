# SQL Data Warehouse and Analytics Project

## Overview

This repository contains a Data Warehouse project developed as part of my Data Engineering and Analytics learning journey.

The project demonstrates:

- Data Warehousing
- ETL Development
- Medallion Architecture
- Data Modeling
- Data Cleaning & Transformation
- Analytics-Ready Data Preparation
- SQL Development Best Practices

The goal is to transform raw business data into clean, structured, and business-ready datasets for reporting and analytics.

---

## Project Requirements

### Building the Data Warehouse (Data Engineering)

#### Objective

Develop a modern Data Warehouse using SQL Server to consolidate data from multiple source systems and enable analytical reporting.

#### Specifications

- Import data from CRM and ERP systems.
- Store raw data in the Bronze Layer.
- Clean and standardize data in the Silver Layer.
- Create business-ready datasets in the Gold Layer.
- Apply data quality checks and transformations.
- Follow Data Warehouse best practices.
- Document architecture and naming conventions.

---

### Analytics & Reporting (Data Analytics)

#### Objective

Create reporting-ready datasets that can be consumed by BI and Analytics tools.

#### Expected Insights

- Customer Analysis
- Product Analysis
- Sales Analysis
- Business Performance Tracking
- Trend Analysis

---

## Architecture

The project follows the Medallion Architecture pattern.

```text
CRM / ERP Sources
        │
        ▼
+----------------+
| Bronze Layer   |
| Raw Data       |
+----------------+
        │
        ▼
+----------------+
| Silver Layer   |
| Clean Data     |
+----------------+
        │
        ▼
+----------------+
| Gold Layer     |
| Business Data  |
+----------------+
        │
        ▼
Power BI / Analytics
```

---

## Data Warehouse Layers

### Bronze Layer

Purpose:

- Store raw source data.
- Preserve original records.
- Support debugging and traceability.

Characteristics:

- Raw Data
- Full Load
- No Transformations
- Source-Aligned Tables

Examples:

```sql
crm_customers
erp_products
erp_sales
```

---

### Silver Layer

Purpose:

- Clean and standardize data.
- Prepare data for analytics.

Transformations:

- Data Cleaning
- Standardization
- Normalization
- Derived Columns
- Data Enrichment

Examples:

```sql
crm_customers_clean
erp_products_clean
erp_sales_clean
```

---

### Gold Layer

Purpose:

- Provide business-ready datasets.
- Support reporting and analytics.

Transformations:

- Data Integration
- Aggregation
- Business Rules

Examples:

```sql
dim_customers
dim_products
fact_sales
agg_sales_monthly
```

---

## Naming Conventions

### General Rules

- Use snake_case.
- Use lowercase letters.
- Use meaningful names.
- Avoid SQL reserved keywords.

Example:

```sql
customer_name
sales_amount
order_date
```

---

### Bronze Layer Naming

Pattern:

```sql
<source_system>_<entity>
```

Examples:

```sql
crm_customers
crm_orders
erp_products
erp_sales
```

---

### Gold Layer Naming

Dimension Tables:

```sql
dim_customers
dim_products
dim_dates
```

Fact Tables:

```sql
fact_sales
fact_orders
```

Aggregate Tables:

```sql
agg_sales_monthly
agg_customer_summary
```

---

### Technical Columns

Pattern:

```sql
dwh_<column_name>
```

Examples:

```sql
dwh_load_date
dwh_insert_date
```

---

### Surrogate Keys

Pattern:

```sql
<table_name>_key
```

Examples:

```sql
customer_key
product_key
date_key
```

---

## Repository Structure

```text
SQL-DATA-WAREHOUSE-PROJECT
│
├── datasets
│   ├── crm
│   └── erp
│
├── docs
│   ├── architecture
│   └── naming_conventions
│
├── scripts
│   ├── bronze
│   ├── silver
│   └── gold
│
├── tests
│
└── README.md
```

---

## Technology Stack

- SQL Server
- T-SQL
- Git
- GitHub
- Draw.io
- CSV Files
- Power BI (Planned)

---


## Future Improvements

- Incremental Loading
- Stored Procedure Automation
- Data Quality Framework
- Power BI Dashboard
- Azure Data Factory Integration
- Cloud Deployment

---

## About Me

Hi, I'm **Yashwanth Samineni**.

I am a recent B.Tech graduate interested in:

- Data Analytics
- SQL Development
- Data Warehousing
- Business Intelligence

This repository showcases my learning journey in Data Warehousing, SQL Development, and Analytics while building a Data Warehouse project using SQL Server.

---

## License

This project is licensed under the MIT License.
