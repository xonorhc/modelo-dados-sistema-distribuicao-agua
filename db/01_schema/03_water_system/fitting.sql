-- TABELA: sistema_agua.conexao (Fitting)
CREATE TABLE IF NOT EXISTS sistema_agua.conexao (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('CONEXAO-' || lpad(id_objeto::text, 5, '0')) STORED,
    diametro smallint,
    diametro_secundario smallint,
    CONSTRAINT fk_conexao_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_conexao (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_conexao_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_rede_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_conexao_diametro_secundario FOREIGN KEY (diametro_secundario) REFERENCES catalogos.diametro_rede_agua (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_conexao_geom ON sistema_agua.conexao USING gist (geom);

