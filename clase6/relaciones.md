# consultas con relaciones entre tablas

> Si queremos consultar datos provenientes de dos o más tablas debemos relacionar dichas tablas
> Tenemos dos técnicas para lograrlo

## 1.- Table relation

> En esta técnica vamos a mencionar en el listado de columnas 
> (**luego del SELECT**) todas las columnas que queramos traer separadas con comas
> A continuación después del FROM mencionamos todas las tablas necesarias separadas por comas
> Y luego mediante un filtro (**WHERE**) igualamos la columna en común
> La foreign key de una tabla con la primary key de la otra tabla

> Sintáxis: 
    
    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;  

> Ejemplo práctico:

    SELECT aeropuerto, precio, nombre  
      FROM destinos, regiones  
      WHERE destinos.idRegion = regiones.idRegion;  

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria  


## 2.- JOIN

> En la técnica **JOIN** no mencionamos en el listado de tablas (después del **FROM**) todas las tablas necesarias
> Sólo se menciona la tabla principal
> Luego utilizamos la palabra reservada **JOIN** para mencionar la tabla secundaria
> Y finalizamos igualando la columna en común 
> luego de la palabra **ON**

> Sint´´axis: 

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk;  

> Ejemplo práctico:

    SELECT aeropuerto, precio, nombre  
      FROM destinos  
      JOIN regiones  
        ON destinos.idRegion = regiones.idRegion;  

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;  

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  