-- TABELA: catalogos.proprietarios (Owner)
CREATE TABLE IF NOT EXISTS catalogos.proprietarios (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
