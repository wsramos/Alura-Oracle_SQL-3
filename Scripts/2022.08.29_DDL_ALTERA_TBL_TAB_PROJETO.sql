-- DO
ALTER TABLE TAB_PROJETO
ADD CONSTRAINT FK_TAB_DEPARTAMENTO FOREIGN KEY
(
    COD_DEPARTAMENTO
) REFERENCES TAB_DEPARTAMENTO (COD_DEPARTAMENTO);
COMMIT;