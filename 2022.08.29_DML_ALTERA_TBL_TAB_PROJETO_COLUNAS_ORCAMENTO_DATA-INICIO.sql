-- DO
ALTER TABLE TAB_PROJETO
RENAME COLUMN ORCAMENTO_PROJETO TO ORCAMENTO;

ALTER TABLE TAB_PROJETO
RENAME COLUMN DATA_INICIO_PROJETO TO DATA_INICIO;

COMMIT;

-- UNDO

ALTER TABLE TAB_PROJETO
RENAME COLUMN ORCAMENTO TO ORCAMENTO_PROJETO;

ALTER TABLE TAB_PROJETO
RENAME COLUMN DATA_INICIO TO DATA_INICIO_PROJETO;

COMMIT;