-- TABELA: sistema_agua.poco (Well)
CREATE TABLE IF NOT EXISTS sistema_agua.poco (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('LIMITE-PROD-' || lpad(id_objeto::text, 5, '0')) STORED,
    tipo_filtragem smallint,
    profundidade_perfuracao numeric,
    profundidade_aquifero numeric,
    vazao_outorgada numeric,
    vazao_disponivel numeric,
    CONSTRAINT fk_poco_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_poco (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_poco_tipo_filtragem FOREIGN KEY (tipo_filtragem) REFERENCES catalogos.tipo_filtragem_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT chk_poco_profundidade_perfuracao_limite CHECK (profundidade_perfuracao > 0),
    CONSTRAINT chk_poco_profundidade_aquifero_limite CHECK (profundidade_aquifero > 0),
    CONSTRAINT chk_poco_vazao_outorgada_limite CHECK (vazao_outorgada > 0),
    CONSTRAINT chk_poco_vazao_disponivel_limite CHECK (vazao_disponivel > 0)
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_poco_geom ON sistema_agua.poco USING gist (geom);

