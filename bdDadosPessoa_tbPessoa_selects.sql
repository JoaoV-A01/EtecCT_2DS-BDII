CREATE DATABASE bdDadosPessoa

SELECT * FROM tbPessoa

--1 - Contar e exibir quantos registros existem na tabela separados por UF - Unidade Federativa.
SELECT uf AS 'Unidade Federativa', COUNT(uf) AS 'Quantidades de registros' 
FROM tbPessoa GROUP BY uf

--2 - Exibir a soma das idades de todas as pessoas agrupadas por UF - Unidade Federativa.
SELECT uf AS 'Unidade Federativa', SUM(idade) AS 'Soma das idades' 
FROM tbPessoa GROUP BY uf

--3 - Listar média de idade das pessoas agrupados por estado em ordem decrescente.
SELECT uf AS 'Uinidade Federativa', AVG(idade) AS 'Média de idades' 
FROM tbPessoa  GROUP BY uf ORDER BY [Média de idades] DESC

--4 - Listar as idades mínima e máxima de cada estado em ordem crescente.
SELECT uf AS 'Uinidade Federativa', MIN(idade) AS 'Menor idade', MAX(idade) AS 'Maior idade' 
FROM tbPessoa GROUP BY uf ORDER BY [Menor idade], [Maior idade] ASC

--5 - Listar a quantidade de cadastros femininos e masculinos por estado em ordem decrescente.
SELECT uf AS 'Uinidade Federativa', COUNT(sexo) AS 'Cadastros femininos'
,COUNT(sexo) AS 'Cadastros masculinos'
FROM tbPessoa GROUP BY uf ORDER BY [Cadastros femininos], [Cadastros masculinos] DESC
--Quantidade Cadastros Femininos
SELECT uf AS 'Uinidade Federativa', COUNT(sexo) AS 'Cadastros femininos'
FROM tbPessoa WHERE sexo = 'Feminino' GROUP BY uf ORDER BY [Cadastros femininos] DESC
-- Quantidade Cadastros Masculino
SELECT uf AS 'Uinidade Federativa', COUNT(sexo) AS 'Cadastros masculinos'
FROM tbPessoa WHERE sexo = 'Masculino' GROUP BY uf ORDER BY [Cadastros masculinos] DESC

