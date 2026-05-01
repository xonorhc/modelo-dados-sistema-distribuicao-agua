-- TABELA: sistema_agua.ramal_agua (Service)
CREATE TABLE IF NOT EXISTS sistema_agua.ramal_agua (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Ramal Predial de Água',
    diametro smallint,
    material smallint,
    agua smallint,
    profundidade numeric(3, 2),
    comprimento_medido numeric(8, 2),
    fio_rastreador boolean DEFAULT FALSE,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_ramal_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_agua FOREIGN KEY (agua) REFERENCES catalogos.tipo_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_material FOREIGN KEY (material) REFERENCES catalogos.tipo_material_ramal_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_ramal_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT check_profundidade_limite CHECK (profundidade BETWEEN 0 AND 5),
    CONSTRAINT check_comprimento_medido_limite CHECK (comprimento_medido > 0)
)
INHERITS (
    sistema_agua.ativo_linear
);
