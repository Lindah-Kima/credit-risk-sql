# Credit Risk SQL

### Real SQL. Real Business Questions. Real Decisions.

## Project Overview

This repository documents the design and implementation of a production-inspired lending analytics data warehouse using PostgreSQL.

Starting with raw transactional data, the project follows the Medallion Architecture (Bronze, Silver, Gold) and Kimball dimensional modeling before applying SQL to answer real business questions across the lending lifecycle.

Rather than treating SQL as an isolated technical skill, this project uses SQL as a tool for understanding business operations, analyzing credit portfolios, evaluating lending performance, and supporting data-driven decision-making.

Every query is developed within a realistic lending context, combining analytical thinking, business knowledge, and production-style SQL.

---

# Objectives

This project aims to:

* Design and implement a production-inspired lending analytics data warehouse.
* Apply Medallion Architecture and Kimball dimensional modeling to organize analytical data.
* Develop the ability to translate business questions into SQL solutions.
* Strengthen analytical and problem-solving skills using real lending and credit risk scenarios.
* Write clean, readable, and maintainable SQL following industry practices.
* Interpret query results to generate meaningful business insights and recommendations.
* Build a portfolio that demonstrates practical SQL, analytical thinking, and data warehouse design.

---

# Data Warehouse Architecture

The project follows a layered data architecture commonly used in modern analytics platforms.

```text
Raw CSV Data
      │
      ▼
Bronze Layer
(Raw Data)
      │
      ▼
Silver Layer
(Cleaned & Standardized Data)
      │
      ▼
Gold Layer
(Business-Ready Data Warehouse)
      │
      ▼
Business Analytics
      │
      ▼
Power BI & Machine Learning
```

### Bronze Layer

Stores raw source data exactly as received without modification.

### Silver Layer

Applies data cleaning, validation, standardization, and business rules to create trusted analytical datasets.

### Gold Layer

Implements a Kimball dimensional model with fact and dimension tables optimized for reporting, analytics, and business intelligence.

---

# Project Objectives by Layer

## Bronze

* Load raw source data
* Preserve source structure
* Validate successful ingestion

## Silver

* Standardize data types
* Handle missing values
* Remove duplicates
* Apply business rules
* Improve data quality

## Gold

* Build dimensional models
* Create fact and dimension tables
* Support analytical reporting
* Optimize datasets for business queries

---

# Skills Developed

## Business & Analytical Thinking

* Translate business questions into analytical problems.
* Identify the metrics required to answer business questions.
* Interpret analytical results to support business decisions.
* Connect SQL outputs to operational and strategic objectives.

## SQL

* Data retrieval and filtering
* Sorting and aliases
* Aggregate functions
* Grouping and summarization
* Joins
* Common Table Expressions (CTEs)
* Subqueries
* Window functions
* Date and time analysis
* Conditional logic
* Set operations
* Views
* Temporary tables

## Query Optimization

* Write clean and maintainable SQL
* Improve query readability
* Choose efficient query patterns
* Understand execution and performance considerations

## Data Warehousing

* Medallion Architecture
* Kimball dimensional modeling
* Fact and dimension table design
* Data quality validation
* Data transformation

## Business Communication

* Explain analytical approaches clearly.
* Communicate business insights from SQL results.
* Recommend data-driven business actions.

---

# Learning Approach

Every business problem follows the same structured workflow.

1. Understand the business context.
2. Define the business question.
3. Identify the required data and analytical approach.
4. Design the SQL solution.
5. Review opportunities to improve readability and performance.
6. Interpret the business impact of the results.
7. Recommend actionable business decisions.

---

# SQL Topics Covered

The repository progressively covers SQL from foundational concepts to advanced analytical techniques.

### Foundations

* SELECT
* WHERE
* ORDER BY
* DISTINCT
* LIMIT
* Aggregate functions
* GROUP BY
* HAVING

### Intermediate

* INNER, LEFT, RIGHT, and FULL JOINs
* CASE expressions
* Date and time functions
* String functions
* CTEs
* Subqueries
* Views
* Set operations

### Advanced

* Window functions
* Ranking functions
* Recursive CTEs
* Analytical calculations
* Transaction management
* Indexes
* Query optimization
* Execution plan analysis

---

# Business Questions Addressed

The SQL developed throughout this repository answers questions commonly encountered in lending and credit risk.

Examples include:

* Which branches originate the highest-quality loan portfolios?
* Which customer segments present the highest credit risk?
* How do repayment patterns vary across loan products?
* Which loans become delinquent most frequently?
* How effective are collections activities?
* Which factors influence loan approval decisions?
* How does portfolio quality change over time?
* Which products generate the strongest lending performance?
* Which customers demonstrate repeat borrowing behaviour?
* What trends indicate increasing portfolio risk?

---

# Guiding Principles

This project is built on five principles.

* Business understanding comes before SQL implementation.
* Analytical thinking precedes query writing.
* Readability and maintainability take priority over unnecessary complexity.
* Performance optimization is applied where it improves efficiency without sacrificing clarity.
* Every query should contribute to answering a business question or supporting a business decision.

---

# Repository Purpose

The objective of this repository is not simply to practice SQL syntax.

It is to develop the ability to think like a data professional by combining data engineering, analytical reasoning, business understanding, and SQL to solve real lending and credit risk problems.

Each completed section represents another step toward designing analytical data warehouses, writing production-quality SQL, and using data to support informed business decisions.
