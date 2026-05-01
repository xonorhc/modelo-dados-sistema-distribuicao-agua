-- TABELA: catalogos.tipo_estacao_tratamento_agua (Water Treatment Plant Type)
CREATE TABLE IF NOT EXISTS catalogos.tipo_estacao_tratamento_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
