# alias en SQL
/*
    En SQL podemos re nombrar el enunciado de una columna
    para que quede mejor en el reporte
    Nota: No se cambia definitivamente el nombre de la columna
          en la tabla sino que lo que se modifica
          es el enunciado de manera temporal
          esto solamente se modifica en el reporte
    Implementamos un alias con la palabra reservada **AS**
    (se puede omitir)
*/

SELECT  prdNombre AS Producto,
        prdPrecio AS Precio,
        mkNombre AS Marca,
        catNombre AS Categoría
FROM productos
   JOIN marcas
      ON productos.idMarca = marcas.idMarca
   JOIN categorias
      ON productos.idCategoria = categorias.idCategoria;

SELECT  prdNombre AS Producto,
        prdPrecio AS 'Precio Contado',
        prdPrecio * 1.05 AS 'Precio Lista',
        mkNombre AS Marca,
        catNombre AS Categoría
  FROM productos AS p
   JOIN marcas AS m
      ON p.idMarca = m.idMarca
   JOIN categorias AS c
      ON p.idCategoria = c.idCategoria;

