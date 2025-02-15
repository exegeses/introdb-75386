# Consultas de coincidencia (qué contenga una cadena de caractéres)

> Las consultas de coincidencia se utilizan para obtener resultados que vamos a filtrar utilizando una cadena de caracteres
> Eso quiere decir que como filtro vamos a explicitar que contenga cierta cadena de caracteres

> Traer nombre, precio Y descripción de la tabla productos
> Dónde en la columna descripción contenga la palabra 'robot'

    SELECT prdNombre, prdPrecio, prdDescripcion 
      FROM productos
      WHERE prdDescripcion LIKE '%robot%'
 
> Traer nombre, precio Y descripción de la tabla productos
> Dónde en la columna descripción contenga la palabra 'bluetooth'

    SELECT prdNombre, prdPrecio, prdDescripcion 
      FROM productos
      WHERE prdDescripcion LIKE '%bluetooth%'
 
> Utilizamos la palabra reservada **LIKE** 
> en combinación con el carácter de **%** (porcentaje)
> como una especie de comodín que podría ocupar 1 (uno), varios o hasta ningún carácter
