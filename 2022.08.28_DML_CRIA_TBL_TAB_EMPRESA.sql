-- DO
CREATE TABLE TAB_EMPRESA
(
    COD_EMPRESA VARCHAR(5) NOT NULL,
    NOME_EMPRESA VARCHAR(50) NULL,
    PRIMARY KEY(COD_EMPRESA)
);
COMMIT;

-- UNDO
DROP TABLE TAB_EMPRESA;
COMMIT;