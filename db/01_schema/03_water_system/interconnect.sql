-- TABELA: sistema_agua.interligacao (Interconnect)
CREATE TABLE IF NOT EXISTS sistema_agua.interligacao (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Interligação',
    vazao_outorgada numeric,
    vazao_disponivel numeric,
    emergencia boolean DEFAULT FALSE,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_interligacao (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
