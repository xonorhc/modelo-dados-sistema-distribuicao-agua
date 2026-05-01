-- TABELA: limite_abastecimento (Water Supply Boundary)
CREATE TABLE IF NOT EXISTS sistema_agua.limite_abastecimento (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Limite de Abastecimento',
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_limite_abastecimento (codigo)
)
INHERITS (
    sistema_agua.ativo_poligonal
);
