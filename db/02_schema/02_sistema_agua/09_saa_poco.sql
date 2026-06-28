BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.poco (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('PT-' || lpad(id_objeto::text, 5, '0')) STORED,
    tipo_filtragem smallint,
    profundidade_perfuracao numeric,
    profundidade_aquifero numeric,
    vazao_outorgada numeric,
    vazao_disponivel numeric,
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_poco (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (tipo_filtragem) REFERENCES catalogo.tipo_filtragem_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CHECK (profundidade_perfuracao > 0),
    CHECK (profundidade_aquifero > 0),
    CHECK (vazao_outorgada > 0),
    CHECK (vazao_disponivel > 0)
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX ON sistema_agua.poco USING gist (geom);

COMMIT;
