/*
AUTOR: William Sampaio Ramos
DATA: 05/09/2022
DESCRIÇÃO: Atualizar valores na tabela Produtos
*/

-- DO 
-- Atualiza campos relacionados a sabor r valor onde o código é 1040107
UPDATE PRODUTOS SET 
    DESCRITOR = REPLACE(DESCRITOR, 'Melancia', 'Laranja'),
    SABOR = 'Laranja', 
    EMBALAGEM = 'PET', 
    PRECO_LISTA = 5.2
WHERE CODIGO = '1040107';

COMMIT;

-- UNDO
-- Volta o valor dos campos relacionados a sabor e valor onde o código é 1040107
UPDATE PRODUTOS SET
    DESCRITOR = REPLACE(DESCRITOR, 'Laranja', 'Melancia'),
    SABOR = 'Melancia', 
    EMBALAGEM = 'Lata', 
    PRECO_LISTA = '4,555'
WHERE CODIGO = '1040107';

COMMIT;

-- DO 
-- Aumenta o preço dos produtos sabor maracujá em 10%
UPDATE PRODUTOS SET
    PRECO_LISTA = PRECO_LISTA * 1.10
WHERE SABOR = 'Maracuja';

COMMIT;

-- UNDO 
-- Diminui o preço dos produtos sabor maracujá em 10%
UPDATE PRODUTOS SET
    PRECO_LISTA = PRECO_LISTA - PRECO_LISTA * 0.1
WHERE SABOR = 'Maracuja';

COMMIT;