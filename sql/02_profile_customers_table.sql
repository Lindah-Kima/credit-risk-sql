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

