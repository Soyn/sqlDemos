#创建联结
SELECT vend_name, prod_name, prod_price
FROM vendors, products
WHERE vendors.vend_id = products.vend_id
ORDER BY vend_name, prod_name;

# 笛卡尔积
SELECT vend_name, prod_name, prod_price
FROM vendors, products
ORDER BY vend_name, prod_name;
# Inner JOIN
SELECT vend_name, prod_name, prod_price
FROM vendors INNER JOIN products
ON vendors.vend_id = products.vend_id
ORDER BY vend_name, prod_name;

#自联结
SELECT prod_name, prod_id
FROM products
Where vend_id = (
  SELECT vend_id FROM products WHERE prod_id = 'DTNTR'
)
ORDER BY prod_name;

SELECT p1.prod_name, p1.prod_id
FROM products AS p1, products AS p2
WHERE p1.vend_id = p2.vend_id
AND p2.prod_id = 'DTNTR'
ORDER BY p1.prod_name;

#自然联结
SELECT c.*, o.order_num, o.order_date,
  oi.prod_id, oi.quantity, oi.item_price
FROM customers AS c, orders AS o, orderitems AS oi
WHERE c.cust_id = o.cust_id
AND oi.order_num = o.order_num
AND prod_id = 'FB';

# 外部联结
SELECT customers.cust_id, orders.order_num
FROM customers INNER JOIN orders ON customers.cust_id = orders.cust_id;

SELECT customers.cust_id, orders.order_num
FROM customers LEFT OUTER JOIN orders ON customers.cust_id = orders.cust_id;

# 带聚集的联结
SELECT customers.cust_name, customers.cust_id, COUNT(orders.order_num) AS num_ord
FROM customers INNER JOIN orders
ON customers.cust_id = orders.cust_id
GROUP BY customers.cust_id;