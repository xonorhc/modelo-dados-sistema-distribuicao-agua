BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.valvula_pressao (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('VPA-' || lpad(id_objeto::text, 5, '0')) STORED,
    diametro smallint,
    pressao_nominal numeric,
    fabricante smallint,
    codigo_serie varchar(64),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_valvula_pressao (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (diametro) REFERENCES catalogo.diametro_global (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (fabricante) REFERENCES catalogo.fabricante (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX ON sistema_agua.valvula_pressao USING gist (geom);

COMMIT;
