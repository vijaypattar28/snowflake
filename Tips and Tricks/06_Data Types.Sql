// Execute a query that retrieves all columns with a data type of NUMBER or FLOAT

SELECT c.*
FROM information_schema.columns c
    INNER JOIN information_schema.tables t ON t.table_schema = c.table_schema
        AND t.table_name = c.table_name
        AND t.table_type = 'BASE TABLE'
WHERE c.data_type in ('NUMBER', 'FLOAT')
ORDER BY c.table_schema,c.table_name,c.ordinal_position;

// Calculate the number of columns and tables containing each data type
SELECT  
    c.data_type,
    count(*) as number_of_columns, 
    count(distinct t.table_schema || '.' ||  t.table_name ) AS number_of_tables
FROM information_schema.tables t
    INNER JOIN information_schema.columns c on c.table_schema = t.table_schema and c.table_name = t.table_name
WHERE table_type = 'BASE TABLE'   
GROUP BY c.data_type
ORDER BY count(*) desc;