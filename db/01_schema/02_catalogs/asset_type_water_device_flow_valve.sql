-- TABELA: catalogos.tipo_valvula_fluxo (Asset Type Water Device Flow Valve)
CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_fluxo (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
