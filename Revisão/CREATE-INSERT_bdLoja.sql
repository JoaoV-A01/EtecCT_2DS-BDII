CREATE DATABASE bdLoja

CREATE TABLE tbFabricante
(
	codFabricante INT PRIMARY KEY IDENTITY (1,1),
	nomeFabricante VARCHAR (50)
);

CREATE TABLE tbFornecedor
(
	codFornecedor INT PRIMARY KEY IDENTITY (1,1),
	nomeFornecedor VARCHAR (50),
	contatoFornecedor VARCHAR (50)
);

CREATE TABLE tbProduto
(
	codProduto INT PRIMARY KEY IDENTITY (1,1),
	descProduto VARCHAR (50),
	valorProduto smallmoney,
	quantProduto INT,
	codFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (codFornecedor),
	codFabricante INT FOREIGN KEY REFERENCES tbFabricante (codFabricante),
);

CREATE TABLE tbCliente
(
	codCliente INT PRIMARY KEY IDENTITY (1,1),
	nomeCliente VARCHAR (50),
	cpfCliente VARCHAR (50),
	emailCliente VARCHAR (50),
	sexoCliente CHAR (1),
	dataNascCliente date
);

CREATE TABLE tbVenda
(
	codVenda INT PRIMARY KEY IDENTITY (1,1),
	dataVenda date,
	valorTotalVenda smallmoney,
	codCliente INT FOREIGN KEY REFERENCES tbCliente (codCliente)
);

CREATE TABLE tbItensVenda
(
	codItensVenda INT PRIMARY KEY IDENTITY (1,1),
	codVenda INT FOREIGN KEY REFERENCES tbVenda (codVenda),
	codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto),
	quantItensVenda INT,
	subTotalUtensVenda INT
);

INSERT INTO tbCliente (nomeCliente, cpfCliente, emailCliente, sexoCliente, dataNascCliente)
VALUES  ('Armando José Santana', '12345678900',	'armandoJsantan@outlook.com.br', 'm', '21/02/1961'),
		('Sheila Carvalho Leal', '45678909823', 'scarvalho@ig.com.br', 'f', '13/09/1978'),
		('Carlos Henrique Souza', '76598278299', 'carlosh@outlook.com', 'm', '08/09/1981'),
		('Maria Aparecida Souza', '87365309899', 'mariamaria@etec.sp.gov.br', 'f', '07/07/1962'),
		('Adriana Nogueira Silva', '10000000001', 'drica19@terra.com.br', 'f', '09/04/1977'),
		('Paulo Henrique Silva', '87390123111', 'ph2021@uol.com.br', 'm', '02/02/1987')

INSERT INTO tbFabricante (nomeFabricante)
VALUES  ('Unilever'),
		('P&G'),
		('Bunge')

INSERT INTO tbFornecedor(nomeFornecedor, contatoFornecedor)
VALUES  ('Atacadão', 'Carlos Santos'),
		('Assai	Maria', 'Stella'),
		('Roldão	Paulo', 'César')

INSERT INTO tbProduto(descProduto, valorProduto, quantProduto, codFabricante, codFornecedor)
VALUES	('Amaciante Downy', 5.76, 1500,	2, 1),
		('Amaciante Confort', 5.45, 2300, 1, 1),
		('Sabão em Pó OMO', 5.99, 1280,	1, 2),
		('Margarina Qually', 4.76, 2500, 3, 1),
		('Salsicha Hot-dog Sadia', 6.78, 2900, 3, 2),
		('Mortadela Perdigão', 2.50, 1200, 3, 3),
		('Hamburger Sadia', 9.89, 1600, 3, 1),
		('Fralda Pampers', 36.00, 340, 2, 3),
		('Xampu Seda', 5.89, 800, 1, 2),
		('Condicionador Seda', 6.50, 700, 1, 3)

INSERT INTO tbVenda(dataVenda, valorTotalVenda, codCliente)
VALUES	('01/02/2021', 4500, 1),
		('03/02/2021', 3400, 1),
		('10/03/2021', 2100, 2),
		('15/03/2021', 2700, 3),
		('17/03/2021', 560, 3),
		('06/03/2021', 1200, 4),
		('07/03/2021', 3500, 5),
		('09/02/2021', 3400, 1),
		('20/03/2021', 4000, 2)

INSERT INTO tbItensVenda(codVenda, codProduto, quantItensVenda, subTotalUtensVenda)
VALUES	(1,	1, 200, 1500),
		(1,	2, 300, 3000),
		(2,	4, 120, 1400),
		(2,	2, 200, 1000),
		(2,	3, 130, 1000),
		(3,	5, 200, 2100),
		(4,	4, 120, 1000),
		(4,	5, 450, 700),
		(5,	5, 200, 560),
		(6,	7, 200, 600),
		(6,	6, 300, 600),
		(8,	1, 300, 2500),
		(8,	2, 200, 1000),
		(9,	6, 250, 1700),
		(9,	5, 200, 1700),
		(10, 4,	1000, 4000)



		




