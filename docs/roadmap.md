# Roadmap

This roadmap outlines the progression of the project from understanding a lending database to solving increasingly complex business problems with SQL.

The objective is to develop both technical SQL proficiency and the analytical thinking required to answer real business questions in lending and credit risk. Throughout the project, concepts are applied using a production-inspired lending dataset rather than isolated SQL exercises.

---

# Phase 1 — Understanding the Data

## Goal

Understand the lending domain, the available data, and the structure of the database before performing analysis.

## Topics

* Lending business process
* Database exploration
* Schemas
* Tables
* Metadata exploration
* Data profiling
* Table grain
* Primary keys
* Foreign keys
* Constraints
* Entity relationships
* Data quality assessment

**Outcome**

Understand what data exists, how it is organized, and how business entities relate across the lending lifecycle.

---

# Phase 2 — SQL Foundations

## Goal

Learn the core SQL statements used to retrieve, filter, and summarize data.

## Topics

* SELECT
* DISTINCT
* WHERE
* ORDER BY
* LIMIT
* OFFSET
* Aliases
* Comments
* Comparison operators
* Logical operators
* Pattern matching
* Aggregate functions
* GROUP BY
* HAVING

**Outcome**

Write accurate queries that answer foundational business questions.

---

# Phase 3 — Working with Multiple Tables

## Goal

Combine related business entities to answer more meaningful questions.

## Topics

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL OUTER JOIN
* CROSS JOIN
* SELF JOIN
* Multi-table joins
* UNION
* UNION ALL
* INTERSECT
* EXCEPT

**Outcome**

Understand how customers, loans, repayments, products, branches, and collections are connected.

---

# Phase 4 — Data Transformation

## Goal

Prepare and transform data for analysis.

## Topics

* CASE expressions
* CAST
* Type conversion
* COALESCE
* NULLIF
* String functions
* Numeric functions
* Date and time functions
* Conditional expressions
* Regular expressions

**Outcome**

Transform raw data into meaningful business information.

---

# Phase 5 — Intermediate SQL

## Goal

Develop maintainable SQL for solving increasingly complex business problems.

## Topics

* Scalar subqueries
* Correlated subqueries
* EXISTS
* NOT EXISTS
* IN
* ANY
* ALL
* Common Table Expressions (CTEs)
* Recursive CTEs
* Views
* Materialized views
* Temporary tables

**Outcome**

Break complex analytical problems into reusable SQL solutions.

---

# Phase 6 — Analytical SQL

## Goal

Use SQL to perform advanced business and portfolio analysis.

## Topics

### Window Functions

* OVER()
* PARTITION BY
* ORDER BY
* Window frames
* ROW_NUMBER()
* RANK()
* DENSE_RANK()
* NTILE()
* PERCENT_RANK()
* CUME_DIST()
* LAG()
* LEAD()
* FIRST_VALUE()
* LAST_VALUE()
* NTH_VALUE()

### Analytical Techniques

* Running totals
* Moving averages
* Rolling calculations
* Period-over-period analysis
* Month-over-month analysis
* Year-over-year analysis
* Ranking
* Segmentation
* Cohort analysis
* Retention analysis
* Time series analysis

**Outcome**

Perform advanced analytical reporting and trend analysis using SQL.

---

# Phase 7 — Database Programming

## Goal

Understand how SQL is extended to automate and manage business logic.

## Topics

* User-defined functions
* Stored procedures
* Parameters
* Variables
* Control flow
* Loops
* Exception handling
* Dynamic SQL

**Outcome**

Write reusable database objects that automate repetitive tasks and business processes.

---

# Phase 8 — Database Design

## Goal

Understand how analytical databases are structured and maintained.

## Topics

* Normalization
* Denormalization
* Star schema
* Snowflake schema
* Fact tables
* Dimension tables
* Constraints
* Sequences
* Identity columns
* Generated columns
* Indexes
* Partitions

**Outcome**

Design databases that support reliable reporting and analytical workloads.

---

# Phase 9 — Transactions and Data Integrity

## Goal

Understand how databases maintain consistency and reliability.

## Topics

* Transactions
* COMMIT
* ROLLBACK
* SAVEPOINT
* ACID properties
* Locks
* Isolation levels
* Concurrency
* Triggers

**Outcome**

Understand how databases protect data during updates and concurrent operations.

---

# Phase 10 — Performance Optimization

## Goal

Write SQL that performs efficiently on large datasets.

## Topics

* Query optimization
* Execution plans
* Index usage
* Join strategies
* Query refactoring
* Performance tuning
* Reading execution plans
* Common performance bottlenecks

**Outcome**

Develop SQL that is both correct and efficient.

---

# Phase 11 — Lending Analytics

## Goal

Apply SQL to practical lending and credit risk business scenarios.

## Topics

* Customer analysis
* Loan application analysis
* Loan approval analysis
* Loan portfolio analysis
* Loan product analysis
* Repayment analysis
* Delinquency analysis
* Collections analysis
* Branch performance
* Customer behaviour
* Product performance
* Portfolio growth
* Operational reporting

**Outcome**

Answer real business questions encountered by lending institutions.

---

# Phase 12 — Credit Risk Analytics

## Goal

Use SQL to support credit risk assessment and portfolio monitoring.

## Topics

* Credit profile analysis
* Default analysis
* Delinquency trends
* Portfolio quality
* Exposure analysis
* Recovery analysis
* Risk segmentation
* Probability of default analysis
* Early warning indicators
* Vintage analysis
* Roll-rate analysis
* Cohort analysis

**Outcome**

Develop SQL that supports lending decisions and credit risk monitoring.

---

# Phase 13 — Data Quality

## Goal

Ensure analytical data is complete, accurate, and reliable.

## Topics

* Missing values
* Duplicate detection
* Referential integrity
* Data consistency
* Validation queries
* Outlier detection
* Reconciliation
* Data quality reporting

**Outcome**

Build confidence in the data before reporting, analytics, or modeling.

---

# Learning Framework

Every exercise follows the same approach.

1. Business Context
2. Business Question
3. Domain Knowledge
4. Analytical Thinking
5. SQL Concept
6. SQL Solution
7. Query Review
8. Business Insight
9. Business Recommendation

---

# Guiding Principles

* Understand the business before writing SQL.
* Develop domain knowledge alongside technical skills.
* Learn the data before analyzing it.
* Prioritize readability and maintainability.
* Optimize queries where it improves efficiency.
* Validate data before drawing conclusions.
* Let every query answer a business question or support a business decision.
* Progress from foundational concepts to production-ready analytical SQL.
