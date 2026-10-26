-- create
CREATE TABLE DEPARTAMENTO (
 id_departamento INT PRIMARY KEY,
 nome_departamento VARCHAR (100),
 campus VARCHAR (100)
);



CREATE TABLE DOCENTE (
 id_docente INT PRIMARY KEY,
 nome_docente VARCHAR (100),
 titulacao VARCHAR (100),
 email VARCHAR (100),
 id_departamento INT,
 FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTO (id_departamento)
);



CREATE TABLE DISCIPLINA (
 id_disciplina INT PRIMARY KEY,
 nome_disciplina VARCHAR (100),
 carga_horaria TIME,
 id_departamento INT,
 FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTO (id_departamento)
);



CREATE TABLE OFERTA_DISCIPLINA (
 id_oferta INT PRIMARY KEY,
 semestre VARCHAR (20),
 ano_letivo YEAR,
 id_disciplina INT,
 FOREIGN KEY (id_disciplina) REFERENCES DISCIPLINA (id_disciplina)
);



CREATE TABLE MINISTRA (
 funcao_docente VARCHAR (100),
 id_docente INT,
 id_oferta INT,
 FOREIGN KEY (id_docente) REFERENCES DOCENTE (id_docente),
 FOREIGN KEY (id_oferta) REFERENCES OFERTA_DISCIPLINA (id_oferta)
);

SHOW TABLES;





-- insert
INSERT INTO DEPARTAMENTO (id_departamento, nome_departamento,campus) VALUES
(1, 'Tecnologia da Informação', 'Campus Central'),
(2, 'Ciências Biológicas', 'Campus Norte'),
(3, 'Engenharia', 'Campus Sul'),
(4, 'Administração', 'Campus Central'),
(5, 'Matemática', 'Campus Norte');

INSERT INTO DOCENTE (id_docente,nome_docente,titulacao, email, id_departamento) VALUES
(1, 'Carlos Silva', 'Mestre', 'carlos@faculdade.com', 1),
(2, 'Ana Souza', 'Doutora', 'ana@faculdade.com', 2),
(3, 'Marcos Oliveira', 'Especialista', 'marcos@faculdade.com', 3),
(4, 'Juliana Santos', 'Mestre', 'juliana@faculdade.com', 4),
(5, 'Pedro Costa', 'Doutor', 'pedro@faculdade.com', 5);

INSERT INTO DISCIPLINA (id_disciplina, nome_disciplina, carga_horaria, id_departamento) VALUES
(1, 'Banco de Dados', '02:00:00', 1),
(2, 'Lógica de Programação', '04:00:00', 1),
(3, 'Biologia Geral', '03:00:00', 2),
(4, 'Cálculo I', '04:00:00', 5),
(5, 'Gestão Empresarial', '02:00:00', 4);

INSERT INTO OFERTA_DISCIPLINA (id_oferta, semestre, ano_letivo, id_disciplina) VALUES
(1, '1º semestre', 2026, 1),
(2, '2º semestre', 2026, 2),
(3, '1º semestre', 2026, 3),
(4, '2º semestre', 2025, 4),
(5, '1º semestre', 2024, 5);

INSERT INTO MINISTRA (funcao_docente, id_docente, id_oferta) VALUES
('Coordenador', 1, 1),
('Professor titular', 2, 2),
('Professor substituto', 3, 3),
('Professor auxiliar', 4, 4),
('Orientador', 5, 5);

 

SELECT
  DISCIPLINA.nome_disciplina,
  DOCENTE.nome_docente,
  DEPARTAMENTO.nome_departamento,
  OFERTA_DISCIPLINA.semestre
FROM OFERTA_DISCIPLINA
INNER JOIN DISCIPLINA
  ON OFERTA_DISCIPLINA.id_disciplina = DISCIPLINA.id_disciplina
INNER JOIN DEPARTAMENTO
  ON DISCIPLINA.id_departamento = DEPARTAMENTO.id_departamento
INNER JOIN MINISTRA
  ON OFERTA_DISCIPLINA.id_oferta = MINISTRA.id_oferta
INNER JOIN DOCENTE
  ON MINISTRA.id_docente = DOCENTE.id_docente
WHERE OFERTA_DISCIPLINA.ano_letivo = 2026;
