Section-1(Schema Overview)->



 **Fact Table :- Fact Sales**



* Grain : One row per product per order line item
* Business Process : Sales transactions



**Measures (Numeric Facts) :-**



* Quantity Sold :- Number of unit sold
* Unit Price :- Price per unit at the time of sales
* Discount Amount :- Discount applied to the sale
* Total Amount :- Final amount (quantity X Unit price - Discount)



**Foreign Keys :-**



* date key -> dim date
* product key -> dim product
* customer key -> dim customer





 **Dimension table :- dim\_date**



* Purpose : Time-based analysis
* Type : Conformed dimension



**Attributes :**



* date key
* full date
* day of week
* day of month
* month
* month name
* quarter
* year
* is weekend



  **Dimension table :- dim\_product**

  

* Purpose: Product-level analysis

  

  **Attributes:**

  

* Product-key : Surrogate key
* Product id : Business product ID
* product name
* category
* subcategory
* unit price

  

  **Dimension Table :** dim customer

  

* Purpose: Customer behaviour and segmentation analysis

  

  **Attributes :**

  

* Customer key : Surrogate key
* Customer id
* Customer name
* city
* state
* Customer segment

  

  **Section 2: Design Decisions**

  

  The star schema uses transaction-level granularity (one row per product per order) because it provides maximum analytical flexibility. This allows detailed analysis such as product-wise revenue, customer purchase behavior, and time-based trends.

  

  Surrogate keys are used instead of natural keys to improve query performance and isolate the data warehouse from changes in source system keys. This also supports Slowly Changing Dimensions and ensures consistency across historical records.

  

  The schema supports drill-down and roll-up operations through the date dimension. Analysts can roll up sales from daily to monthly, quarterly, or yearly levels, and drill down when needed. The denormalized structure reduces join complexity and improves OLAP query performance, making it ideal for reporting and business intelligence use cases.

  

  

  

  **Section 3 (Sample Data Flow) :**

  

  

  **fact\_sales: {**

    **date\_key: 20240115,**

    **product\_key: 5,**

    **customer\_key: 12,**

    **quantity\_sold: 2,**

    **unit\_price: 50000,**

    **discount\_amount: 0,**

    **total\_amount: 100000**

  **}**

  

  **dim\_date: {**

    **date\_key: 20240115,**

    **full\_date: "2024-01-15",**

    **month: 1,**

    **quarter: "Q1",**

    **year: 2024**

  **}**

  

  **dim\_product: {**

    **product\_key: 5,**

    **product\_name: "Laptop",**

    **category: "Electronics"**

  **}**

  

  **dim\_customer: {**

    **customer\_key: 12,**

    **customer\_name: "John Doe",**

    **city: "Mumbai"**

  **}**

  

  

