--1)	O maior n�mero de p�ginas entre os livros 
SELECT MAX (numPaginas) AS 'Livro com maior n�mero de p�ginas' 
FROM tbLivro

--2)	O menor n�mero de p�ginas entre todos os Livros
SELECT MIN (numPaginas) AS 'Livro com menor n�mero de p�ginas' 
FROM tbLivro

--3)	A m�dia de p�gina entre todos os livros
SELECT AVG (numPaginas) AS 'M�dia de p�gina entre todos os livros' 
FROM tbLivro

--4)	A soma do n�mero de p�ginas dos livros de editora de c�digo 01
SELECT SUM (numPaginas) AS 'Soma das p�ginas dos livros de editora de c�digo 2' 
FROM tbLivro WHERE codEditora = 2

--5)	A soma dos n�meros de p�ginas dos livros que come�am com a letra A
SELECT SUM (numPaginas) AS 'Somas das p�ginas dos livros que come�am com A' 
FROM tbLivro WHERE nomeLivro LIKE 'A%'

--6)	A m�dia dos n�meros de p�ginas dos livros que sejam do autor de c�digo 03
SELECT AVG (numPaginas) AS 'A m�dia dos n�meros de p�ginas dos livros que sejam do autor de c�digo 3'
FROM tbLivro WHERE codAutor = 3

--7)	A quantidade de livros da editora de c�digo 04 
SELECT COUNT (nomeLivro) AS 'A quantidade de livros da editora de c�digo 4'  
FROM tbLivro WHERE codEditora = 4

--8)	A m�dia do n�mero de p�ginas dos livros que tenham a palavra �ESTRELA� em seu nome.
SELECT AVG (codLivro) AS 'A m�dia do n�mero de p�ginas dos livros que tenham a palavra �ESTRELA� em seu nome.' 
FROM tbLivro WHERE nomeLivro LIKE '%ESTRELA%'

--9)	A quantidade de livros que tenham a palavra �POEMA� em seu nome.
SELECT COUNT (codLivro) AS 'A quantidade de livros que tenham a palavra �POEMA� em seu nome.' 
FROM tbLivro WHERE nomeLivro LIKE '%POEMA%'

--10)	A quantidade de livros agrupado pelo nome do g�nero
SELECT nomeGenero AS 'Genero', COUNT(tbLivro.codLivro) AS 'Quantidade de Livros' 
FROM tbGenero INNER JOIN tbLivro on tbLivro.codGenero = tbGenero.codGenero
GROUP BY tbGenero.nomeGenero

--11)	A soma das p�ginas agrupadas pelo nome do Autor
SELECT nomeAutor AS 'Autor', SUM(tbLivro.numPaginas) AS 'Soma de P�ginas'
FROM tbAutor INNER JOIN tbLivro on tbLivro.codAutor = tbAutor.codAutor
GROUP BY tbAutor.nomeAutor

--12)	A m�dia de p�ginas agrupadas pelo nome do autor em ordem alfab�tica (A � Z).
SELECT nomeAutor AS 'Autor', AVG(tbLivro.numPaginas) AS 'M�dia das P�ginas'
FROM tbAutor INNER JOIN tbLivro on tbLivro.codAutor = tbAutor.codAutor
GROUP BY tbAutor.nomeAutor ORDER BY [Autor] ASC

--13)	A quantidade de livros agrupada pelo nome da editora em ordem alfab�tica inversa (Z � A)
SELECT nomeEditora AS 'Editora', COUNT(tbLivro.codLivro) AS 'Quantidade de Livros'
FROM tbEditora INNER JOIN tbLivro on tbLivro.codEditora = tbEditora.codEditora
GROUP BY tbEditora.nomeEditora ORDER BY [Editora] DESC

--14)	A soma de p�ginas dos livros agrupados pelo nome do autor que seja de autores cujo nome comece com a letra �C�.
SELECT nomeAutor AS 'Autor', SUM(tbLivro.numPaginas) AS 'Soma das P�ginas'
FROM tbAutor INNER JOIN tbLivro on tbLivro.codAutor = tbAutor.codAutor
 WHERE tbAutor.nomeAutor LIKE 'C%' GROUP BY tbAutor.nomeAutor

--15)	A quantidade de livros agrupados pelo nome do autor, cujo nome do autor seja �MACHADO DE ASSIS� ou �CORA CORALINA� OU �CLARICE LISPECTOR�
SELECT nomeAutor AS 'Autor', COUNT(tbLivro.codLivro) AS 'Quantidade de Livros'
FROM tbAutor INNER JOIN tbLivro on tbLivro.codAutor = tbAutor.codAutor
WHERE tbAutor.nomeAutor = 'MACHADO DE ASSIS' OR tbAutor.nomeAutor = 'CORA CORALINA' OR tbAutor.nomeAutor = 'CLARICE LISPECTOR'
GROUP BY tbAutor.nomeAutor

--16)	A soma de p�ginas dos livros agrupadas pelo nome da editora cujo n�mero esteja entre 200 e 500 (inclusive).
SELECT nomeEditora AS 'Editora', SUM(tbLivro.numPaginas) AS 'Soma das P�ginas'
FROM tbEditora INNER JOIN tbLivro on tbLivro.codEditora = tbEditora.codEditora
WHERE tbLivro.numPaginas BETWEEN 200 AND 500 GROUP BY tbEditora.nomeEditora

--17)	O nome dos livros ao lado do nome das editoras e do nome dos autores. 
SELECT nomeLivro AS 'Livro', nomeEditora AS 'Editora', nomeAutor AS 'Autor' FROM tbLivro
INNER JOIN tbAutor on tbLivro.codAutor = tbAutor.codAutor
INNER JOIN tbEditora on tbLivro.codEditora = tbEditora.codEditora

--18)	O nome dos livros ao lado do nome do autor somente daqueles cujo nome da �Cia das Letras�.
SELECT nomeLivro AS 'Livro', nomeAutor AS 'Autor' FROM tbLivro
INNER JOIN tbAutor on tbLivro.codAutor = tbAutor.codAutor
WHERE tbAutor.nomeAutor = 'Cia das Letras'

--19)	O nome dos livros ao lado dos nomes dos autores, somente dos livros que n�o forem do autor ��RICO VER�SSIMO�.
SELECT nomeLivro AS 'Livro', nomeAutor AS 'Autor' FROM tbLivro 
INNER JOIN tbAutor on tbLivro.codAutor = tbAutor.codAutor
WHERE tbAutor.nomeAutor != '�RICO VER�SSIMO'

--20)	Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que n�o tem livros cadastrados.
SELECT nomeAutor AS 'Autor', nomeLivro AS 'Livro' FROM tbAutor
LEFT OUTER JOIN tbLivro on tbAutor.codAutor = tbLivro.codAutor

--21)	Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que n�o tem autores cadastrados
SELECT nomeAutor AS 'Autor', nomeLivro AS 'Livro' FROM tbAutor
RIGHT OUTER JOIN tbLivro on tbLivro.codAutor = tbAutor.codAutor

--22)	O nome dos autores ao lado dos nomes dos livros, indiferente do autor ter ou n�o livro publicado, e indiferente do livro pertencer a algum autor.
SELECT nomeAutor AS 'Autor', nomeLivro AS 'Livro' FROM tbAutor
FULL OUTER JOIN tbLivro on tbLivro.codAutor = tbAutor.codAutor

--23)	A editora �tica ir� publicar todos os t�tulos dessa livraria. Criar um SELECT que associe os nomes de todos os livros ao lado do nome da editora �tica. 
SELECT nomeEditora AS 'Editora �tica', nomeLivro AS 'Livro' FROM tbLivro 
INNER JOIN tbEditora on tbLivro.codEditora = tbEditora.codEditora
WHERE nomeEditora = 'Atica'

--24)	Some os nomes dos autores que n�o tem livros cadastrados 
SELECT COUNT(nomeAutor) AS 'Autores sem livros' FROM tbAutor
LEFT OUTER JOIN tbLivro on tbAutor.codAutor = tbLivro.codAutor
WHERE tbLivro.nomeLivro IS NULL

--25)	Os nomes dos g�neros que n�o possuem nenhum livro cadastrado. 
SELECT nomeGenero AS 'Genero sem livros' FROM tbGenero
LEFT OUTER JOIN tbLivro on tbLivro.codGenero = tbGenero.codGenero
WHERE tbLivro.nomeLivro IS NULL




