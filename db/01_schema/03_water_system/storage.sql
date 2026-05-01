-- TABELA: sistema_agua.reservatorio (Storage)
CREATE TABLE IF NOT EXISTS sistema_agua.reservatorio (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Reservatório',
    altura numeric,
    largura numeric,
    volume_m3 numeric,
    CONSTRAINT fk_tipo_ativo FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_reservatorio (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
