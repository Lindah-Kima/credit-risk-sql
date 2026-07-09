-- ============================================================================
-- EXPLORE THE BRONZE LAYER
--
-- Purpose:
-- List every table in the Bronze schema.
-- This gives us an inventory of the raw business data available.
-- ============================================================================


--Business Question

--What business entities are stored in our lending system?


SELECT
    table_name
FROM information_schema.tables
WHERE table_schema = 'bronze'
ORDER BY table_name;



--| Table                     | Business Entity                         |
--| -------------------------- | --------------------------------------- |
--| customers                  | Borrowers                               |
--| credit_profiles            | Customer credit information             |
--| loan_applications          | Loan requests                           |
--| loans                      | Approved loans                          |
--| loan_products              | Lending products                        |
--| loan_payments              | Loan repayments                         |
--| repayment_schedule         | Expected repayments                     |
--| collateral                 | Loan security                           |
--| collections_cases          | Delinquent accounts                     |
--| collection_agents          | Collections staff                       |
--| branches                   | Lending branches                        |
--| loan_status_history        | Loan lifecycle events                   |
--| policy_rules               | Lending rules                           |
--| monthly_portfolio_snapshot | Portfolio summaries                     |
--| model_features             | Features prepared for predictive models |

--Customer
--   │
--   ▼
--Credit Profile
--   │
--   ▼
--Loan Application
--   │
--   ▼
--Loan Approval
--   │
--   ▼
--Loan
--   │
--   ├──────────────► Repayment Schedule
--   │
--   ├──────────────► Loan Payments
--   │
--   ├──────────────► Loan Status History
--   │
--   ├──────────────► Collateral
--   │
--   ▼
--Collections (if the customer falls behind)
