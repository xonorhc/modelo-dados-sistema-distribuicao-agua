-- TABELA: sistema_agua.ativo_linear (Linear Asset)
CREATE TABLE IF NOT EXISTS sistema_agua.ativo_linear (
    latitude numeric(9, 7) GENERATED ALWAYS AS (ST_Y(ST_POINTONSURFACE(ST_TRANSFORM(geometry, 4674)))) STORED,
    longitude numeric(9, 7) GENERATED ALWAYS AS (ST_X(ST_POINTONSURFACE(ST_TRANSFORM(geometry, 4674)))) STORED,
    geom GEOMETRY (LINESTRING, 31981) NOT NULL,
    comprimento numeric GENERATED ALWAYS AS ((ST_LENGTH(geom))::numeric(8, 2)) STORED
)
INHERITS (
    sistema_agua.ativo
);
