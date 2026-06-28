BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.estacao_producao (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('EPA-' || lpad(id_objeto::text, 5, '0')) STORED,
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_unidade_producao (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_poligonal
);

CREATE INDEX ON sistema_agua.estacao_producao USING gist (geom);

COMMIT;
