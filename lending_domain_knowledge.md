# Lending Domain Knowledge

This document captures key lending and credit risk concepts encountered throughout the project.

It serves as a reference for understanding the business context behind the SQL queries and analytical decisions.

---

# Customers

## Who is a Customer?

A customer is an individual or business that has an account or relationship with a lending institution.

Not every customer has an active loan.

A customer may:

* Register without applying for a loan.
* Submit one or more loan applications.
* Have applications that are approved or rejected.
* Hold multiple loans over time.
* Fully repay previous loans.
* Default on loan repayments.

Therefore, customers and loans represent different business entities.

---

## Customer vs Loan

One customer can have:

* Zero loans
* One loan
* Multiple loans

This represents a **one-to-many relationship** between customers and loans.

When analyzing lending data, avoid assuming that the number of customers equals the number of loans.

---

## Customer Identifier

Each customer should have a unique identifier.

Before using customer data for analysis, verify that the customer identifier is unique and investigate any duplicate values.

Duplicate customer identifiers may indicate:

* Data quality issues
* Duplicate records
* Incorrect business keys
* Data integration problems

---

## Why Customer Data Matters

Customer information supports:

* Customer identification
* Credit assessment
* Loan eligibility evaluation
* Customer segmentation
* Portfolio reporting
* Regulatory reporting
* Risk monitoring

The customer table forms the foundation of most lending analyses.

* Customer Attributes
    Customer demographic, geographic, and employment attributes help lenders understand their customer base, segment borrowers, support credit assessments, meet regulatory requirements, and monitor portfolio composition. Profiling these attributes also helps identify unexpected values and potential data quality issues before analysis.

* Numeric fields are used in lending decisions, customer segmentation, affordability assessment, and reporting.

    Before using them, we need to answer:

    Are the values reasonable?
    Are there impossible values?
    What's the range?
    What's typical?

* Why do lenders care about income?

    Monthly income is one of the primary indicators of a borrower's repayment capacity.

    It is commonly used to:

        Assess loan affordability.
        Determine borrowing limits.
        Calculate debt-to-income (DTI) ratios.
        Support credit underwriting decisions.
        Segment customers by income bands.

    Notice that income alone does not determine creditworthiness. It is considered alongside employment status, existing debt, repayment history, collateral, and other risk factors.

