select table_name
from user_tables;

CREATE TABLE TB_DPTO as SELECT
    *
FROM departments
where ROWNUM=0;

 CREATE SEQUENCE seq_id_dpto
  MAXVALUE 
  MINVALUE
  START WITH 1
  INCREMENT BY 1
  NOCACHE;

ALTER SEQUENCE SEQ_ID_DPTO
 MAXVALUE 99
 INCREMENT BY 1
 noCACHE;
 
 insert into tb_dpto
 values (SEQ_ID_DPTO.nextval,
        'RH',
        100,
        1700);
 
select max (department_id)+1 from tb_dpto;

SELECT * FROM tb_dpto;

SELECT SEQ_ID_DPTO.CURRVAL FROM DUAL;
