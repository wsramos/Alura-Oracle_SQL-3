-- DO
INSERT INTO PRODUTOS
SELECT
    CODIGO_DO_PRODUTO AS CODIGO
    ,NOME_DO_PRODUTO AS DESCRITOR
    ,SABOR
    ,TAMANHO
    ,EMBALAGEM
    ,PRECO_DE_LISTA AS PRECO_LISTA
FROM TABELA_DE_PRODUTOS_FONTE
WHERE CODIGO_DO_PRODUTO NOT IN (SELECT CODIGO FROM PRODUTOS);
COMMIT;

-- UNDO
DELETE FROM PRODUTOS
WHERE CODIGO IN (SELECT CODIGO_DO_PRODUTO FROM TABELA_DE_PRODUTOS_FONTE);
COMMIT;