INSERT INTO dim_date VALUES
(20240101,'2024-01-01','Monday',1,1,'January','Q1',2024,false),
(20240106,'2024-01-06','Saturday',6,1,'January','Q1',2024,true),
(20240107,'2024-01-07','Sunday',7,1,'January','Q1',2024,true),
(20240210,'2024-02-10','Saturday',10,2,'February','Q1',2024,true);

INSERT INTO dim_product (product_id, product_name, category, subcategory, unit_price) VALUES
('P001','Laptop Pro','Electronics','Laptop',50000),
('P002','Smartphone X','Electronics','Mobile',30000),
('P003','Headphones','Electronics','Audio',3000),
('P004','Office Chair','Furniture','Chair',12000),
('P005','Dining Table','Furniture','Table',45000),
('P006','T-Shirt','Clothing','Men',800),
('P007','Jeans','Clothing','Men',1500);

INSERT INTO dim_customer (customer_id, customer_name, city, state, customer_segment) VALUES
('C001','John Doe','Mumbai','MH','Retail'),
('C002','Anita Sharma','Delhi','DL','Retail'),
('C003','Ravi Kumar','Bengaluru','KA','Corporate'),
('C004','Neha Singh','Pune','MH','Retail');

INSERT INTO fact_sales
(date_key, product_key, customer_key, quantity_sold, unit_price, discount_amount, total_amount)
VALUES
(20240106,1,1,2,50000,0,100000),
(20240107,2,2,1,30000,2000,28000),
(20240210,3,3,5,3000,0,15000);
