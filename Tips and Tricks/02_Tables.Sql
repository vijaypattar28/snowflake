// Generate a list of tables
SELECT *
FROM information_schema.tables 
ORDER BY table_schema, table_name; 

// Retrieve the size, in bytes, of all tables
SELECT table_schema,sum(bytes)
FROM SNOWFLAKE_SAMPLE_DATA.information_schema.tables
GROUP BY table_schema;

// Another way of listing all tables except this shows tables which have been dropped. 
Show Tables

// List all recently added tables
SELECT *
FROM information_schema.tables
WHERE created > DATEADD(DAY, -30, CURRENT_TIMESTAMP) AND table_type = 'BASE TABLE'
ORDER BY created desc;

// List all recently modified tables
SELECT *
FROM information_schema.tables
WHERE last_altered > DATEADD(DAY, -30, CURRENT_TIMESTAMP) AND table_type = 'BASE TABLE'
ORDER BY last_altered desc;