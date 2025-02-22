-- creación de tabla pivot
/*
    Esta es una tabla intermedia que nos servirá
    para relacionar la tabla productos con la tabla proveedores
*/

create table productos_proveedores
(
    idProducto smallint unsigned not null,
    idProveedor smallint unsigned not null,
    foreign key (idProducto) references productos (idProducto),
    foreign key (idProveedor) references proveedores (idProveedor)
);

-- Inserción de datos en tabla pivote
INSERT INTO productos_proveedores
        (idProducto, idProveedor)
    VALUES
        (1, 1),   -- Producto 1 con Proveedor 1
        (1, 2),   -- Producto 1 con Proveedor 2 (más de un proveedor)
        (2, 3),   -- Producto 2 con Proveedor 3
        (3, 4),   -- Producto 3 con Proveedor 4
        (3, 5),   -- Producto 3 con Proveedor 5 (más de un proveedor)
        (4, 6),   -- Producto 4 con Proveedor 6
        (5, 7),   -- Producto 5 con Proveedor 7
        (5, 8),   -- Producto 5 con Proveedor 8 (más de un proveedor)
        (6, 9),   -- Producto 6 con Proveedor 9
        (7, 10),  -- Producto 7 con Proveedor 10
        (8, 1),   -- Producto 8 con Proveedor 1
        (9, 2),   -- Producto 9 con Proveedor 2
        (9, 3),   -- Producto 9 con Proveedor 3 (más de un proveedor)
        (10, 4),  -- Producto 10 con Proveedor 4
        (11, 5),  -- Producto 11 con Proveedor 5
        (11, 3),  -- Producto 11 con Proveedor 3 (múltiples proveedores)
        (12, 4),  -- Producto 12 con Proveedor 4
        (13, 5),  -- Producto 13 con Proveedor 5
        (14, 6),  -- Producto 14 con Proveedor 6
        (14, 7),  -- Producto 14 con Proveedor 7 (múltiples proveedores)
        (15, 8),  -- Producto 15 con Proveedor 8
        (16, 9),  -- Producto 16 con Proveedor 9
        (17, 10); -- Producto 17 con Proveedor 10
