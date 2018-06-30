-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-06-30 15:00:05.033

-- tables
-- Table: APODERADOS
CREATE TABLE APODERADOS (
    IdApoderado int  NOT NULL,
    NomApoderado varchar(40)  NOT NULL,
    ApeApoderado varchar(40)  NOT NULL,
    DniApoderado varchar(8)  NOT NULL,
    LuProApoderado varchar(40)  NOT NULL,
    TelfApoderado varchar(9)  NOT NULL,
    NuCuentaBanApoderado varchar(40)  NOT NULL,
    CONSTRAINT APODERADOS_pk PRIMARY KEY (IdApoderado)
);

-- Table: HIJO
CREATE TABLE HIJO (
    idHijo int  NOT NULL,
    NomHijo varchar(40)  NOT NULL,
    ApeHijo varchar(40)  NOT NULL,
    DniHijo varchar(8)  NOT NULL,
    APODERADOS_IdApoderado int  NOT NULL,
    CONSTRAINT HIJO_pk PRIMARY KEY (idHijo)
);

-- Table: MATRICULAS
CREATE TABLE MATRICULAS (
    idMatricula int  NOT NULL,
    FecIngreso date  NOT NULL,
    FecSalida date  NOT NULL,
    APODERADO_IdApoderado int  NOT NULL,
    HIJO_idHijo int  NOT NULL,
    CONSTRAINT MATRICULAS_pk PRIMARY KEY (idMatricula)
);

-- Table: MENUS
CREATE TABLE MENUS (
    idMenu int  NOT NULL,
    NumMenu varchar  NOT NULL,
    NomMenu varchar(40)  NOT NULL,
    HIJO_idHijo int  NOT NULL,
    CONSTRAINT MENUS_pk PRIMARY KEY (idMenu)
);

-- foreign keys
-- Reference: HIJO_APODERADOS (table: HIJO)
ALTER TABLE HIJO ADD CONSTRAINT HIJO_APODERADOS
    FOREIGN KEY (APODERADOS_IdApoderado)
    REFERENCES APODERADOS (IdApoderado)  

;

-- Reference: MATRICULAS_APODERADO (table: MATRICULAS)
ALTER TABLE MATRICULAS ADD CONSTRAINT MATRICULAS_APODERADO
    FOREIGN KEY (APODERADO_IdApoderado)
    REFERENCES APODERADOS (IdApoderado)  
 
;

-- Reference: MATRICULAS_HIJO (table: MATRICULAS)
ALTER TABLE MATRICULAS ADD CONSTRAINT MATRICULAS_HIJO
    FOREIGN KEY (HIJO_idHijo)
    REFERENCES HIJO (idHijo)  

;

-- Reference: MENUS_HIJO (table: MENUS)
ALTER TABLE MENUS ADD CONSTRAINT MENUS_HIJO
    FOREIGN KEY (HIJO_idHijo)
    REFERENCES HIJO (idHijo)  

;

-- End of file.

