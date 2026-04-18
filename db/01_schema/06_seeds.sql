-- TYPE: status_adocao
INSERT INTO catalogos.status_adocao (codigo, descricao)
VALUES
(1, 'Available'),
(2, 'Adopted');

-- TYPE: gestor_ativo
INSERT INTO catalogos.gestor_ativo (codigo, descricao)
VALUES
(1, 'Our Agency'),
(2, 'Private'),
(3, 'Other');

-- TYPE: proprietario_ativo
INSERT INTO catalogos.proprietario_ativo (codigo, descricao)
VALUES
(1, 'Our Agency'),
(2, 'Private'),
(3, 'Other');

-- TYPE: tipo_limite_elevatoria_agua
INSERT INTO catalogos.tipo_limite_elevatoria_agua (codigo, descricao)
VALUES
(1, 'Booster Station'),
(2, 'Pump Station');

-- TYPE: tipo_limite_reservatorio
INSERT INTO catalogos.tipo_limite_reservatorio (codigo, descricao)
VALUES
(1, 'Hydropneumatic Tank'),
(2, 'Reservoir'),
(3, 'Retention Area'),
(4, 'Storage Tank'),
(5, 'Surge Tank'),
(6, 'Tower');

-- TYPE: tipo_limite_abastecimento
INSERT INTO catalogos.tipo_limite_abastecimento (codigo, descricao)
VALUES
(1, 'Interconnect'),
(2, 'Treatment Plant'),
(3, 'Well');

-- TYPE: tipo_ativo_agua_tubo_camisa
INSERT INTO catalogos.tipo_ativo_agua_tubo_camisa (codigo, descricao)
VALUES (1, 'Casing');

-- TYPE: tipo_ativo_agua_valvula_retencao
INSERT INTO catalogos.tipo_ativo_agua_valvula_retencao (codigo, descricao)
VALUES
(1, 'Double Check Detector'),
(2, 'Double Check Valve'),
(3, 'Reduced Pressure Detector'),
(4, 'Reduced Pressure Zone');

-- TYPE: tipo_ativo_agua_hidrante
INSERT INTO catalogos.tipo_ativo_agua_hidrante (codigo, descricao)
VALUES (1, 'Fire Hydrant');

-- TYPE: tipo_ativo_agua_valvula
INSERT INTO catalogos.tipo_ativo_agua_valvula (codigo, descricao)
VALUES
(1, 'Air Gape'),
(2, 'Altitude'),
(3, 'Check');

-- TYPE: tipo_ativo_agua_descarga
INSERT INTO catalogos.tipo_ativo_agua_descarga (codigo, descricao)
VALUES
(1, 'Automatic Flushing'),
(2, 'Blow Off'),
(3, 'Fire Plug Valve'),
(4, 'Hydrant'),
(5, 'Post Hydrant');

-- TYPE: tipo_ativo_agua_valvula_pressao
INSERT INTO catalogos.tipo_ativo_agua_valvula_pressao (codigo, descricao)
VALUES
(1, 'Air and Vacuum'),
(2, 'Air Release'),
(3, 'Combination Air'),
(4, 'Pressure Limiting'),
(5, 'Pressure Reducing'),
(6, 'Pressure Release'),
(7, 'Pressure Sustaining'),
(8, 'Surge');

-- TYPE: tipo_ativo_agua_bomba
INSERT INTO catalogos.tipo_ativo_agua_bomba (codigo, descricao)
VALUES
(1, 'Bosster'),
(2, 'Chemical'),
(3, 'Primary');

-- TYPE: tipo_ativo_agua_ligacao
INSERT INTO catalogos.tipo_ativo_agua_ligacao (codigo, descricao)
VALUES
(1, 'Commercial'),
(2, 'Fire'),
(3, 'Industrial'),
(4, 'Irrigation'),
(5, 'Residential');

-- TYPE: tipo_ativo_agua_hidrometro
INSERT INTO catalogos.tipo_ativo_agua_hidrometro (codigo, descricao)
VALUES
(1, 'Commercial'),
(2, 'Fire'),
(3, 'Industrial'),
(4, 'Irrigation'),
(5, 'Residential');

-- TYPE: tipo_ativo_agua_valvula_ramal
INSERT INTO catalogos.tipo_ativo_agua_valvula_ramal (codigo, descricao)
VALUES
(1, 'Blow Off'),
(2, 'Flap'),
(3, 'Hydrant'),
(4, 'Purge'),
(5, 'Sampling'),
(6, 'Service');

-- TYPE: tipo_ativo_agua_reservatorio
INSERT INTO catalogos.tipo_ativo_agua_reservatorio (codigo, descricao)
VALUES
(1, 'Hydropneumatic Tank'),
(2, 'Reservoir'),
(3, 'Standpipe'),
(4, 'Storage Tank'),
(5, 'Surge Tank'),
(6, 'Tower');

-- TYPE: tipo_ativo_agua_poco
INSERT INTO catalogos.tipo_ativo_agua_poco (codigo, descricao)
VALUES
(1, 'Water'),
(2, 'Monitoring'),
(3, 'Injection');

-- TYPE: tipo_ativo_agua_macromedidor
INSERT INTO catalogos.tipo_ativo_agua_macromedidor (codigo, descricao)
VALUES
(1, 'Bulk'),
(2, 'DMA'),
(3, 'Emergency Connection'),
(4, 'Pump Station');

-- TYPE: tipo_ativo_agua_valvula_sistema
INSERT INTO catalogos.tipo_ativo_agua_valvula_sistema (codigo, descricao)
VALUES
(1, 'Bypass'),
(2, 'Interconnect'),
(3, 'Isolation Station'),
(4, 'Pressure Zone'),
(5, 'Supply'),
(6, 'System');

-- TYPE: tipo_ativo_agua_conexao
INSERT INTO catalogos.tipo_ativo_agua_conexao (codigo, descricao)
VALUES
(1, 'Clamp'),
(2, 'Corporation Stop'),
(3, 'Coupling'),
(4, 'Cross'),
(5, 'Elbow'),
(6, 'End Cup'),
(7, 'Expansion Joint'),
(8, 'Flange'),
(9, 'Plug'),
(10, 'Reducer'),
(11, 'Reducing Cross'),
(12, 'Reducing Tee'),
(13, 'Saddle'),
(14, 'Screw'),
(15, 'Sleeve'),
(16, 'Tap'),
(17, 'Tapping Saddle'),
(18, 'Taping Sleeve'),
(19, 'Tee'),
(20, 'Transition'),
(21, 'Weld'),
(22, 'Wye');

-- TYPE: tipo_ativo_agua_ramal_predial
INSERT INTO catalogos.tipo_ativo_agua_ramal_predial (codigo, descricao)
VALUES
(1, 'Air and Vacuum Service'),
(2, 'Blow Off Service'),
(3, 'Commercial Service'),
(4, 'Fire Service'),
(5, 'Hydrant Service'),
(6, 'Industrical Service'),
(7, 'Irrigation Service'),
(8, 'Residential Service'),
(9, 'Sampling Service');

-- TYPE: tipo_ativo_rede_agua
INSERT INTO catalogos.tipo_ativo_rede_agua (codigo, descricao)
VALUES
(1, 'Distribution Main'),
(2, 'Drain'),
(3, 'Overflow'),
(4, 'Production'),
(5, 'Transmission Main');

-- TYPE: tipo_atribuicao_hidrante
INSERT INTO catalogos.tipo_atribuicao_hidrante (codigo, descricao)
VALUES
(1, 'Flow Test'),
(2, 'Flush');

-- TYPE: ciclo_vida
INSERT INTO catalogos.ciclo_vida (codigo, descricao)
VALUES
(0, 'Unknown'),
(1, 'Proposed'),
(2, 'Approved'),
(3, 'Under Construction'),
(4, 'In Service'),
(5, 'To Be Retired'),
(6, 'Abandoned'),
(7, 'Retired'),
(8, 'Removed'),
(9, 'Out of Service');

-- TYPE: fabricante
INSERT INTO catalogos.fabricantes (codigo, descricao)
VALUES
(0, 'Unknown'),
(1, 'Ames Company Inc'),
(2, 'BAVCO'),
(3, 'Cla-Val'),
(4, 'Conbraco Industries Inc'),
(5, 'Febco Backflow Prevention'),
(6, 'Danfoss Flomatic Valve'),
(7, 'Mid-West Instrument'),
(8, 'Watts Regulator'),
(9, 'Hunter Industries'),
(10, 'Wilkins/Zurn Industries'),
(11, 'Other');

-- TYPE: diametro_tubo_camisa
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

-- TYPE: tipo_enchimento_tubo_camisa
INSERT INTO catalogos.tipo_enchimento_tubo_camisa (codigo, descricao)
VALUES
(1, 'Grout'),
(2, 'Pea Gravel'),
(3, 'Sand');

-- TYPE: direcao_fechamento_valvula
INSERT INTO catalogos.direcao_fechamento_valvula (codigo, descricao)
VALUES
(1, 'Counter Clockwise'),
(2, 'Clockwise');

-- TYPE: status_valvula
INSERT INTO catalogos.status_valvula (codigo, descricao)
VALUES
(0, 'Closed'),
(1, 'Open');

-- TYPE: confiabilidade_espacial
INSERT INTO catalogos.confiabilidade_espacial (codigo, descricao)
VALUES
(0, 'Unknown'),
(1, 'High'),
(2, 'Medium'),
(3, 'Low');

-- TYPE: fonte_espacial
INSERT INTO catalogos.fonte_espacial (codigo, descricao)
VALUES
(0, 'Unknown'),
(1, 'As-Built'),
(2, 'CAD'),
(3, 'Digitilized'),
(4, 'GPS/GNSS'),
(5, 'Field Sketch');

-- TYPE: diametro_agua
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

-- TYPE: fabricantes_hidrante
INSERT INTO catalogos.fabricantes_hidrante (codigo, descricao)
VALUES
(0, 'Unknown'),
(1, 'American Darling'),
(2, 'Clow Corporation'),
(3, 'Corey'),
(4, 'Dresser'),
(5, 'Eddy'),
(6, 'Iowa Valve'),
(7, 'Kennedy Valve'),
(8, 'M&H Valve'),
(9, 'Mueller CompanyA'),
(10, 'Traverse City'),
(11, 'US Pipe'),
(12, 'Waterous'),
(13, 'Wood-Mathews'),
(14, 'Other');

-- TYPE: tipo_ativo_agua_interligacao
INSERT INTO catalogos.tipo_ativo_agua_interligacao (codigo, descricao)
VALUES
(1, 'Buy'),
(2, 'Sell'),
(3, 'Buy or Sell');

-- TYPE: material_rede_agua
INSERT INTO catalogos.material_rede_agua (codigo, descricao)
VALUES
(1, 'Asbestos Cement - AC'),
(2, 'Brick - BR'),
(3, 'Cast Iron - CAS'),
(4, 'Copper - COP'),
(5, 'Concrete (Non-Reinforced) - CP'),
(6, 'Concrete Segments (Bolted) - CSB'),
(7, 'Concrete Segments (Unbolted) - CSU'),
(8, 'Ductile Iron - DIP'),
(9, 'Galvanized Pipe - GP'),
(10, 'Pitch Fiber (Orangeburg) - OB'),
(11, 'Plastic/Steel Composite - PSC'),
(12, 'Polyethylene - PE'),
(13, 'Polypropylene - PP'),
(14, 'Polyvinyl Chloride - PVC'),
(15, 'Steel - SP'),
(16, 'Transite - TTE'),
(17, 'Wood - WD'),
(18, 'Pre-stressed Concrete Cylinder Pipe - PCCP'),
(19, 'Pre-stressed Concrete Embedded Cylinder Pipe AWWA C-301 - PCPE'),
(20, 'Pre-stressed Concrete Lined Cylinder Pipe AWWA C-301 - PCPL'),
(21, 'Steel Cylinder Reinforced Concrete Pipe - SRC'),
(22, 'High Density Polyethylene - HDPE'),
(23, 'Unreinforced Concrete Pipe - URC'),
(24, 'Fiberglass Reinforced Pipe - FRP'),
(25, 'Reinforced Concrete Pipe - RCP'),
(26, 'Corrugated Pipe - CORR'),
(27, 'Plastic - PLA'),
(28, 'Non-Plastic - NPLA');

-- TYPE: tipo_bomba_agua
INSERT INTO catalogos.tipo_bomba_agua (codigo, descricao)
VALUES
(1, 'Axial Flow'),
(2, 'Centrifugal'),
(3, 'Jet'),
(4, 'Reciprocating'),
(5, 'Rotary'),
(6, 'Turbine');

-- TYPE: material_ramal_agua
INSERT INTO catalogos.material_ramal_agua (codigo, descricao)
VALUES
(1, 'Cast Iron - CAS'),
(2, 'Copper - COP'),
(3, 'Ductile Iron - DIP'),
(4, 'Polyvinyl Chloride - PVC'),
(5, 'Lead - LP');

-- TYPE: tipo_filtragem_abastecimento
INSERT INTO catalogos.tipo_filtragem_abastecimento (codigo, descricao)
VALUES
(1, 'Carbon'),
(2, 'Reverse Osmosis'),
(3, 'Ultraviolet Light'),
(4, 'Sediment'),
(5, 'Biological');

-- TYPE: tipo_estacao_tratamento_agua
INSERT INTO catalogos.tipo_estacao_tratamento_agua (codigo, descricao)
VALUES
(1, 'Goundwater'),
(2, 'Surface Water'),
(3, 'Desalination');

-- TYPE: tipo_agua
INSERT INTO catalogos.tipo_agua (codigo, descricao)
VALUES
(1, 'Potable'),
(2, 'Irrigation'),
(3, 'Fire'),
(4, 'Raw'),
(5, 'Intermediate'),
(6, 'Finished');

-- TYPE: tipo_valvula_agua
INSERT INTO catalogos.tipo_valvula_agua (codigo, descricao)
VALUES
(1, 'Ball'),
(2, 'Butterfly'),
(3, 'Cone'),
(4, 'Gate'),
(5, 'Plug');
