BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.ramal_predial (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('RPA-' || lpad(id_objeto::text, 5, '0')) STORED,
    diametro smallint,
    material smallint,
    agua smallint,
    profundidade numeric(3, 2),
    comprimento_medido numeric(8, 2),
    fio_rastreador boolean DEFAULT FALSE,
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_ramal_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (agua) REFERENCES catalogo.qualidade_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (material) REFERENCES catalogo.tipo_material_ramal_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (diametro) REFERENCES catalogo.diametro_ramal_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CHECK (profundidade BETWEEN 0 AND 5),
    CHECK (comprimento_medido > 0)
)
INHERITS (
    sistema_agua.ativo_linear
);

CREATE INDEX ON sistema_agua.ramal_predial USING gist (geom);

COMMIT;
