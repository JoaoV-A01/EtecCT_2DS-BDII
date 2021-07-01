--INNER JOIN
--Apresentar a quantidade de alunos que fizeram matricula em maio de 2016;
SELECT COUNT (codAluno) AS 'Quantidade de aunos que se matricularam em maio de 2016'
FROM tbMatriculas WHERE dataMatricula BETWEEN '2016-01-05' AND '2016-31-05'

--Apresentar o nome dos alunos em ordem alfabética ao lado do nome das turmas em que estão matriculados
SELECT nomeAluno AS 'Alunos', nomeTurma AS 'Turmas' FROM tbAlunos
INNER JOIN tbMatriculas on tbAlunos.codAluno = tbMatriculas.codAluno
INNER JOIN tbTurmas on tbTurmas.codTurma = tbMatriculas.codTurma
ORDER BY nomeAluno ASC

--Apresentar o nome dos cursos e os horários em que eles são oferecidos
SELECT nomeCurso AS 'Cursos', horarioTurma AS 'Horario dos Curso/Turma' FROM tbCursos
INNER JOIN tbTurmas on tbCursos.codCurso = tbTurmas.codCurso

--Apresentar a quantidade de alunos nascidos por estado
SELECT naturalidadeAluno AS 'Estados dos Alunos', COUNT (naturalidadeAluno) AS 'Quantidade de alunos por Estado'
FROM tbAlunos GROUP BY naturalidadeAluno

--Apresentar o nome dos alunos ao lado da data de matrícula no formato dd/mm/aaaa
SELECT nomeAluno AS 'Alunos', CONVERT(VARCHAR(10), dataMatricula, 103) AS 'Data da Matricula'
FROM tbAlunos INNER JOIN tbMatriculas on tbAlunos.codAluno = tbMatriculas.codAluno

--Apresentar os alunos cujo nome comece com A e que estejam matriculados no curso de inglês
SELECT nomeAluno AS 'Nomes de alunos que começam com A matriculados no curso de ingles' FROM tbAlunos
INNER JOIN tbMatriculas on tbAlunos.codAluno = tbMatriculas.codAluno
INNER JOIN tbTurmas on tbTurmas.codTurma = tbMatriculas.codTurma
INNER JOIN tbCursos ON tbCursos.codCurso = tbTurmas.codCurso
WHERE nomeAluno LIKE 'A%' AND nomeCurso = 'Inglês'

--Apresentar a quantidade de matriculas feitas no ano de 2016
SELECT COUNT (dataMatricula)  AS 'Matriculas feitas em 2016' FROM tbMatriculas
WHERE dataMatricula BETWEEN '2016-01-01' AND '2016-31-12'

--Apresentar os nomes dos alunos ao lado do nome dos cursos que eles fazem
SELECT nomeAluno AS 'Nomes de Alunos', nomeCurso AS 'Cursos' FROM tbCursos
INNER JOIN tbTurmas on tbCursos.codCurso = tbTurmas.codCurso
INNER JOIN tbMatriculas on tbTurmas.codTurma = tbMatriculas.codTurma
INNER JOIN tbAlunos ON tbAlunos.codAluno = tbMatriculas.codAluno

--Apresentar a quantidade de alunos matriculados por nome do curso
SELECT nomeCurso AS 'Curso' , COUNT(nomeCurso) AS 'Quantidades de alunos matriculados' FROM tbCursos
INNER JOIN tbTurmas ON tbCursos.codCurso = tbTurmas.codCurso
INNER JOIN tbMatriculas ON tbTurmas.codTurma = tbMatriculas.codTurma
INNER JOIN tbAlunos ON tbAlunos.codAluno = tbMatriculas.codAluno
 GROUP BY nomeCurso

--Apresentar a quantidade de alunos matriculados por nome da turma
SELECT nomeTurma AS 'Turma', COUNT(nomeTurma) AS 'Quantidade de Alunos por Turma' FROM tbTurmas
INNER JOIN tbMatriculas ON tbTurmas.codTurma = tbMatriculas.codTurma
INNER JOIN tbAlunos ON tbAlunos.codAluno = tbMatriculas.codAluno
GROUP BY nomeTurma

