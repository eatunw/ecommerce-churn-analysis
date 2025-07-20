SELECT *
FROM ecommercedata;

-- 1. Remove duplicates
-- 2. Standardize the data
-- 3. Null or blank values
-- 4. Remove any unnecessary columns

-- 1. Remove duplicates

CREATE TABLE dataduplicate
LIKE ecommercedata;

SELECT *
FROM dataduplicate;

INSERT dataduplicate
SELECT *
FROM ecommercedata;

SELECT *,
ROW_NUMBER() OVER(
PARTITION BY CustomerID, Country, InvoiceNo, StockCode, InvoiceDate) AS row_num
FROM dataduplicate
;

WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY Country, InvoiceNo, StockCode, `Description`, CustomerID, UnitPrice, quantity, InvoiceDate) AS row_num
FROM dataduplicate
)
SELECT *
FROM duplicate_cte
WHERE row_num > 1;

SELECT *
FROM dataduplicate
WHERE StockCode = 21866;






CREATE TABLE `dataduplicate2` (
  `InvoiceNo` int DEFAULT NULL,
  `StockCode` text,
  `Description` text,
  `Quantity` int DEFAULT NULL,
  `InvoiceDate` text,
  `UnitPrice` double DEFAULT NULL,
  `CustomerID` int DEFAULT NULL,
  `Country` text,
  `row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


SELECT *
FROM dataduplicate2;

DELETE
FROM dataduplicate2
WHERE row_num > 1;

INSERT INTO dataduplicate2
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY Country, InvoiceNo, StockCode, `Description`, CustomerID, UnitPrice, quantity, InvoiceDate) AS row_num
FROM dataduplicate
;

-- 2. Standardize the data

SELECT Description, TRIM(Description)
FROM dataduplicate2;

UPDATE dataduplicate2
SET description = trim(Description);

SELECT StockCode, TRIM(StockCode)
FROM dataduplicate2;

UPDATE dataduplicate2
SET StockCode = TRIM(StockCode);

SELECT *
FROM dataduplicate2;

SELECT DISTINCT Country
FROM dataduplicate2
;

SELECT *
FROM dataduplicate2
WHERE country = 'EIRE';

UPDATE dataduplicate2
SET Country = 'Ireland'
WHERE Country LIKE 'EIRE';

SELECT `InvoiceDate`,
STR_TO_DATE(`InvoiceDate`, '%m/%d/%Y%H:%i')
FROM dataduplicate2
;

UPDATE dataduplicate2
SET `InvoiceDate` = STR_TO_DATE(`InvoiceDate`, '%m/%d/%Y%H:%i')
;

SELECT *
FROM dataduplicate2;

ALTER TABLE dataduplicate2
MODIFY COLUMN `InvoiceDate` datetime;

SELECT *
FROM dataduplicate2
WHERE StockCode = 'POST'
;

ALTER TABLE dataduplicate2
DROP COLUMN row_num;

SELECT *
FROM dataduplicate2;
