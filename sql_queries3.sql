-- A query showing customer information including his/her total money spent, number of products and the date ordered.

SELECT 
distinct c.customer_id,
    c.first_name, c.last_name,
    count(o.order_id) AS No_of_Orders,
    SUM(oi.quantity * oi.unit_price) AS total_spent,
    COUNT(p.product_id) AS total_products,
    MAX(o.order_date) AS last_order_date
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
LEFT JOIN 
    order_items oi ON o.order_id = oi.order_id
JOIN 
    products p ON oi.product_id = p.product_id
WHERE 
    o.order_date BETWEEN '2018-01-01' AND '2019-12-31'  
GROUP BY
  c.customer_id, o.order_id, p.product_id
HAVING 
     COUNT(p.product_id) > 0 AND total_spent > 30
ORDER BY 
    total_spent DESC;