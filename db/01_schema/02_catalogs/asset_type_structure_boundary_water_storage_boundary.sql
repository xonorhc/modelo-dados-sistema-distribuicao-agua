-- TABELA: catalogos.tipo_limite_abastecimento (Asset Type Structure Boundary Water Storage Boundary)
CREATE TABLE IF NOT EXISTS catalogos.tipo_limite_reservatorio (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
