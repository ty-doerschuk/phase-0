1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name, population FROM states;
4. SELECT state_name, population FROM states ORDER BY population DESC;
5. SELECT state_name FROM states WHERE region_id = 7;
6. SELECT state_name, population_density FROM states ORDER BY population_density ASC;
7. SELECT state_name FROM states WHERE population >= 1000000 AND population <= 1500000;
8. SELECT state_name, region_id FROM states ORDER BY region_id ASC;
9. SELECT region_name FROM regions WHERE region_name LIKE '%central%';
10. SELECT regions.region_name, states.state_name FROM states LEFT JOIN regions ON states.region_id=regions.id ORDER BY region_id ASC;

[Schema Link](/dbc-schema.png)

What are databases for?
Databases store mass amounts of data information.

What is a one-to-many relationship?
It has to do with more than one table. This is where one row in a table can be related to many rows in a related table.

What is a primary key? What is a foreign key? How can you determine which is which?
Primary key uniquely identifies each record in a database table. A foreign key is when a table uses a column to list the primary key of a related table, thus primary key is linked to a second table.

How can you select information out of a SQL database? What are some general guidelines for that?
Through correct syntax with the major commands such SELECT, UPDATE, DELETE, INSERT, WHERE. You then input these into a SQL statements to access the data. It’s good to know all commands will be upper case and every SQL statement will end with a semi colon.
