BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.tubo_camisa (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('TCA-' || lpad(id_objeto::text, 5, '0')) STORED,
    enchimento smallint,
    diametro smallint,
    comprimento_medido numeric(8, 2),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_encamisamento (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (diametro) REFERENCES catalogo.diametro_tubo_camisa (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (enchimento) REFERENCES catalogo.tipo_enchimento_tubo_camisa (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CHECK (comprimento_medido > 0)
)
INHERITS (
    sistema_agua.ativo_linear
);

CREATE INDEX ON sistema_agua.tubo_camisa USING gist (geom);

COMMIT;
