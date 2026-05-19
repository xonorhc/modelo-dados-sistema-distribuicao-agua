-- TABELA: sistema_agua.ligacao_predial (Service Connection)
CREATE TABLE IF NOT EXISTS sistema_agua.ligacao_predial (
    id_objeto serial,
    id_ativo varchar(64) GENERATED ALWAYS AS ('LIGACAO-PREDIAL-' || lpad(id_objeto::text, 5, '0')) STORED,
    matricula varchar(64),
    cliente_critico boolean DEFAULT FALSE,
    hidrometro_instalado boolean DEFAULT FALSE,
    CONSTRAINT fk_ligacao_predial_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_ligacao (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

CREATE INDEX idx_ligacao_predial_geom ON sistema_agua.ligacao_predial USING gist (geom);

