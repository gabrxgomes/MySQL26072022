CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR (255) NOT NULL,
origem VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
); 

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
peso DOUBLE NOT NULL,
tamanho VARCHAR (255) NOT NULL,
valor DOUBLE NOT NULL,
PRIMARY KEY (id),
categorias_id BIGINT,
FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (tipo, origem) VALUES ('Carne Vermelha', 'Bovina');
INSERT INTO tb_categorias (tipo, origem) VALUES ('Carne Vermelha', 'Suína');
INSERT INTO tb_categorias (tipo, origem) VALUES ('Carne Branca', 'Avina');
INSERT INTO tb_categorias (tipo, origem) VALUES ('Carne Branca', 'Peixe');
INSERT INTO tb_categorias (tipo, origem) VALUES ('Temperos', 'Vegetal');

INSERT INTO tb_produtos (nome, peso, tamanho, valor, categorias_id) VALUES ('Picanha', 500.00, 'Médio', 150.00, 1);
INSERT INTO tb_produtos (nome, peso, tamanho, valor, categorias_id) VALUES ('Filé Mignon', 500.00, 'Médio', 150.00, 1);
INSERT INTO tb_produtos (nome, peso, tamanho, valor, categorias_id) VALUES ('Peito de Frango', 1000.00, 'Grande', 20.00, 3);
INSERT INTO tb_produtos (nome, peso, tamanho, valor, categorias_id) VALUES ('Filé de Peito de Frango', 1000.00, 'Grande', 25.00, 3);
INSERT INTO tb_produtos (nome, peso, tamanho, valor, categorias_id) VALUES ('Pernil', 500.00, 'Médio', 80.00, 2);
INSERT INTO tb_produtos (nome, peso, tamanho, valor, categorias_id) VALUES ('Lombo', 500.00, 'Médio', 70.00, 2);
INSERT INTO tb_produtos (nome, peso, tamanho, valor, categorias_id) VALUES ('Patinho', 200.00, 'Pequeno', 90.00, 4);
INSERT INTO tb_produtos (nome, peso, tamanho, valor, categorias_id) VALUES ('Chimichurri', 450.00, 'Médio', 15.00, 5);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categorias_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categorias_id WHERE tb_categorias.tipo = 'Carne Branca';
