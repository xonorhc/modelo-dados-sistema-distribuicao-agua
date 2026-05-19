-- TABELA: sistema_agua.estacao_tratamento (Treatment Plant)
CREATE TABLE IF NOT EXISTS sistema_agua.estacao_tratamento (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('ETA-' || lpad(id_objeto::text, 5, '0')) STORED,
    capacidade_outorgada numeric,
    capacidade_nominal numeric,
    vazao_media_diaria numeric,
    tipo_filtragem smallint,
    CONSTRAINT fk_estacao_tratamento_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_estacao_tratamento_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_estacao_tratamento_tipo_filtragem FOREIGN KEY (tipo_filtragem) REFERENCES catalogos.tipo_filtragem_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT chk_estacao_tratamento_capacidade_outorgada_limite CHECK (capacidade_outorgada > 0),
    CONSTRAINT chk_estacao_tratamento_capacidade_nominal_limite CHECK (capacidade_nominal > 0),
    CONSTRAINT chk_estacao_tratamento_vazao_media_diaria_limite CHECK (vazao_media_diaria > 0)
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_estacao_tratamento_geom ON sistema_agua.estacao_tratamento USING gist (geom);

