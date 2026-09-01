
-- 1

UPDATE cliente
SET telefone = 48998765432
WHERE cpf = '111.111.111-11';

-- 2

UPDATE empregado
SET cargo = 'Desenvolvedor Sênior'
WHERE cpf = '333.333.333-33';

-- 3

DELETE FROM projEmp
WHERE codProj = 3;

DELETE FROM projeto
WHERE codProj = 3;

DELETE FROM cliente
WHERE cpf = '555.555.555-55';

-- 4

UPDATE projeto
SET preco = preco * 1.10;

-- 5

DELETE FROM projEmp
WHERE codProj = 2
AND cpfEmpregado = '333.333.333-33';

-- 6

UPDATE projeto
SET descricao = CONCAT('PROJETO LEGADO - ', descricao)
WHERE dtSolicitacao < '2025-09-15';

-- 7

UPDATE projEmp
SET hrTrab = hrTrab + 15
WHERE codProj = 3
AND cpfEmpregado = '666.666.666-66';

-- 8

DELETE FROM projeto
WHERE preco < 6000.00;

-- 9

UPDATE projeto
SET dtEstimada = DATE_ADD(dtEstimada, INTERVAL 7 DAY)
WHERE cpfGerente = '444.444.444-44';

-- 10

DELETE FROM empregado
WHERE cpf = '999.999.999-99';

-- 11

UPDATE empregado
SET cargo = 'Gerente de Projetos'
WHERE cpf = '333.333.333-33';

UPDATE projeto
SET cpfGerente = '333.333.333-33'
WHERE cpfCliente = '222.222.222-22';

-- 12

DELETE FROM projeto
WHERE dtFim < CURDATE()
AND cpfCliente <> '111.111.111-11';





