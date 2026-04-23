-- HACK: Fixed limitation of the inheritance feature
DO $$
DECLARE
    mytables record;
BEGIN
    FOR mytables IN
    SELECT
        table_schema,
        table_name
    FROM
        information_schema.tables
    WHERE
        table_schema = 'sistema_agua'
        AND table_name NOT LIKE ('ativo')
            LOOP
				EXECUTE format($body$ ALTER TABLE IF EXISTS %2$I.%1$I
				    ADD CONSTRAINT "%1$s_id_global_pk" PRIMARY KEY (id_global);
				    $body$,
				    mytables.table_name,
				    mytables.table_schema);

				EXECUTE format($body$ ALTER TABLE IF EXISTS %2$I.%1$I
				    ADD CONSTRAINT "%1$s_situacao_fk" FOREIGN KEY (situacao)
				    REFERENCES catalogos.situacoes (codigo);
				    $body$,
				    mytables.table_name,
				    mytables.table_schema);

				EXECUTE format($body$ ALTER TABLE IF EXISTS %2$I.%1$I
				    ADD CONSTRAINT "%1$s_proprietario_fk" FOREIGN KEY
				    (proprietario) REFERENCES catalogos.proprietarios (codigo);
				    $body$,
				    mytables.table_name,
				    mytables.table_schema);

				EXECUTE format($body$ ALTER TABLE IF EXISTS %2$I.%1$I
				    ADD CONSTRAINT "%1$s_responsavel_manutencao_fk" FOREIGN KEY
				    (responsavel_manutencao) REFERENCES catalogos.gestores
				    (codigo);
				    $body$,
				    mytables.table_name,
				    mytables.table_schema);

				EXECUTE format($body$ ALTER TABLE IF EXISTS %2$I.%1$I
				    ADD CONSTRAINT "%1$s_fonte_espacial_fk" FOREIGN KEY
				    (fonte_espacial) REFERENCES catalogos.fonte_espacial
				    (codigo);
				    $body$,
				    mytables.table_name,
				    mytables.table_schema);

				EXECUTE format($body$ ALTER TABLE IF EXISTS %2$I.%1$I
				    ADD CONSTRAINT "%1$s_confiabilidade_espacial_fk" FOREIGN KEY
				    (confiabilidade_espacial) REFERENCES
				    catalogos.confiabilidade_espacial (codigo);
				    $body$,
				    mytables.table_name,
				    mytables.table_schema);
            END LOOP;
END
$$;
