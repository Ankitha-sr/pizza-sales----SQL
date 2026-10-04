# Pizza Sales Analysis with SQL

A SQL project analyzing one year of sales data from a pizza restaurant. Using MySQL, I answered a series of business questions about orders, revenue, customer behavior, and product performance.

**Project Overview**

The goal of this project is to practice core SQL skills on a realistic dataset, moving from basic aggregation to joins, subqueries, and window functions. Each query answers a specific business question a restaurant owner might ask, such as "What are our best-selling pizzas?" or "When are we busiest during the day?"

**Dataset** - orders.csv : primarily contains when the order was placed(time, date, order_id)
order_details.csv : order details like how many pizza's were ordered, also key columns which helps us connect with other datasets for more information
pizzas.csv : Each pizza and size with its price.
pizza_types.csv : 	Pizza names, categories, and ingredients used to make pizza.

Pizzas fall into four categories: Classic, Chicken, Supreme, and Veggie.
orders -- order_details -- pizzas -- pizza_types
(order_id)          (pizza_id)      (pizza_type_id)

**Tools Used**

MySQL – database and queries

MySQL Workbench – writing and running queries, importing CSV files

├── analysis_1.sql        # Table creation (schema setup)
├── analysis_2.sql        # Basic analysis
├── analysis_3.sql        # Intermediate analysis
├── analysis_4.sql        # Advanced analysis
├── orders.csv
├── order_details.csv
├── pizzas.csv
├── pizza_types.csv
├── analysis_questions     # questions we are analysing
└── README.md              # current file

**How to Run**

1) create a database in MySQL
>> CREATE DATABASE pizzahut;
>> USE pizzahut;
2) Import pizzas.csv and pizza_types.csv using MySQL Workbench's Table Data Import Wizard (right-click the database → Table Data Import Wizard).
3) Run analysis_1.sql to create the orders and order_details tables, then import orders.csv and order_details.csv into them.
4) Run the queries in analysis_2.sql, analysis_3.sql, and analysis_4.sql(Ctrl + Enter)

**About Me**

Name: Ankitha Sujatha Raju
LinkedIn: https://www.linkedin.com/in/asujatharaju
GitHub: https://github.com/Ankitha-sr
