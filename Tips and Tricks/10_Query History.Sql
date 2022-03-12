// Retrieve all queries submitted by any user
// Table functions are a very nice technique to return a set of rows
// instead of a scalar value. The table function will always appear in the from
// clause of a SQL statement and return a table of values and they take
// some sort of scalar expression as input.

// The query below will return the results with in a seven day period.

SELECT *
FROM table(information_schema.QUERY_HISTORY())
ORDER BY start_time desc;

// Retrieve all queries submitted by a particular user
SELECT *
FROM table(information_schema.QUERY_HISTORY_BY_USER('vpattar'))
ORDER BY start_time desc;

// Retrieve all queries submitted by a particular user,
// within a specified time period. The time
// period must fall within the last 7 days or an error will occur.
SELECT *
FROM table(information_schema.QUERY_HISTORY_BY_USER(
    User_NAME => 'vpattar',
    end_time_range_start => to_timestamp_ltz('2021-5-18 07:00:00.000 -0400'),
    end_time_range_end => to_timestamp_ltz('2021-5-18 08:00:00.000 -0400')))
ORDER BY start_time desc;

// Retrieve all queries submitted by a particular warehouse and get me more than
// 5000 records and not 100 records
SELECT *
FROM table(information_schema.QUERY_HISTORY_BY_WAREHOUSE(WAREHOUSE_NAME => 'COMPUTE_XSMALL', RESULT_LIMIT => 5000))
ORDER BY start_time desc;

// Retrieve all queries submitted in a particular session
SELECT *
FROM table(information_schema.QUERY_HISTORY_BY_SESSION(SESSION_ID => 373773824217094))
ORDER BY start_time desc;
