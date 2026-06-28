BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.hidrante (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('HID-' || lpad(id_objeto::text, 5, '0')) STORED,
    diametro smallint DEFAULT 0,
    diametro_secundario smallint DEFAULT 0,
    fabricante smallint,
    codigo_serie varchar(64),
    estacao varchar(64),
    turno varchar(64),
    vista_publica boolean DEFAULT TRUE,
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_hidrante (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (diametro) REFERENCES catalogo.diametro_hidrante (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (diametro_secundario) REFERENCES catalogo.diametro_secundario_hidrante (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (fabricante) REFERENCES catalogo.fabricante_hidrante (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX ON sistema_agua.hidrante USING gist (geom);

COMMIT;
