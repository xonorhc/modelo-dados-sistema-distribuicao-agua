-- TABELA: ativo_pontual (Puntual Asset)
CREATE TABLE IF NOT EXISTS sistema_agua.ativo_pontual (
    latitude numeric(9, 7) GENERATED ALWAYS AS (ST_Y(ST_TRANSFORM(geometry, 4674))) STORED,
    longitude numeric(9, 7) GENERATED ALWAYS AS (ST_X(ST_TRANSFORM(geometry, 4674))) STORED,
    geom GEOMETRY (POINT, 31981) NOT NULL,
    rotacao_simbolo smallint DEFAULT 0,
    CONSTRAINT check_rotacao_simbolo_limite CHECK (rotacao_simbolo BETWEEN 0 AND 360)
)
INHERITS (
    sistema_agua.ativo
);
