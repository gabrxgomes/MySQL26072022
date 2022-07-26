
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
arma VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
); 

CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
idade INT NOT NULL,
raca VARCHAR (255) NOT NULL,
hab INT,
PRIMARY KEY (id),
classes_id BIGINT,
FOREIGN KEY (classes_id) REFERENCES tb_classes (id)
);

INSERT INTO tb_classes (nome, arma) VALUES ('Necromante', 'Necronomicom');
INSERT INTO tb_classes (nome, arma) VALUES ('Bruxo', 'Cajado de pedras');
INSERT INTO tb_classes (nome, arma) VALUES ('Paladino', 'Maça');
INSERT INTO tb_classes (nome, arma) VALUES ('Centauro', 'Machado de duas pontas');
INSERT INTO tb_classes (nome, arma) VALUES ('Mago', 'Cajado branco');

INSERT INTO tb_personagens (nome, idade, raca, hab, classes_id) VALUES ('Joao', 25, 'Necromante', 59000, 3);
INSERT INTO tb_personagens (nome, idade, raca, hab, classes_id) VALUES ('Carlos', 14, 'Bruxo', 35000, 5);
INSERT INTO tb_personagens (nome, idade, raca, hab, classes_id) VALUES ('Serginho', 23, 'Mago', 500, 4);
INSERT INTO tb_personagens (nome, idade, raca, hab, classes_id) VALUES ('Felipe', 54, 'Paladino', 10000, 5);
INSERT INTO tb_personagens (nome, idade, raca, hab, classes_id) VALUES ('Cesar', 69, 'Anao', 80000, 4);
INSERT INTO tb_personagens (nome, idade, raca, hab, classes_id) VALUES ('Rafinha', 41, 'Centauro', 524, 2);
INSERT INTO tb_personagens (nome, idade, raca, hab, classes_id) VALUES ('Claudemir', 28, 'Ladino', 36577, 3);
INSERT INTO tb_personagens (nome, idade, raca, hab, classes_id) VALUES ('Sandrinho', 96, 'Mago', 54777, 2);

SELECT * FROM tb_personagens WHERE hab > 2000;

SELECT * FROM tb_personagens WHERE hab BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id WHERE tb_classes.nome = 'Elfo';