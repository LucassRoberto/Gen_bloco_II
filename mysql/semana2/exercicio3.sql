
CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;
CREATE TABLE tb_categoria (
id_categoria INT (5) NOT NULL AUTO_INCREMENT,
fabricante VARCHAR (50) NOT NULL,
controlado BOOLEAN, -- 0 = FALSE, 1 = TRUE	
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produto(
id_produto INT (5) NOT NULL AUTO_INCREMENT,
nome VARCHAR (50) NOT NULL,
tipo VARCHAR (50) NOT NULL,
preco DECIMAL (10, 2) NOT NULL, 
fk_categoria INT (5) NOT NULL,
PRIMARY KEY (id_produto),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria (fabricante, controlado) VALUES ("Sanofi Avenis", "0");
INSERT INTO tb_categoria (fabricante, controlado) VALUES ("Norvatis", "1");
INSERT INTO tb_categoria (fabricante, controlado) VALUES ("Norvatis", "1");
INSERT INTO tb_categoria (fabricante, controlado) VALUES ("Medley", "1");
INSERT INTO tb_categoria (fabricante, controlado) VALUES ("Medley", "1");

INSERT INTO tb_produto (nome, tipo, preco, fk_categoria) VALUES ("Allegra", "Antialérgico", 34.99 ,1 );
INSERT INTO tb_produto (nome, tipo, preco, fk_categoria) VALUES ("Cataflan", "Anti-inflamatório", 43.73 , 2);
INSERT INTO tb_produto (nome, tipo, preco, fk_categoria) VALUES ("Voltaren", "Anti-inflamatório", 42.68 , 3 );
INSERT INTO tb_produto (nome, tipo, preco, fk_categoria) VALUES ("Azitromicina", "Anti-biótico", 26.87, 4);
INSERT INTO tb_produto (nome, tipo, preco, fk_categoria) VALUES ("Amoxilina", "Anti-biótico", 42.84, 5 );


