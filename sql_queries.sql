-- Query to highlight the customer information from two tables in a database

select c.customer_id, c.first_name, MAX(o.order_date) AS last_order_date
from sql_store.customers c
join sql_store.orders o 
on c.customer_id = o.customer_id
where o.order_date BETWEEN '2018-01-01' AND '2019-12-31'
group by c.customer_id, c.first_name;


