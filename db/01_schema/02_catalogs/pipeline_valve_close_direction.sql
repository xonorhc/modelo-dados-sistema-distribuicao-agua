-- TABELA: catalogos.direcao_fechamento_valvula (Pipeline Valve Close Direction)
CREATE TABLE IF NOT EXISTS catalogos.direcao_fechamento_valvula (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
