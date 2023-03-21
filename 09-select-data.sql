-- Read specific columns from table
SELECT date_created,
  customer_name,
  product_name,
  volume
FROM sales;

-- Read all columns
SELECT * FROM sales
WHERE volume > 1000;

SELECT * FROM sales
WHERE is_recurring IS TRUE;

-- Read all columns with multiple conditions
SELECT * FROM sales
WHERE (is_disputed IS TRUE) AND (volume > 5000);

SELECT * FROM sales
WHERE volume > 1000 AND volume < 100000;

-- Read all data in date range (only for DATE type)
SELECT * FROM sales
WHERE date_created > '2021-11-01' AND date_created < '2022-05-01';

-- Read all data in range for DATETIME and TIMESTAMP
SELECT * FROM sales
WHERE date_created BETWEEN '2021-11-02' AND '2022-04-30';

-- Between operator do not include range values (1000 > volume > 100000) not >= 
SELECT * FROM sales
WHERE volume BETWEEN 1000 AND 100000;

-- Not equal
SELECT * FROM sales
WHERE customer_name <> 'Max Schwarz';

-- Text filtering (text filter by character)
SELECT * FROM sales
WHERE customer_name > 'Company A';

-- IS operator uses only for NULL and BOOLEAN values
SELECT * FROM sales
WHERE date_fulfilled IS NOT NULL;

-- Date differences (MySQL)
SELECT * FROM sales
WHERE date_fulfilled - date_created <= 5;

-- Date differences (PostgreSQL)
SELECT * FROM sales
WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5;

-- Order result set and limit
SELECT * FROM sales
ORDER BY volume DESC
LIMIT 10;

SELECT * FROM sales
ORDER BY volume
LIMIT 10;

SELECT * FROM sales
WHERE is_disputed IS FALSE
ORDER BY volume DESC
LIMIT 3;

SELECT * FROM sales
ORDER BY volume DESC
LIMIT 5
OFFSET 3;

-- Read data with unique customer_name values (same column values will be filter out to 1 row)
SELECT DISTINCT customer_name FROM sales
ORDER BY customer_name;

-- Subqueries
CREATE VIEW base_result AS SELECT * FROM sales
WHERE volume > 1000;

SELECT customer_name, product_name
FROM base_result;
