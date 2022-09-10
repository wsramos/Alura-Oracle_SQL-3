/*
AUTOR: William Sampaio Ramos
DATA: 10/09/2022
DESCRIÇÃO: Cria tabela ORCAMENTO_DEPARTAMENTO para armazenar as informações de orçamento por funcionário de cada departamento
*/
-- DO
CREATE TABLE ORCAMENTO_DEPARTAMENTO
(
    DEPARTAMENTO VARCHAR2(50) NOT NULL,
    VALOR FLOAT NULL
);

-- UNDO
DROP TABLE ORCAMENTO_DEPARTAMENTO;