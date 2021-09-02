--tabela Autor
INSERT INTO tbAutor (nomeAutor)
VALUES   ('Chico Buarque')
		,('Jorge Amado')
		,('J.K Rowling')
		,('William Shakespeare')
		,('Monteiro Lobato')
		,('Cora Coralina')
		,('Clarice Linspector')

--tabela Editora
INSERT INTO tbEditora (nomeEditora)
VALUES   ('Melhoramentos')
		,('Globo')
		,('Atica')
		,('Companhia das Letras')
		,('Abril')
--tabela Genero
INSERT INTO tbGenero (nomeGenero)
VALUES   ('Ficção')
		,('Romance')
		,('Tragedia')

--tabela Livros
INSERT INTO tbLivro (nomeLivro, numPaginas, codGenero, codEditora, codAutor)
VALUES	 ('Budapeste', 176, 2, 4, 1)
		,('O Bicho-da-Seda', 454, 2, 5, 3)
		,('Gabriela, Cravo e Canela', 214, 1, 2, 2)
		,('Reinações de Narizinho', 143, 2, 2, 5)
		,('Romeu e Julieta', 421, 1, 3, 4)
		,('O Irmão Alemão', 478, 1, 4, 1)
		,('Terras do Sem-Fim', 125, 1, 3, 2)
		,('Animais Fantasticos e Onde Habitam', 267, 2, 4, 3)
