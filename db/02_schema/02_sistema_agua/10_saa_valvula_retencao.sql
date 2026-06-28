BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.valvula_retencao (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('VRA-' || lpad(id_objeto::text, 5, '0')) STORED,
    fabricante smallint,
    codigo_serie varchar(64),
    bloqueado boolean DEFAULT FALSE,
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_valvula_retencao (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (fabricante) REFERENCES catalogo.fabricante (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX ON sistema_agua.valvula_retencao USING gist (geom);

COMMIT;
