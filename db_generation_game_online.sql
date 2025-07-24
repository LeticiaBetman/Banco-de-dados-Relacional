CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
    id_classe BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50) NOT NULL,
    tipo_ataque VARCHAR(30),
    funcao_estrategica VARCHAR(50)
);

INSERT INTO tb_classes (nome_classe, tipo_ataque, funcao_estrategica)
VALUES
('Atirador', 'À distância', 'Dano contínuo'),
('Mago', 'Mágico', 'Dano em área'),
('Aéreo', 'Aéreo', 'Dano à distância'),
('Tanque', 'Corpo a corpo', 'Absorver dano'),
('Suporte', 'Variado', 'Apoio e cura');

CREATE TABLE tb_personagens(
    id_personagem BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_personagem VARCHAR(50) NOT NULL,
    elixir INT NOT NULL,
    vida INT NOT NULL,
    dano INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    id_classe BIGINT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_personagens (nome_personagem, elixir, vida, dano, poder_ataque, poder_defesa, id_classe) 
VALUES
('Mosqueteira', 4, 740, 218, 1800, 950, 1),
('Mago', 5, 890, 241, 2200, 700, 2),
('Bebê Dragão', 4, 1200, 133, 1900, 1000, 3),
('Gigante', 5, 3300, 211, 2100, 2000, 4),
('Curadora Guerreira', 4, 1300, 90, 1600, 1500, 5),
('Arqueiras', 3, 350, 125, 1750, 600, 1),
('Mago de Gelo', 3, 800, 150, 2300, 1000, 2),
('Cavaleiro', 3, 1800, 140, 1500, 1800, 4);

SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens
WHERE nome_personagem LIKE '%C%';

SELECT tb_personagens.nome_personagem, tb_personagens.elixir, tb_personagens.poder_ataque,
tb_classes.nome_classe, tb_classes.funcao_estrategica
FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;

SELECT tb_personagens.nome_personagem, tb_personagens.elixir, tb_personagens.poder_ataque, tb_classes.nome_classe
FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe
WHERE tb_classes.nome_classe = 'Atirador';