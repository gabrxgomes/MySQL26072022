CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
massa VARCHAR (255) NOT NULL,
tamanho VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
); 

CREATE TABLE tb_pizzas  (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
sabor VARCHAR (255) NOT NULL,
borda VARCHAR (255) NOT NULL,
valor DOUBLE,
PRIMARY KEY (id),
categorias_id BIGINT,
FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (massa, tamanho) VALUES ('Tradicional', 'Broto');
INSERT INTO tb_categorias (massa, tamanho) VALUES ('Tradicional', 'Média');
INSERT INTO tb_categorias (massa, tamanho) VALUES ('Tradicional', 'Grande');
INSERT INTO tb_categorias (massa, tamanho) VALUES ('Pan', 'Broto');
INSERT INTO tb_categorias (massa, tamanho) VALUES ('Pan', 'Grande');

INSERT INTO tb_pizzas (nome, sabor, borda, valor, categorias_id) VALUES ('Queridinha', 'Queijo', 'Tradicional', 50.00, 2);
INSERT INTO tb_pizzas (nome, sabor, borda, valor, categorias_id) VALUES ('Saborosa', 'Frango', 'Catupiry', 60.00, 3);
INSERT INTO tb_pizzas (nome, sabor, borda, valor, categorias_id) VALUES ('Suculenta', 'Calabresa', 'Cheddar', 35.00, 3);
INSERT INTO tb_pizzas (nome, sabor, borda, valor, categorias_id) VALUES ('Maioral', 'Carne', 'Cheddar', 70.00, 1);
INSERT INTO tb_pizzas (nome, sabor, borda, valor, categorias_id) VALUES ('Melhorada', 'Prestígio', 'Chocolate Branco', 100.00, 4);
INSERT INTO tb_pizzas (nome, sabor, borda, valor, categorias_id) VALUES ('Top', 'Carne Seca', 'Catupiry', 65.00, 3);
INSERT INTO tb_pizzas (nome, sabor, borda, valor, categorias_id) VALUES ('Carro-chefe', 'Chocolate', 'Geleia de Morango', 100.00, 5);
INSERT INTO tb_pizzas (nome, sabor, borda, valor, categorias_id) VALUES ('Explosão', 'Brigadeiro', 'Chocolate', 75.00, 5);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%m%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id WHERE tb_categorias.massa = 'Tradicional';

