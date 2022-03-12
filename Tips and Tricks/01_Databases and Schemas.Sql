// Retrieve information about all the databases in the account
SELECT *
FROM information_schema.databases
ORDER BY database_name;

// Retrieve information about all the schemas in the account
SELECT *
FROM information_schema.schemata
ORDER BY schema_name;

// Retrieve information about all the schemas in the account that a user created
SELECT *
FROM information_schema.schemata
WHERE schema_name not in ('INFORMATION_SCHEMA', 'PUBLIC')
ORDER BY schema_name;