use task2;
SELECT 
od.id,
od.order_id,

od.quantity,
c.id AS customer_id,
c.name AS customer_name,
c.contact AS customer_contact,
c.address AS customer_address,
c.city AS customer_city,
c.postal_code AS customer_postal_code,
e.employee_id AS employee_id,
e.first_name AS employee_first_name,
e.birthdate AS employee_birthdate,
e.photo AS employee_photo,
e.notes AS employee_notes,

e.last_name AS employee_last_name,
od.product_id,
p.name AS product_name,
cat.name AS category,

s.name AS shipper,
s.phone AS shipper_phone,
sup.name AS supplier_name,
sup.contact AS supplier_contact,
sup.address AS suplier_add,
sup.postal_code AS supplier_post_code

FROM order_details as od
INNER JOIN orders AS o ON o.id = od.order_id
INNER JOIN products AS p ON p.id = od.product_id
INNER JOIN customers   AS c   ON c.id = o.customer_id 
INNER JOIN employees AS e ON e.employee_id = o.employee_id
INNER JOIN shippers AS s ON s.id = o.shipper_id
INNER JOIN categories AS cat ON cat.id= p.category_id
INNER JOIN suppliers AS sup ON sup.id= p.supplier_id





