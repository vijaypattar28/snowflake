// List all users
Show Users

// Describe the user and display what all the columns mean
Describe User RandyMinder

// Use the result_scan function which allows us to treat the output as a table
// that can be queried. 
SELECT *
FROM table(result_scan(last_query_id()))
ORDER BY "name";

// Display all roles in the account
Show Roles

// Display all grants in the account
Show Grants