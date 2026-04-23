-- PERF: Create triggers in batch
-- TRIGGER: usuario_criacao
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
        AND table_name NOT LIKE ('type_%')
            LOOP
				EXECUTE format('ALTER TABLE %2$I.%1$I
				    ADD COLUMN IF NOT EXISTS data_criacao timestampz,
				    ADD COLUMN IF NOT EXISTS usuario_criacao varchar(64);
				    ', mytables.table_name, mytables.table_schema);

				EXECUTE format('CREATE OR REPLACE TRIGGER usuario_criacao
				    BEFORE INSERT ON %2$I.%1$I
				    FOR EACH ROW
				    EXECUTE FUNCTION %2$I.usuario_criacao();
				    ', mytables.table_name, mytables.table_schema);
            END LOOP;
END
$$;

-- PERF: Create triggers in batch
-- TRIGGER: usuario_atualizacao
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
        AND table_name NOT LIKE ('type_%')
            LOOP
				EXECUTE format('ALTER TABLE %2$I.%1$I
				    ADD COLUMN IF NOT EXISTS data_atualizacao timestamp,
				    ADD COLUMN IF NOT EXISTS usuario_atualizacao varchar(20);
				    ', mytables.table_name, mytables.table_schema);

				EXECUTE format('CREATE OR REPLACE TRIGGER usuario_atualizacao
				    BEFORE UPDATE ON %2$I.%1$I
				    FOR EACH ROW
				    EXECUTE FUNCTION %2$I.usuario_atualizacao();
				    ', mytables.table_name, mytables.table_schema);
            END LOOP;
END
$$;
