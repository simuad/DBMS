CREATE TABLE dabe4290.imone (
    imones_kodas            CHAR(9)     NOT NULL,
    pavadinimas             VARCHAR(20) NOT NULL,
    adresas                 VARCHAR(20) NOT NULL,
    telefono_numeris        CHAR(12)    NOT NULL,
    vadovas                 VARCHAR(20) NOT NULL,
    PRIMARY KEY (imones_kodas)
);

CREATE TABLE dabe4290.nuomos_punktas (
    vidinis_numeris         CHAR(12)    NOT NULL,
    adresas                 VARCHAR(20) NOT NULL,
    vadovas                 VARCHAR(20) NOT NULL,
    imone                   CHAR(9)     NOT NULL,
    PRIMARY KEY (vidinis_numeris),
    FOREIGN KEY (imone) REFERENCES dabe4290.imone ON DELETE CASCADE
);

CREATE TABLE dabe4290.kasete (
    inventorinis_numeris	CHAR(12)    NOT NULL,
    pavadinimas             VARCHAR(20) NOT NULL,
    kaina                   SMALLINT    NOT NULL    CHECK (Kaina > 0),
    nuomos_pradzia          DATE,
    nuomos_pabaiga          DATE                    CHECK (nuomos_pabaiga > nuomos_pradzia),
    nuomuotojas             CHAR(11),
    nuomos_punktas          CHAR(11)    NOT NULL,
    PRIMARY KEY (inventorinis_numeris),
    FOREIGN KEY (nuomuotojas) REFERENCES dabe4290.nuomuotojas ON DELETE RESTRICT,
    FOREIGN KEY (nuomos_punktas) REFERENCES dabe4290.nuomos_punktas ON DELETE CASCADE
);

CREATE TABLE dabe4290.nuomuotojas(
    asmens_kodas            CHAR(11)    NOT NULL,
    vardas                  VARCHAR(20) NOT NULL,
    pavarde                 VARCHAR(20) NOT NULL,
    telefono_numeris        CHAR(12)    NOT NULL,
    PRIMARY KEY (asmens_kodas)
);