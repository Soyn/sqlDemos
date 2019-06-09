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
CREATE VIEW productcustomers AS
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



# YOY

CREATE VIEW currentYearOrders AS
SELECT orderitems.prod_id, orderitems.quantity, orders.order_date
FROM orderitems INNER JOIN orders ON orderitems.order_num = orders.order_num;


CREATE VIEW lastYearOrders AS
SELECT orderitems.prod_id, orderitems.quantity, orders.order_date
FROM orderitems INNER JOIN orders ON orderitems.order_num = orders.order_num;

SELECT
currentYearOrders.prod_id,
currentYearOrders.quantity,
currentYearOrders.order_date,
lastYearOrders.order_date,
lastYearOrders.quantity,
(currentYearOrders.quantity - lastYearOrders.quantity) / lastYearOrders.quantity AS YOY
FROM currentYearOrders INNER JOIN lastYearOrders ON
(MONTH(currentYearOrders.order_date) - MONTH(lastYearOrders.order_date)) = 1
AND currentYearOrders.prod_id = lastYearOrders.prod_id;


-- WHERE (YEAR(currentYearOrders.order_date) - YEAR(lastYearOrders.order_date)) = 1
AND (MONTH(currentYearOrders.order_date) - MONTH(lastYearOrders.order_date)) = 1;

INSERT orders(
  order_date,
  cust_id
)
VALUES(
  '2018-04-02',
  10002
);
INSERT INTO orderitems(order_num, order_item, prod_id, quantity, item_price)
VALUES(20014, 10, 'TNT3', 1, 42.99);

SELECT MONTH('2019-09-02') - MONTH('2018-08-07') = 1;