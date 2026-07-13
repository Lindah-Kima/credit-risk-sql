--"Can I trust this data?"

-- ============================================================================
-- PROFILE CUSTOMERS TABLE
-- Preview the data.
--
-- Why?
-- Before analysing a table, we first look at a few rows to understand
-- what information it contains.
-- ============================================================================

SELECT *
FROM bronze.customers
LIMIT 10;

-- ============================================================================
-- PROFILE CUSTOMERS TABLE
-- View the table structure.
--
-- Why?
-- This query lists every column in the customers table along with its
-- data type and whether it can contain missing (NULL) values.
-- ============================================================================

SELECT
    ordinal_position AS column_order,
    column_name,
    data_type,
    is_nullable
FROM information_schema.columns
WHERE table_schema = 'bronze'
  AND table_name = 'customers'
ORDER BY ordinal_position;

-- ============================================================================
-- Step 3: Check for duplicate customer IDs. Are there any customer IDs that appear more than once?
-- Why?
-- A customer identifier should uniquely identify each customer.
-- If duplicates exist, they must be investigated before analysis.
-- ============================================================================

SELECT
    customer_id,
    COUNT(*) AS record_count
FROM bronze.customers
GROUP BY customer_id
HAVING COUNT(*) > 1;


--FROM
--    ↓
--GROUP BY
--    ↓
--Aggregate Functions
--    ↓
--HAVING
--    ↓
--SELECT
--    ↓
--ORDER BY
--    ↓
--limit
--
--1. Go to the filing cabinet.
--        (FROM)
--
--2. Take out all customer files.
--
--3. Sort them into piles by customer ID.
--        (GROUP BY)
--
--4. Count the number of files in each pile.
--        (COUNT)
--
--5. Throw away piles with only one file.
--        (HAVING)
--
--6. Write the remaining customer IDs and their counts on a report.
--        (SELECT)
--
--7. Arrange the report if needed.
--        (ORDER BY)
--
--8. Show only the requested number of rows.
--        (LIMIT)


