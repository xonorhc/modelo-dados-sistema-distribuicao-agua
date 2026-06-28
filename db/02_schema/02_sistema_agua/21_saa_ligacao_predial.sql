BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.ligacao_predial (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('LPA-' || lpad(id_objeto::text, 5, '0')) STORED,
    matricula varchar(64),
    cliente_critico boolean DEFAULT FALSE,
    hidrometro_instalado boolean DEFAULT FALSE,
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_ligacao (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX ON sistema_agua.ligacao_predial USING gist (geom);

COMMIT;
