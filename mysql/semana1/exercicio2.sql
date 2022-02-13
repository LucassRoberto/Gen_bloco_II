-- criando banco de dados de ecommerce
CREATE DATABASE db_ecommerce;

-- criando tabela de produtos 
USE db_ecommerce;

CREATE TABLE tb_produtos(
id_produtos BIGINT (5) AUTO_INCREMENT,
nome VARCHAR (255),
marca VARCHAR (255),
categoria VARCHAR (255),
preco DECIMAL (10, 2),

PRIMARY KEY (id_produtos)
);

-- adicionando 8 linhas na tabela com as devidas informações
INSERT INTO tb_produtos  (nome, marca, categoria, preco) VALUES ("PlayStation 5", "Sony", "Eletrônico", 4500.00);
INSERT INTO tb_produtos  (nome, marca, categoria, preco) VALUES ("Impressora", "HP", "Eletrônico", 400.00);
INSERT INTO tb_produtos  (nome, marca, categoria, preco) VALUES ("Geladeira", "Consul", "Eletrodoméstico", 2500.00);
INSERT INTO tb_produtos  (nome, marca, categoria, preco) VALUES ("Celular", "Sansung", "Eletrônico", 1700.00);
INSERT INTO tb_produtos  (nome, marca, categoria, preco) VALUES ("Celular", "Motorola", "Eletrônico", 800.00);
INSERT INTO tb_produtos  (nome, marca, categoria, preco) VALUES ("Mouse", "HP", "Eletrônico", 40.00);
INSERT INTO tb_produtos  (nome, marca, categoria, preco) VALUES ("Xbox", "Microsoft", "Eltrônico", 4000.00);
INSERT INTO tb_produtos  (nome, marca, categoria, preco) VALUES ("Carregador Portátil", "Sony", "Eletrônico", 100.00);

-- buscando produtos com valor acima de 500 reais 
SELECT * FROM tb_produtos WHERE preco > 500.00;

-- buscando produtos com valor abaixo de 500 reais 
SELECT * FROM tb_produtos WHERE preco < 500.00;

-- atualizando um dado da tabela 
UPDATE tb_produtos SET marca = "Sansung" WHERE id_produtos = 5;

SELECT * FROM tb_produtos;

