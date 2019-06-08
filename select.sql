# --- 检索数据 ---
SELECT * FROM orders; # 检索所有列
SELECT order_number FROM orders; # 单个列
SELECT order_number, cust_id FROM orders;
SELECT cust_name, order_num FROM customers, orders; # 从不同表中检索数据
SELECT DISTINCT cust_name FROM customers; # 选取不重复的列
SELECT cust_name FROM customers ORDER BY cust_name DESC LIMIT 3; # Rank top 3
