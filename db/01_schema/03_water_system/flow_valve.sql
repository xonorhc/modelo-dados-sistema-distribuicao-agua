-- TABELA: sistema_agua.valvula_fluxo (Flow Valve)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_fluxo (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Válvula de Fluxo',
    diametro smallint,
    fabricante varchar(64),
    codigo_serie bigint,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_valvula_fluxo (codigo),
    CONSTRAINT fk_diametro FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
