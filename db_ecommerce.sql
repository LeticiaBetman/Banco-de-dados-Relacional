CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
	categoria VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL
);
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES 
('Notebook Dell Inspiron', 'Notebook com 16GB RAM e SSD 512GB', 4500.00, 20, 'Informática'),
('Smartphone Galaxy S22', 'Celular com câmera tripla e 5G', 3999.90, 30, 'Telefonia'),
('Cadeira Gamer', 'Cadeira com ajuste de altura e apoio lombar', 799.99, 15, 'Móveis'),
('Mouse sem fio', 'Mouse óptico com conexão USB', 89.90, 100, 'Acessórios'),
('Monitor LG 24"', 'Monitor Full HD com HDMI', 699.90, 25, 'Informática'),
('Teclado Mecânico RGB', 'Teclado com iluminação e switches azuis', 349.00, 40, 'Acessórios'),
('Webcam HD', 'Câmera com microfone embutido', 229.90, 50, 'Acessórios'),
('Echo Dot', 'Smart speaker com Alexa', 379.00, 60, 'Eletrônicos');

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 4299.00 WHERE id = '1';
UPDATE tb_produtos SET preco = 2999.00 WHERE id = '2';
UPDATE tb_produtos SET preco = 699.00 WHERE id = '3';