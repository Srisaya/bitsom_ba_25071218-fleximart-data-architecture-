# bitsom_ba_25071218-fleximart-data-architecture-
# FlexiMart Data Architecture Project

**Student Name:** Srisaya Mohan Patro
**Student ID:** bitsom_ba_25071218
**Email:** sohampatro31@gmail.com
**Date:** 08-01-2026

## Project Overview
This project focuses on building an end-to-end data management and analytics system for FlexiMart.

## Repository Structure
├── part1-database-etl/
│   ├── etl_pipeline.py
│   ├── schema_documentation.md
│   ├── business_queries.sql
│   └── data_quality_report.txt
├── part2-nosql/
│   ├── nosql_analysis.md
│   ├── mongodb_operations.js
│   └── products_catalog.json
├── part3-datawarehouse/
│   ├── star_schema_design.md
│   ├── warehouse_schema.sql
│   ├── warehouse_data.sql
│   └── analytics_queries.sql
└── README.md

## Technologies Used

- Python 3.x, pandas, mysql-connector-python
- MySQL 8.0 / PostgreSQL 14
- MongoDB 6.0

## Setup Instructions

### Database Setup

```bash
# Create databases
mysql -u root -p -e "CREATE DATABASE fleximart;"
mysql -u root -p -e "CREATE DATABASE fleximart_dw;"

# Run Part 1 - ETL Pipeline
python part1-database-etl/etl_pipeline.py

# Run Part 1 - Business Queries
mysql -u root -p fleximart < part1-database-etl/business_queries.sql

# Run Part 3 - Data Warehouse
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_schema.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_data.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/analytics_queries.sql


### MongoDB Setup

mongosh < part2-nosql/mongodb_operations.js

## Key Learnings

From these three assignments, you learned how to structure a real-world data engineering project, manage it properly using GitHub with meaningful commits, and organize work into clear parts (ETL, NoSQL, and Data Warehousing). You also gained hands-on understanding of relational databases, MongoDB document modeling, and star schema design for analytics, along with basic ETL and OLAP querying. Overall, you learned how an end-to-end data architecture project is built, documented, and submitted professionally.

## Challenges Faced

1. In first file it shows error for the links between the data files.
2. Trying to recreate it by using some other methods but ended up failed.
