UPDATE sales
SET 
  product_name = 'A Truck', 
  volume = 109000.0
WHERE id = 13;

UPDATE sales
SET 
  product_name = 'A Truck', 
  volume = volume * 1000 -- 109000.0
WHERE id = 13;
