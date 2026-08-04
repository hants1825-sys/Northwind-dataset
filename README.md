# Northwind Database Analysis
### MIS443 – In-term Test Q4 (2025–2026)

## Overview

This project contains the SQL solutions for the MIS443 In-term Test using the **Northwind Traders** database.

Northwind Traders is a mid-sized international trading company specializing in food and beverage products. The database stores information about customers, products, orders, order details, and shipping activities. The objective of this project is to demonstrate SQL skills by extracting business insights that support sales analysis, customer relationship management, inventory planning, and logistics performance.

---

## Database

**Database:** Northwind

**DBMS:** PostgreSQL (pgAdmin)

The Northwind database consists of **14 relational tables**, with the following core tables used throughout this project:

| Table | Description |
|--------|-------------|
| Customers | Customer information and company details |
| Orders | Customer orders including order and shipping dates |
| Order_Details | Products purchased in each order, quantity, price and discount |
| Products | Product information |
| Shippers | Shipping companies responsible for deliveries |

Additionally, a new table named **students** was created containing:

- StudentID (Primary Key)
- FullName (NOT NULL)
- Email (UNIQUE)

---

## Project Objectives

The project answers several business questions using SQL queries:

### Question 1
Database setup

- Create a PostgreSQL database
- Import all Northwind tables
- Create the **students** table
- Insert student information

---

### Question 2
Top Customers

Identify the **Top 5 customers** who placed the highest number of orders.

Business purpose:

- Recognize valuable customers
- Support customer loyalty strategies

---

### Question 3
Orders and Customers

Display all orders together with the customer who placed each order.

Results are sorted by:

- Order Date (Newest → Oldest)

Business purpose:

- Track customer purchasing activities
- Improve order management

---

### Question 4
Large Quantity Orders

Find products purchased in quantities greater than **99 units** within a single order.

Business purpose:

- Detect large inventory movements
- Improve warehouse and logistics planning

---

### Question 5
Shipping Performance

Calculate the **average delivery time** for each shipping company.

Formula:

```
Delivery Time = Shipped Date − Order Date
```

Business purpose:

- Evaluate logistics performance
- Compare shipping partners
- Improve delivery efficiency

---

### Question 6
Customer Ranking

Rank customers based on their total number of orders using SQL window functions.

Requirements:

- Highest number of orders = Rank 1
- Customers with the same number of orders receive the same rank

Business purpose:

- Identify the most active customers
- Support customer retention campaigns

---

## SQL Concepts Applied

This project demonstrates the use of:

- SELECT
- JOIN
- GROUP BY
- ORDER BY
- COUNT()
- AVG()
- Aggregate Functions
- Window Functions (RANK())
- LIMIT
- Filtering (WHERE)

---

## Business Insights

The SQL analyses provide valuable insights for Northwind management by:

- Identifying loyal customers
- Monitoring purchasing behavior
- Detecting unusually large orders
- Evaluating shipping efficiency
- Supporting inventory planning
- Improving customer retention strategies

---

## Repository Structure

```
.
├── Northwind.sql                 # Database creation script
├── MIS443_ID_FullName.sql        # SQL solutions
├── README.md                     # Project documentation
└── Report.pdf                    # Output screenshots (if required)
```

---

## Author

**Student:** Tang So Han

**Student ID:** 2332300046

**Course:** MIS443 – Database Management

**Semester:** Q4 2025–2026

---

## License

This project is submitted solely for academic purposes as part of the MIS443 coursework.
