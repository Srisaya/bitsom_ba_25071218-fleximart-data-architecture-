Task 3: Data Warehouse and Analytics – Brief Overview

Task 3 focuses on building a data warehouse for FlexiMart to analyze historical sales data and generate business insights.

In Task 3.1, a star schema is designed using one fact table (fact_sales) and three dimension tables (dim_date, dim_product, dim_customer). The schema supports efficient OLAP analysis such as sales trends, product performance, and customer behavior. Design decisions include using transaction-level granularity, surrogate keys, and a denormalized structure to enable drill-down and roll-up analysis.

In Task 3.2, the star schema is implemented in MySQL by creating dimension and fact tables and loading realistic sample data. The data represents multiple dates, products, customers, and sales transactions while maintaining referential integrity.

In Task 3.3, OLAP analytical queries are written to analyze monthly sales trends, identify top-performing products, and segment customers based on spending. These queries demonstrate real-world business analytics using the data warehouse.
