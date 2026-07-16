-- ============================================================================
-- DAY 1 | PROFILE CUSTOMERS TABLE
--
-- Objective:
-- Assess the structure, size, and quality of the customers table before
-- performing any business analysis.
--
-- Business Question:
-- Can the customer data be trusted for reporting and lending analytics?
-- ============================================================================



-- ============================================================================
-- STEP 1: Count Customer Records
--
-- Business Question:
-- How many customer records exist in the lending system?
--
-- Why?
-- Understanding the size of a table is the first step in data profiling.
-- ============================================================================
SELECT
    COUNT(*) AS total_customers
FROM bronze.customers;


-- ============================================================================
-- STEP 2: Preview the Data
--
-- Business Question:
-- What does a customer record look like?
--
-- Why?
-- Viewing a small sample helps us understand the information stored
-- in each customer record before performing any analysis.
-- ============================================================================
SELECT *
FROM bronze.customers
LIMIT 10;



-- ============================================================================
-- STEP 3: Explore the Table Structure
--
-- Business Question:
-- What columns exist in the customers table, what data types do they use,
-- and which columns allow NULL values?
--
-- Why?
-- Understanding the table structure helps identify the available data
-- before writing analytical queries.
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
-- STEP 4: Check for Duplicate Customer IDs
--
-- Business Question:
-- Does each customer have a unique identifier?
--
-- Why?
-- Customer IDs should uniquely identify each customer.
-- Duplicate IDs may indicate data quality issues or an incorrect
-- choice of business key.
-- ============================================================================
SELECT
    customer_id,
    COUNT(*) AS record_count
FROM bronze.customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- ============================================================================
-- STEP 5: Check for Missing Values
--
-- Business Question:
-- Which customer attributes contain missing values?
--
-- Why?
-- Missing values can affect reporting, lending decisions,
-- customer segmentation, and downstream analytics.
-- ============================================================================

SELECT
    COUNT(*) AS total_records,

    COUNT(*) - COUNT(customer_id) AS missing_customer_id,
    COUNT(*) - COUNT(national_id_or_passport) AS missing_national_id_or_passport,
    COUNT(*) - COUNT(kra_pin) AS missing_kra_pin,
    COUNT(*) - COUNT(first_name) AS missing_first_name,
    COUNT(*) - COUNT(last_name) AS missing_last_name,
    COUNT(*) - COUNT(gender) AS missing_gender,
    COUNT(*) - COUNT(date_of_birth) AS missing_date_of_birth,
    COUNT(*) - COUNT(age) AS missing_age,
    COUNT(*) - COUNT(phone_number) AS missing_phone_number,
    COUNT(*) - COUNT(email) AS missing_email,
    COUNT(*) - COUNT(county) AS missing_county,
    COUNT(*) - COUNT(constituency) AS missing_constituency,
    COUNT(*) - COUNT(town) AS missing_town,
    COUNT(*) - COUNT(postal_code) AS missing_postal_code,
    COUNT(*) - COUNT(education_level) AS missing_education_level,
    COUNT(*) - COUNT(marital_status) AS missing_marital_status,
    COUNT(*) - COUNT(employment_status) AS missing_employment_status,
    COUNT(*) - COUNT(employer_name) AS missing_employer_name,
    COUNT(*) - COUNT(monthly_income_kes) AS missing_monthly_income_kes,
    COUNT(*) - COUNT(primary_income_source) AS missing_primary_income_source,
    COUNT(*) - COUNT(branch_id) AS missing_branch_id,
    COUNT(*) - COUNT(onboarding_channel) AS missing_onboarding_channel,
    COUNT(*) - COUNT(registration_date) AS missing_registration_date,
    COUNT(*) - COUNT(kyc_status) AS missing_kyc_status,
    COUNT(*) - COUNT(active_flag) AS missing_active_flag

FROM bronze.customers;

-- ============================================================================
-- STEP 6: Check for Blank Text Values
--
-- Business Question:
-- Do important customer fields contain blank text values?
--
-- Why?
-- Blank strings are not NULL values, but they still represent
-- missing information from a business perspective.
-- ============================================================================

SELECT
    COUNT(*) FILTER (WHERE TRIM(customer_id) = '') AS blank_customer_id,
    COUNT(*) FILTER (WHERE TRIM(first_name) = '') AS blank_first_name,
    COUNT(*) FILTER (WHERE TRIM(last_name) = '') AS blank_last_name,
    COUNT(*) FILTER (WHERE TRIM(email) = '') AS blank_email,
    COUNT(*) FILTER (WHERE TRIM(kra_pin) = '') AS blank_kra_pin
FROM bronze.customers;

-- ============================================================================
-- STEP 7A: Profile Gender Distribution
--
-- Business Question:
-- How are customers distributed by gender?
-- ============================================================================

SELECT
    gender,
    COUNT(*) AS customer_count
FROM bronze.customers
GROUP BY gender
ORDER BY customer_count DESC;

-- ============================================================================
-- STEP 7B: Profile Employment Status
--
-- Business Question:
-- How are customers distributed by employment status?
-- ============================================================================

SELECT
    employment_status,
    COUNT(*) AS customer_count
FROM bronze.customers
GROUP BY employment_status
ORDER BY customer_count DESC;

-- ============================================================================
-- STEP 7C: Profile Education Level
--
-- Business Question:
-- How are customers distributed by education level?
-- ============================================================================

SELECT
    education_level,
    COUNT(*) AS customer_count
FROM bronze.customers
GROUP BY education_level
ORDER BY customer_count DESC;

-- ============================================================================
-- STEP 7D: Profile Customer Distribution by County
--
-- Business Question:
-- How are customers distributed across counties?
-- ============================================================================

SELECT
    county,
    COUNT(*) AS customer_count
FROM bronze.customers
GROUP BY county
ORDER BY customer_count DESC;

-- ============================================================================
-- STEP 7E: Profile KYC Status
--
-- Business Question:
-- How are customers distributed by KYC status?
-- ============================================================================

SELECT
    kyc_status,
    COUNT(*) AS customer_count
FROM bronze.customers
GROUP BY kyc_status
ORDER BY customer_count DESC;

-- ============================================================================
-- STEP 8A: Profile Customer Age
--
-- Business Question:
-- What is the minimum, maximum, and average customer age?
--
-- Why?
-- Understanding the age distribution helps identify unrealistic
-- values and provides insight into the customer population.
-- ============================================================================

SELECT
    MIN(age) AS minimum_age,
    MAX(age) AS maximum_age,
    ROUND(AVG(age), 2) AS average_age
FROM bronze.customers;

-- ============================================================================
-- STEP 8B: Profile Monthly Income
--
-- Business Question:
-- What is the minimum, maximum, and average monthly income?
--
-- Why?
-- Income is a key variable in affordability assessment and
-- credit risk analysis.
-- ============================================================================

SELECT pg_typeof(AVG(monthly_income_kes))
FROM bronze.customers;

SELECT
    MIN(monthly_income_kes) AS minimum_income_kes,
    MAX(monthly_income_kes) AS maximum_income_kes,
    ROUND(AVG(monthly_income_kes)::NUMERIC, 2) AS average_income_kes
FROM bronze.customers;

SELECT
    MIN(monthly_income_kes) AS minimum_income_kes,
    MAX(monthly_income_kes) AS maximum_income_kes,
    ROUND(CAST(AVG(monthly_income_kes) AS NUMERIC), 2) AS average_income_kes
FROM bronze.customers;