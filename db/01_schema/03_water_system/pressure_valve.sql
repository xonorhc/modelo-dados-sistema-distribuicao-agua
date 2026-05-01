-- TABELA: sistema_agua.valvula_pressao (Pressure Valve / VRP)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_pressao (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Válvula de Pressão',
    diametro smallint,
    pressao_nominal numeric,
    fabricante varchar(64),
    codigo_serie varchar(64),
    ultima_manutencao date,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_valvula_pressao (codigo),
    CONSTRAINT fk_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
