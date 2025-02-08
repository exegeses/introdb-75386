# Consulta en SQL

## Consultas a servidor de bases de datos

    -- listar todas las bases de datos  
    SHOW DATABASES;

> La palabra reservada más importante o al menos la más utilizada para consultas es la palabra **SELECT**

    -- Ver cuál es la base de datos activa  
    SELECT DATABASE();

## Cosultas a tablas dentro de una base de datos  

    -- Listar todas las tablas dentro de una base de datos  
    SHOW TABLES;  

    -- Mostrar la esctructura de una tabla  
    DESCRIBE nombreTabla;  

> Para realizar consultas a una tabla 
> y que nos traiga el listado de datos (los registros) 
> vamos a utilizar la palabra reservada **SELECT** 
> acompañada de la palabra **FROM**

    SELECT * FROM nombreTabla;  

    SELECT * FROM marcas;  
    SELECT * FROM productos;

> Estas consultas traen todos los registros de la tabla mencionada
> Con esta consulta traemos **todas** las columnas de la tabla mencionada
> Si queremos traer los datos de **algunas** columnas de una tabla debemos mencionar dichas columnas separadas por comas

    SELECT nombreCampo, nombreCampo3    
        FROM nombreTabla;

    SELECT prdNombre, prdPrecio  
        FROM productos; 

### Orden de resultados  
> Para ordenar los resultados de una columna
> utilizamos **ORDER BY** 
    
    SELECT * FROM marcas    
        ORDER BY idMarca;  

    SELECT aeropuerto, precio  
        FROM destinos  
        ORDER BY precio;

    SELECT aeropuerto, precio  
        FROM destinos  
        ORDER BY idRegion;  

    SELECT aeropuerto, precio  
        FROM destinos  
        ORDER BY idRegion, precio; 

