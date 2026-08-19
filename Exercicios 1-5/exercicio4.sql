CREATE DATABASE `redeSocial`;

USE `redeSocial`;

CREATE TABLE `Usuario` (
    `id` INT PRIMARY KEY,
    `nome` VARCHAR(100),
    `idade` INT,
    `sexo` VARCHAR(20),
    `cidade` VARCHAR(100),
    `ctgPreferido` VARCHAR(100)
);

CREATE TABLE `Foto` (
    `id` INT PRIMARY KEY,
    `arquivo` VARCHAR(200),
    `formato` VARCHAR(50),
    `idUsuario` INT,
    FOREIGN KEY (`idUsuario`) REFERENCES `Usuario`(`id`)
);

CREATE TABLE `Avaliacao` (
    `idAvaliador` INT,
    `idAvaliado` INT,
    `avaliacao` VARCHAR(100),
    PRIMARY KEY (`idAvaliador`, `idAvaliado`),
    FOREIGN KEY (`idAvaliador`) REFERENCES `Usuario`(`id`),
    FOREIGN KEY (`idAvaliado`) REFERENCES `Usuario`(`id`)
);