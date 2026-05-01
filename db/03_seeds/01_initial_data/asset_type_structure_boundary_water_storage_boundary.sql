-- TABELA: catalogos.tipo_limite_reservatorio (Asset Type Structure Boundary Water Storage Boundary)
INSERT INTO catalogos.tipo_limite_reservatorio (codigo, descricao)
VALUES
    (0, 'Desconhecido'),
    (1, 'Tanque Hidropneumático'), -- Comum em sistemas de pressurização (Booster)
    (2, 'Reservatório'),           -- Termo genérico para unidades de armazenamento
    (3, 'Bacia de Retenção'),      -- Usado em drenagem ou controle de cheias
    (4, 'Tanque de Armazenamento'), -- Geralmente tanques de produtos químicos ou pulmão
    (5, 'Tanque de Amortecimento'), -- Também chamado de Tanque Unidirecional (TAU) ou Chaminé de Equilíbrio
    (6, 'Reservatório Elevado');   -- O termo técnico para "Tower" (Castelo d'água)
