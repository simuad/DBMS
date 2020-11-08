/* Nepaimtų kasečių sąrašas */

CREATE VIEW NepaimtosKasetes AS
    SELECT pavadinimas, kaina, nuomos_punktas
    FROM dabe4290.kasete
    WHERE nuomuotojas IS NULL;

/* Paimtos kasetės ir jų nuomininkai */

CREATE VIEW PaimtosKasetės AS
    SELECT A.pavadinimas, B.vardas, B.pavarde
    FROM dabe4290.kasete AS A, dabe4290.nuomuotojas AS B
    WHERE A.nuomuotojas = B.asmens_kodas;

/* Nuomininkai, kurie vėluoja grąžinti kasetes */

CREATE VIEW VeluojantysNuomininkai AS
    SELECT B.vardas, B.pavarde, B.telefono_numeris
    FROM dabe4290 as A, dabe4290.nuomuotojas AS B
    WHERE A.nuomuotojas = B.asmens_kodas AND CURRENT_DATE > nuomos_pabaiga
    GROUP BY B.varde, B.pavarde;