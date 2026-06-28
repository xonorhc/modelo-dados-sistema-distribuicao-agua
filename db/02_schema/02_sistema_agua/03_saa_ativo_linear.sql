BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.ativo_linear (
    latitude numeric(9, 7) GENERATED ALWAYS AS (ST_Y (ST_POINTONSURFACE (geom))) STORED,
    longitude numeric(10, 7) GENERATED ALWAYS AS (ST_X (ST_POINTONSURFACE (geom))) STORED,
    geom geometry(linestring, 4674) NOT NULL,
    comprimento numeric GENERATED ALWAYS AS (round(ST_LENGTH (geom::geography)::numeric, 2)) STORED
)
INHERITS (
    sistema_agua.ativo
);

CREATE INDEX ON sistema_agua.ativo_linear USING gist (geom);
CREATE INDEX ON sistema_agua.ativo_linear (comprimento);

COMMIT;
