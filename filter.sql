SELECT prod_name FROM products WHERE vend_id = 1001;
SELECT prod_name FROM products WHERE vend_id <> 1001;
SELECT prod_name FROM products WHERE prod_price BETWEEN 6 AND 10;

SELECT vend_id, prod_name, Sum(prod_price) AS Sum_Of_price
FROM products
GROUP by vend_id;
# 过滤聚集数据
SELECT vend_id, Sum(prod_price) AS Sum_Of_Price
FROM products
Where vend_id = 1001 OR vend_id = 1002 GROUP BY vend_id;

# exclude filter
SELECT vend_id, Sum(prod_price) AS Sum_Of_Price
FROM products
Where vend_id NOT IN (1001,1002) GROUP BY vend_id;

# 使用通配符
SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE 'jet%'; # %表示匹配任意次数的字符

SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '_ ton anvil'; # 匹配单个字符

# 使用正则表达式
SELECT prod_name 
FROM products
WHERE prod_name REGEXP '1000'
ORDER BY prod_name;

SELECT prod_name 
FROM products
WHERE prod_name LIKE '1000'
ORDER BY prod_name;