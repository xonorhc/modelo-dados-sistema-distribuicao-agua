-- TABELA: limite_estacao_elevatoria (Water Pump Station Boundary)
CREATE TABLE IF NOT EXISTS sistema_agua.limite_elevatoria (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Limite de Elevatória',
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_limite_elevatoria_agua (codigo)
)
INHERITS (
    sistema_agua.ativo_poligonal
);
