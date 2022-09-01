-- DO
CREATE TABLE TAB_DEPENDENTE
(
    COD_DEPENDENTE VARCHAR(5) NOT NULL,
    NOME_DEPENDENTE VARCHAR(50) NULL,
    TIPO_DEPENDENCIA VARCHAR(50) NULL,
    IDADE_DEPENDENTE INTEGER NULL,
    COD_FUNCIONARIO VARCHAR(5) NOT NULL,
    CONSTRAINT TAB_DEPENDENTE_PK PRIMARY KEY
    (
        COD_DEPENDENTE
    )
);
COMMIT;

-- UNDO
DROP TABLE TAB_DEPENDENTE;
COMMIT;