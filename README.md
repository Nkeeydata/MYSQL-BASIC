# MYSQL-BASIC
## This project shows queries ran successfully on a company's database that deals with sales and puchase strength of their customers.
### These comprises of four queries which I will highlight below :

1. [Query 1](sql_queries1.sql) : This highlights my learning phase about running short codes to `query` the `database`. Some of the codes used in querying the database is listed here.
``` select *
from sql_hr.employees;
```


2. [Query 2](sql_queries.sql): Here, I ran a query to retrieve information about customers from two different tables in the database.😃
``` select c.customer_id, c.first_name, MAX(o.order_date) AS last_order_date
from sql_store.customers c
join sql_store.orders o 
on c.customer_id = o.customer_id
where o.order_date BETWEEN '2018-01-01' AND '2019-12-31'
group by c.customer_id, c.first_name;
```


3. [Query 3](sql_queries3.sql) : I highlight the use of sql language to retrieve information from three tables within a database.❓

4. [Query 4](sql_queries4.sql) : I was able to demonstrate high level codes to technically retrieve information from a database. Here, you can see customer information being drawn from various tables using `joins` and `left joins`.❔

Thanks for taking out your precious time and visiting and also going through my projects. Your criticism is highly welcome here.🔆
