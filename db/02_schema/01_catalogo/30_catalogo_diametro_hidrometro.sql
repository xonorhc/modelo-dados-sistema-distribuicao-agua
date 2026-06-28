BEGIN;

CREATE TABLE IF NOT EXISTS catalogo.diametro_hidrometro (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

COMMIT;
