-- TABELA: sistema_agua.tubo_camisa (Pipe Casing)
CREATE TABLE IF NOT EXISTS sistema_agua.tubo_camisa (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Tubo Camisa',
    enchimento smallint,
    diametro smallint,
    comprimento_medido numeric(8, 2),
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_tubo_camisa (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_tubo_camisa (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_enchimento FOREIGN KEY (enchimento) REFERENCES catalogos.tipo_enchimento_tubo_camisa (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT check_comprimento_medido_limite CHECK (comprimento_medido > 0)
)
INHERITS (
    sistema_agua.ativo_linear
);
