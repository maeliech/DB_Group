-- Généré par Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   à :        2022-11-20 15:19:04 KST
--   site :      Oracle Database 11g
--   type :      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE billing_detail (
    id              INTEGER NOT NULL,
    ammount         NUMBER(2),
    description     CLOB,
    licence_bill_id INTEGER NOT NULL
);

ALTER TABLE billing_detail ADD CONSTRAINT billing_detail_pk PRIMARY KEY ( id );

CREATE TABLE client (
    id                        INTEGER NOT NULL,
    name                      VARCHAR2(120),
    address                   VARCHAR2(255),
    client_marketing_stage_id INTEGER NOT NULL,
    country_id                INTEGER NOT NULL,
    language_id               INTEGER NOT NULL
);

ALTER TABLE client ADD CONSTRAINT client_pk PRIMARY KEY ( id );

CREATE TABLE client_marketing_stage (
    id   INTEGER NOT NULL,
    name VARCHAR2(20)
);

ALTER TABLE client_marketing_stage ADD CONSTRAINT client_marketing_stage_pk PRIMARY KEY ( id );

CREATE TABLE client_tags (
    client_id INTEGER NOT NULL,
    tags_id   INTEGER NOT NULL
);

CREATE TABLE contact (
    id          INTEGER NOT NULL,
    name        VARCHAR2(20),
    role        VARCHAR2(50),
    client_id   INTEGER NOT NULL,
    language_id INTEGER NOT NULL
);

ALTER TABLE contact ADD CONSTRAINT contact_pk PRIMARY KEY ( id );

CREATE TABLE country (
    id          INTEGER NOT NULL,
    name        VARCHAR2(20),
    language_id INTEGER NOT NULL
);

ALTER TABLE country ADD CONSTRAINT country_pk PRIMARY KEY ( id );

CREATE TABLE event_type (
    id   INTEGER NOT NULL,
    name VARCHAR2(20)
);

ALTER TABLE event_type ADD CONSTRAINT event_type_pk PRIMARY KEY ( id );

CREATE TABLE events (
    id            INTEGER NOT NULL,
    description   CLOB,
    "START"       DATE,
    end           DATE,
    contact_id    INTEGER NOT NULL,
    user_id       INTEGER NOT NULL,
    event_type_id INTEGER NOT NULL
);

ALTER TABLE events ADD CONSTRAINT events_pk PRIMARY KEY ( id );

CREATE TABLE language (
    id   INTEGER NOT NULL,
    name VARCHAR2(20)
);

ALTER TABLE language ADD CONSTRAINT language_pk PRIMARY KEY ( id );

CREATE TABLE licence_bill (
    id                       INTEGER NOT NULL,
    "START"                  DATE,
    end                      DATE,
    billing_amount           NUMBER(2),
    previous_billing_ammount NUMBER(2),
    ispaid                   CHAR(1),
    licence_folder_id        INTEGER NOT NULL,
    currency                 VARCHAR2 
--  ERROR: VARCHAR2 size not specified 

);

ALTER TABLE licence_bill ADD CONSTRAINT licence_bill_pk PRIMARY KEY ( id );

CREATE TABLE licence_folder (
    id                INTEGER NOT NULL,
    billing_quarter   VARCHAR2(20),
    billing_frequency INTEGER,
    client_id         INTEGER NOT NULL,
    software_id       INTEGER NOT NULL
);

ALTER TABLE licence_folder ADD CONSTRAINT licence_folder_pk PRIMARY KEY ( id );

CREATE TABLE software (
    id         INTEGER NOT NULL,
    name       VARCHAR2(20),
    isonmarket CHAR(1)
);

ALTER TABLE software ADD CONSTRAINT software_pk PRIMARY KEY ( id );

CREATE TABLE tags (
    id   INTEGER NOT NULL,
    name VARCHAR2(255)
);

ALTER TABLE tags ADD CONSTRAINT tags_pk PRIMARY KEY ( id );

CREATE TABLE "USER" (
    id         INTEGER NOT NULL,
    "NAME "    VARCHAR2(20),
    login_id   VARCHAR2(255),
    pass       VARCHAR2(255),
    department VARCHAR2 
--  ERROR: VARCHAR2 size not specified 

);

ALTER TABLE "USER" ADD CONSTRAINT user_pk PRIMARY KEY ( id );

ALTER TABLE billing_detail
    ADD CONSTRAINT billing_detail_licence_bill_fk FOREIGN KEY ( licence_bill_id )
        REFERENCES licence_bill ( id );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE client
    ADD CONSTRAINT client_client_marketing_stage_fk FOREIGN KEY ( client_marketing_stage_id )
        REFERENCES client_marketing_stage ( id );

ALTER TABLE client
    ADD CONSTRAINT client_country_fk FOREIGN KEY ( country_id )
        REFERENCES country ( id );

ALTER TABLE client
    ADD CONSTRAINT client_language_fk FOREIGN KEY ( language_id )
        REFERENCES language ( id );

ALTER TABLE client_tags
    ADD CONSTRAINT client_tags_client_fk FOREIGN KEY ( client_id )
        REFERENCES client ( id );

ALTER TABLE client_tags
    ADD CONSTRAINT client_tags_tags_fk FOREIGN KEY ( tags_id )
        REFERENCES tags ( id );

ALTER TABLE contact
    ADD CONSTRAINT contact_client_fk FOREIGN KEY ( client_id )
        REFERENCES client ( id );

ALTER TABLE contact
    ADD CONSTRAINT contact_language_fk FOREIGN KEY ( language_id )
        REFERENCES language ( id );

ALTER TABLE country
    ADD CONSTRAINT country_language_fk FOREIGN KEY ( language_id )
        REFERENCES language ( id );

ALTER TABLE events
    ADD CONSTRAINT events_contact_fk FOREIGN KEY ( contact_id )
        REFERENCES contact ( id );

ALTER TABLE events
    ADD CONSTRAINT events_event_type_fk FOREIGN KEY ( event_type_id )
        REFERENCES event_type ( id );

ALTER TABLE events
    ADD CONSTRAINT events_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE licence_bill
    ADD CONSTRAINT licence_bill_licence_folder_fk FOREIGN KEY ( licence_folder_id )
        REFERENCES licence_folder ( id );

ALTER TABLE licence_folder
    ADD CONSTRAINT licence_folder_client_fk FOREIGN KEY ( client_id )
        REFERENCES client ( id );

ALTER TABLE licence_folder
    ADD CONSTRAINT licence_folder_software_fk FOREIGN KEY ( software_id )
        REFERENCES software ( id );



-- Rapport récapitulatif d'Oracle SQL Developer Data Modeler : 
-- 
-- CREATE TABLE                            14
-- CREATE INDEX                             0
-- ALTER TABLE                             28
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   3
-- WARNINGS                                 0
