BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.descarga (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('DA-' || lpad(id_objeto::text, 5, '0')) STORED,
    fabricante smallint,
    codigo_serie varchar(64),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_descarga (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (fabricante) REFERENCES catalogo.fabricante (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX ON sistema_agua.descarga USING gist (geom);

COMMIT;
