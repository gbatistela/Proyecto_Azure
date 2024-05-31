

-- Seleccionar la base de datos dbgold de azure synapse
USE dbgold;
GO

-- Address
DROP VIEW IF EXISTS Address;
GO

-- Crear la nueva vista llamada Address
CREATE VIEW Address 
AS 
SELECT *
FROM
    OPENROWSET(
        BULK 'https://mkrdatalakegen2b.dfs.core.windows.net/gold/SalesLT/Address/',
        FORMAT = 'DELTA'
    ) AS [result];
GO

-- Customer
DROP VIEW IF EXISTS Customer;
GO

-- Crear la nueva vista llamada Custom
CREATE VIEW Customer 
AS 
SELECT *
FROM
    OPENROWSET(
        BULK 'https://mkrdatalakegen2b.dfs.core.windows.net/gold/SalesLT/Customer/',
        FORMAT = 'DELTA'
    ) AS [result];
GO


-- CustomerAddress
DROP VIEW IF EXISTS CustomerAddress;
GO

-- Crear la nueva vista llamada Custom
CREATE VIEW CustomerAddress 
AS 
SELECT *
FROM
    OPENROWSET(
        BULK 'https://mkrdatalakegen2b.dfs.core.windows.net/gold/SalesLT/CustomerAddress/',
        FORMAT = 'DELTA'
    ) AS [result];
GO

-- Product
DROP VIEW IF EXISTS Product;
GO

-- Crear la nueva vista llamada Custom
CREATE VIEW Product 
AS 
SELECT *
FROM
    OPENROWSET(
        BULK 'https://mkrdatalakegen2b.dfs.core.windows.net/gold/SalesLT/Product/',
        FORMAT = 'DELTA'
    ) AS [result];
GO

-- ProductCategory
DROP VIEW IF EXISTS ProductCategory;
GO

-- Crear la nueva vista llamada Custom
CREATE VIEW ProductCategory 
AS 
SELECT *
FROM
    OPENROWSET(
        BULK 'https://mkrdatalakegen2b.dfs.core.windows.net/gold/SalesLT/ProductCategory/',
        FORMAT = 'DELTA'
    ) AS [result];
GO

-- ProductDescription
DROP VIEW IF EXISTS ProductDescription;
GO

-- Crear la nueva vista llamada Custom
CREATE VIEW ProductDescription 
AS 
SELECT *
FROM
    OPENROWSET(
        BULK 'https://mkrdatalakegen2b.dfs.core.windows.net/gold/SalesLT/ProductDescription/',
        FORMAT = 'DELTA'
    ) AS [result];
GO

-- ProductModel
DROP VIEW IF EXISTS ProductModel;
GO

-- Crear la nueva vista llamada Custom
CREATE VIEW ProductModel 
AS 
SELECT *
FROM
    OPENROWSET(
        BULK 'https://mkrdatalakegen2b.dfs.core.windows.net/gold/SalesLT/ProductModel/',
        FORMAT = 'DELTA'
    ) AS [result];
GO

-- ProductModelProductDescription
DROP VIEW IF EXISTS ProductModelProductDescription;
GO

-- Crear la nueva vista llamada Custom
CREATE VIEW ProductModelProductDescription 
AS 
SELECT *
FROM
    OPENROWSET(
        BULK 'https://mkrdatalakegen2b.dfs.core.windows.net/gold/SalesLT/ProductModelProductDescription/',
        FORMAT = 'DELTA'
    ) AS [result];
GO


-- SalesOrderDetail
DROP VIEW IF EXISTS SalesOrderDetail;
GO

-- Crear la nueva vista llamada Custom
CREATE VIEW SalesOrderDetail
AS 
SELECT *
FROM
    OPENROWSET(
        BULK 'https://mkrdatalakegen2b.dfs.core.windows.net/gold/SalesLT/SalesOrderDetail/',
        FORMAT = 'DELTA'
    ) AS [result];
GO

-- SalesOrderHeader
DROP VIEW IF EXISTS SalesOrderHeader;
GO

-- Crear la nueva vista llamada Custom
CREATE VIEW SalesOrderHeader
AS 
SELECT *
FROM
    OPENROWSET(
        BULK 'https://mkrdatalakegen2b.dfs.core.windows.net/gold/SalesLT/SalesOrderHeader/',
        FORMAT = 'DELTA'
    ) AS [result];
GO