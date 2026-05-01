-- TABELA: sistema_agua.macromedidor (System Meter)
CREATE TABLE IF NOT EXISTS sistema_agua.macromedidor (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Macromedidor',
    diametro smallint,
    fabricante varchar(64),
    codigo_serie bigint,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_macromedidor (codigo),
    CONSTRAINT fk_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_hidrometro (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
