# Sistema-Academico-Banco-de-Dados-MySQL
Visão geral
Este projeto consiste na criação de um banco de dados relacional para representar parte da estrutura acadêmica de uma instituição de ensino. O banco organiza informações sobre departamentos, docentes, disciplinas, ofertas de disciplinas e atribuições dos professores.
O projeto foi desenvolvido como atividade prática de estudos em Sistemas de Informação, com foco nos fundamentos de SQL e na utilização do MySQL.

Objetivos
Praticar a criação de tabelas com CREATE TABLE.
Utilizar chaves primárias (PRIMARY KEY) e chaves estrangeiras (FOREIGN KEY).
Inserir registros com INSERT INTO.
Compreender os relacionamentos entre tabelas.
Consultar informações de diferentes tabelas utilizando INNER JOIN.
Filtrar resultados com WHERE.

Tecnologias utilizadas
Banco de dados: MySQL
Linguagem: SQL
Ferramenta: cliente compatível com MySQL
Estrutura do banco de dados

O banco de dados é composto por cinco tabelas:
Tabela
Descrição
DEPARTAMENTO
Armazena os departamentos e seus respectivos campi.
DOCENTE
Armazena os dados dos docentes e seus departamentos.
DISCIPLINA
Registra as disciplinas, suas cargas horárias e seus departamentos.
OFERTA_DISCIPLINA
Registra as ofertas de disciplinas por semestre e ano letivo.
MINISTRA
Relaciona docentes às ofertas de disciplinas e registra a função docente.

ReLacionamentos
Um departamento pode estar relacionado a vários docentes.
Um departamento pode oferecer várias disciplinas.
Uma disciplina pode possuir diferentes ofertas ao longo dos semestres.
A tabela MINISTRA relaciona docentes às ofertas de disciplinas.

Como executar
Instale o MySQL ou abra um ambiente compatível.
Acesse o cliente SQL de sua preferência.
Copie o código SQL do projeto para o editor.
Execute primeiro os comandos de criação das tabelas.
Execute os comandos de inserção dos dados.
Por fim, execute a consulta com INNER JOIN para visualizar os resultados.
Observação: execute o script em um banco de dados de testes. Caso as tabelas já existam, os comandos CREATE TABLE poderão retornar erros.
Consulta demonstrada
A consulta utiliza INNER JOIN para combinar as informações das tabelas OFERTA_DISCIPLINA, DISCIPLINA, DEPARTAMENTO, MINISTRA e DOCENTE.
O resultado apresenta o nome da disciplina, o nome do docente, o departamento responsável e o semestre da oferta, considerando apenas ofertas registradas no ano de 2026.

Conceitos praticados
Modelagem relacional
Tipos de dados SQL
Chaves primárias e estrangeiras
Integridade referencial
Inserção de dados
Consultas relacionais
INNER JOIN
Filtragem com WHERE

Status do projeto
Em andamento — projeto acadêmico para prática dos fundamentos de banco de dados relacionais.
Licença

Este projeto foi desenvolvido para fins educacionais. Uma licença específica poderá ser definida futuramente.
Autora
Fernanda Cristina

Estudante de Sistemas de Informação, com foco no aprendizado de SQL, MySQL e fundamentos de desenvolvimento de sistemas.
GitHub: @fernanda01cm
