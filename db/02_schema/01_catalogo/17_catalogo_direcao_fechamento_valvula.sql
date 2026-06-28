BEGIN;

CREATE TABLE IF NOT EXISTS catalogo.direcao_fechamento_valvula (
    codigo smallint PRIMARY KEY,
    descricao varchar(64) NOT NULL,
    detalhes varchar(255)
);

COMMIT;
