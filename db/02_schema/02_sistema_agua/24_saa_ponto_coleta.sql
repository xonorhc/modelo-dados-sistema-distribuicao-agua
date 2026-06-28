BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.ponto_coleta (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('PCA-' || lpad(id_objeto::text, 5, '0')) STORED,
    localizacao_estacao varchar(255),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_amostra (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX ON sistema_agua.ponto_coleta USING gist (geom);

COMMIT;
