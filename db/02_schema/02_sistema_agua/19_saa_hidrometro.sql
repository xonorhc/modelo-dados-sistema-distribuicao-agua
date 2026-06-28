BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.hidrometro (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('HD-' || lpad(id_objeto::text, 5, '0')) STORED,
    matricula varchar(64),
    diametro smallint,
    fabricante smallint,
    codigo_serie varchar(64),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_ligacao (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (diametro) REFERENCES catalogo.diametro_hidrometro (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (fabricante) REFERENCES catalogo.fabricante (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX ON sistema_agua.hidrometro USING gist (geom);

COMMIT;
