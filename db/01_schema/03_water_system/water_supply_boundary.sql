-- TABELA: sistema_agua.limite_producao (Water Supply Boundary)
CREATE TABLE IF NOT EXISTS sistema_agua.limite_producao (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('LIMITE-PROD-' || lpad(id_objeto::text, 5, '0')) STORED,
    CONSTRAINT fk_limite_producao_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_unidade_producao (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_poligonal
);

CREATE INDEX idx_limite_producao_geom ON sistema_agua.limite_producao USING gist (geom);

