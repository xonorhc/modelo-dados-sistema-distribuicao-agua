-- TABELA: sistema_agua.hidrometro_predial (Service Meter)
CREATE TABLE IF NOT EXISTS sistema_agua.hidrometro_predial (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Hidrômetro Predial',
    matricula varchar(64),
    diametro smallint,
    fabricante varchar(64),
    codigo_serie varchar(64),
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_ligacao (codigo),
    CONSTRAINT fk_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_hidrometro (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
