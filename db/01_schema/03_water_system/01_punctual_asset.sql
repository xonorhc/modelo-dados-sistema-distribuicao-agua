-- TABELA: ativo_pontual (Puntual Asset)
CREATE TABLE IF NOT EXISTS sistema_agua.ativo_pontual (
    geom geometry(point, 4674),
    rotacao_simbolo smallint DEFAULT 0,
    CONSTRAINT check_rotacao_simbolo_limite CHECK (rotacao_simbolo BETWEEN 0 AND 360)
)
INHERITS (
    sistema_agua.ativo
);
