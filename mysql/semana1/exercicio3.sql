CREATE DATABASE db_registro_escola;

-- criando tabelas de estudantes 
USE db_registro_escola;
CREATE TABLE tb_estudantes(
id_estudante BIGINT (5) AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
materia VARCHAR (255) NOT NULL,
periodo VARCHAR (255) NOT NULL,
nota DECIMAL (10, 2) NOT NULL,

PRIMARY KEY (id_estudante)
);

-- inserindo 8 dados na tabela 
INSERT INTO tb_estudantes (nome, materia, periodo, nota) VALUES ("Lucas Roberto", "História" , "Matutino", 10.0);
INSERT INTO tb_estudantes (nome, materia, periodo, nota) VALUES ("Bruna Januário", "Artes" , "Matutino", 10.0);
INSERT INTO tb_estudantes (nome, materia, periodo, nota) VALUES ("Aparecida Silva", "História" , "Matutino", 2.5);
INSERT INTO tb_estudantes (nome, materia, periodo, nota) VALUES ("Gabriela Santos", "Geografia" , "Vespertino", 7.3 );
INSERT INTO tb_estudantes (nome, materia, periodo, nota) VALUES ("Alice Braga", "Matemática" , "Noturno", 4.7);
INSERT INTO tb_estudantes (nome, materia, periodo, nota) VALUES ("João Avelange", "História" , "Matutino", 3.1);
INSERT INTO tb_estudantes (nome, materia, periodo, nota) VALUES ("Lionel Messi", "Espanhol" , "Vespertino", 8.0);
INSERT INTO tb_estudantes (nome, materia, periodo, nota) VALUES ("Cecília Barcelos", "Geometria" , "Noturno", 2.8);

-- selecionar os estudantes que possuem nota maior do que 7.0
SELECT * FROM tb_estudantes WHERE nota > 7.0;

-- selecionar os estudantes que possuem nota menor do que 7.0
SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- atualizar um novo dado na tabela
UPDATE tb_estudantes SET nota = 8.0 where id_estudante = 8;

SELECT * FROM tb_estudantes;