BEGIN;

INSERT INTO catalogo.gestor (codigo, descricao)
VALUES
    (1, 'Concessionária'),
    (2, 'Particular'),
    (3, 'Outros');

INSERT INTO catalogo.proprietario (codigo, descricao)
VALUES
    (1, 'Concessionária'),
    (2, 'Particular'),
    (3, 'Outros');

INSERT INTO catalogo.tipo_unidade_elevatoria_agua (codigo, descricao, detalhes)
VALUES
    (0, 'Desconhecido', NULL),
    (1, 'EEA (Estação Elevatória de Água)', 'Refere-se à unidade principal que transporta água de um nível para outro. Exemplo: Uma EEAB (Água Bruta) que retira água do rio ou uma EEAT (Água Tratada) que envia água da ETA para os reservatórios da cidade.'),
    (2, 'Estação Pressurizadora (Booster)', 'Unidade instalada estrategicamente na rede para elevar a pressão em setores específicos. Exemplo: Uma casa de bombas em um bairro alto que recebe água da rede de distribuição e recalca (pressuriza) para as ruas que ficam no topo do morro.');

INSERT INTO catalogo.tipo_unidade_reservacao (codigo, descricao, detalhes)
VALUES
    (0, 'Desconhecido', NULL),
    (1, 'Área do Reservatório Apoiado', 'Delimita o terreno onde se encontra o reservatório principal. Exemplo: O "Centro de Reservação" que contém o tanque de concreto, a casa de manobras e a área de urbanismo em volta.'),
    (2, 'Bacia de Contenção / Retenção', 'Área destinada a segurar o volume de água em caso de vazamento ou limpeza. Exemplo: Uma bacia de drenagem ao redor de tanques químicos ou grandes reservatórios para evitar inundações em áreas vizinhas se houver transbordo.'),
    (3, 'Área de Tanques de Armazenamento', 'Limite de instalações de tanques horizontais ou modulares. Exemplo: O pátio técnico que abriga tanques metálicos de reserva estratégica ou água bruta.'),
    (4, 'Área do Reservatório Elevado', 'A projeção do terreno ocupada pelo "Castelo dÁgua". Exemplo: O polígono que circunda a base da torre e sua área de proteção contra queda de objetos ou acesso não autorizado.'),
    (5, 'Área da Chaminé de Equilíbrio', 'Limite de ocupação dos dispositivos de proteção contra transientes. Exemplo: O pequeno cercado ao longo de uma adutora onde está instalada a torre de alívio de pressão.'),
    (6, 'Área do Sistema Hidropneumático', 'Delimitação da base onde estão os vasos de pressão e compressores. Exemplo: O abrigo ou sala técnica onde o sistema de pressurização está instalado.');

INSERT INTO catalogo.tipo_unidade_producao (codigo, descricao, detalhes)
VALUES
    (0, 'Desconhecido', NULL),
    (1, 'Área da ETA (Estação de Tratamento de Água)', 'Delimita todo o complexo industrial de tratamento. Exemplo: O polígono que engloba os decantadores, filtros, casa de química, laboratório e reservatórios de contato.'),
    (2, 'Área de Proteção de Poço', 'O perímetro de segurança ao redor de um poço profundo. Exemplo: A área cercada que protege a cabeça do poço e o quadro de comando, garantindo o raio de proteção sanitária contra contaminações.'),
    (3, 'Área de Interligação / Ponto de Entrega', 'Local onde ocorre a conexão entre dois sistemas distintos. Exemplo: O terreno onde está a câmara de válvulas e medidores que conecta a rede de uma concessionária estadual à rede de uma autarquia municipal.');

INSERT INTO catalogo.tipo_encamisamento (codigo, descricao, detalhes)
VALUES
    (0, 'Desconhecido', NULL),
    (1, 'Tubo Camisa', 'Trata-se de uma tubulação de maior diâmetro que envolve o tubo condutor (a rede de água propriamente dita) para protegê-lo contra cargas mecânicas externas ou facilitar a manutenção.');

INSERT INTO catalogo.tipo_valvula_retencao (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Dupla Retenção com Detector'),
    (2, 'Dupla Retenção'),
    (3, 'Zona de Pressão Reduzida com Detector'),
    (4, 'Zona de Pressão Reduzida (RPZ)');

INSERT INTO catalogo.tipo_hidrante (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Coluna'),
    (2, 'Parede');

INSERT INTO catalogo.tipo_valvula_fluxo (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Ventosa (Respiro)'),
    (2, 'Válvula de Controle de Nível (Altitude)'),
    (3, 'Válvula de Retenção');

INSERT INTO catalogo.tipo_descarga (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Descarga Automática'),
    (2, 'Descarga de Fundo'),
    (3, 'Válvula para Combate a Incêndio'),
    (4, 'Hidrante'),
    (5, 'Hidrante de Coluna');

INSERT INTO catalogo.tipo_valvula_pressao (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Ventosa de Ar e Vácuo'),
    (2, 'Ventosa de Ar'),
    (3, 'Ventosa Combinada'),
    (4, 'Válvula Limitadora de Pressão'),
    (5, 'Válvula Redutora de Pressão (VRP)'),
    (6, 'Válvula de Alívio de Pressão'),
    (7, 'Válvula Sustentadora de Pressão'),
    (8, 'Válvula Antigolpe de Aríete');

INSERT INTO catalogo.tipo_bomba (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Bomba Booster'),
    (2, 'Bomba Dosadora'),
    (3, 'Bomba Principal');

INSERT INTO catalogo.tipo_ligacao (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Comercial'),
    (2, 'Combate a Incêndio'),
    (3, 'Industrial'),
    (4, 'Irrigação'),
    (5, 'Residencial');

INSERT INTO catalogo.tipo_hidrometro (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Comercial'),
    (2, 'Combate a Incêndio'),
    (3, 'Industrial'),
    (4, 'Irrigação'),
    (5, 'Residencial');

INSERT INTO catalogo.tipo_valvula_ramal (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Descarga'),
    (2, 'Válvula de Retenção (Clapeta)'),
    (3, 'Hidrante'),
    (4, 'Purgador'),
    (5, 'Ponto de Amostragem'),
    (6, 'Registro de Ramal');

INSERT INTO catalogo.tipo_reservatorio (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Reservatório Hidropneumático'),
    (2, 'Reservatório'),
    (3, 'Bacia de Retenção'),
    (4, 'Tanque de Armazenamento'),
    (5, 'Câmara de Amortecimento'),
    (6, 'Reservatório Elevado (Torre)');

INSERT INTO catalogo.tipo_poco (codigo, descricao)
VALUES
    (1, 'Poço de Abastecimento'),
    (2, 'Poço de Monitoramento'),
    (3, 'Poço de Injeção');

INSERT INTO catalogo.tipo_macromedidor (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Macromedidor'),
    (2, 'DMC (Distrito de Medição e Controle)'),
    (3, 'Interligação Emergencial'),
    (4, 'Estação Elevatória');

INSERT INTO catalogo.tipo_valvula_sistema (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Bypass'),
    (2, 'Interligação'),
    (3, 'Ponto de Manobra'),
    (4, 'Zona de Pressão'),
    (5, 'Abastecimento'),
    (6, 'Sistema');

INSERT INTO catalogo.tipo_conexao (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
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

INSERT INTO catalogo.tipo_ramal_agua (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Ramal com Ventosa'),
    (2, 'Ramal de Descarga'),
    (3, 'Ramal Comercial'),
    (4, 'Ramal de Incêndio'),
    (5, 'Ramal de Hidrante'),
    (6, 'Ramal Industrial'),
    (7, 'Ramal de Irrigação'),
    (8, 'Ramal Residencial'),
    (9, 'Ramal de Amostragem');

INSERT INTO catalogo.tipo_rede_agua (codigo, descricao)
VALUES
    (1, 'Distribuição'),
    (2, 'Dreno'),
    (3, 'Extravasor'),
    (4, 'Produção'),
    (5, 'Adutora'),
    (6, 'Linha de Recalque');

INSERT INTO catalogo.status (codigo, descricao)
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

INSERT INTO catalogo.fabricante (codigo, descricao, detalhes)
VALUES
    (1, 'Tigre S/A', NULL),
    (2, 'Saint-Gobain PAM', 'Tubulações em Ferro Fundido Dúctil e Adutoras'),
    (3, 'Amanco Wavin', 'Sistemas em PVC-O, PEAD e Infraestrutura Plástica'),
    (4, 'AVK Válvulas', 'Registros de Gaveta, Borboleta e Hidrantes Urbanos'),
    (5, 'KSB Bombas', 'Bombas de Grande Porte para Estações Elevatórias'),
    (6, 'Xylem (Flygt)', 'Sistemas de Bombeamento e Tratamento de Água'),
    (7, 'Mueller Water Products', 'Infraestrutura de Rede e Detecção de Vazamentos'),
    (8, 'Itron', 'Macromedição e Hidrometria Inteligente (IoT)'),
    (9, 'Georg Fischer (GF)', 'Sistemas de Eletrofusão e Conexões em PEAD'),
    (10, 'Hawle', 'Conexões de Amplo curso e Reparo de Redes'),
    (11, 'Valmatic', 'Válvulas de Retenção e Ventosas para Adutoras');

INSERT INTO catalogo.diametro_tubo_camisa (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (100, '4"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"'),
    (300, '12"'),
    (350, '14"'),
    (400, '16"'),
    (450, '18"'),
    (500, '20"'),
    (600, '24"'),
    (700, '28"'),
    (800, '32"'),
    (900, '36"'),
    (1000, '40"'),
    (1200, '48"');

INSERT INTO catalogo.tipo_enchimento_tubo_camisa (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Argamassa'),
    (2, 'Brita Fina'),
    (3, 'Areia');

INSERT INTO catalogo.direcao_fechamento_valvula (codigo, descricao)
VALUES
    (1, 'Anti-horário'),
    (2, 'Horário');

INSERT INTO catalogo.posicao_valvula (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Fechado'),
    (2, 'Aberto');

INSERT INTO catalogo.confiabilidade_geoespacial (codigo, descricao)
VALUES
    (0, 'Desconhecida'),
    (1, 'Alta'),
    (2, 'Média'),
    (3, 'Baixa');

INSERT INTO catalogo.fonte_geoespacial (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'As Built'),
    (2, 'CAD'),
    (3, 'Digitalizado'),
    (4, 'Levantamento GNSS/GPS'),
    (5, 'Croqui de Campo');

INSERT INTO catalogo.diametro_global (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (15, '1/2"'),
    (20, '3/4"'),
    (25, '1"'),
    (32, '1 1/4"'),
    (40, '1 1/2"'),
    (50, '2"'),
    (60, '2 1/2"'),
    (75, '3"'),
    (85, '3 1/2"'),
    (100, '4"'),
    (125, '5"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"'),
    (300, '12"'),
    (350, '14"'),
    (400, '16"'),
    (450, '18"'),
    (500, '20"'),
    (600, '24"'),
    (700, '28"'),
    (800, '32"'),
    (900, '36"'),
    (1000, '40"'),
    (1200, '48"');

INSERT INTO catalogo.fabricante_hidrante (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
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

INSERT INTO catalogo.diametro_secundario_hidrante (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (60, '2 1/2"'),
    (75, '3"'),
    (85, '3 1/2"'),
    (100, '4"'),
    (125, '5"'),
    (150, '6"');

INSERT INTO catalogo.diametro_hidrante (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (100, '4"'),
    (125, '5"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"');

INSERT INTO catalogo.tipo_interligacao (codigo, descricao)
VALUES
    (1, 'Compra'),
    (2, 'Venda'),
    (3, 'Compra ou Venda');

INSERT INTO catalogo.diametro_rede_agua (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (15, '1/2"'),
    (20, '3/4"'),
    (25, '1"'),
    (32, '1 1/4"'),
    (40, '1 1/2"'),
    (50, '2"'),
    (60, '2 1/2"'),
    (75, '3"'),
    (85, '3 1/2"'),
    (100, '4"'),
    (125, '5"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"'),
    (300, '12"'),
    (350, '14"'),
    (400, '16"'),
    (450, '18"'),
    (500, '20"'),
    (600, '24"'),
    (700, '28"'),
    (800, '32"'),
    (900, '36"'),
    (1000, '40"'),
    (1200, '48"');

INSERT INTO catalogo.material_rede_agua (codigo, descricao, detalhes)
VALUES
    (1, 'Cimento-Amianto (CA)', 'Obsoleto/Manutenção - NBR 6422'),
    (2, 'Alvenaria/Tijolo', 'Canais ou caixas de passagem antigas'),
    (3, 'Ferro Fundido Cinzento (FoFo)', 'Redes antigas - Menor resistência que o Dúctil'),
    (4, 'Cobre', 'Instalações prediais de água quente/fria'),
    (5, 'Concreto Simples (CS)', 'Galerias de águas pluviais/Esgoto por gravidade'),
    (6, 'Concreto Armado (CA)', 'Adutoras de grande porte ou galerias - NBR 8890'),
    (7, 'Ferro Fundido Dúctil (FFD)', 'Padrão para adutoras e redes de pressão - NBR 7675'),
    (8, 'Aço Galvanizado', 'Ramais prediais e combate a incêndio'),
    (9, 'Aço Carbono', 'Grandes adutoras e obras de arte (pontes)'),
    (10, 'Polietileno de Alta Densidade (PEAD)', 'Ramais e redes flexíveis (MND) - NBR 15597'),
    (11, 'Polipropileno (PPR)', 'Instalações prediais modernas (termofusão)'),
    (12, 'PVC Soldável (Marrom)', 'Uso predial interno - NBR 5648'),
    (13, 'PVC PBA (Classe 12/15)', 'Redes de distribuição de água - NBR 10355'),
    (14, 'PVC Defofort', 'Redes de adução e distribuição (parede interna lisa)'),
    (15, 'PVC Orizon (Biorientado)', 'PVC-O - Alta resistência à pressão e impactos'),
    (16, 'CPVC', 'Policloreto de Vinila Clorado - Água quente'),
    (17, 'PRFV', 'Poliéster Reforçado com Fibra de Vidro - Grandes diâmetros'),
    (18, 'Concreto Protendido (PCCP)', 'Adutoras de altíssima pressão com cilindro de aço'),
    (19, 'Cerâmica/Vidrado', 'Antigas redes de esgoto (raro em água)'),
    (20, 'Chumbo', 'Obsoleto - Encontrado apenas em redes secularíssimas'),
    (21, 'Polietileno (PE)', 'Uso geral em tubos flexíveis'),
    (22, 'Madeira/Stave Pipe', 'Histórico/Industrial muito antigo');

INSERT INTO catalogo.diametro_hidrometro (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (20, '3/4"'),
    (25, '1"'),
    (32, '1 1/4"'),
    (40, '1 1/2"'),
    (50, '2"'),
    (60, '2 1/2"'),
    (75, '3"'),
    (85, '3 1/2"'),
    (100, '4"'),
    (125, '5"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"'),
    (300, '12"'),
    (350, '14"'),
    (400, '16"'),
    (450, '18"'),
    (500, '20"'),
    (600, '24"');

INSERT INTO catalogo.diametro_bomba (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (100, '4"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"'),
    (300, '12"'),
    (350, '14"'),
    (400, '16"'),
    (450, '18"'),
    (500, '20"'),
    (600, '24"'),
    (700, '28"'),
    (800, '32"'),
    (900, '36"'),
    (1200, '48"');

INSERT INTO catalogo.tipo_modelo_bomba (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Fluxo Axial'),
    (2, 'Centrífuga'),
    (3, 'Jato'),
    (4, 'Alternativo'),
    (5, 'Rotativo'),
    (6, 'Turbina');

INSERT INTO catalogo.tipo_amostra (codigo, descricao)
VALUES
    (1, 'Grab Sample'),
    (2, 'Composite Sample'),
    (3, 'Other');

INSERT INTO catalogo.diametro_ramal_agua (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (15, '1/2"'),
    (20, '3/4"'),
    (25, '1"'),
    (32, '1 1/4"'),
    (40, '1 1/2"'),
    (50, '2"'),
    (60, '2 1/2"'),
    (75, '3"'),
    (85, '3 1/2"'),
    (100, '4"'),
    (125, '5"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"');

INSERT INTO catalogo.tipo_material_ramal_agua (codigo, descricao, detalhes)
VALUES
    (0, 'Desconhecido', NULL),
    (1, 'Cobre', 'Instalações prediais de água quente/fria'),
    (2, 'Aço Galvanizado', 'Ramais prediais e combate a incêndio'),
    (3, 'Ferro Fundido Cinzento (FoFo)', 'Redes antigas - Menor resistência que o Dúctil'),
    (4, 'Polietileno de Alta Densidade (PEAD)', 'Ramais e redes flexíveis (MND) - NBR 15597'),
    (5, 'Polipropileno (PPR)', 'Instalações prediais modernas (termofusão)'),
    (6, 'PVC Soldável (Marrom)', 'Uso predial interno - NBR 5648'),
    (7, 'PVC PBA (Classe 12/15)', 'Redes de distribuição de água - NBR 10355'),
    (8, 'PVC Defofort', 'Redes de adução e distribuição (parede interna lisa)');

INSERT INTO catalogo.tipo_filtragem_agua (codigo, descricao)
VALUES
    (1, 'Carvão Ativado'),
    (2, 'Osmose Reversa'),
    (3, 'Radiação Ultravioleta'),
    (4, 'Filtração por Sedimentos'),
    (5, 'Filtração Biológica');

INSERT INTO catalogo.tipo_estacao_tratamento_agua (codigo, descricao)
VALUES
    (1, 'Captação Subterrânea'),
    (2, 'Captação Superficial'),
    (3, 'Dessalinização');

INSERT INTO catalogo.qualidade_agua (codigo, descricao)
VALUES
    (1, 'Água Potável'),
    (2, 'Água de Irrigação'),
    (3, 'Água para Incêndio'),
    (4, 'Água Bruta'),
    (5, 'Água em Tratamento'),
    (6, 'Água Tratada');

INSERT INTO catalogo.tipo_valvula_agua (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Esfera'),
    (2, 'Borboleta'),
    (3, 'Cônica'),
    (4, 'Gaveta'),
    (5, 'Plug');

COMMIT;
