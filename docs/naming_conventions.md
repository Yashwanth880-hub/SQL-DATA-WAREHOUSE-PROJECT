# Naming Conventions

This document outlines the naming conventions used for schemas, tables, views, columns, and other objects in the data warehouse.

## Table of Contents

1. General Principles
2. Table Naming Conventions

   * Bronze Rules
   * Silver Rules
   * Gold Rules
3. Column Naming Conventions

   * Surrogate Keys
   * Technical Columns
4. Stored Procedure Naming Conventions

---

## General Principles

* Use snake_case with lowercase letters and underscores (_).
* Use English for all object names.
* Avoid SQL reserved words.

## Table Naming Conventions

### Bronze Rules

Pattern:

`<source_system>_<entity>`

Examples:

* crm_cust_info
* crm_prd_info
* crm_sales_details
* erp_cust_az12
* erp_loc_a101

### Silver Rules

Pattern:

`<source_system>_<entity>`

Examples:

* crm_cust_info
* crm_prd_info
* crm_sales_details
* erp_cust_az12
* erp_loc_a101

### Gold Rules

Pattern:

`<category>_<entity>`

Examples:

* dim_customers
* dim_products
* fact_sales

#### Category Prefixes

| Prefix  | Description     |
| ------- | --------------- |
| dim_    | Dimension table |
| fact_   | Fact table      |
| report_ | Reporting table |

---

## Column Naming Conventions

### Surrogate Keys

Pattern:

`<entity>_key`

Examples:

* customer_key
* product_key

### Technical Columns

Pattern:

`dwh_<column_name>`

Examples:

* dwh_load_date
* dwh_insert_date
* dwh_update_date

---

## Stored Procedure Naming Conventions

Pattern:

`load_<layer>`

Examples:

* load_bronze
* load_silver
* load_gold
