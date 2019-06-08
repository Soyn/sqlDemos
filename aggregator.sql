# 计算字段
SELECT vend_id,
CONCAT(vend_country, ' ', vend_city, ' ', vend_address) AS Address
FROM vendors;

SELECT
prod_id,
quantity,
item_price, quantity * item_price AS sum_price
FROM orderitems;

# 函数
SELECT vend_name, Upper(vend_name) AS vend_name_upcase
FROM vendors
ORDER BY vend_name;

SELECT cust_id, order_num
FROM orders
WHERE order_date = '2019-06-07';

SELECT cust_id, order_num
FROM orders
WHERE Date(order_date) = '2019-06-07';

# 聚集函数
SELECT COUNT(DISTINCT cust_id) AS Count_Of_cust_id FROM orders;

# 分组
SELECT vend_id, COUNT(prod_id)
FROM products GROUP BY vend_id;

SELECT vend_id, prod_name, COUNT(prod_id)
FROM products GROUP BY vend_id, prod_name  WITH ROLLUP;

#子查询
SELECT order_num
FROM orders
WHERE Year(order_date) = 2005 And Month(order_date) > 9;

SELECT prod_id, quantity * item_price As Sum_Of_Sales
FROM orderitems
WHERE order_num IN (20008, 20009);

# slicer filter
SELECT prod_id, quantity * item_price As Sum_Of_Sales
FROM orderitems
WHERE order_num IN (
  SELECT order_num
  FROM orders
  WHERE Year(order_date) = 2005 And Month(order_date) > 9
);

#计算字段
SELECT cust_name, cust_state, (
  SELECT COUNT(*)
  FROM orders
  WHERE customers.cust_id = orders.cust_id
) AS orders FROM customers
ORDER BY cust_name;




