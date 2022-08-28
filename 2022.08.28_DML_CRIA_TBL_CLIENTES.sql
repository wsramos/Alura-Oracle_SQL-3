-- DO
CREATE TABLE CLIENTES
(
    CPF VARCHAR(11) NOT NULL,
    NOME VARCHAR(100) NULL,
    ENDERECO VARCHAR(150) NULL,
    BAIRRO VARCHAR(50) NULL,
    CIDADE VARCHAR(50) NULL,
    ESTADO VARCHAR(50) NULL,
    CEP VARCHAR(8) NULL,
    DATA_NASCIMENTO DATA NULL,
    IDADE INTEGER NULL,
    GENERO VARCHAR(1) NULL,
    LIMITE_CREDITO FLOAT NULL,
    VOLUME_COMPRA FLOAT NULL,
    PRIMEIRA_COMPRA INTEGER NULL,
    CONSTRAINT CLIENTES_PK PRIMARY KEY
    (
        CPF    
    )
);
COMMIT;

-- UNDO
DROP TABLE CLIENTES;
COMMIT;