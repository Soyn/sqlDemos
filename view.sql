SELECT cust_name, cust_contact
FROM customers, orders, orderitems
WHERE customers.cust_id = orders.cust_id
AND orderitems.order_num = orders.order_num
AND prod_id = 'TNT2';

# 视图
SELECT cust_name, cust_contact
FROM productcustomers
WHERE prod_id = 'TNT2';

# 处理复杂SQL
CREATE VIEW prod uctcustomers AS
FROM customers, orders, orderitems
WHERE customers.cust_id = orders.cust_id
AND orderitems.order_num = orders.order_num;

# 使用视图过滤数据
CREATE VIEW customeremaillist AS
SELECT cust_id, cust_name, cust_email
FROM customers
WHERE cust_email IS NOT NULL;

# 使用视图和计算字段
CREATE VIEW orderitemsexpanded AS
SELECT prod_id, quantity, item_price, quantity * item_price AS expanded_price
FROM orderitems;
