-- TABELA: sistema_agua.bomba (Pump / Conjunto Motobomba)
CREATE TABLE IF NOT EXISTS sistema_agua.bomba (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Conjunto Motobomba',
    diametro_succao smallint,
    diametro_recalque smallint,
    pressao_operacao numeric,
    fabricante varchar(64),
    codigo_serie varchar(64),
    modelo smallint,
    info_modelo varchar(64),
    operacional boolean DEFAULT TRUE,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_bomba (codigo),
    CONSTRAINT fk_diametro_succao FOREIGN KEY (diametro_succao) REFERENCES catalogos.diametro_bomba (codigo),
    CONSTRAINT fk_diametro_recalque FOREIGN KEY (diametro_recalque) REFERENCES catalogos.diametro_bomba (codigo),
    CONSTRAINT fk_modelo FOREIGN KEY (modelo) REFERENCES catalogos.tipo_modelo_bomba (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
