CREATE DATABASE bdEscolaIdiomas

DROP DATABASE bdEscolaIdiomas

CREATE TABLE tbAlunos (
	 codAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (50)
	,dataNascAluno DATETIME
	,rgAluno VARCHAR (50)
	,naturalidadeAluno CHAR (2)
);

CREATE TABLE tbCursos (
	 codCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (30)
	,cargaHorariaCurso INT
	,valorCurso MONEY
);

CREATE TABLE tbTurmas (
	 codTurma INT PRIMARY KEY IDENTITY (1,1)
	,nomeTurma VARCHAR (10)
	,codCurso INT FOREIGN KEY REFERENCES tbCursos (codCurso)
	,horarioTurma DATETIME
);

CREATE TABLE tbMatriculas (
	 codMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula DATETIME
	,codAluno INT FOREIGN KEY REFERENCES tbAlunos (codAluno)
	,codTurma INT FOREIGN KEY REFERENCES tbTurmas (codTurma)
);
