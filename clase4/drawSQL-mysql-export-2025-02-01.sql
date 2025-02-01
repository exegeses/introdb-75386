CREATE TABLE `marcas`(
    `idMarca` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `mkNombre` VARCHAR(50) NOT NULL
);
ALTER TABLE
    `marcas` ADD UNIQUE `marcas_mknombre_unique` (`mkNombre`);


CREATE TABLE `categorias`(
    `idCategoria` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `catNombre` VARCHAR(50) NOT NULL
);
ALTER TABLE
    `categorias` ADD UNIQUE `categorias_catnombre_unique`(`catNombre`);


CREATE TABLE `productos`(
    `idProducto` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `prdNombre` VARCHAR(50) NOT NULL,
    `prdPrecio` DECIMAL(10, 2) NOT NULL,
    `idMarca` SMALLINT UNSIGNED NOT NULL,
    `idCategoria` SMALLINT UNSIGNED NOT NULL,
    `prdDescripcion` VARCHAR(1000) NOT NULL,
    `prdImagen` VARCHAR(40) NOT NULL,
    `prdActivo` BOOLEAN NOT NULL DEFAULT '1'
);
ALTER TABLE
    `productos` ADD UNIQUE `productos_prdnombre_unique`(`prdNombre`);
ALTER TABLE
    `productos` ADD CONSTRAINT `productos_idmarca_foreign` FOREIGN KEY(`idMarca`) REFERENCES `marcas`(`idMarca`);
ALTER TABLE
    `productos` ADD CONSTRAINT `productos_idcategoria_foreign` FOREIGN KEY(`idCategoria`) REFERENCES `categorias`(`idCategoria`);