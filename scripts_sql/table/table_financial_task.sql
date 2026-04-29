--Create the finacial tasks table
IF OBJECT_ID('dbo.financial_tasks', 'U') IS NOT NULL
    DROP TABLE dbo.financial_tasks;
GO

CREATE TABLE dbo.financial_tasks (
    Task_ID      INT PRIMARY KEY,
    Model_Name   VARCHAR(100) NOT NULL,
    Principal   DECIMAL(19, 4),   
    Annual_Rate  DECIMAL(19, 4),   
    Term_Years   INT,
    Frequency   INT DEFAULT 1     
);
GO

--Insert column names and their values into the table