BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.ativo_poligonal (
    latitude numeric(9, 7) GENERATED ALWAYS AS (ST_Y (ST_CENTROID (geom))) STORED,
    longitude numeric(10, 7) GENERATED ALWAYS AS (ST_X (ST_CENTROID (geom))) STORED,
    geom geometry(polygon, 4674),
    area numeric GENERATED ALWAYS AS (round(ST_AREA (geom::geography)::numeric, 2)) STORED,
    perimetro numeric GENERATED ALWAYS AS (round(ST_PERIMETER (geom::geography)::numeric, 2)) STORED
)
INHERITS (
    sistema_agua.ativo
);

CREATE INDEX ON sistema_agua.ativo_poligonal USING gist (geom);
CREATE INDEX ON sistema_agua.ativo_poligonal (area);
CREATE INDEX ON sistema_agua.ativo_poligonal (perimetro);

COMMIT;
