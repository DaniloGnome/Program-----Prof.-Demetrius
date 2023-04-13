CREATE DATABASE uc_programacao;
USE uc_programacao;
/* tabela curso*/
CREATE TABLE curso (
cod_curso INTEGER,
nome_curso VARCHAR(100),
sigla VARCHAR(10),
PRIMARY KEY (cod_curso)
);
/*tabela disciplina*/
CREATE TABLE disciplina (
cod_disciplina INTEGER,
nome_disciplina VARCHAR(100),
PRIMARY KEY (cod_disciplina)
);
/*tabela turma*/
CREATE TABLE turma (
cod_turma INTEGER,
turno VARCHAR(20),
disciplina INTEGER,
PRIMARY KEY (cod_turma),
CONSTRAINT fk_disciplina_turma FOREIGN KEY (disciplina)
REFERENCES disciplina (cod_disciplina)
);
/*tabela aluno*/
CREATE TABLE aluno (
matricula VARCHAR(20),
nome VARCHAR(200),
cpf VARCHAR(15),
PRIMARY KEY (matricula)
);
/* tabelas auxiliar: aluno_curso*/
CREATE TABLE aluno_curso (
cod_aluno_curso INTEGER,
aluno VARCHAR(20),
curso INTEGER,
PRIMARY KEY (cod_aluno_curso),
CONSTRAINT fk_aluno FOREIGN KEY (aluno)
REFERENCES aluno (matricula),
CONSTRAINT fk_curso FOREIGN KEY (curso)
REFERENCES curso (cod_curso)
);
/* tabelas auxiliar: aluno_turma*/
CREATE TABLE aluno_turma(
cod_aluno_turma INTEGER,
aluno VARCHAR(20),
turma INTEGER,
PRIMARY KEY (cod_aluno_turma),
CONSTRAINT fk_aluno_turma FOREIGN KEY (aluno)
REFERENCES aluno (matricula),
CONSTRAINT fk_turma FOREIGN KEY (turma)
REFERENCES turma (cod_turma)
);
/* tabelas auxiliar: disciplina_curso*/
CREATE TABLE curso_disciplina(
cod_curso_disciplina INTEGER,
curso INTEGER,
disciplina INTEGER,
PRIMARY KEY (cod_curso_disciplina),
CONSTRAINT fk_curso_disciplina FOREIGN KEY (curso)
REFERENCES curso (cod_curso),
CONSTRAINT fk_disciplina_curso FOREIGN KEY (disciplina)
REFERENCES disciplina (cod_disciplina)
);
/* inserir valores as lacunas*/
INSERT INTO curso (cod_curso, nome_curso, sigla)
VALUES
		(1, "ciencias da computação", "CCO"),
		(2, "analise e desenvolvimento de sistemas", "ADS"),
		(3, "Jogos Digitais", "JDI"),
		(4, "Gestao de Tecnologia da informação", "GTI"),
		(5, "sistema da informação", "STI");

INSERT INTO disciplina (cod_disciplina, nome_disciplina)
VALUES
		(1, "banco de dados"),
		(2, "programação"),
		(3, "enenharia de softwares"),
		(4, "Logica Booleana"),
		(5, "computação grafica"),
		(6, "redes de computadores");

INSERT INTO aluno (matricula, nome, cpf)
VALUES
		("202300001", "bruce wayne", "111111111-11"),
		("202300002", "clark kent", "222222222-22"),
		("202300003", "arthur curry", "333333333-33"),
		("202300004", "barry allen", "444444444-44"),
		("202300005", "diana prince", "555555555-55"),
		("202300006", "steve rogers", "666666666-66"),
		("202300007", "antony starks", "777777777-77"),
		("202300008", "peter parker", "888888888-88"),
		("202300009", "bruce banner", "999999999-99");

INSERT INTO turma (cod_turma, turno, disciplina)
VALUES 
		(1,"manha", 1),
		(2,"manha", 2),
		(3,"manha", 3),
		(4,"manha", 4),
		(5,"manha", 5),
		(6,"manha", 6),
		(7,"noite", 1),
		(8,"noite", 2),
		(9,"noite", 3),
		(10,"noite", 4),
		(11,"noite", 5),
		(12,"noite", 6);

