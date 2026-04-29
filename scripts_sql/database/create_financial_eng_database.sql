--Create a financial engineering database if it does not exist
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'financial_engineering_db')
BEGIN
    CREATE DATABASE financial_engineering_db;
END
GO

USE financial_engineering_db;
GO