
/*
MIS 443 - FINAL EXAM - Q2
DATE: 25/03/2026

STUDENT NAME: Tang So Han
STUDENT ID: 2332300046
*/

/*

Question 1 – Database Setup (10 marks)

Using pgAdmin & PostgreSQL:

(a) Create a database named yourfullname. Then load all Northwind tables into this schema. (5 marks)
Use file "Northwind.sql"


(b) Create a new table called students inside schema exam with the following columns:

Column	Requirement
studentid	5-digit number, Primary Key
fullname	Required
email	Must be unique

Insert your own information into the table. (5 marks)

Then you can check your database before continuing.
*/
SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'public' 
ORDER BY table_name, ordinal_position;


--(b) Create table students
-- Your answer here
create table exam.students (studentid varchar(10) primary key, 
fullname character varying(100) not null, 
email character varying(100) unique not null);

--(c) Insert your own record
-- Your answer here
INSERT INTO exam.students VALUES ('2332300046', 'Tang So Han', 'han.tang.bbs23@eiu.edu.vn');

-- (d) Verify the result
SELECT * FROM exam.students;


-- Question 2: Write an SQL query to find the top 5 customers who placed the highest number of orders.

-- Your answer here
select c.customer_id, c.company_name,
count(o.order_id) as total_orders
from customers c
join orders o
    on c.customer_id = o.customer_id
group by c.customer_id, c.company_name
order by total_orders desc
limit 5;

-- Question 3: Write an SQL query to display a list of orders and the customers who made them. Sort by order date (newest first)

-- Your answer here
select o.order_id, o.order_date, c.customer_id, c.company_name
from orders o
join customers c
on o.customer_id = c.customer_id
order by o.order_date desc;

-- Question 4: Northwind management wants to identify large product movements to better plan inventory and logistics. Write an SQL query to display orders where a product was purchased in large quantity (more than 99 units in a single order).

-- Your answer here
select od.order_id, p.product_id, p.product_name, od.quantity
from order_details od
join products p
on od.product_id = p.product_id
where od.quantity > 99
order by od.quantity desc;

-- Question 5: Northwind management wants to evaluate the delivery performance of each shipping partner. Write an SQL query to calculate the average delivery time (in days) for each shipper. Delivery time = shipped_date – order_date

-- Your answer here
select s.shipper_id, s.company_name,
avg(o.shipped_date - o.order_date) as avg_delivery_days
from shippers s
join orders o
on s.shipper_id = o.ship_via
where o.shipped_date is not null
group by s.shipper_id, s.company_name;

-- Question 6: Northwind wants to identify the most active customers (customers who place orders most frequently) to target retention campaigns. Write an SQL query to rank customers based on their total number of orders (highest = rank 1). Customers with the same number of orders must have the same rank.
-- Your answer here
select c.customer_id, c.company_name,
count(o.order_id) as total_orders,
rank() over (order by count(o.order_id) desc) as customer_rank
from customers c
join orders o
on c.customer_id = o.customer_id
group by c.customer_id, c.company_name
order by customer_rank, c.company_name;