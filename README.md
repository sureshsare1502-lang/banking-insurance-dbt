# Banking & Insurance Analytics Project

## Project Overview

This project demonstrates an end-to-end data engineering workflow integrating banking and insurance datasets using Snowflake, dbt, and AWS S3.

The objective is to transform raw banking and insurance data into a unified Customer 360 dataset for analytical reporting.

## Technologies Used

- **Cloud Storage:** AWS S3
- **Data Warehouse:** Snowflake
- **Transformation:** dbt Core
- **Language:** SQL
- **Version Control:** Git and GitHub

## Architecture

AWS S3 → Snowflake Raw Layer → dbt Staging → dbt Intermediate → dbt Marts → Customer 360

## Project Structure

```text
banking_insurance/
├── analyses/
├── macros/
├── models/
│   ├── staging/
│   ├── intermediate/
│   └── Mart/
├── seeds/
├── snapshots/
├── tests/
├── dbt_project.yml
├── README.md
└── .gitignore
```

## Data Sources

Two datasets are used:

1. Banking Accounts
2. Insurance Policies

Both datasets contain a common CUSTOMER_ID, enabling customer-level integration.

## dbt Transformation Layers

### 1. Staging
- staging_banking_accounts
- staging_insurance_policies

### 2. Intermediate
- int_customer_banking
- int_customer_insurance
- int_customer_360

### 3. Marts
- customer_360

The final model combines banking and insurance metrics and classifies customers into product segments.

## Key Business Metrics

- Total bank accounts
- Total account balance
- Latest account opening date
- Total insurance policies
- Total annual premium
- Total coverage amount
- Customer product segment

## Data Quality

dbt data tests are configured for important customer-level fields, including uniqueness and not-null checks.

## Running the Project

Configure your Snowflake connection in your local dbt profiles file, then run:

```bash
dbt debug
dbt run
dbt test
dbt docs generate
```

## Documentation

Generate and serve dbt documentation locally:

```bash
dbt docs generate
dbt docs serve
```

## Author

SURESH

**Note:** Credentials and passwords are intentionally excluded from this repository.

## Git Workflow

This project follows a feature-branch-based Git workflow.

1. Create a feature branch from `main`.
2. Make changes to dbt models or documentation.
3. Validate changes using dbt commands.
4. Commit changes with meaningful commit messages.
5. Push the feature branch to GitHub.
6. Create a Pull Request against `main`.
7. Review and merge approved changes.

## Validation Commands

```bash
dbt debug
dbt run
dbt test
dbt docs generate
```
