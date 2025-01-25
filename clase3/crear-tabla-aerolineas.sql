CREATE TABLE aerolineas
(
    id tinyint unsigned auto_increment primary key,
    aerolinea varchar(50) unique not null,
    url varchar(100) not null,
    telefono varchar(30) not null,
    activo boolean not null
);

