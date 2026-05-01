-- TABELA: catalogos.tipo_valvula_retencao (Asset Type Assembly Backflow)
CREATE TABLE IF NOT EXISTS catalogos.tipo_valvula_retencao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
