# vistas en SQL
/*
    Una vista es una consulta que podemos almacenar
    dentro de una base de datos
!!! Parece una tabla independiente pero en realidad no lo es
*/

CREATE VIEW lista_precios
  AS
    SELECT  idProducto AS id,
            prdNombre AS Producto,
            prdPrecio AS Contado,
            prdPrecio * 1.05 AS Lista,
            mkNombre AS Marca,
            catNombre AS Categoría
    FROM productos AS p
             JOIN marcas AS m
                  ON p.idMarca = m.idMarca
             JOIN categorias AS c
                  ON p.idCategoria = c.idCategoria;

### Llamado a ejecución de una vista
SELECT * FROM lista_precios;

-- Obtener el listado de las vistas dentro de una base de datos
SHOW FULL TABLES
    WHERE Table_type = 'VIEW';

