CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
('Salgada', 'Pizzas com sabores salgados tradicionais'),
('Doce', 'Pizzas com sabores doces e sobremesas'),
('Vegetariana', 'Pizzas sem carne, apenas vegetais'),
('Especial', 'Pizzas com ingredientes especiais e gourmets'),
('Kids', 'Pizzas com sabores para crianças');

CREATE TABLE tb_pizzas (
    id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(50) NOT NULL,
    preco DECIMAL(7,2) NOT NULL,
    tamanho VARCHAR(20),
    ingredientes VARCHAR(100),
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_pizzas (nome_pizza, preco, tamanho, ingredientes, id_categoria) 
VALUES
('Margherita', 40.00, 'Média', 'Tomate, queijo mussarela, manjericão', 1),
('Chocolate', 50.00, 'Pequena', 'Chocolate ao leite, morango', 2),
('Portuguesa', 55.50, 'Grande', 'Presunto, ovo, cebola, azeitona', 1),
('Quatro Queijos', 60.00, 'Grande', 'Mussarela, gorgonzola, parmesão, provolone', 4),
('Veggie', 48.00, 'Média', 'Tomate, pimentão, cebola, cogumelos', 3),
('Banana com Canela', 52.00, 'Pequena', 'Banana, canela, açúcar', 2),
('Calabresa', 45.00, 'Média', 'Calabresa, cebola, queijo mussarela', 1),
('Frango com Catupiry', 58.00, 'Grande', 'Frango desfiado, catupiry, milho', 4);

SELECT * FROM tb_pizzas
WHERE preco > 45.00;

SELECT * FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas
WHERE nome_pizza LIKE '%M%';

SELECT tb_pizzas.nome_pizza, tb_pizzas.preco, tb_pizzas.tamanho, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT tb_pizzas.nome_pizza, tb_pizzas.preco, tb_pizzas.tamanho, tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Doce';

