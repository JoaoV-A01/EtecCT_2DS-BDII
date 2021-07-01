-- INSERTs
-- table tbAlunos
INSERT INTO tbAlunos (nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno)
VALUES   ('Paulo Santos', '2000-03-10 00:00:00', '82.282.122-0', 'SP')
		,('Mariana da Gloria', '1999-10-03 00:00:00', '45.233.123-0', 'SP')
		,('Pedro Nogueira', '1998-04-04 00:00:00', '23.533.211-9', 'SP')
		,('Gilson Barros Silva', '1995-09-09 00:00:00', '34.221.111-0', 'PE')
		,('Mariana Barbosa Santos', '2001-10-10 00:00:00', '54.222.122-9', 'RJ')
		,('Alessandro Pereira', '2003-10-11 00:00:00', '24.402.454', 'ES')
		,('Aine Melo', '2001-10-08 00:00:00', '88.365.012-3', 'RJ')

--table tbCursos
INSERT INTO tbCursos (nomeCurso, cargaHorariaCurso, valorCurso)
VALUES   ('Inglês', 2000, 356)
		,('Alemão', 3000, 478)
		,('Espanhol', 4000, 500)

--table tbTurmas
INSERT INTO tbTurmas (nomeTurma, codCurso, horarioTurma)
VALUES   ('1|A', 1, '1900-01-01 12:00:00')
		,('1|C', 3, '1900-01-01 18:00:00')
		,('1|B', 1, '1900-01-01 18:00:00')
		,('1AA', 2, '1900-01-01 19:00:00')
--TABLE tbMatriculas
INSERT INTO tbMatriculas (dataMatricula, codAluno, codTurma)
VALUES   ('2015-03-03 00:00:00', 1, 1)
		,('2014-04-04 00:00:00', 2, 1)
		,('2014-04-04 00:00:00', 2, 4)
		,('2012-03-03 00:00:00', 3, 2)
		,('2016-03-03 00:00:00', 1, 3)
		,('2015-05-07 00:00:00', 4, 2)
		,('2015-07-05 00:00:00', 4, 3)

