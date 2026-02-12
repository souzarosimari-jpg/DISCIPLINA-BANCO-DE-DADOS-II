CREATE DATABASE escola;
USE escola;
CREATE TABLE estudantes(
id_estudante INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
data_nasc DATE NOT NULL,
logradouro VARCHAR(10) NOT NULL,
meio_trasnporte BIT NOT NULL,
profissao VARCHAR(100) NOT NULL
);

INSERT INTO estudantes  (data_nasc, logradouro, meio_trasnporte, profissao)
VALUES ('2006-10-10', 'Leste', 0, ' Analista de Suporte'),
('2006-09-06', 'Sul', 1, 'Produçao'),
('1993-05-01', 'Oeste', 0, 'Estoquista',
('1998-01-30', 'Oeste', 0, 'Estudante'),
('2003-12-13', 'Oeste', 0, 'Auxiliar Financeiro'),
('2000-05-19', 'Oeste', 0, 'Assistente de TI'),
('1976-03-05', 'Oeste', 0, 'Estudante'), 
('1977-05-16', 'Norte', 1, 'Personal Da Organizaçao'),
('2002-08-30', 'Oeste', 0, 'Estudante'),
('2006-08-20', 'Oeste', 0, 'Estudante'),
('2006-07-10', 'Norte', 1, 'Estudante');
