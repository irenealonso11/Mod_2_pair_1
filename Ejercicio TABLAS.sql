 CREATE SCHEMA `tienda_zapatillas`;
 USE `tienda_zapatillas`;
 
 CREATE TABLE zapatillas(
 id_zapatillas INT AUTO_INCREMENT NOT NULL,
 modelo VARCHAR(45) NOT NULL, 
 color VARCHAR (45) NOT NULL,
 PRIMARY KEY (id_zapatillas)
 );
 
 
 CREATE TABLE clientes(
 id_cliente INT AUTO_INCREMENT NOT NULl,
 nombre VARCHAR(45) NOT NULL,
 numero_telefono INT NOT NULL,
 email VARCHAR(45) NOT NULL,
 direccion VARCHAR (45) NOT NULL,
 ciudad VARCHAR (45), 
 provincia VARCHAR (45) NOT NULL,
 pais VARCHAR (45) NOT NULL,
 codigo_postal VARCHAR (45) NOT NULL,
 PRIMARY KEY (id_cliente));
 
 
 CREATE TABLE empleados(
 id_empleado INT AUTO_INCREMENT NOT NULL,
 nombre VARCHAR (45) NOT NULL,
 tienda VARCHAR (45) NOT NULL,
 salario INT,
 fecha_incorporacion DATE NOT NULL,
 PRIMARY KEY (id_empleado));
 
 
CREATE TABLE facturas(
    id_factura INT AUTO_INCREMENT NOT NULL,
    numero_factura VARCHAR(45) NOT NULL,
    fecha DATE NOT NULL,
    id_zapatilla INT NOT NULL,
    id_empleado INT NOT NULL,
    id_cliente INT NOT NULL,
    PRIMARY KEY (id_factura),
    CONSTRAINT `zapatillas`
        FOREIGN KEY (id_zapatilla)
        REFERENCES zapatillas(id_zapatillas),
    CONSTRAINT `empleados`
        FOREIGN KEY (id_empleado)
        REFERENCES empleados(id_empleado),
    CONSTRAINT `clientes`
        FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente)
);


 