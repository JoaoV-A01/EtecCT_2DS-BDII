CREATE DATABASE bdAcademia

USE bdAcademia

CREATE TABLE tbProfessor
(
	codProf INT PRIMARY KEY IDENTITY (1,1),
	nomeProf VARCHAR (50)
);

CREATE TABLE tbFoneProf
(	
	codFoneProfessor INT PRIMARY KEY IDENTITY (1,1),
	numFoneProf INT,
	codProf INT FOREIGN KEY REFERENCES tbProfessor (codProf)
);

CREATE TABLE tbHorario 
(
	codHorario INT PRIMARY KEY IDENTITY (1,1),
	descHorario VARCHAR (50)
);

CREATE TABLE tbModalidade 
(	
	codModalidade INT PRIMARY KEY IDENTITY (1,1),
	nomeModalidade VARCHAR (50),
	codProf INT FOREIGN KEY REFERENCES tbProfessor (codProf),
	codHorario INT FOREIGN KEY REFERENCES tbHorario (codHorario)
);

CREATE TABLE tbAluno
(
	codAluno INT PRIMARY KEY IDENTITY (1,1),
	nomeAluno VARCHAR (50),
	rgAluno CHAR (12),
	cpfAluno CHAR (14)
);

CREATE TABLE tbFoneAluno
(	
	codFoneAluno INT PRIMARY KEY IDENTITY (1,1),
	numFoneAluno INT,
	codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno)
);

CREATE TABLE tbTipoPlano 
(
	codTipoPlano INT PRIMARY KEY IDENTITY (1,1),
	descTipoPlano VARCHAR (50)
);

CREATE TABLE tbMatricula 
(
	codMatricula INT PRIMARY KEY IDENTITY (1,1),
	codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno),
	codTipoPlano INT FOREIGN KEY REFERENCES tbTipoPlano (codTipoPlano),
	codModalidade INT FOREIGN KEY REFERENCES tbModalidade (codModalidade),
	dataMatricula DATE
);
