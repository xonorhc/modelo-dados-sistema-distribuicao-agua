-- TABELA: sistema_agua.territorio_atendimento (Service Territory)
CREATE TABLE IF NOT EXISTS sistema_agua.territorio_atendimento (
    id_objeto bigserial,
    nome varchar(64),
    geom geometry(polygon, 4674),
    area numeric GENERATED ALWAYS AS (round(ST_AREA (geom::geography)::numeric, 2)) STORED,
    perimetro numeric GENERATED ALWAYS AS (round(ST_PERIMETER (geom::geography)::numeric, 2)) STORED,
    PRIMARY KEY (id_objeto)
);

CREATE INDEX idx_territorio_atendimento_geom ON sistema_agua.territorio_atendimento USING gist (geom);

