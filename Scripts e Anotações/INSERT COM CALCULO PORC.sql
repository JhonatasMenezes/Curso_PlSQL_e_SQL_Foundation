-- BLOCO ANÔNIMO PARA INSERIR VALORES COM OPERAÇÕES
-- DE MEDIDA DE PORCENTAGEM

DECLARE
V_ID_CURSO tb_cursos_decisao.codigo_curso%TYPE:=&ID;
V_NAME_CURSO tb_cursos_decisao.nome_curso%TYPE:='&NAME';
V_DATA_CURSO tb_cursos_decisao.data_curso%TYPE:=&DATA;
V_SITUACAO_CURSO tb_cursos_decisao.situacao_curso%TYPE:='&SITUACAO';
V_VALOR_CURSO tb_cursos_decisao.valor_curso%TYPE:=&VALOR;
V_DESCONTO_CURSO tb_cursos_decisao.desconto_curso%TYPE:=&DESCONTO;
V_VDESC_CURSO tb_cursos_decisao.valor_desconto_curso%TYPE;

V_FATOR NUMBER:=&FATOR;

BEGIN 


INSERT INTO TB_CURSOS_DECISAO
VALUES (V_ID_CURSO, V_NAME_CURSO, V_DATA_CURSO,
        V_SITUACAO_CURSO, V_VALOR_CURSO,
        V_DESCONTO_CURSO,
        V_VALOR_CURSO - (V_VALOR_CURSO*(V_VDESC_CURSO/V_FATOR)));
        
COMMIT;
        
END;