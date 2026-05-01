-- TABELA: catalogos.tipo_valvula_pressao (Asset Type Water Device Pressure Valve)
CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_pressao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
