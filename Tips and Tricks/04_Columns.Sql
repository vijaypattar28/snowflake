// Get column information
SELECT
    c.table_catalog,
    c.table_schema,
    c.table_name,
    c.column_name,
    c.ordinal_position,
    c.column_default,
    c.is_nullable,
    c.data_type,
    c.character_maximum_length,
    c.character_octet_length,
    c.numeric_precision,
    c.numeric_precision_radix,
    c.numeric_scale,
    c.collation_name,
    c.is_identity,
    c.identity_generation,
    c.identity_start,
    c.identity_increment,
    c.identity_cycle,
    c.comment
FROM information_schema.tables t
    INNER JOIN information_schema.columns c on c.table_schema = t.table_schema and c.table_name = t.table_name
WHERE t.table_type = 'BASE TABLE'
ORDER BY t.table_schema, t.table_name, ordinal_position;

// Get column information for a particular table and schema
SELECT
    table_catalog,
    table_schema,
    table_name,
    column_name,
    ordinal_position,
    column_default,
    is_nullable,
    data_type,
    character_maximum_length,
    character_octet_length,
    numeric_precision,
    numeric_precision_radix,
    numeric_scale,
    collation_name,
    is_identity,
    identity_generation,
    identity_start,
    identity_increment,
    identity_cycle,
    comment
FROM information_schema.columns
WHERE table_schema ilike 'TPCDS_SF100TCL' And table_name ilike 'Call_Center'
ORDER BY ordinal_position;

// Another way to display all columns
Show columns
