USE negocio_db;

-- 1. Productos con el nombre de su categoría, ordenados por nombre
SELECT p.nombre AS producto, c.nombre AS categoria
FROM productos p
JOIN categorias c ON p.categoria_id = c.id
ORDER BY p.nombre;

-- 2. Productos con menos de 5 unidades en stock
SELECT nombre, stock FROM productos WHERE stock < 5;

-- 3. Precio promedio por categoría
SELECT c.nombre AS categoria, AVG(p.precio) AS precio_promedio
FROM productos p
JOIN categorias c ON p.categoria_id = c.id
GROUP BY c.nombre;

-- 4. Pedidos de un cliente con su fecha y estado
SELECT p.id AS pedido, p.fecha, p.estado
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id
WHERE c.nombre = 'Juan Pérez';