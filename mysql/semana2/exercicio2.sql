-- criando banco de dados da pizzaria
CREATE DATABASE db_pizzaria_legal;

-- criando a categoria 
USE db_pizzaria_legal;
CREATE TABLE tb_categoria (
id_categoria INT (5) AUTO_INCREMENT,
delivery VARCHAR (10) NOT NULL,
promoção VARCHAR (10) NOT NULL,
PRIMARY KEY (id_categoria)
);

-- criando o tipo de pizza 
CREATE TABLE tb_pizza(
id_produto INT (5) AUTO_INCREMENT,
sabor VARCHAR (50) NOT NULL,
tamanho CHAR (1) NOT NULL,
preco DECIMAL (10, 2) NOT NULL,
fk_categoria INT (5) NOT NULL,
PRIMARY KEY (id_produto),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)
);

-- inserindo os dados na tabela categoria
INSERT INTO tb_categoria (delivery, promoção) VALUES ("Sim", "Sim");
INSERT INTO tb_categoria (delivery, promoção) VALUES ("Não", "Não");
INSERT INTO tb_categoria (delivery, promoção) VALUES ("Não", "Sim");
INSERT INTO tb_categoria (delivery, promoção) VALUES ("Sim", "Não");

-- inserindo dados na tabela de pizza
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria) VALUES ("Frango", "M", 48.00, 1);
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria) VALUES ("Mussarela", "P", 35.00, 2);
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria) VALUES ("Bacon", "G", 60.00, 3);
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria) VALUES ("Calabresa", "M", 48.00, 4);
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria) VALUES ("Portuguesa", "P", 30.00, 1);
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria) VALUES ("Marguerita", "G", 62.00, 2);
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria) VALUES ("Parmegiana", "M", 48.00, 3);
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria) VALUES ("Escarola", "P", 35.00, 4);

-- retornando valores maiores que 45
SELECT * FROM tb_pizza WHERE preco > 45;

-- retornando os valores entre 29 e 60
SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;

-- retornando valores com a letra "C"
SELECT * FROM tb_pizza WHERE sabor LIKE ("%C%");

-- selecionando os dados das duas tabelas
SELECT  *  FROM tb_pizza 
		INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_pizza.fk_categoria;
        
-- selecionando os dados onde o ID é 1
SELECT sabor, tamanho, preco FROM tb_pizza 
		INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_pizza.fk_categoria WHERE id_categoria = 1;