-- FUNCTION: usuario_criacao
CREATE OR REPLACE FUNCTION sistema_agua.usuario_criacao()
    RETURNS TRIGGER
    LANGUAGE 'plpgsql'
    COST 100 VOLATILE NOT LEAKPROOF
    AS $body$
BEGIN
    NEW.usuario_criacao := CURRENT_USER;
    NEW.data_criacao := CURRENT_TIMESTAMP;
    RETURN new;
END;
$body$;

-- FUNCTION: usuario_atualizacao
CREATE OR REPLACE FUNCTION sistema_agua.usuario_atualizacao()
    RETURNS TRIGGER
    LANGUAGE 'plpgsql'
    COST 100 VOLATILE NOT LEAKPROOF
    AS $body$
BEGIN
    NEW.usuario_atualizacao := CURRENT_USER;
    NEW.data_atualizacao := CURRENT_TIMESTAMP;
    RETURN new;
END;
$body$;
