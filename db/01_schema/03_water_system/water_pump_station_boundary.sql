-- TABELA: sistema_agua.limite_estacao_elevatoria (Water Pump Station Boundary)
CREATE TABLE IF NOT EXISTS sistema_agua.limite_estacao_elevatoria (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('LIMITE-EEA-' || lpad(id_objeto::text, 5, '0')) STORED,
    CONSTRAINT fk_limite_estacao_elevatoria_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_unidade_elevatoria_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_poligonal
);

CREATE INDEX idx_limite_estacao_elevatoria_geom ON sistema_agua.limite_estacao_elevatoria USING gist (geom);

