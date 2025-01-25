# Eliminar datos (registros) de una tabla  

> Para eliminar registros de una tabla 
> utilizamos el comando **DELETE**
> Y debemos especificar un filtro con el
> comando **WHERE** seguido de una condicion


> Sintáxis: 

    DELETE FROM nombreTabla
        WHERE colPK = valorPK; 
 
> Ejemplo práctico:  

    DELETE FROM personas  
        WHERE id = 15;   
