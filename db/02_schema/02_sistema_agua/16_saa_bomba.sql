BEGIN;

CREATE TABLE IF NOT EXISTS sistema_agua.bomba (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('BA-' || lpad(id_objeto::text, 5, '0')) STORED,
    diametro_succao smallint,
    diametro_recalque smallint,
    pressao_operacao numeric,
    vazao_operacao numeric,
    fabricante smallint,
    codigo_serie varchar(64),
    modelo smallint,
    info_modelo varchar(64),
    operacional boolean DEFAULT TRUE,
    FOREIGN KEY (tipo_ativo) REFERENCES catalogo.tipo_bomba (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (diametro_succao) REFERENCES catalogo.diametro_bomba (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (diametro_recalque) REFERENCES catalogo.diametro_bomba (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (modelo) REFERENCES catalogo.tipo_modelo_bomba (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (fabricante) REFERENCES catalogo.fabricante (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX ON sistema_agua.bomba USING gist (geom);

COMMIT;
