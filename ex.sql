-- APELIDAR COLUNAS

SELECT
    `nome` AS `Nome do Produto`,
    `fabricante` AS `Marca`,
    `dtCadastro` AS `Data de Cadastro`,
From `produtos`;

-- ORDEM ALFABETICA

SELECT `nome`, `preco`
FROM `produtos` ORDER BY `nome` ASC;
--( ASC É PADRAO NAO PRECISA SER COLOCADO)
  
-- ORDENAR PELO PREÇO DO MAIS ALTO PARA O MAIS BAIXO E LIMITAR A 5 MAIS CAROS

SELECT
    `nome` AS `Nome`,
    `preco` AS `Preço`
FROM `produtos` ORDER BY `preco` DESC LIMIT 5;

-- PAGINAÇÃO

SELECT
    `nome` AS `Nome`,
    `preco` AS `Preço`
FROM `produtos` ORDER BY `preco` ASC LIMIT 0,5;

SELECT
    `nome` AS `Nome`,
    `preco` AS `Preço`
FROM `produtos` ORDER BY `preco` ASC LIMIT 5,5;

SELECT
    `nome` AS `Nome`,
    `preco` AS `Preço`
FROM `produtos` ORDER BY `preco` ASC LIMIT 10,5;

-- DESC (ORDEM DECRESCENTE) ASC (ORDDEM CRESCENTE)

