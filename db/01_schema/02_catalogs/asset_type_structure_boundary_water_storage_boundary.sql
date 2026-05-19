-- TABELA: catalogos.tipo_unidade_reservacao (Asset Type Structure Boundary Water Storage Boundary)
CREATE TABLE IF NOT EXISTS catalogos.tipo_unidade_reservacao (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

