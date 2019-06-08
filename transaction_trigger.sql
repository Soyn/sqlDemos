CREATE TRIGGER newproduct BEFORE INSERT ON products
FOR EACH ROW SET NEW.prod_id = Upper(NEW.prod_id);

INSERT INTO products(
  prod_id,
  vend_id,
  prod_name,
  prod_price,
  prod_desc
)
VALUES (
  'abc100',
  1001,
  'iphone X',
  5999,
  '.....'
);