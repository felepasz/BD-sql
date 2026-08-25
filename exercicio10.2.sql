'''CREATE DATABASE `empresa`;
USE `empresa`;
CREATE TABLE `cliente` (
 `cpf` CHAR(14) PRIMARY KEY,
 `nome` VARCHAR(100) NOT NULL,
 `telefone` BIGINT NOT NULL
);
CREATE TABLE `empregado` (
 `cpf` CHAR(14) PRIMARY KEY,
 `nome` VARCHAR(100) NOT NULL,
 `cargo` VARCHAR(100) NOT NULL
);
CREATE TABLE `projeto` (
 `codProj` INT PRIMARY KEY AUTO_INCREMENT,
 `nome` VARCHAR(100) NOT NULL,
 `descricao` VARCHAR(100) NOT NULL,
 `preco` DECIMAL(10,2) NOT NULL,
 `dtFim` DATE NOT NULL,
 `dtEstimada` DATE NOT NULL,
 `dtSolicitacao` DATE NOT NULL,
 `cpfGerente` CHAR(14) NOT NULL,
 `cpfCliente` CHAR(14) NOT NULL,
 FOREIGN KEY (`cpfCliente`) REFERENCES `cliente`(`cpf`),
 FOREIGN KEY (`cpfGerente`) REFERENCES `empregado`(`cpf`)
);
CREATE TABLE `projEmp` (
 `codProj` INT,
 `cpfEmpregado` CHAR(14),
 `hrTrab` FLOAT
);
ALTER TABLE `projEmp` 
ADD CONSTRAINT PRIMARY KEY (`codProj`, `cpfEmpregado`);
ALTER TABLE `projEmp` 
ADD CONSTRAINT FOREIGN KEY (`cpfEmpregado`) REFERENCES `empregado`(`cpf`);
ALTER TABLE `projEmp` 
ADD CONSTRAINT FOREIGN KEY (`codProj`) REFERENCES `projeto`(`codProj`);'''



'''1 - UPDATE: O cliente 'João da Silva' (CPF '111.111.111-11') mudou de número de telefone. Atualize o telefone dele para 48998765432.'''

UPDATE `cliente`
SET = `telefone` = '48998765432'
WHERE `cpf` = '111.111.111-11';


'''2 - UPDATE: O empregado 'Carlos Pereira' (CPF '333.333.333-33') foi promovido. Atualize o cargo dele para 'Desenvolvedor Sênior'.'''

UPDATE `empregado`
SET `cargo` = 'Desenvolvedor Sênior'
WHERE `cpf` = '333.333.333-33';


'''3 - DELETE: O cliente 'Pedro Gomes' (CPF '555.555.555-55') encerrou o contrato com a empresa. Remova o registro dele da tabela cliente.'''

DELETE from 'cliente'
WHERE `cpf` = '555.555.555-55';


'''4 - UPDATE: Aumente o preço de todos os projetos em 10%.'''

UPDATE `projeto`
SET `preco` = `preco` * 1.10;




