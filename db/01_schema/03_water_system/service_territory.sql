-- TABELA: sistema_agua.territorio_atendimento (Service Territory)
CREATE TABLE IF NOT EXISTS sistema_agua.territorio_atendimento (
    id_objeto bigserial,
    nome varchar(64),
    geom geometry(polygon, 4674),
    area numeric GENERATED ALWAYS AS ((ST_AREA (geom))::numeric(8, 2)) STORED,
    perimetro numeric GENERATED ALWAYS AS ((ST_PERIMETER (geom))::numeric(8, 2)) STORED,
    PRIMARY KEY (id_objeto)
);
