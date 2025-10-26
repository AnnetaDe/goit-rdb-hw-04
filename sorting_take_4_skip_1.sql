SELECT
  cat.name         AS category,
  COUNT(*)         AS rows_in_group,
  AVG(od.quantity) AS avg_qty
FROM order_details AS od
JOIN products    AS p   ON p.id = od.product_id
JOIN categories  AS cat ON cat.id = p.category_id
GROUP BY cat.name
HAVING AVG(od.quantity) > 21
ORDER BY rows_in_group DESC
LIMIT 4 OFFSET 1;