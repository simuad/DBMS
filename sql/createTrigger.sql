/* Dalykinė taisyklė, neleidžianti išnuomuoti kasetę žmogui, kuris vėluoja grąžinti kasetes */

CREATE FUNCTION veluojanciosKasetes() RETURNS "trigger" AS $$
    BEGIN
        IF (SELECT COUNT (*)
            FROM dabe4290.kasete
            WHERE nuomuotojas = NEW.asmens_kodas AND CURRENT_DATE > nuomos_pabaiga) > 0
            THEN RAISE EXCEPTION 'Nuomuotojas vėluoja grąžinti kasetes';
        END IF;
        RETURN NEW;
	END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER nenuomuotiVeluojanciam
    BEFORE INSERT OR UPDATE ON dabe4290.kasete
    FOR EACH ROW EXECUTE PROCEDURE;

/* Dalykinė taisyklė, neleidžianti išnuomuoti daugiau nei penkias kasetes */

CREATE FUNCTION kasetesMax() RETURNS "trigger" AS $$
DECLARE limitas CONSTANT SMALLINT := 5;
    BEGIN
        IF (SELECT COUNT (*)
            FROM dabe4290.kasete
            WHERE nuomuotojas = NEW.asmens_kodas) > limitas
            THEN RAISE EXCEPTION 'Nuomuotojas viršyja numatytą kasečių limitą';
        END IF;
        RETURN NEW;
	END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER kaseciuLimitas
    BEFORE INSERT OR UPDATE ON dabe4290.kasete
    FOR EACH ROW EXECUTE PROCEDURE;