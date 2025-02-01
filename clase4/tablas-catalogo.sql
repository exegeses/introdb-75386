create table marcas
(
    idMarca smallint unsigned auto_increment,
    mkNombre varchar(50) not null,
    primary key(idMarca),
    unique(mkNombre)
);

create table categorias
(
    idCategoria smallint unsigned auto_increment,
    catNombre varchar(50) not null,
    primary key(idCategoria),
    unique(catNombre)
);

create table productos
(
    idProducto smallint unsigned auto_increment primary key,
    prdNombre varchar(50) not null unique,
    prdPrecio decimal(10,2) unsigned not null,
    idMarca smallint unsigned not null,
    idCategoria smallint unsigned not null,
    prdDescripcion varchar(1000) not null,
    prdImagen varchar(40) not null,
    prdActivo boolean not null default(1),
    foreign key (idMarca) references marcas (idMarca),
    foreign key (idCategoria) references categorias (idCategoria)
);
