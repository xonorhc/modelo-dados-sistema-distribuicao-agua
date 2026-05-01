-- TABELA: poco_artesiano (Well)
CREATE TABLE IF NOT EXISTS sistema_agua.poco (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Poço',
    tipo_filtragem smallint,
    profundidade_perfuracao numeric,
    profundidade_aquifero numeric,
    vazao_outorgada numeric,
    vazao_disponivel numeric,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_poco (codigo),
    CONSTRAINT fk_tipo_filtragem FOREIGN KEY (tipo_filtragem) REFERENCES catalogos.tipo_filtragem_agua (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
