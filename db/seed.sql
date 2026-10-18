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