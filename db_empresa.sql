CREATE DATABASE db_empresa;
USE db_empresa;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    data_nascimento DATE,
    setor VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2) NOT NULL
);
INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, setor, cargo, salario)
VALUES
('Luana','12345678901', '1999-12-15', 'Marketing', 'Social Media', '3200.00'),
('Bruno','23456789012', '1998-11-14', 'Contabilidade', 'Contador', '2500.00'),
('Daniel','34567890123', '1997-10-13', 'Eventos', 'Coordenador', '1800.00'),
('Luis','45678901234', '1980-07-21', 'Tecnologia da Informação', 'Desenvolvedor Backend', '1900.00'),
('Gabriela','56789012345', '1993-01-22', 'Auditoria', 'Auditor Sênior', '4000.00');

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 3500.00 WHERE id = 1;
UPDATE tb_colaboradores SET salario = 2900.00 WHERE id = 2;
UPDATE tb_colaboradores SET salario = 2000.00 WHERE id = 3;
UPDATE tb_colaboradores SET salario = 2100.00 WHERE id = 4;
UPDATE tb_colaboradores SET salario = 4200.00 WHERE id = 5;