-- SCHEMA: sistema_agua

-- TABELA: ativo (Base para herança)
CREATE SEQUENCE IF NOT EXISTS sistema_agua.ativo_global_id_seq AS bigint;

CREATE TABLE IF NOT EXISTS sistema_agua.ativo (
    -- Identificador global único
    id_global bigint DEFAULT NEXTVAL('sistema_agua.ativo_global_id_seq'),
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
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
);

ALTER SEQUENCE sistema_agua.ativo_global_id_seq OWNED BY sistema_agua.ativo.id_global;

-- TABELA: ativo_pontual
CREATE TABLE IF NOT EXISTS sistema_agua.ativo_pontual (
    geom GEOMETRY (POINTZ, 4326),
    rotacao_simbolo smallint CHECK (rotacao_simbolo BETWEEN 0 AND 360) DEFAULT 0,
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo);

-- TABELA: ativo_linear
CREATE TABLE IF NOT EXISTS sistema_agua.ativo_linear (
    geom GEOMETRY (LINESTRINGZ, 4326),
    comprimento_forma numeric GENERATED ALWAYS AS ((ST_LENGTH(geom))::numeric(8, 2)) STORED,
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo);

-- TABELA: ativo_poligonal
CREATE TABLE IF NOT EXISTS sistema_agua.ativo_poligonal (
    geom GEOMETRY (POLYGONZ, 4326),
    area_forma numeric GENERATED ALWAYS AS ((ST_AREA(geom))::numeric(8, 2)) STORED,
    perimetro_forma numeric GENERATED ALWAYS AS ((ST_PERIMETER(geom))::numeric(8, 2)) STORED,
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo);

-- TABELA: valvula_retencao (Backflow)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_retencao (
    fabricante smallint,
    modelo bigint,
    bloqueado boolean,
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Antirrefluxo',
    FOREIGN KEY (fabricante) REFERENCES tipos.tipos_fabricados (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_ativo_agua_antirrefluxo (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: hidrante (Fire Hydrant)
CREATE TABLE IF NOT EXISTS sistema_agua.hidrante (
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
    status_adocao smallint,
    adotado_por varchar(64),
    adotado_em date,
    FOREIGN KEY (fabricante) REFERENCES tipos.fabricante_hidrante_agua (codigo),
    FOREIGN KEY (diametro) REFERENCES tipos.diametro_agua (codigo),
    FOREIGN KEY (diametro_secundario) REFERENCES tipos.diametro_agua (codigo),
    FOREIGN KEY (tipo_atribuicao) REFERENCES tipos.tipo_atribuicao_hidrante (codigo),
    FOREIGN KEY (status_adocao) REFERENCES tipos.status_adocao (codigo),
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Hidrante',
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_dispositivo_hidrante (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: conexao (Fitting)
CREATE TABLE IF NOT EXISTS sistema_agua.conexao (
    diametro smallint CHECK (diametro BETWEEN 15 AND 1200),
    diametro_secundario smallint CHECK (diametro_secundario BETWEEN 15 AND 1200),
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Conexão',
    FOREIGN KEY (diametro) REFERENCES tipos.diametro_agua (codigo),
    FOREIGN KEY (diametro_secundario) REFERENCES tipos.diametro_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_conexao_agua (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: valvula (Flow Valve / Registro)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula (
    fabricante smallint,
    modelo bigint,
    diametro smallint CHECK (diametro BETWEEN 15 AND 1900),
    ultima_manutencao date,
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Válvula de Fluxo',
    FOREIGN KEY (fabricante) REFERENCES tipos.tipos_fabricados (codigo),
    FOREIGN KEY (diametro) REFERENCES tipos.diametro_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_dispositivo_valvula (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: descarga (Flushing and Blow Off)
CREATE TABLE IF NOT EXISTS sistema_agua.descarga (
    fabricante smallint,
    modelo bigint,
    ultima_manutencao date,
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Descarga e Expurgo',
    FOREIGN KEY (fabricante) REFERENCES tipos.tipos_fabricados (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_dispositivo_descarga (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: interligacao (Interconnect)
CREATE TABLE IF NOT EXISTS sistema_agua.interligacao (
    ultima_manutencao date,
    vazao_outorgada numeric, -- Permitted flow
    vazao_disponivel numeric, -- Available flow
    emergencia boolean,
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Interligação',
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_conexao_interligacao_agua (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: tubo_camisa (Pipe Casing)
CREATE TABLE IF NOT EXISTS sistema_agua.tubo_camisa (
    tipo_enchimento smallint, -- Fill type
    diametro smallint,
    comprimento_medido numeric(8, 2) CHECK (comprimento_medido > 0),
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Tubo Camisa',
    FOREIGN KEY (diametro) REFERENCES tipos.diametro_tubo_camisa (codigo),
    FOREIGN KEY (tipo_enchimento) REFERENCES tipos.tipo_enchimento_tubo_camisa (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_estrutura_linear_tubo_camisa (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_linear);

-- TABELA: valvula_pressao (Pressure Valve / VRP)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_pressao (
    fabricante smallint,
    modelo bigint,
    diametro smallint CHECK (diametro BETWEEN 15 AND 1900),
    pressao_nominal numeric,
    ultima_manutencao date,
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Válvula de Pressão',
    FOREIGN KEY (fabricante) REFERENCES tipos.tipos_fabricados (codigo),
    FOREIGN KEY (diametro) REFERENCES tipos.diametro_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_dispositivo_valvula_pressao (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: bomba (Pump / Conjunto Motobomba)
CREATE TABLE IF NOT EXISTS sistema_agua.bomba (
    fabricante smallint,
    modelo bigint,
    ultima_manutencao date,
    diametro_succao smallint CHECK (diametro_succao BETWEEN 100 AND 1200),
    diametro_recalque smallint CHECK (diametro_recalque BETWEEN 100 AND 1200),
    pressao_operacao numeric,
    tipo_projeto smallint,
    info_projeto numeric,
    operacional boolean,
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Bomba',
    FOREIGN KEY (fabricante) REFERENCES tipos.tipos_fabricados (codigo),
    FOREIGN KEY (diametro_succao) REFERENCES tipos.diametro_agua (codigo),
    FOREIGN KEY (diametro_recalque) REFERENCES tipos.diametro_agua (codigo),
    FOREIGN KEY (tipo_projeto) REFERENCES tipos.tipo_bomba_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_dispositivo_bomba (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: ponto_coleta (Sample Station)
CREATE TABLE IF NOT EXISTS sistema_agua.ponto_coleta (
    ultima_manutencao date,
    localizacao_estacao varchar(255),
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Ponto de Coleta',
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: ramal_predial (Service)
CREATE TABLE IF NOT EXISTS sistema_agua.ramal_predial (
    tipo_projeto smallint,
    material smallint,
    diametro smallint CHECK (diametro BETWEEN 15 AND 250),
    comprimento_medido numeric(8, 2) CHECK (comprimento_medido > 0),
    fio_rastreador boolean, -- Tracer wire
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Ramal Predial',
    FOREIGN KEY (diametro) REFERENCES tipos.diametro_agua (codigo),
    FOREIGN KEY (material) REFERENCES tipos.material_ramal_agua (codigo),
    FOREIGN KEY (tipo_projeto) REFERENCES tipos.tipo_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_linha_ramal_agua (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_linear);

-- TABELA: ligacao_agua (Service Connection)
CREATE TABLE IF NOT EXISTS sistema_agua.ligacao_agua (
    ultima_manutencao date,
    id_inscricao_imovel varchar(50), -- Account ID
    cliente_critico boolean DEFAULT false,
    hidrometro_instalado boolean DEFAULT false, -- Metered
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Ligação de Água',
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_dispositivo_ligacao_agua (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: hidrometro_predial (Service Meter)
CREATE TABLE IF NOT EXISTS sistema_agua.hidrometro_predial (
    fabricante smallint,
    modelo bigint,
    ultima_manutencao date,
    diametro smallint CHECK (diametro BETWEEN 20 AND 600),
    id_ligacao_cliente varchar(50), -- Account ID
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Hidrômetro Predial',
    FOREIGN KEY (fabricante) REFERENCES tipos.tipos_fabricados (codigo),
    FOREIGN KEY (diametro) REFERENCES tipos.diametro_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_dispositivo_hidrometro_predial (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: territorio_atendimento (Service Territory)
CREATE TABLE IF NOT EXISTS sistema_agua.territorio_atendimento (
    id_objeto serial,
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_poligonal);

-- TABELA: valvula_ramal (Service Valve)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_ramal (
    fabricante smallint,
    modelo bigint,
    ultima_manutencao date,
    diametro smallint CHECK (diametro BETWEEN 15 AND 1900),
    tipo_projeto smallint,
    status_valvula smallint,
    sentido_fechamento_horario smallint, -- Clockwise to close
    voltas_para_fechar numeric,
    operacional boolean DEFAULT true,
    indicador_coluna_valvula boolean DEFAULT false, -- Post indicator valve
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Válvula de Ramal',
    FOREIGN KEY (fabricante) REFERENCES tipos.tipos_fabricados (codigo),
    FOREIGN KEY (diametro) REFERENCES tipos.diametro_agua (codigo),
    FOREIGN KEY (tipo_projeto) REFERENCES tipos.tipo_valvula_agua (codigo),
    FOREIGN KEY (status_valvula) REFERENCES tipos.status_valvula_rede (codigo),
    FOREIGN KEY (sentido_fechamento_horario) REFERENCES tipos.direcao_fechamento_valvula (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_dispositivo_valvula_ramal (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: reservatorio (Storage)
CREATE TABLE IF NOT EXISTS sistema_agua.reservatorio (
    ultima_manutencao date,
    altura numeric,
    largura numeric,
    volume_m3 numeric,
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Reservatório',
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_dispositivo_reservatorio (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: medidor_distrito (System Meter / Macromedidor)
CREATE TABLE IF NOT EXISTS sistema_agua.macromedidor (
    fabricante smallint,
    modelo bigint,
    ultima_manutencao date,
    diametro smallint CHECK (diametro BETWEEN 20 AND 600),
    id_setor_abastecimento varchar(50), -- Account ID adaptado para sistema
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Macromedidor',
    FOREIGN KEY (fabricante) REFERENCES tipos.tipos_fabricados (codigo),
    FOREIGN KEY (diametro) REFERENCES tipos.diametro_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_dispositivo_macromedidor (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: valvula_manobra (System Valve)
CREATE TABLE IF NOT EXISTS sistema_agua.valvula_manobra (
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
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Válvula de Manobra',
    FOREIGN KEY (fabricante) REFERENCES tipos.tipos_fabricados (codigo),
    FOREIGN KEY (diametro) REFERENCES tipos.diametro_agua (codigo),
    FOREIGN KEY (tipo_projeto) REFERENCES tipos.tipo_valvula_agua (codigo),
    FOREIGN KEY (status_valvula) REFERENCES tipos.status_valvula_rede (codigo),
    FOREIGN KEY (sentido_fechamento_horario) REFERENCES tipos.direcao_fechamento_valvula (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_dispositivo_valvula_sistema (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: poco_artesiano (Well)
CREATE TABLE IF NOT EXISTS sistema_agua.poco (
    ultima_manutencao date,
    tipo_filtragem smallint,
    profundidade_perfuracao numeric,
    profundidade_aquifero numeric,
    vazao_outorgada numeric,
    vazao_disponivel numeric,
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Poço',
    FOREIGN KEY (tipo_filtragem) REFERENCES tipos.tipo_filtragem_abastecimento (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_dispositivo_poco (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: limite_abastecimento (Water Supply Boundary)
CREATE TABLE IF NOT EXISTS sistema_agua.limite_abastecimento (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Limite de Abastecimento',
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_limite_abastecimento (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_poligonal);

-- TABELA: limite_estacao_elevatoria (Water Pump Station Boundary)
CREATE TABLE IF NOT EXISTS sistema_agua.limite_elevatoria (
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Limite de Elevatória',
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_limite_elevatoria_agua (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_poligonal);

-- TABELA: eta (Treatment Plant / Estação de Tratamento de Água)
CREATE TABLE IF NOT EXISTS sistema_agua.eta (
    ultima_manutencao date,
    capacidade_outorgada numeric,
    capacidade_nominal numeric,
    vazao_media_diaria numeric,
    tipo_filtragem smallint,
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'ETA',
    FOREIGN KEY (tipo_filtragem) REFERENCES tipos.tipo_filtragem_abastecimento (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_eta (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_pontual);

-- TABELA: rede_distribuidora (Water Main)
CREATE TABLE IF NOT EXISTS sistema_agua.rede_distribuidora (
    tipo_projeto smallint,
    material smallint,
    diametro smallint CHECK (diametro BETWEEN 100 AND 1900),
    comprimento_medido numeric(8, 2),
    fio_rastreador boolean,
    id_objeto serial,
    id_ativo varchar(64) DEFAULT 'Rede Distribuidora',
    FOREIGN KEY (diametro) REFERENCES tipos.diametro_agua (codigo),
    FOREIGN KEY (material) REFERENCES tipos.material_rede_agua (codigo),
    FOREIGN KEY (tipo_projeto) REFERENCES tipos.tipo_agua (codigo),
    FOREIGN KEY (tipo_ativo) REFERENCES tipos.tipo_linha_rede_distribuidora (codigo),
    PRIMARY KEY (id_global),
    FOREIGN KEY (situacao) REFERENCES tipos.ciclo_vida (codigo),
    FOREIGN KEY (proprietario) REFERENCES tipos.proprietario_ativo (codigo),
    FOREIGN KEY (responsavel_manutencao) REFERENCES tipos.gestor_ativo (codigo),
    FOREIGN KEY (fonte_espacial) REFERENCES tipos.fonte_espacial (codigo),
    FOREIGN KEY (confiabilidade_espacial) REFERENCES tipos.confiabilidade_espacial (codigo)
) INHERITS (sistema_agua.ativo_linear);
