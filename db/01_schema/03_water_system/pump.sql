-- TABELA: sistema_agua.bomba (Pump / Conjunto Motobomba)
CREATE TABLE IF NOT EXISTS sistema_agua.bomba (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('BOMBA-' || lpad(id_objeto::text, 5, '0')) STORED,
    diametro_succao smallint,
    diametro_recalque smallint,
    pressao_operacao numeric,
    vazao_operacao numeric,
    fabricante smallint,
    codigo_serie varchar(64),
    modelo smallint,
    info_modelo varchar(64),
    operacional boolean DEFAULT TRUE,
    CONSTRAINT fk_bomba_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_bomba (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_bomba_diametro_succao FOREIGN KEY (diametro_succao) REFERENCES catalogos.diametro_bomba (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_bomba_diametro_recalque FOREIGN KEY (diametro_recalque) REFERENCES catalogos.diametro_bomba (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_bomba_modelo FOREIGN KEY (modelo) REFERENCES catalogos.tipo_modelo_bomba (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_bomba_fabricante FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_bomba_geom ON sistema_agua.bomba USING gist (geom);

