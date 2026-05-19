-- TABELA: sistema_agua.tubo_camisa (Pipe Casing)
CREATE TABLE IF NOT EXISTS sistema_agua.tubo_camisa (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('TUBO-CAMISA-' || lpad(id_objeto::text, 5, '0')) STORED,
    enchimento smallint,
    diametro smallint,
    comprimento_medido numeric(8, 2),
    CONSTRAINT fk_tubo_camisa_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_encamisamento (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_tubo_camisa_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_tubo_camisa (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_tubo_camisa_enchimento FOREIGN KEY (enchimento) REFERENCES catalogos.tipo_enchimento_tubo_camisa (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT chk_tubo_camisa_comprimento_medido_limite CHECK (comprimento_medido > 0)
)
INHERITS (
    sistema_agua.ativo_linear
);

CREATE INDEX idx_tubo_camisa_geom ON sistema_agua.tubo_camisa USING gist (geom);

