BEGIN;

CREATE SEQUENCE IF NOT EXISTS sistema_agua.ativo_id_global_seq AS bigint;

CREATE TABLE IF NOT EXISTS sistema_agua.ativo (
    -- Identificador global único
    id_global bigint DEFAULT nextval('sistema_agua.ativo_id_global_seq'),
    -- Identificadores internos
    id_objeto integer,
    id_ativo varchar(64),
    tipo_ativo smallint DEFAULT 0,
    nome varchar(64),
    -- Ciclo de vida
    situacao smallint NOT NULL DEFAULT 4,
    data_instalacao date,
    data_operacao date,
    data_desativacao date,
    proprietario smallint DEFAULT 1,
    responsavel_manutencao smallint DEFAULT 1,
    observacoes varchar(2000),
    -- Dados espaciais
    fonte_espacial smallint DEFAULT 0,
    confiabilidade_espacial smallint DEFAULT 0,
    latitude numeric(9, 7),
    longitude numeric(10, 7),
    altitude numeric(6, 3),
    -- Auditoria
    usuario_criacao varchar(255),
    data_criacao timestamptz,
    usuario_atualizacao varchar(255),
    data_atualizacao timestamptz,
    -- Restrições
    CONSTRAINT pk_ativo_id_global PRIMARY KEY (id_global),
    CONSTRAINT fk_ativo_situacao FOREIGN KEY (situacao) REFERENCES catalogo.status (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_ativo_proprietario FOREIGN KEY (proprietario) REFERENCES catalogo.proprietario (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_ativo_responsavel_manutencao FOREIGN KEY (responsavel_manutencao) REFERENCES catalogo.gestor (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_ativo_fonte_espacial FOREIGN KEY (fonte_espacial) REFERENCES catalogo.fonte_geoespacial (codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_ativo_confiabilidade_espacial FOREIGN KEY (confiabilidade_espacial) REFERENCES catalogo.confiabilidade_geoespacial (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
);

ALTER SEQUENCE sistema_agua.ativo_id_global_seq OWNED BY sistema_agua.ativo.id_global;

COMMIT;
