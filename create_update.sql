CREATE TABLE vendors
(
  vend_id      int      NOT NULL AUTO_INCREMENT,
  vend_name    char(50) NOT NULL ,
  vend_address char(50) NULL ,
  vend_city    char(50) NULL ,
  vend_state   char(5)  NULL ,
  vend_zip     char(10) NULL ,
  vend_country char(50) NULL ,
  PRIMARY KEY (vend_id)
) ENGINE=InnoDB;

CREATE TABLE orderitems
(
  order_num  int          NOT NULL ,
  order_item int          NOT NULL ,
  prod_id    char(10)     NOT NULL ,
  quantity   int          NOT NULL ,
  item_price decimal(8,2) NOT NULL ,
  PRIMARY KEY (order_num, order_item)
) ENGINE=InnoDB;

ALTER TABLE orderitems ADD CONSTRAINT fk_orderitems_orders FOREIGN KEY (order_num) REFERENCES orders (order_num);
ALTER TABLE orderitems ADD CONSTRAINT fk_orderitems_products FOREIGN KEY (prod_id) REFERENCES products (prod_id);

#插入数据
INSERT INTO customers(
cust_name,
cust_address,
cust_city,
cust_state,
cust_zip,
cust_country
)
VALUES(
  'Pep dkd',
  '100 Main Street',
  'LA',
  'CA',
  '90046',
  'USA'
  )

INSERT INTO table_0 (
  c0,
  c1,
  c2,
) SELECT c0, c3, c5 FROM table_1;

UPDATE customers
SET cust_email = NULL
WHERE cust_id = 10005;

DELETE FROM customers
WHERE cust_id = 10006;
