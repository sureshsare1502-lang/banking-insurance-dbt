{{ config(materialized='table') }}

SELECT
    ACCOUNT_ID,
    CUSTOMER_ID,
    ACCOUNT_TYPE,
    OPEN_DATE,
    ACCOUNT_BALANCE,
    ACCOUNT_STATUS,
    BRANCH_CITY

FROM {{ source('banking_raw', 'BANKING_ACCOUNTS') }}