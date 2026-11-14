{{ config(materialized='table') }}

SELECT
    POLICY_ID,
    CUSTOMER_ID,
    POLICY_TYPE,
    START_DATE,
    END_DATE,
    ANNUAL_PREMIUM,
    COVERAGE_AMOUNT,
    POLICY_STATUS

FROM {{ source('banking_raw', 'INSURANCE_POLICIES') }}