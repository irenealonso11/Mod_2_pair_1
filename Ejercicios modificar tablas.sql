ALTER TABLE zapatillas
ADD COLUMN marca VARCHAR (45) NOT NULL;

ALTER TABLE zapatillas
ADD COLUMN talla INT NOT NULL;

ALTER TABLE empleados
MODIFY salario FLOAT NOT NULL;

ALTER TABLE clientes
DROP COLUMN pais;

ALTER TABLE facturas
ADD COLUMN total FLOAT;

INSERT INTO zapatillas (id_zapatillas, modelo, color, marca, talla)
VALUES
    (1, 'XQYUN', 'negro', 'nike', 42),
    (2, 'UOPMN', 'rosas', 'nike', 39),
    (3, 'OPNYT', 'verdes', 'adidas', 35);

INSERT INTO empleados (id_empleado, nombre, tienda, salario, fecha_incorporacion)
VALUES
	(1, 'Laura', 'Alcobendas', 25987, '2010-09-03'),
    (2, 'Maria', 'Sevilla', 0, '2001-04-11'),
    (3, 'Esther', 'Oviedo', 30165.98, '2000-11-29');
    
INSERT INTO clientes (nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
VALUES
	('Monica', '123456789', 'monica@email.com', 'Calle Felicidad',' Móstoles', 'Madrid', '28176'),
    ('Lorena', '289345678', 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', '12346'),
    ('Carmen', '298463759', 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', '23456');

INSERT INTO facturas (numero_factura,fecha, id_zapatilla, id_empleado, id_cliente, total)
VALUES
	(123, '2001-12-11', 1, 2, 1, 54.98),
    (1234,'2005-05-23',1 ,1, 3, 89.91),
    (12345, '2015-09-18', 2, 3, 3, 76.23);
    
UPDATE zapatillas
set color= 'amarillas'
WHERE id_zapatillas=3;

UPDATE empleados
set tienda = 'A Coruña'
where id_empleado = 1;

UPDATE clientes
set numero_telefono= '123456728'
WHERE id_cliente = 1;

UPDATE facturas
set total = 89.91
WHERE id_zapatilla= 2;

    