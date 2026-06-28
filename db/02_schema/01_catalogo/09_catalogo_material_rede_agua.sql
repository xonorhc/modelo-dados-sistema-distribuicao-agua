BEGIN;

CREATE TABLE IF NOT EXISTS catalogo.material_rede_agua (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

COMMIT;
