-- TABELA: catalogos.proprietario_ativo (Owner)
CREATE TABLE IF NOT EXISTS catalogos.proprietario_ativo (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);
