DEILIMTER //
CREATE PROCEDURE productpricing()
BEGIN
  SELECT AVG(prod_price) AS priceaverage
  FROM products;
END //

CREATE PROCEDURE productpricing1(
  OUT p1 DECIMAL(8,2)
  OUT ph DECIMAL(8,2)
  OUT pa DECIMAL(8,2)
)
BEGIN
  SELECT MIN(prod_price)
  INTO p1
  FROM products;
  SELECT Max(prod_price)
  INTO ph
  FROM products;
  SELECT Avg(prod_price)
  INTO pa
  FROM products;
END //
DEILIMTER ;