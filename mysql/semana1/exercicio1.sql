USE db_rh;

-- criando a tabela de funcionários
CREATE TABLE tb_funcionario(
id BIGINT (4) AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
departamento VARCHAR (255) NOT NULL,
funcao VARCHAR (255) NOT NULL,
salario DECIMAL (10, 2) NOT NULL,
PRIMARY KEY (id)
);

-- adicionando 5 valores na tabela 
INSERT INTO tb_funcionario (nome, departamento, funcao, salario) VALUES ("Thiago Silva", "Logística", "Assistente", 1800.00);
INSERT INTO tb_funcionario (nome, departamento, funcao, salario) VALUES ("Kay Havertz", "Comercial", "Gerente", 9000.00);
INSERT INTO tb_funcionario (nome, departamento, funcao, salario) VALUES ("Neymar Junior", "Logística", "Auxiliar", 1300.00);
INSERT INTO tb_funcionario (nome, departamento, funcao, salario) VALUES ("Lucas Roberto", "Departamento de TI", "Desenvolvedor de Software", 4800.00);
INSERT INTO tb_funcionario (nome, departamento, funcao, salario) VALUES ("Bruna Januário", "Gerente", "Marketing", 9000.00);

-- salários maiores de 2000,00 
SELECT * FROM tb_funcionario WHERE salario > 2000.00;

-- salários menores de 2000,00 
SELECT * FROM tb_funcionario WHERE salario < 2000.00;

-- atualizando a função de um funcionário 
UPDATE tb_funcionario  SET funcao = "Assistente" WHERE id = 3 ;
-- atualizando o salario desse mesmo funcionario
UPDATE tb_funcionario  SET salario = 1800.00 WHERE id = 3 ;

SELECT * FROM tb_funcionario;
