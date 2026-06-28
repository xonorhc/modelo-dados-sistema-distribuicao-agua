BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.estacao_reservacao (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('ERA-' || lpad(id_objeto::text, 5, '0')) STORED,
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_unidade_reservacao (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_poligonal
);

CREATE INDEX ON sistema_agua.estacao_reservacao USING gist (geom);

COMMIT;
