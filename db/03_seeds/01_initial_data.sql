INSERT INTO catalogos.situacoes (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Planejado'),
    (2, 'Aprovado'),
    (3, 'Em Implantação'),
    (4, 'Operacional'),
    (5, 'Em Desativação'),
    (6, 'Abandonado'),
    (7, 'Desativado'),
    (8, 'Removido'),
    (9, 'Fora de Operação');

INSERT INTO catalogos.proprietarios (codigo, descricao)
VALUES
    (1, 'Concessionária'),
    (2, 'Particular'),
    (3, 'Outros');

INSERT INTO catalogos.gestores (codigo, descricao)
VALUES
    (1, 'Concessionária'),
    (2, 'Particular'),
    (3, 'Outros');

INSERT INTO catalogos.fabricantes (codigo, descricao)
VALUES
    (1, 'Tigre Saneamento - TIGRE'),
    (2, 'Amanco Wavin (Orbia) - WAVIN'),
    (3, 'Saint-Gobain Canalização (PAM) - PAM'),
    (4, 'AVK Válvulas do Brasil - AVK'),
    (5, 'Hawle do Brasil - HAWLE'),
    (6, 'Kanaflex Brasil - KANAFLEX'),
    (7, 'Corr Plastik Industrial - CORR'),
    (8, 'Plastilit - PLASTILIT'),
    (9, 'Fortlev - FORTLEV'),
    (10, 'Saint-Gobain Performance Plastics (ex: Fibras/PRFV) - SGP');

INSERT INTO catalogos.confiabilidade_espacial (codigo, descricao)
VALUES
    (0, 'Desconhecida'),
    (1, 'Alta'),
    (2, 'Média'),
    (3, 'Baixa');

INSERT INTO catalogos.fonte_espacial (codigo, descricao)
VALUES
    (0, 'Desconhecida'),
    (1, 'As Built'),
    (2, 'CAD'),
    (3, 'Digitalizado'),
    (4, 'Levantamento GNSS'),
    (5, 'Croqui de Campo');

INSERT INTO catalogos.tipo_bomba (codigo, descricao)
VALUES
    (1, 'Bomba Booster'),
    (2, 'Bomba Dosadora'),
    (3, 'Bomba Principal');

INSERT INTO catalogos.tipo_modelo_bomba (codigo, descricao)
VALUES
    (1, 'Fluxo Axial'),
    (2, 'Centrífuga'),
    (3, 'Jato'),
    (4, 'Alternativo'),
    (5, 'Rotativo'),
    (6, 'Turbina');

INSERT INTO catalogos.tipo_conexao (codigo, descricao)
VALUES
    (1, 'Abraçadeira'),
    (2, 'Colar de Tomada'),
    (3, 'Luva'),
    (4, 'Cruzeta'),
    (5, 'Curva'),
    (6, 'Tampão'),
    (7, 'Junta de Expansão'),
    (8, 'Flange'),
    (9, 'Tampão (Plug)'),
    (10, 'Redução'),
    (11, 'Cruzeta Reduzida'),
    (12, 'Tê Reduzido'),
    (13, 'Sela'),
    (14, 'Parafuso'),
    (15, 'Manga'),
    (16, 'Tomada'),
    (17, 'Sela de Derivação'),
    (18, 'Luva de Derivação'),
    (19, 'Tê'),
    (20, 'Transição'),
    (21, 'Solda'),
    (22, 'Y');

INSERT INTO catalogos.tipo_descarga (codigo, descricao)
VALUES
    (1, 'Descarga Automática'),
    (2, 'Descarga de Fundo'),
    (3, 'Válvula para Combate a Incêndio'),
    (4, 'Hidrante'),
    (5, 'Hidrante de Coluna');

INSERT INTO catalogos.tipo_estacao_tratamento_agua (codigo, descricao)
VALUES
    (1, 'Captação Subterrânea'),
    (2, 'Captação Superficial'),
    (3, 'Dessalinização');

INSERT INTO catalogos.tipo_filtragem_agua (codigo, descricao)
VALUES
    (1, 'Carvão Ativado'),
    (2, 'Osmose Reversa'),
    (3, 'Radiação Ultravioleta'),
    (4, 'Filtração por Sedimentos'),
    (5, 'Filtração Biológica');

INSERT INTO catalogos.tipo_hidrante (codigo, descricao)
    VALUES (1, 'Hidrante');

INSERT INTO catalogos.tipo_atribuicao_hidrante (codigo, descricao)
VALUES
    (1, 'Teste de Vazão'),
    (2, 'Descarga');

INSERT INTO catalogos.fabricantes_hidrante (codigo, descricao)
VALUES
    (1, 'AVK Válvulas do Brasil - AVK'),
    (2, 'Saint-Gobain Canalização (PAM) - PAM'),
    (3, 'Hawle do Brasil - HAWLE'),
    (4, 'Mueller Water Products - MUELLER'),
    (5, 'Kidde Brasil - KIDDE'),
    (6, 'Factum Equipamentos - FACTUM'),
    (7, 'Hidrantex do Brasil - HIDRANTEX'),
    (8, 'Grupo Novo Brasil - GNB'),
    (9, 'Steel Fire - STF'),
    (10, 'Bucka Indústria e Comércio - BUCKA');

INSERT INTO catalogos.tipo_ligacao (codigo, descricao)
VALUES
    (1, 'Comercial'),
    (2, 'Combate a Incêndio'),
    (3, 'Industrial'),
    (4, 'Irrigação'),
    (5, 'Residencial');

INSERT INTO catalogos.tipo_interligacao (codigo, descricao)
VALUES
    (1, 'Compra'),
    (2, 'Venda'),
    (3, 'Compra ou Venda');

INSERT INTO catalogos.tipo_limite_abastecimento (codigo, descricao)
VALUES
    (1, 'Interligação'),
    (2, 'Estação de Tratamento de Água (ETA)'),
    (3, 'Poço');

INSERT INTO catalogos.tipo_limite_elevatoria_agua (codigo, descricao)
VALUES
    (1, 'Estação Elevatória de Pressurização (Booster)'),
    (2, 'Estação Elevatória de Água');

INSERT INTO catalogos.tipo_macromedidor (codigo, descricao)
VALUES
    (1, 'Macromedidor'),
    (2, 'DMC (Distrito de Medição e Controle)'),
    (3, 'Interligação Emergencial'),
    (4, 'Estação Elevatória');

INSERT INTO catalogos.tipo_poco (codigo, descricao)
VALUES
    (1, 'Poço de Abastecimento'),
    (2, 'Poço de Monitoramento'),
    (3, 'Poço de Injeção');

INSERT INTO catalogos.tipo_ramal_agua (codigo, descricao)
VALUES
    (1, 'Ramal com Ventosa'),
    (2, 'Ramal de Descarga'),
    (3, 'Ramal Comercial'),
    (4, 'Ramal de Incêndio'),
    (5, 'Ramal de Hidrante'),
    (6, 'Ramal Industrial'),
    (7, 'Ramal de Irrigação'),
    (8, 'Ramal Residencial'),
    (9, 'Ramal de Amostragem');

INSERT INTO catalogos.tipo_agua (codigo, descricao)
VALUES
    (1, 'Água Potável'),
    (2, 'Água de Irrigação'),
    (3, 'Água para Incêndio'),
    (4, 'Água Bruta'),
    (5, 'Água em Tratamento'),
    (6, 'Água Tratada');

INSERT INTO catalogos.tipo_material_ramal_agua (codigo, descricao)
VALUES
    (1, 'Ferro fundido - CAS'),
    (2, 'Cobre - COP'),
    (3, 'Ferro fundido dúctil - DIP'),
    (4, 'PVC (Policloreto de vinila) - PVC'),
    (5, 'Chumbo - LP');

INSERT INTO catalogos.tipo_rede_agua (codigo, descricao)
VALUES
    (1, 'Distribuição'),
    (2, 'Dreno'),
    (3, 'Extravasor'),
    (4, 'Produção'),
    (5, 'Adutora');

INSERT INTO catalogos.tipo_material_agua (codigo, descricao, detalhes)
VALUES
    (1, 'Cimento-amianto (CA)', 'AC'),
    (2, 'Alvenaria', 'Tijolo - BR'),
    (3, 'Ferro fundido cinzento', 'CAS'),
    (4, 'Cobre', 'COP'),
    (5, 'Concreto simples', 'Não armado - CP'),
    (6, 'Aduelas de concreto segmentado parafusadas', 'CSB'),
    (7, 'Aduelas de concreto segmentado não parafusadas', 'CSU'),
    (8, 'Ferro fundido dúctil', 'FoFo dúctil - DIP'),
    (9, 'Aço galvanizado', 'GP'),
    (10, 'Tubulação de fibra betuminosa', 'Tipo Orangeburg - OB'),
    (11, 'Material compósito aço/plástico', 'PSC'),
    (12, 'Polietileno', 'PE'),
    (13, 'Polipropileno', 'PP'),
    (14, 'PVC', 'Policloreto de vinila - PVC'),
    (15, 'Aço carbono', 'SP'),
    (16, 'Cimento-amianto', 'Tipo Transite - TTE'),
    (17, 'Madeira', 'WD'),
    (18, 'Tubo de concreto protendido com cilindro de aço', 'PCCP'),
    (19, 'Tubo de concreto protendido com cilindro embutido', 'AWWA C301 - PCPE'),
    (20, 'Tubo de concreto protendido com cilindro revestido', 'AWWA C301 - PCPL'),
    (21, 'Tubo de concreto armado com cilindro de aço', 'SRC'),
    (22, 'Polietileno de alta densidade', 'PEAD - HDPE'),
    (23, 'Tubo de concreto simples', 'URC'),
    (24, 'Tubo PRFV', 'Plástico reforçado com fibra de vidro - FRP'),
    (25, 'Tubo de concreto armado', 'TCA - RCP'),
    (26, 'Tubo corrugado', 'CORR'),
    (27, 'Material plástico', 'PLA'),
    (28, 'Material não plástico', 'NPLA');

INSERT INTO catalogos.tipo_reservatorio (codigo, descricao)
VALUES
    (1, 'Reservatório Hidropneumático'),
    (2, 'Reservatório'),
    (3, 'Bacia de Retenção'),
    (4, 'Tanque de Armazenamento'),
    (5, 'Câmara de Amortecimento'),
    (6, 'Reservatório Elevado (Torre)');

INSERT INTO catalogos.tipo_tubo_camisa (codigo, descricao)
    VALUES (1, 'Tubo Camisa');

INSERT INTO catalogos.tipo_enchimento_tubo_camisa (codigo, descricao)
VALUES
    (1, 'Argamassa'),
    (2, 'Brita Fina'),
    (3, 'Areia');

INSERT INTO catalogos.diametro_tubo_camisa (codigo, descricao)
VALUES
    (0, 'Unknown'),
    (4, '4'),
    (6, '6'),
    (8, '8'),
    (10, '10'),
    (12, '12'),
    (14, '14'),
    (16, '16'),
    (18, '18'),
    (20, '20'),
    (22, '22'),
    (24, '24'),
    (26, '26'),
    (28, '28'),
    (30, '30'),
    (32, '32'),
    (34, '34'),
    (36, '36'),
    (40, '40'),
    (42, '42'),
    (44, '44'),
    (46, '46'),
    (48, '48');

INSERT INTO catalogos.tipo_valvula_fluxo (codigo, descricao)
VALUES
    (1, 'Ventosa (Respiro)'),
    (2, 'Válvula de Controle de Nível (Altitude)'),
    (3, 'Válvula de Retenção');

INSERT INTO catalogos.tipo_valvula_sistema (codigo, descricao)
VALUES
    (1, 'Bypass'),
    (2, 'Interligação'),
    (3, 'Ponto de Manobra'),
    (4, 'Zona de Pressão'),
    (5, 'Abastecimento'),
    (6, 'Sistema');

INSERT INTO catalogos.direcao_fechamento_valvula (codigo, descricao)
VALUES
    (1, 'Anti-horário'),
    (2, 'Horário');

INSERT INTO catalogos.status_valvula (codigo, descricao)
VALUES
    (0, 'Fechado'),
    (1, 'Aberto');

INSERT INTO catalogos.tipo_valvula_agua (codigo, descricao)
VALUES
    (1, 'Esfera'),
    (2, 'Borboleta'),
    (3, 'Cônica'),
    (4, 'Gaveta'),
    (5, 'Plug');

INSERT INTO catalogos.tipo_valvula_pressao (codigo, descricao)
VALUES
    (1, 'Ventosa de Ar e Vácuo'),
    (2, 'Ventosa de Ar'),
    (3, 'Ventosa Combinada'),
    (4, 'Válvula Limitadora de Pressão'),
    (5, 'Válvula Redutora de Pressão (VRP)'),
    (6, 'Válvula de Alívio de Pressão'),
    (7, 'Válvula Sustentadora de Pressão'),
    (8, 'Válvula Antigolpe de Aríete');

INSERT INTO catalogos.tipo_valvula_ramal (codigo, descricao)
VALUES
    (1, 'Descarga'),
    (2, 'Válvula de Retenção (Clapeta)'),
    (3, 'Hidrante'),
    (4, 'Purgador'),
    (5, 'Ponto de Amostragem'),
    (6, 'Registro de Ramal');

INSERT INTO catalogos.tipo_valvula_retencao (codigo, descricao)
VALUES
    (1, 'Dupla Retenção com Detector'),
    (2, 'Dupla Retenção'),
    (3, 'Zona de Pressão Reduzida com Detector'),
    (4, 'Zona de Pressão Reduzida (RPZ)');

INSERT INTO catalogos.diametro_agua (codigo, descricao)
VALUES
    (15, '1/2"'),
    (20, '3/4"'),
    (25, '1"'),
    (32, '1 1/4"'),
    (40, '1 1/2"'),
    (50, '2"'),
    (60, '2 1/2"'),
    (75, '3"'),
    (100, '4"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"'),
    (300, '12"'),
    (350, '14"'),
    (375, '15"'),
    (400, '16"'),
    (450, '18"'),
    (500, '20"'),
    (600, '24"'),
    (750, '30"'),
    (900, '36"'),
    (1000, '40"'),
    (1050, '42"'),
    (1200, '48"'),
    (1350, '54"'),
    (1500, '60"'),
    (1600, '66"'),
    (1800, '72"'),
    (1900, '75"');
