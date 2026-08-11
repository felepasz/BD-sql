CREATE DATABASE `trabalhoAcademico`;

CREATE TABLE `Disciplina` (
    `id` INT PRIMARY KEY,
    `nome` VARCHAR(100),
    `ano_semestre` VARCHAR(20),
    `carga_horaria` INT
);

CREATE TABLE `Autor` (
    `matricula` INT PRIMARY KEY,
    `nome` VARCHAR(100),
    `email` VARCHAR(100)
);

CREATE TABLE `Trabalho` (
    `id` INT PRIMARY KEY,
    `titulo` VARCHAR(100),
    `arquivo` VARCHAR(200),
    `data_entrega` DATE,
    `nota` INT,
    `idDisciplina` INT,
    FOREIGN KEY (`idDisciplina`) REFERENCES `Disciplina`(`id`)
);

CREATE TABLE `TrabalhoAutor` (
    `idTrabalho` INT,
    `matriculaAutor` INT,
    PRIMARY KEY (`idTrabalho`, `matriculaAutor`),
    FOREIGN KEY (`idTrabalho`) REFERENCES `Trabalho`(`id`),
    FOREIGN KEY (`matriculaAutor`) REFERENCES `Autor`(`matricula`)
);
