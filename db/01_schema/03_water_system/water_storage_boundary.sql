-- TABELA: limite_reservatorio (Water Storage Boundary)
CREATE TABLE IF NOT EXISTS sistema_agua.limite_reservacao (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Limite de Reservatorio',
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_limite_reservatorio (codigo)
)
INHERITS (
    sistema_agua.ativo_poligonal
);
