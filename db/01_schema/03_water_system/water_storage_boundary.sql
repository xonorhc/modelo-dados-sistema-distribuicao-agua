-- TABELA: sistema_agua.limite_reservatorio (Water Storage Boundary)
CREATE TABLE IF NOT EXISTS sistema_agua.limite_reservatorio (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('LIMITE-RES-' || lpad(id_objeto::text, 5, '0')) STORED,
    CONSTRAINT fk_limite_reservatorio_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_unidade_reservacao (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_poligonal
);

CREATE INDEX idx_limite_reservatorio_geom ON sistema_agua.limite_reservatorio USING gist (geom);

