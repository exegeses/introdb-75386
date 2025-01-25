# Insertar datos (registros) dentro de una tabla

> En SQL tenemos tres maneras principales de insertar datos en una tabla
> Estas tres maneras comienzan con

    INSERT INTO nombreTabla

## Sintáxis usando SET  

    INSERT INTO nombreTabla   
      SET  
            nombreCampo = valor,
            nombreCampo2 = valor2,
            nombreCampo3 = valor3,
            nombreCampoX = valorX;

    INSERT INTO personas  
      SET  
            id = 1,  
            apellido = 'García',  
            nombre = 'Javier',  
            dni = 25852410,  
            alta = '2008-12-12';  

    INSERT INTO personas  
      SET
            apellido = 'González',  
            nombre = 'Mónica',  
            dni = 36520147,  
            alta = '2005-09-30';

## Sintáxis completa (se mencionan las columnas)  

    INSERT INTO nombreTabla  
        (campo2, campo3, campo4, campoX)
      VALUES  
        (valCampo2, valCampo3, valCampo4, valCampoX);

    INSERT INTO personas   
        (apellido, nombre, dni, alta)  
      VALUES  
        ('Martínez', 'Vanesa', 35741951, '2006-06-21');


## Sintáxis simplificada (NO se mencionan las columnas) 

    INSERT INTO nombreTabla  
      VALUES  
        (valorPK, valCampo2, valCampo3, valCampo4, valCampoX);

    INSERT INTO personas  
      VALUES  
        (DEFAULT, "Álvarez", "Fernando", 32912457, "2007-11-02");

-----
### Ejemplo para insertar múltiples registros

/*
INSERT INTO personas
    ( apellido, nombre, dni, alta )
  VALUES
    ( 'Page', 'Jimmy', 18543219, '1944-01-09' ),
    ( 'Plant', 'Robert', 18543220, '1948-08-20' ),
    ( 'Bonham', 'Bonzo', 18543221, '1948-05-31' ),
    ( 'Jones', 'John', 18543222, '1946-01-03' );
*/

INSERT INTO personas
    VALUES
        ( DEFAULT, 'Page', 'Jimmy', 18543219, '1944-01-09' ),
        ( DEFAULT, 'Plant', 'Robert', 18543220, '1948-08-20' ),
        ( DEFAULT, 'Bonham', 'Bonzo', 18543221, '1948-05-31' ),
        ( DEFAULT, 'Jones', 'John', 18543222, '1946-01-03' );

