
{{ config(materialized='table') }}

SELECT
    CUSTOMER_ID,

    -- Banking metrics
    TOTAL_ACCOUNTS,
    TOTAL_ACCOUNT_BALANCE,
    LATEST_ACCOUNT_OPEN_DATE,

    -- Insurance metrics
    TOTAL_POLICIES,
    TOTAL_ANNUAL_PREMIUM,
    TOTAL_COVERAGE_AMOUNT,

    -- Customer segmentation
    CASE
        WHEN TOTAL_ACCOUNTS > 0 AND TOTAL_POLICIES > 0
            THEN 'BANKING_AND_INSURANCE'

        WHEN TOTAL_ACCOUNTS > 0
            THEN 'BANKING_ONLY'

        WHEN TOTAL_POLICIES > 0
            THEN 'INSURANCE_ONLY'

        ELSE 'NO_PRODUCTS'
    END AS CUSTOMER_PRODUCT_SEGMENT

FROM {{ ref('int_customer_360') }}
