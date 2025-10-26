USE task2;
SELECT
  od.id,
  od.order_id,
  od.product_id,
  od.quantity,
  o.employee_id,
  c.name  AS customer,
  p.name  AS product,
  cat.name AS category,
  s.name  AS shipper
FROM order_details AS od
JOIN orders      AS o   ON o.id = od.order_id
JOIN customers   AS c   ON c.id = o.customer_id
JOIN employees   AS e   ON e.employee_id = o.employee_id
JOIN shippers    AS s   ON s.id = o.shipper_id
JOIN products    AS p   ON p.id = od.product_id
JOIN categories  AS cat ON cat.id = p.category_id;


SELECT COUNT(*) AS rows_count
FROM (
  SELECT 1
  FROM order_details AS od
  JOIN orders      AS o   ON o.id = od.order_id
  JOIN customers   AS c   ON c.id = o.customer_id
  JOIN employees   AS e   ON e.employee_id = o.employee_id
  JOIN shippers    AS s   ON s.id = o.shipper_id
  JOIN products    AS p   ON p.id = od.product_id
  JOIN categories  AS cat ON cat.id = p.category_id
) t;
