-- GLOBAL TEMPORARY TABLE

CREATE GLOBAL TEMPORARY TABLE SUPPLIERS( 
    SUPPLIER_ID   NUMERIC(10)   NOT NULL
,   SUPLIER_NAME  VARCHAR2(50)  NOT NULL
,   CONTACT_NAME  VARCHAR2(50)  
);

SELECT * FROM SUPPLIERS;

INSERT INTO suppliers
VALUES (1,'Clayton','teste');

commit;
ROLLBACK;

-- conceder privilégios
-- GRANT 

-- revogar privilégio
-- REVOKE

-- grupo de privilégios
-- ROLE


