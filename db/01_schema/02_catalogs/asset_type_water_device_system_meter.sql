-- TABELA: catalogos.tipo_macromedidor (Asset Type Water Device System Meter)
CREATE TABLE IF NOT EXISTS catalogos.tipo_macromedidor (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
