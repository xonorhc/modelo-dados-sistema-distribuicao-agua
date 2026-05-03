-- TABELA: sistema_agua.ativo_poligonal (Polygonal Asset)
CREATE TABLE IF NOT EXISTS sistema_agua.ativo_poligonal (
    latitude numeric(9, 7) GENERATED ALWAYS AS (ST_Y(ST_CENTROID(ST_TRANSFORM(geometry, 4674)))) STORED,
    longitude numeric(9, 7) GENERATED ALWAYS AS (ST_X(ST_CENTROID(ST_TRANSFORM(geometry, 4674)))) STORED,
    geom GEOMETRY (POLYGON, 31981) NOT NULL,
    area numeric GENERATED ALWAYS AS ((ST_AREA(geom))::numeric(8, 2)) STORED,
    perimetro numeric GENERATED ALWAYS AS ((ST_PERIMETER(geom))::numeric(8, 2)) STORED
)
INHERITS (
    sistema_agua.ativo
);
