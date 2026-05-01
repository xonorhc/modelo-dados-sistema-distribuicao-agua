-- TABELA: catalogos.tipo_valvula_ramal (Asset Type Water Device Service Valve)
CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_ramal (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
