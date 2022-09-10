/*
AUTOR: William Sampaio Ramos
DATA: 10/09/2022
DESCRIÇÃO: Cria Trigger para atualizar a tabela ORCAMENTO_DEPARTAMENTO sempre que um novo projeto for criado
*/

CREATE OR REPLACE TRIGGER TG_TAB_ORCAMENTO_DEPARTAMENTO
AFTER INSERT OR UPDATE ON TAB_PROJETO
BEGIN
    DELETE FROM ORCAMENTO_DEPARTAMENTO;
    INSERT INTO ORCAMENTO_DEPARTAMENTO
    SELECT
        TD.NOME_DEPARTAMENTO AS DEPARTAMENTO,
        ORC_DEP.ORCAMENTO_DEPARTAMENTO / NUM_FUNC.NUM_FUNCIONARIO AS VALOR
    FROM TAB_DEPARTAMENTO TD
    INNER JOIN 
        (SELECT SUM(ORCAMENTO) AS ORCAMENTO_DEPARTAMENTO, COD_DEPARTAMENTO FROM TAB_PROJETO
        GROUP BY COD_DEPARTAMENTO) ORC_DEP ON TD.COD_DEPARTAMENTO = ORC_DEP.COD_DEPARTAMENTO
    INNER JOIN 
        (SELECT COUNT(*) AS NUM_FUNCIONARIO, COD_DEPARTAMENTO 
        FROM TAB_FUNCIONARIO
        GROUP BY COD_DEPARTAMENTO) NUM_FUNC ON TD.COD_DEPARTAMENTO = NUM_FUNC.COD_DEPARTAMENTO;
END;
