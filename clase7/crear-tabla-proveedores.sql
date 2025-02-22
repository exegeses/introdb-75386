create table proveedores
(
    idProveedor smallint unsigned auto_increment primary key,
    prvNombre varchar(50) not null,
    prvCuit varchar(13) unique not null,
    prvTelefono varchar(20) not null,
    prvDireccion varchar(100) not null
);

INSERT INTO proveedores
    (prvNombre, prvCuit, prvTelefono, prvDireccion)
  VALUES
    ('Distribuidora Sol S.A.', '20-12345678-9', '011-4567-8901', 'Av. Libertador 1234, CABA'),
    ('Insumos Norte SRL', '27-98765432-1', '0341-423-5678', 'San Martín 890, Rosario'),
    ('Comercial Luna Ltda.', '30-11223344-5', '0351-478-9012', 'Colón 3456, Córdoba'),
    ('Proveeduría Este', '23-55667788-3', '0299-445-6789', 'Roca 234, Neuquén'),
    ('Suministros Pérez', '20-33445566-7', '0379-432-1234', 'Belgrano 567, Corrientes'),
    ('Almacén Industrial S.A.', '30-77889900-2', '0261-429-3456', 'San Juan 789, Mendoza'),
    ('DistriMax SRL', '27-22334455-8', '0387-421-7890', 'España 1010, Salta'),
    ('Provisiones Sur', '23-66778899-4', '0297-447-2345', 'Rivadavia 1213, Comodoro Rivadavia'),
    ('Materiales Vega', '20-99887766-0', '0342-455-6789', '9 de Julio 1415, Santa Fe'),
    ('Comercio Integral Ltda.', '30-55443322-6', '0223-475-9012', 'Independencia 1617, Mar del Plata');
