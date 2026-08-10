 CREATE TABLE Departamento (
    numero INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Empregado (
    rg INT PRIMARY KEY,
    nome VARCHAR(100),
    sexo VARCHAR(20),
    dataNascimento DATE,
    salario INT,
    numeroDepartamento INT,
    FOREIGN KEY (numeroDepartamento) REFERENCES Departamento(numero)
);

CREATE TABLE Dependente (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    sexo VARCHAR(20),
    dataNascimento DATE,
    grauParentesco VARCHAR(50),
    rgEmpregado INT,
    FOREIGN KEY (rgEmpregado) REFERENCES Empregado(rg)
);

CREATE TABLE Endereco (
    id INT PRIMARY KEY,
    CEP VARCHAR(10),
    cidade VARCHAR(100),
    numero INT,
    logradouro VARCHAR(100),
    bairro VARCHAR(100),
    complemento VARCHAR(100),
    numeroDepartamento INT,
    FOREIGN KEY (numeroDepartamento) REFERENCES Departamento(numero)
);CREATE TABLE Departamento (
    numero INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Empregado (
    rg INT PRIMARY KEY,
    nome VARCHAR(100),
    sexo VARCHAR(20),
    dataNascimento DATE,
    salario INT,
    numeroDepartamento INT,
    FOREIGN KEY (numeroDepartamento) REFERENCES Departamento(numero)
);

CREATE TABLE Dependente (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    sexo VARCHAR(20),
    dataNascimento DATE,
    grauParentesco VARCHAR(50),
    rgEmpregado INT,
    FOREIGN KEY (rgEmpregado) REFERENCES Empregado(rg)
);

CREATE TABLE Endereco (
    id INT PRIMARY KEY,
    CEP VARCHAR(10),
    cidade VARCHAR(100),
    numero INT,
    logradouro VARCHAR(100),
    bairro VARCHAR(100),
    complemento VARCHAR(100),
    numeroDepartamento INT,
    FOREIGN KEY (numeroDepartamento) REFERENCES Departamento(numero)
);