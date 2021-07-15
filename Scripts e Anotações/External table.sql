-- EXTERNAL TABLE

CREATE TABLE EMPREGADO(
    ID      VARCHAR2(3)
,   NOME    VARCHAR2(50)
,   EMAIL   VARCHAR2(100))
   ORGANIZATION EXTERNAL
    (
      TYPE ORACLE_LOADER
      DEFAULT DIRECTORY DRT_EXT
      ACCESS PARAMETERS
        (
        RECORDS DELIMITED BY NEWLINE
        FIELDS TERMINATED BY ','
        )
   LOCATION ('Tabela.csv')
     ); -- não aceita modificaões
    
select * from empregado;

-- criar uma tabela clone para modificar
CREATE TABLE TB_EMPREGADO AS
SELECT * FROM EMPREGADO;

select * from tb_empregado;

-- Procedure
CREATE PROCEDURE PRC_TESTE IS


BEGIN


EXECUTE IMMEDIATE 'CREATE TABLE TB_CLAYTON AS
SELECT * FROM EMPREGADO';


END;