-- TABELA: sistema_agua.hidrante (Fire Hydrant)
CREATE TABLE IF NOT EXISTS sistema_agua.hidrante (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('HIDRANTE-' || lpad(id_objeto::text, 5, '0')) STORED,
    diametro smallint DEFAULT 0,
    diametro_secundario smallint DEFAULT 0,
    fabricante smallint,
    codigo_serie varchar(64),
    estacao varchar(64),
    turno varchar(64),
    vista_publica boolean DEFAULT TRUE,
    CONSTRAINT fk_hidrante_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_hidrante (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_hidrante_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_hidrante (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_hidrante_diametro_secundario FOREIGN KEY (diametro_secundario) REFERENCES catalogos.diametro_secundario_hidrante (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_hidrante_fabricante FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes_hidrante (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_hidrante_geom ON sistema_agua.hidrante USING gist (geom);

