-- TABELA: sistema_agua.ativo_pontual (Puntual Asset)
CREATE TABLE IF NOT EXISTS sistema_agua.ativo_pontual (
    latitude numeric(9, 7) GENERATED ALWAYS AS (ST_Y (geom)) STORED,
    longitude numeric(10, 7) GENERATED ALWAYS AS (ST_X (geom)) STORED,
    geom geometry(point, 4674),
    rotacao_simbolo smallint DEFAULT 0,
    CONSTRAINT chk_ativo_pontual_rotacao_simbolo_limite CHECK (rotacao_simbolo BETWEEN 0 AND 359)
)
INHERITS (
    sistema_agua.ativo
);

CREATE INDEX ON sistema_agua.ativo_pontual USING gist (geom);

