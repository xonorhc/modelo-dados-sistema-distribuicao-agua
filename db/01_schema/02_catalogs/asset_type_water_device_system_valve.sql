-- TABELA: catalogos.tipo_valvula_sistema (Asset Type Water Device System Valve)
CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_sistema (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
