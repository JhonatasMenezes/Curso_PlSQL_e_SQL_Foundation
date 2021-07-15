-- CRIAÇÃO DE TABELAS PARA EXERCÍCIOS
-- TABELA TB_UNIDADES
CREATE TABLE TB_UNIDADES(
     cod_unidade   number(5)
        CONSTRAINT pk_cod_unidade PRIMARY KEY
   , nome_unidade  varchar2(50)
        CONSTRAINT nn_nome_unidade NOT NULL
   , data_abertura  date 
        DEFAULT SYSDATE
    );
        
-- TABELA TB_ALUNOS
CREATE TABLE TB_ALUNOS (
    cod_aluno  number(5)
        CONSTRAINT  pk_cod_aluno  PRIMARY KEY
,   nome_aluno        varchar2(50)
        CONSTRAINT  nn_nome_aluno  NOT NULL
,   rg_aluno          number(10)
        CONSTRAINT  nn_rg_aluno  NOT NULL
,   data_cadastro     date
        DEFAULT SYSDATE
,   situação          char(1)
);

-- TABELA TB_PROFESSORES
CREATE TABLE TB_PROFESSORES (
    cod_professor    number(5)
        CONSTRAINT  pk_cod_professor  PRIMARY KEY
,   nome_professor   varchar(50)
        CONSTRAINT  nn_nome_professor  NOT NULL
,   rg_professor     number(10)
        CONSTRAINT  nn_rg_professor  NOT NULL
,   data_cadastro    date
        DEFAULT SYSDATE 
);

-- TABELA TB_CURSOS
CREATE TABLE TB_CURSOS(
    cod_curso     number(5)
        CONSTRAINT  pk_cod_curso  PRIMARY KEY
,   nome_curso     varchar2(50)
        CONSTRAINT  nn_nome_curso  NOT NULL
,   valor_curso    number(15,2)
        CONSTRAINT  nn_valor_curso  NOT NULL
,   periodo_curso  varchar2(30)
        CONSTRAINT  nn_periodo_curso  NOT NULL
,   cod_professor number(5)
        CONSTRAINT fk_cod_professor REFERENCES 
            TB_PROFESSORES (cod_professor)
);

-- TABELA TB_MATRICULAS
CREATE TABLE TB_MATRICULAS(
    cod_matricula    number(5)
        CONSTRAINT  pk_cod_matricula  PRIMARY KEY
,   cod_aluno        number(5)
        CONSTRAINT  fk_cod_aluno    REFERENCES
            TB_ALUNOS (cod_aluno)
,   cod_curso       number(5)
        CONSTRAINT  fk_cod_curso    REFERENCES
            TB_CURSOS (cod_curso)
,   cod_unidade     number(5)
        CONSTRAINT  fk_cod_unidade  REFERENCES
            TB_UNIDADES (cod_unidade)
);

commit;

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, R_CONSTRAINT_NAME
,STATUS, SEARCH_CONDITION
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'TB_MATRICULAS';