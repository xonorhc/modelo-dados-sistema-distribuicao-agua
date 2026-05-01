-- TABELA: sistema_agua.ativo_poligonal (Polygonal Asset)
CREATE TABLE IF NOT EXISTS sistema_agua.ativo_poligonal (
    geom geometry(polygon, 4674),
    area numeric GENERATED ALWAYS AS ((ST_AREA (geom))::numeric(8, 2)) STORED,
    perimetro numeric GENERATED ALWAYS AS ((ST_PERIMETER (geom))::numeric(8, 2)) STORED
)
INHERITS (
    sistema_agua.ativo
);
