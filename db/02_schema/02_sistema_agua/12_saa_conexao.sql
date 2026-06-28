BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.conexao (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('CA-' || lpad(id_objeto::text, 5, '0')) STORED,
    diametro smallint,
    diametro_secundario smallint,
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_conexao (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (diametro) REFERENCES catalogo.diametro_rede_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (diametro_secundario) REFERENCES catalogo.diametro_rede_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX ON sistema_agua.conexao USING gist (geom);

COMMIT;
