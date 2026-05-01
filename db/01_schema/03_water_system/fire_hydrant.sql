-- TABELA: hidrante (Fire Hydrant)
CREATE TABLE IF NOT EXISTS sistema_agua.hidrante (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Hidrante',
    diametro smallint DEFAULT 0,
    diametro_secundario smallint DEFAULT 0,
    fabricante smallint,
    codigo_serie varchar(64),
    estacao varchar(64),
    turno varchar(64),
    vista_publica boolean DEFAULT TRUE,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_hidrante (codigo),
    CONSTRAINT fk_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_hidrante (codigo),
    CONSTRAINT fk_diametro_secundario FOREIGN KEY (diametro_secundario) REFERENCES catalogos.diametro_secundario_hidrante (codigo),
    CONSTRAINT fk_fabricante FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes_hidrante (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
