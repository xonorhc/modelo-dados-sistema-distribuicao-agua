-- TABELA: sistema_agua.ativo_linear (Linear Asset)
CREATE TABLE IF NOT EXISTS sistema_agua.ativo_linear (
    geom geometry(linestring, 4674),
    comprimento numeric GENERATED ALWAYS AS ((ST_LENGTH (geom))::numeric(8, 2)) STORED
)
INHERITS (
    sistema_agua.ativo
);
