/* citus--6.1-x--6.1-y.sql */

SET search_path = 'pg_catalog';

CREATE FUNCTION isolate_tenant_to_new_shard(table_name regclass, tenant_id "any")
	RETURNS bigint
    LANGUAGE C STRICT
    AS 'MODULE_PATHNAME', $$isolate_tenant_to_new_shard$$;
COMMENT ON FUNCTION isolate_tenant_to_new_shard(table_name regclass, tenant_id "any")
    IS 'isolate a tenant to its own shard and return the shard id';

RESET search_path;
