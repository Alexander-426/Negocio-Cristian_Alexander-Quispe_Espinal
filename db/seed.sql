USE negocio_db;

INSERT INTO categorias (nombre) VALUES
('Bebidas'), ('Snacks'), ('Lácteos');

INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES
('Coca Cola 500ml', 1, 5.50, 50),
('Agua Mineral 1L', 1, 3.00, 100),
('Jugo de Naranja', 1, 7.00, 30),
('Papas Fritas', 2, 6.50, 40),
('Chocolate', 2, 4.00, 60),
('Galletas', 2, 2.50, 80),
('Maní', 2, 3.50, 20),
('Leche Entera 1L', 3, 8.00, 25),
('Yogurt Natural', 3, 5.00, 15),
('Queso Fresco', 3, 12.00, 10),
('Mantequilla', 3, 9.50, 5),
('Crema de Leche', 3, 10.00, 8);

INSERT INTO clientes (nombre, telefono, email) VALUES
('Juan Pérez', '77712345', 'juan@mail.com'),
('María López', '77754321', 'maria@mail.com'),
('Carlos Ruiz', '77798765', 'carlos@mail.com'),
('Ana Gómez', '77711122', 'ana@mail.com'),
('Luis Torres', '77733344', 'luis@mail.com'),
('Elena Díaz', '77755566', 'elena@mail.com');

INSERT INTO pedidos (cliente_id, fecha, estado) VALUES
(1, '2026-10-01', 'Entregado'),
(2, '2026-10-02', 'Pendiente'),
(1, '2026-10-03', 'Entregado'),
(3, '2026-10-04', 'Entregado'),
(4, '2026-10-05', 'Pendiente'),
(1, '2026-10-06', 'Entregado'),
(2, '2026-10-07', 'Entregado'),
(5, '2026-10-08', 'Pendiente'),
(3, '2026-10-09', 'Entregado'),
(6, '2026-10-10', 'Pendiente');

INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 2, 5.50), (1, 4, 1, 6.50), (1, 5, 3, 4.00),
(2, 2, 5, 3.00), (2, 3, 2, 7.00),
(3, 8, 1, 8.00), (3, 9, 2, 5.00),
(4, 6, 4, 2.50), (4, 7, 2, 3.50), (4, 10, 1, 12.00),
(5, 1, 3, 5.50), (5, 2, 2, 3.00),
(6, 11, 1, 9.50), (6, 12, 2, 10.00),
(7, 4, 2, 6.50), (7, 5, 1, 4.00),
(8, 3, 1, 7.00), (8, 6, 3, 2.50),
(9, 9, 2, 5.00), (9, 10, 1, 12.00),
(10, 1, 1, 5.50), (10, 2, 1, 3.00), (10, 4, 2, 6.50),
(10, 5, 2, 4.00), (10, 8, 1, 8.00);