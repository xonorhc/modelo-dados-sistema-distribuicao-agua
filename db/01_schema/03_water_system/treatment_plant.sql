-- TABELA: eta (Treatment Plant / Estação de Tratamento de Água)
CREATE TABLE IF NOT EXISTS sistema_agua.eta (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'ETA',
    capacidade_outorgada numeric,
    capacidade_nominal numeric,
    vazao_media_diaria numeric,
    tipo_filtragem smallint,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_estacao_tratamento_agua (codigo),
    CONSTRAINT fk_tipo_filtragem FOREIGN KEY (tipo_filtragem) REFERENCES catalogos.tipo_filtragem_agua (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
