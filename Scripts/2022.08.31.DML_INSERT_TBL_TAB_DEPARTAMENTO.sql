-- DO
INSERT ALL
    INTO TAB_DEPARTAMENTO
    VALUES ('D0001','DEPARTAMENTO D0001', 'CAMPINAS','E0001')
    INTO TAB_DEPARTAMENTO
    VALUES ('D0002','DEPARTAMENTO D0002', 'CAMPO GRANDE','E0001')
    INTO TAB_DEPARTAMENTO
    VALUES ('D0003','DEPARTAMENTO D0003', 'CAMPINAS','E0001')
    INTO TAB_DEPARTAMENTO
    VALUES ('D0004','DEPARTAMENTO D0004', 'CURITIBA','E0002')
    INTO TAB_DEPARTAMENTO
    VALUES ('D0005','DEPARTAMENTO D0005', 'CAMPO GRANDE','E0002')
SELECT * FROM DUAL;
COMMIT;

-- UNDO
DELETE FROM TAB_DEPARTAMENTO
WHERE COD_DEPARTAMENTO IN ('D0001', 'D0002','D0003','D0004','D0005');
COMMIT;