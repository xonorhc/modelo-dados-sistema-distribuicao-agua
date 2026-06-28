BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.estacao_tratamento (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('ETA-' || lpad(id_objeto::text, 5, '0')) STORED,
    capacidade_outorgada numeric,
    capacidade_nominal numeric,
    vazao_media_diaria numeric,
    tipo_filtragem smallint,
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_estacao_tratamento_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (tipo_filtragem) REFERENCES catalogo.tipo_filtragem_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CHECK (capacidade_outorgada > 0),
    CHECK (capacidade_nominal > 0),
    CHECK (vazao_media_diaria > 0)
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX ON sistema_agua.estacao_tratamento USING gist (geom);

COMMIT;
