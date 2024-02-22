-- Creación de la base de datos
CREATE DATABASE BibliotecaDB;
GO

-- Uso de la base de datos recién creada
USE BibliotecaDB;
GO

-- Creación de la tabla Autores
CREATE TABLE Autores (
    AutorId INT PRIMARY KEY IDENTITY,
    Nombre NVARCHAR(100) NOT NULL
);
GO

-- Creación de la tabla Libros
CREATE TABLE Libros (
    LibroId INT PRIMARY KEY IDENTITY,
    Titulo NVARCHAR(100) NOT NULL,
    AutorId INT NOT NULL,
    Imagen IMAGE,
    CONSTRAINT FK_Libros_Autores FOREIGN KEY (AutorId) REFERENCES Autores(AutorId)
);
GO