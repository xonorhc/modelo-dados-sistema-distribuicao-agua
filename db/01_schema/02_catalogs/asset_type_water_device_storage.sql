-- TABELA: catalogos.tipo_reservatorio (Asset Type Water Device Storage)
CREATE TABLE IF NOT EXISTS catalogos.tipo_reservatorio (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
