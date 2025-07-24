CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Medicamentos', 'Produtos farmacêuticos para tratamento de doenças'),
('Cosméticos', 'Produtos para cuidados pessoais e beleza'),
('Suplementos', 'Vitaminas e suplementos nutricionais'),
('Higiene Pessoal', 'Produtos para higiene e limpeza pessoal'),
('Primeiros Socorros', 'Produtos para atendimento emergencial');

CREATE TABLE tb_produtos (
    id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(7,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    validade DATE,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_produtos (nome_produto, preco, quantidade_estoque, validade, id_categoria) VALUES
('Dipirona 500mg', 15.50, 120, '2026-12-31', 1),
('Creme Hidratante', 55.00, 80, '2025-08-15', 2),
('Vitamina C 1000mg', 40.00, 150, '2027-05-20', 3),
('Shampoo Anticaspa', 30.00, 90, '2025-11-30', 2),
('Curativo Adesivo', 7.50, 200, '2028-01-01', 5),
('Protetor Solar FPS 50', 65.00, 60, '2024-09-10', 2),
('Água Oxigenada 10 Volumes', 12.00, 100, '2026-03-18', 5),
('Ômega 3', 70.00, 50, '2027-07-25', 3);

SELECT * FROM tb_produtos
WHERE preco > 50.00;

SELECT * FROM tb_produtos
WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos
WHERE nome_produto LIKE '%C%';

SELECT tb_produtos.nome_produto, tb_produtos.preco, tb_produtos.quantidade_estoque, tb_produtos.validade, 
tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT tb_produtos.nome_produto, tb_produtos.preco, tb_produtos.quantidade_estoque, tb_produtos.validade, 
tb_categorias.nome_categoria
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Cosméticos';




