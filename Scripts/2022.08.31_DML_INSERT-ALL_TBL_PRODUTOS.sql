-- DO
INSERT ALL 
    INTO PRODUTOS
    VALUES
        ('1040112', 'Light - 450 ml - Manga', 'Manga', '450 ml', 'Lata', 5.8)
    INTO PRODUTOS
    VALUES
        ('1040113', 'Light - 450 ml - Melancia', 'Melancia', '450 ml',  'Lata', 5.9)
    INTO PRODUTOS
    VALUES
        ('1040114', 'Light - 450 ml - Maca', 'Maca', '450 ml',  'Lata', 6.8)
SELECT * FROM DUAL;

COMMIT;

-- UNDO
DELETE FROM PRODUTOS
WHERE CODIGO IN ('1040112', '1040113', '1040114');
COMMIT;