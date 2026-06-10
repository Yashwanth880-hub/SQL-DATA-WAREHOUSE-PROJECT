# Data Dictionary for Gold Layer

## Overview

The Gold Layer is the business-level data representation, structured to support analytical and reporting use cases. It consists of dimension tables and fact tables for specific business metrics.

---

## 1. gold.dim_customers

**Purpose:** Stores customer details enriched with demographic and geographic data.

### Columns

| Column Name     | Data Type    | Description                                                                           |
| --------------- | ------------ | ------------------------------------------------------------------------------------- |
| customer_key    | INT          | Surrogate key uniquely identifying each customer record in the dimension table.       |
| customer_id     | INT          | Unique numerical identifier assigned to each customer.                                |
| customer_number | NVARCHAR(50) | Alphanumeric identifier representing the customer, used for tracking and referencing. |
| first_name      | NVARCHAR(50) | Customer first name.                                                                  |
| last_name       | NVARCHAR(50) | Customer last name.                                                                   |
| country         | NVARCHAR(50) | Customer country of residence.                                                        |
| marital_status  | NVARCHAR(50) | Customer marital status.                                                              |
| gender          | NVARCHAR(50) | Customer gender.                                                                      |
| birthdate       | DATE         | Customer date of birth.                                                               |
| create_date     | DATE         | Date the customer record was created.                                                 |

---

## 2. gold.dim_products

**Purpose:** Provides information about products and their attributes.

### Columns

| Column Name          | Data Type     | Description                                             |
| -------------------- | ------------- | ------------------------------------------------------- |
| product_key          | INT           | Surrogate key uniquely identifying each product record. |
| product_id           | INT           | Unique identifier assigned to the product.              |
| product_number       | NVARCHAR(50)  | Product code used for tracking and categorization.      |
| product_name         | NVARCHAR(100) | Descriptive product name.                               |
| category_id          | NVARCHAR(50)  | Identifier for the product category.                    |
| category             | NVARCHAR(50)  | High-level product category.                            |
| subcategory          | NVARCHAR(50)  | Detailed product classification within a category.      |
| maintenance_required | NVARCHAR(50)  | Indicates whether maintenance is required.              |
| cost                 | INT           | Product cost or base price.                             |
| product_line         | NVARCHAR(50)  | Product line or series.                                 |
| start_date           | DATE          | Date the product became available.                      |

---

## 3. gold.fact_sales

**Purpose:** Stores transactional sales data for analytical purposes.

### Columns

| Column Name   | Data Type    | Description                                 |
| ------------- | ------------ | ------------------------------------------- |
| order_number  | NVARCHAR(50) | Unique identifier for each sales order.     |
| product_key   | INT          | Foreign key referencing gold.dim_products.  |
| customer_key  | INT          | Foreign key referencing gold.dim_customers. |
| order_date    | DATE         | Date the order was placed.                  |
| shipping_date | DATE         | Date the order was shipped.                 |
| due_date      | DATE         | Payment due date.                           |
| sales_amount  | INT          | Total monetary value of the sale.           |
| quantity      | INT          | Number of units sold.                       |
| price         | INT          | Unit price of the product.                  |

---

## Relationships

### Star Schema

* gold.fact_sales → gold.dim_customers
* gold.fact_sales → gold.dim_products

### Cardinality

* One Customer → Many Sales (1:N)
* One Product → Many Sales (1:N)

---

## Business Rules

* Dimension tables contain descriptive business attributes.
* Fact tables contain measurable business metrics.
* Surrogate keys are used to maintain relationships between fact and dimension tables.
* Gold Layer objects are optimized for reporting and analytics.
