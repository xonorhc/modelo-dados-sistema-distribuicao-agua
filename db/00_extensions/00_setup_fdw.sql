CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS postgres_fdw;

CREATE SERVER servidor_cuiaba
FOREIGN DATA WRAPPER postgres_fdw
OPTIONS (host 'db_cuiaba', port '5432', dbname 'cuiaba');

CREATE USER MAPPING FOR postgres
SERVER servidor_cuiaba
OPTIONS (user 'postgres', password 'senha_cuiaba');

CREATE SCHEMA IF NOT EXISTS legado;

IMPORT FOREIGN SCHEMA cadastro_tecnico 
FROM SERVER servidor_cuiaba 
INTO legado;

COMMENT ON SCHEMA legado IS 'Acesso direto às tabelas do banco Cuiabá legado';
