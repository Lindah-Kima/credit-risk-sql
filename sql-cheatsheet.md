
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

## Customer profiling checklist
✔ Record count
✔ Sample records
✔ Table metadata
✔ Duplicate customer IDs
✔ NULL values
✔ Blank values
✔ Categorical distributions

⬜ Numeric profiling
⬜ Date profiling
⬜ Business validation rules
⬜ Customer profile summary

COUNT(column) ignores NULL values.

Automate data profiling using PostgreSQL's metadata and dynamic SQL so we can generate these checks instead of writing them manually.

## Profile categorical columns
    SELECT
        <category_column>,
        COUNT(*) AS record_count
    FROM <table>
    GROUP BY <category_column>
    ORDER BY record_count DESC;

## Profile numerical columns
    SELECT
        MIN(<numeric_column>) AS minimum_value,
        MAX(<numeric_column>) AS maximum_value,
        ROUND(AVG(<numeric_column>), 2) AS average_value
    FROM <table>;

## Type casting
    -- Convert a value to another data type
    value::NUMERIC

    -- Equivalent syntax
    CAST(value AS NUMERIC)