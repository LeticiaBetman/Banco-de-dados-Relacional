CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    turma VARCHAR(50) NOT NULL,
    nota_final DECIMAL(4,2) NOT NULL,
    status_matricula VARCHAR(20) NOT NULL
);

INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota_final, status_matricula)
VALUES 
('Ana Beatriz', '2007-04-12', '8A', 8.5, 'Ativo'),
('Lucas Mendes', '2006-11-30', '9B', 6.4, 'Ativo'),
('Mariana Silva', '2007-02-25', '8A', 9.1, 'Ativo'),
('João Pedro', '2006-07-14', '9B', 5.8, 'Ativo'),
('Rafaela Souza', '2007-09-20', '8B', 7.9, 'Ativo'),
('Felipe Costa', '2006-03-03', '9A', 4.7, 'Ativo'),
('Isabela Rocha', '2007-01-18', '8A', 6.9, 'Ativo'),
('Gustavo Lima', '2006-12-09', '9C', 7.2, 'Ativo');

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota_final > 7.0;

SELECT * FROM tb_estudantes WHERE nota_final < 7.0;

SELECT * FROM tb_estudantes WHERE nota_final > 7.0 ORDER BY nota_final DESC;

UPDATE tb_estudantes SET nota_final = 6.5 WHERE nome = '2';
UPDATE tb_estudantes SET nota_final = 7.0 WHERE nome = '7';
UPDATE tb_estudantes SET nota_final = 7.3 WHERE nome = '8';

