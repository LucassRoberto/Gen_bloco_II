-- criando banco de dados 
CREATE DATABASE db_generation_game_online;

-- criando a tabela classe 
USE db_generation_game_online;
CREATE TABLE tb_classe (
id_classe BIGINT (5) AUTO_INCREMENT,
tipo_classe VARCHAR (255) NOT NULL,
habilidade VARCHAR (255) NOT NULL,
PRIMARY KEY (id_classe)
);

-- criando a tabela de personagens
CREATE TABLE tb_personagens (
id_personagem BIGINT (5) AUTO_INCREMENT,
raca VARCHAR (255) NOT NULL,
poder_ataque BIGINT (10) NOT NULL,
poder_defesa BIGINT (10) NOT NULL,
fk_classe BIGINT NOT NULL,
PRIMARY KEY (id_personagem),
FOREIGN KEY (fk_classe) REFERENCES tb_classe (id_classe)
);

-- inserindo dados na tabela classe 
INSERT INTO tb_classe (tipo_classe, habilidade) VALUES ("Curandeiro", "Sabedoria");
INSERT INTO tb_classe (tipo_classe, habilidade) VALUES ("Palandino", "Fé");
INSERT INTO tb_classe (tipo_classe, habilidade) VALUES ("Arqueiro", "Precisão");
INSERT INTO tb_classe (tipo_classe, habilidade) VALUES ("Assassino", "Agilidade");
INSERT INTO tb_classe (tipo_classe, habilidade) VALUES ("Viking", "Força");

-- inserindo dados na tabela personagem
INSERT INTO tb_personagens (raca, poder_ataque, poder_defesa, fk_classe) VALUES ("Elfo", 1000, 2500  , 1);
INSERT INTO tb_personagens (raca, poder_ataque, poder_defesa, fk_classe) VALUES ("Humano", 2500, 1500 , 3);
INSERT INTO tb_personagens (raca, poder_ataque, poder_defesa, fk_classe) VALUES ("Humano", 5000 , 2000, 4);
INSERT INTO tb_personagens (raca, poder_ataque, poder_defesa, fk_classe) VALUES ("Humano", 3000, 4000 , 5);
INSERT INTO tb_personagens(raca, poder_ataque, poder_defesa, fk_classe) VALUES ("Elfo", 500, 3000, 2);
INSERT INTO tb_personagens (raca, poder_ataque, poder_defesa, fk_classe) VALUES ("Centauro", 6000 , 3000 , 4);
INSERT INTO tb_personagens (raca, poder_ataque, poder_defesa, fk_classe) VALUES ("Elfo", 3000 , 1500 , 3);
INSERT INTO tb_personagens (raca, poder_ataque, poder_defesa, fk_classe) VALUES ("Humano", 1800 , 2000 , 2);

-- buscando personagens com poder de ataque acima de 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- buscando personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- buscando personagens que iniciam com a letra "C"
SELECT * FROM tb_personagens WHERE raca LIKE "C%";

-- juntar a tabela classe e personagem.
SELECT * FROM tb_personagens 
		INNER JOIN tb_classe ON tb_classe.id_classe = tb_personagens.fk_classe;

-- trazer todos os personagens de uma classe específica
SELECT * FROM tb_personagens 
		INNER JOIN tb_classe ON tb_classe.id_classe = tb_personagens.fk_classe WHERE id_classe = 3;
