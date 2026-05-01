-- TABELA: sistema_agua.valvula_retencao (Backflow)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_retencao (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Válvula Antirrefluxo',
    fabricante varchar(64),
    codigo_serie varchar(64),
    bloqueado boolean DEFAULT FALSE,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_valvula_retencao (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
