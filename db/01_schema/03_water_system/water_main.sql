-- TABELA: sistema_agua.rede_distribuicao (Water Main)
CREATE TABLE IF NOT EXISTS sistema_agua.rede_distribuicao (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('REDE-DISTRIBUICAO-' || lpad(id_objeto::text, 5, '0')) STORED,
    agua smallint,
    material smallint,
    diametro smallint,
    profundidade numeric(3, 2),
    comprimento_medido numeric(8, 2),
    fio_rastreador boolean DEFAULT FALSE,
    CONSTRAINT fk_rede_distribuicao_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_rede_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_rede_distribuicao_agua FOREIGN KEY (agua) REFERENCES catalogos.tipo_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_rede_distribuicao_material FOREIGN KEY (material) REFERENCES catalogos.tipo_material_rede_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_rede_distribuicao_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_rede_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT chk_rede_distribuicao_profundidade_limite CHECK (profundidade BETWEEN 0 AND 5),
    CONSTRAINT chk_rede_distribuicao_comprimento_medido_limite CHECK (comprimento_medido > 0)
)
INHERITS (
    sistema_agua.ativo_linear
);

CREATE INDEX idx_rede_distribuicao_geom ON sistema_agua.rede_distribuicao USING gist (geom)
