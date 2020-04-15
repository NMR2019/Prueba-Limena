CREATE DATABASE TEST_LIMENA
GO

USE TEST_LIMENA
GO

CREATE TABLE ROLES
(
	ID			INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	Rol_Nombre	VARCHAR (75) NULL
)

CREATE TABLE MEMBRESIAS
(
	ID					INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	Tipo_Membresia		VARCHAR (50) NULL
)

CREATE TABLE USUARIOS 
(
	ID					INT PRIMARY KEY IDENTITY (1,1)NOT NULL,
	Nombres				VARCHAR (50) NULL,
	Apellidos			VARCHAR (50) NULL,
	Direccion			VARCHAR	(100) NULL,
	Telefono			VARCHAR	(25) NULL,
	Correo				VARCHAR	(100) NULL,
	ID_Rol				INT NOT NULL,
	ID_Membresia		INT NOT NULL,
	FOREIGN KEY (ID_Rol) REFERENCES ROLES (ID),
	FOREIGN KEY (ID_Membresia) REFERENCES MEMBRESIAS (ID)
)

INSERT INTO ROLES (Rol_Nombre) VALUES ('Administrador')
INSERT INTO ROLES (Rol_Nombre) VALUES ('Contador')
INSERT INTO ROLES (Rol_Nombre) VALUES ('Gerente')

INSERT INTO MEMBRESIAS(Tipo_Membresia) VALUES ('Clasica')
INSERT INTO MEMBRESIAS(Tipo_Membresia) VALUES ('Platino')
INSERT INTO MEMBRESIAS(Tipo_Membresia) VALUES ('Oro')

INSERT INTO USUARIOS(Nombres, Apellidos, Direccion, Telefono, Correo, ID_Rol, ID_Membresia) 
VALUES ('Juan Manuel', 'Perez Perez', 'San Salvador', '2243-2233', 'juan_manuel@gmail.com', 2, 3)
INSERT INTO USUARIOS(Nombres, Apellidos, Direccion, Telefono, Correo, ID_Rol, ID_Membresia) 
VALUES ('Noe Mauricio', 'Rodriguez Bachez', 'San Salvador', '2563-0899', 'Noe_Mauricio@gmail.com', 1, 3)
INSERT INTO USUARIOS(Nombres, Apellidos, Direccion, Telefono, Correo, ID_Rol, ID_Membresia) 
VALUES ('Karla Vanessa', 'Martinez', 'San Salvador', '7532-2244', 'karla_vanessa@gmail.com', 3, 1)

SELECT * FROM ROLES
SELECT * FROM MEMBRESIAS
SELECT * FROM USUARIOS