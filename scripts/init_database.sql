/*
===========================================================
Create Database and Schemas
===========================================================

Script Purpose:
    This script creates the DataWarehouse database and
    initializes the Medallion Architecture schemas:
    
    - bronze : Raw source data
    - silver : Cleaned and transformed data
    - gold   : Business-ready analytical data

Notes:
    - Drops the existing database if it already exists.
    - Creates a fresh DataWarehouse database.
    - Creates bronze, silver, and gold schemas.

Warning:
    Running this script will remove the existing
    DataWarehouse database and all its contents.
    Use only in development environments.

===========================================================
*/

USE master;
GO

-- Drop existing database if it exists
IF EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'DataWarehouse'
)
BEGIN
    ALTER DATABASE DataWarehouse
    SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

    DROP DATABASE DataWarehouse;
END;
GO

-- Create database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
