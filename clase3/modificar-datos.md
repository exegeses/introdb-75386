# Modificación de datos (registros) de una tabla

> Para modificar los datos de una tabla 
> utilizamos el comando **UPDATE**
> Y debemos especificar un filtro con el 
> comando **WHERE** seguido de una condicion

> Sintáxis:  

    UPDATE nombreTbale  
        SET 
            nombreCampo = valor  
        WHERE colPK = valorPK;

> Ejemplo práctico: 

    UPDATE personas  
        SET  
            dni = 35741952  
        WHERE id = 3;

