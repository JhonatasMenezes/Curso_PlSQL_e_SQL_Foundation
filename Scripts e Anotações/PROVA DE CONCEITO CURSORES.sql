-- PROVA DE CONCEITO DE VELOCIDADE
-- CURSORES

-- CURSOR EXPLÍCITO
BEGIN 
pct_tst_cursor; -- TEMPO PROCESSAMENTO: +000000 00:00:00.540000000
END;

-- CURSOR IMPLÍCITO
BEGIN
pct_tst_for; -- TEMPO PROCESSAMENTO: +000000 00:00:00.035000000
END;

-- CURSOR BULK COUNT
BEGIN
pct_tst_bulk_count; -- TEMPO PROCESSAMENTO: +000000 00:00:00.060000000
END;

-- CURSOR BULK FIRST LAST
BEGIN
pct_tst_bulk_firs_last; -- TEMPO PROCESSAMENTO: +000000 00:00:00.093000000
END;