-- TABELA: catalogos.posicao_valvula (Pipeline Valve Status)
CREATE TABLE IF NOT EXISTS catalogos.posicao_valvula (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
