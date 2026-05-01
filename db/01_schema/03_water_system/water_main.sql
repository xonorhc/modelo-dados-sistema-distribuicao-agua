-- TABELA: sistema_agua.rede_agua (Water Main)
CREATE TABLE IF NOT EXISTS sistema_agua.rede_agua (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Rede de Distribuição de Água',
    agua smallint,
    material smallint,
    diametro smallint,
    profundidade numeric(3, 2),
    comprimento_medido numeric(8, 2),
    fio_rastreador boolean DEFAULT FALSE,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_rede_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_agua FOREIGN KEY (agua) REFERENCES catalogos.tipo_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_material FOREIGN KEY (material) REFERENCES catalogos.tipo_material_rede_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_rede_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT check_profundidade_limite CHECK (profundidade BETWEEN 0 AND 5),
    CONSTRAINT check_comprimento_medido_limite CHECK (comprimento_medido > 0)
)
INHERITS (
    sistema_agua.ativo_linear
);
