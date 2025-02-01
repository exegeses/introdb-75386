create table precios
(
    id tinyint unsigned auto_increment primary key,
    exacto decimal(10,2) unsigned not null,
    aproximado float unsigned not null
);

-- inserción de  datos
insert into precios
  values
    ( default, 7.7, 7.7 ),
    ( default, 23.6, 23.6 ),
    ( default, 50, 50 ),
    ( default, 13.5, 13.5 ),
    ( default, 10.10, 10.10 ),
    ( default, 90.46, 90.46 ),
    ( default, 40.2, 40.2 ),
    ( default, 95.5, 95.5 );

--  consulta
SELECT SUM(exacto), SUM(aproximado)
    FROM precios;