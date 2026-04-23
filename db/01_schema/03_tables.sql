-- SCHEMA: sistema_agua
-- TABELA: ativo (Base para herança)
CREATE SEQUENCE IF NOT EXISTS sistema_agua.ativo_global_id_seq AS bigint;

CREATE TABLE IF NOT EXISTS sistema_agua.ativo (
    -- Identificador global único
    id_global bigint DEFAULT nextval('sistema_agua.ativo_global_id_seq'),
    -- Identificadores internos
    id_objeto integer,
    id_ativo varchar(64),
    tipo_ativo smallint,
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
    fonte_espacial smallint,
    confiabilidade_espacial smallint,
    latitude numeric(9, 7),
    longitude numeric(9, 7),
    altitude numeric(6, 3),
    -- Auditoria
    usuario_criacao varchar(255),
    data_criacao timestamp,
    usuario_atualizacao varchar(255),
    data_atualizacao timestamp,
    -- Restrições
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES catalogos.situacoes (codigo),
    FOREIGN KEY (proprietario) REFERENCES catalogos.proprietarios (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES catalogos.gestores (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES catalogos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES catalogos.confiabilidade_espacial (codigo)
);

ALTER SEQUENCE sistema_agua.ativo_global_id_seq OWNED BY sistema_agua.ativo.id_global;

-- TABELA: ativo_linear
CREATE TABLE IF NOT EXISTS sistema_agua.ativo_linear (
    geom geometry(LINESTRINGZ, 4326),
    comprimento_forma numeric GENERATED ALWAYS AS ((ST_LENGTH (geom))::numeric(8, 2)) STORED
)
INHERITS (
    sistema_agua.ativo
);

-- TABELA: ativo_poligonal
CREATE TABLE IF NOT EXISTS sistema_agua.ativo_poligonal (
    geom geometry(POLYGONZ, 4326),
    area_forma numeric GENERATED ALWAYS AS ((ST_AREA (geom))::numeric(8, 2)) STORED,
    perimetro_forma numeric GENERATED ALWAYS AS ((ST_PERIMETER (geom))::numeric(8, 2)) STORED
)
INHERITS (
    sistema_agua.ativo
);

-- TABELA: ativo_pontual
CREATE TABLE IF NOT EXISTS sistema_agua.ativo_pontual (
    geom geometry(POINTZ, 4326),
    rotacao_simbolo smallint CHECK (rotacao_simbolo BETWEEN 0 AND 360) DEFAULT 0
)
INHERITS (
    sistema_agua.ativo
);

-- TABELA: bomba (Pump / Conjunto Motobomba)
CREATE TABLE IF NOT EXISTS sistema_agua.bomba (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Bomba',
    fabricante smallint,
    modelo bigint,
    ultima_manutencao date,
    diametro_succao smallint CHECK (diametro_succao BETWEEN 100 AND 1200),
    diametro_recalque smallint CHECK (diametro_recalque BETWEEN 100 AND 1200),
    pressao_operacao numeric,
    tipo_projeto smallint,
    info_projeto numeric,
    operacional boolean,
    FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo),
    FOREIGN KEY (diametro_succao) REFERENCES catalogos.diametro_agua (codigo),
    FOREIGN KEY (diametro_recalque) REFERENCES catalogos.diametro_agua (codigo),
    FOREIGN KEY (tipo_projeto) REFERENCES catalogos.tipo_modelo_bomba (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_bomba (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: conexao (Fitting)
CREATE TABLE IF NOT EXISTS sistema_agua.conexao (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Conexão',
    diametro smallint CHECK (diametro BETWEEN 15 AND 1200),
    diametro_secundario smallint CHECK (diametro_secundario BETWEEN 15 AND 1200),
    FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo),
    FOREIGN KEY (diametro_secundario) REFERENCES catalogos.diametro_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_conexao (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: descarga (Flushing and Blow Off)
CREATE TABLE IF NOT EXISTS sistema_agua.descarga (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Descarga e Expurgo',
    fabricante smallint,
    modelo bigint,
    ultima_manutencao date,
    FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_descarga (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: eta (Treatment Plant / Estação de Tratamento de Água)
CREATE TABLE IF NOT EXISTS sistema_agua.eta (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'ETA',
    ultima_manutencao date,
    capacidade_outorgada numeric,
    capacidade_nominal numeric,
    vazao_media_diaria numeric,
    tipo_filtragem smallint,
    FOREIGN KEY (tipo_filtragem) REFERENCES catalogos.tipo_filtragem_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_estacao_tratamento_agua (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: hidrante (Fire Hydrant)
CREATE TABLE IF NOT EXISTS sistema_agua.hidrante (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Hidrante',
    fabricante bigint,
    modelo bigint,
    diametro smallint CHECK (diametro BETWEEN 100 AND 250),
    diametro_secundario smallint CHECK (diametro_secundario BETWEEN 65 AND 150),
    ultima_manutencao date,
    tipo_atribuicao smallint,
    prazo_atribuicao date,
    atribuido_em date,
    estacao varchar(64),
    turno varchar(64),
    vista_publica boolean,
    adotado_por varchar(64),
    adotado_em date,
    FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes_hidrante (codigo),
    FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo),
    FOREIGN KEY (diametro_secundario) REFERENCES catalogos.diametro_agua (codigo),
    FOREIGN KEY (tipo_atribuicao) REFERENCES catalogos.tipo_atribuicao_hidrante (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_hidrante (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: hidrometro_predial (Service Meter)
CREATE TABLE IF NOT EXISTS sistema_agua.hidrometro_predial (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Hidrômetro Predial',
    fabricante smallint,
    modelo bigint,
    ultima_manutencao date,
    diametro smallint CHECK (diametro BETWEEN 20 AND 600),
    id_ligacao_cliente varchar(50), -- Account ID
    FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo),
    FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_ligacao (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: interligacao (Interconnect)
CREATE TABLE IF NOT EXISTS sistema_agua.interligacao (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Interligação',
    ultima_manutencao date,
    vazao_outorgada numeric, -- Permitted flow
    vazao_disponivel numeric, -- Disponivel flow
    emergencia boolean,
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_interligacao (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: ligacao_agua (Service Connection)
CREATE TABLE IF NOT EXISTS sistema_agua.ligacao_agua (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Ligação de Água',
    ultima_manutencao date,
    id_inscricao_imovel varchar(50), -- Account ID
    cliente_critico boolean DEFAULT FALSE,
    hidrometro_instalado boolean DEFAULT FALSE, -- Metered
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_ligacao (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: limite_abastecimento (Water Supply Boundary)
CREATE TABLE IF NOT EXISTS sistema_agua.limite_abastecimento (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Limite de Abastecimento',
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_limite_abastecimento (codigo)
)
INHERITS (
    sistema_agua.ativo_poligonal
);

-- TABELA: limite_estacao_elevatoria (Water Pump Station Boundary)
CREATE TABLE IF NOT EXISTS sistema_agua.limite_elevatoria (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Limite de Elevatória',
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_limite_elevatoria_agua (codigo)
)
INHERITS (
    sistema_agua.ativo_poligonal
);

-- TABELA: limite_reservatorio (Water Storage Boundary)
CREATE TABLE IF NOT EXISTS sistema_agua.limite_reservacao (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Limite de Reservatorio',
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_reservatorio (codigo)
)
INHERITS (
    sistema_agua.ativo_poligonal
);

-- TABELA: medidor_distrito (System Meter / Macromedidor)
CREATE TABLE IF NOT EXISTS sistema_agua.macromedidor (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Macromedidor',
    fabricante smallint,
    modelo bigint,
    ultima_manutencao date,
    diametro smallint CHECK (diametro BETWEEN 20 AND 600),
    id_setor_abastecimento varchar(50), -- Account ID adaptado para sistema
    FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo),
    FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_macromedidor (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: poco_artesiano (Well)
CREATE TABLE IF NOT EXISTS sistema_agua.poco (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Poço',
    ultima_manutencao date,
    tipo_filtragem smallint,
    profundidade_perfuracao numeric,
    profundidade_aquifero numeric,
    vazao_outorgada numeric,
    vazao_disponivel numeric,
    FOREIGN KEY (tipo_filtragem) REFERENCES catalogos.tipo_filtragem_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_poco (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: ponto_coleta (Sample Station)
CREATE TABLE IF NOT EXISTS sistema_agua.ponto_coleta (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Ponto de Coleta',
    ultima_manutencao date,
    localizacao_estacao varchar(255)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: ramal_predial (Service)
CREATE TABLE IF NOT EXISTS sistema_agua.ramal_predial (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Ramal Predial',
    tipo_projeto smallint,
    material smallint,
    diametro smallint CHECK (diametro BETWEEN 15 AND 250),
    comprimento_medido numeric(8, 2) CHECK (comprimento_medido > 0),
    fio_rastreador boolean, -- Tracer wire
    FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo),
    FOREIGN KEY (material) REFERENCES catalogos.tipo_material_ramal_agua (codigo),
    FOREIGN KEY (tipo_projeto) REFERENCES catalogos.tipo_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_ramal_agua (codigo)
)
INHERITS (
    sistema_agua.ativo_linear
);

-- TABELA: rede_distribuidora (Water Main)
CREATE TABLE IF NOT EXISTS sistema_agua.rede_distribuidora (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Rede Distribuidora',
    tipo_projeto smallint,
    material smallint,
    diametro smallint CHECK (diametro BETWEEN 100 AND 1900),
    comprimento_medido numeric(8, 2),
    fio_rastreador boolean,
    FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo),
    FOREIGN KEY (material) REFERENCES catalogos.tipo_material_agua (codigo),
    FOREIGN KEY (tipo_projeto) REFERENCES catalogos.tipo_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_rede_agua (codigo)
)
INHERITS (
    sistema_agua.ativo_linear
);

-- TABELA: reservatorio (Storage)
CREATE TABLE IF NOT EXISTS sistema_agua.reservatorio (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Reservatório',
    ultima_manutencao date,
    altura numeric,
    largura numeric,
    volume_m3 numeric,
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_reservatorio (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: territorio_atendimento (Service Territory)
CREATE TABLE IF NOT EXISTS sistema_agua.territorio_atendimento (
    id_objeto serial
)
INHERITS (
    sistema_agua.ativo_poligonal
);

-- TABELA: tubo_camisa (Pipe Casing)
CREATE TABLE IF NOT EXISTS sistema_agua.tubo_camisa (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Tubo Camisa',
    tipo_enchimento smallint, -- Fill type
    diametro smallint,
    comprimento_medido numeric(8, 2) CHECK (comprimento_medido > 0),
    FOREIGN KEY (diametro) REFERENCES catalogos.diametro_tubo_camisa (codigo),
    FOREIGN KEY (tipo_enchimento) REFERENCES catalogos.tipo_enchimento_tubo_camisa (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_tubo_camisa (codigo)
)
INHERITS (
    sistema_agua.ativo_linear
);

-- TABELA: valvula (Flow Valve / Registro)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_fluxo (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Válvula de Fluxo',
    fabricante smallint,
    modelo bigint,
    diametro smallint CHECK (diametro BETWEEN 15 AND 1900),
    ultima_manutencao date,
    FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo),
    FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_valvula_fluxo (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: valvula_manobra (System Valve)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_manobra (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Válvula de Manobra',
    fabricante smallint,
    modelo bigint,
    ultima_manutencao date,
    diametro smallint CHECK (diametro BETWEEN 15 AND 1900),
    tipo_projeto smallint,
    status_valvula smallint,
    sentido_fechamento_horario smallint,
    voltas_para_fechar numeric,
    operacional boolean,
    possui_bypass boolean,
    FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo),
    FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo),
    FOREIGN KEY (tipo_projeto) REFERENCES catalogos.tipo_valvula_agua (codigo),
    FOREIGN KEY (status_valvula) REFERENCES catalogos.status_valvula (codigo),
    FOREIGN KEY (sentido_fechamento_horario) REFERENCES
	catalogos.direcao_fechamento_valvula (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_valvula_sistema (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: valvula_pressao (Pressure Valve / VRP)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_pressao (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Válvula de Pressão',
    fabricante smallint,
    modelo bigint,
    diametro smallint CHECK (diametro BETWEEN 15 AND 1900),
    pressao_nominal numeric,
    ultima_manutencao date,
    FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo),
    FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_valvula_pressao (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: valvula_ramal (Service Valve)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_ramal (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Válvula de Ramal',
    fabricante smallint,
    modelo bigint,
    ultima_manutencao date,
    diametro smallint CHECK (diametro BETWEEN 15 AND 1900),
    tipo_projeto smallint,
    status_valvula smallint,
    sentido_fechamento_horario smallint, -- Clockwise to close
    voltas_para_fechar numeric,
    operacional boolean DEFAULT TRUE,
    indicador_coluna_valvula boolean DEFAULT FALSE, -- Post indicator valve
    FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo),
    FOREIGN KEY (diametro) REFERENCES catalogos.diametro_agua (codigo),
    FOREIGN KEY (tipo_projeto) REFERENCES catalogos.tipo_valvula_agua (codigo),
    FOREIGN KEY (status_valvula) REFERENCES catalogos.status_valvula (codigo),
    FOREIGN KEY (sentido_fechamento_horario) REFERENCES
	catalogos.direcao_fechamento_valvula (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_valvula_ramal (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);

-- TABELA: valvula_retencao (Backflow)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_retencao (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Antirrefluxo',
    fabricante smallint,
    modelo bigint,
    bloqueado boolean,
    FOREIGN KEY (fabricante) REFERENCES catalogos.fabricantes (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES catalogos.tipo_valvula_retencao (codigo)
)
INHERITS (
    sistema_agua.ativo_pontual
);
