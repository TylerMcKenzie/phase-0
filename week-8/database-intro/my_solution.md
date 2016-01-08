
1. Select all data for all states.
	- SELECT * FROM states;
2. Select all data for all regions.
	- SELECT * FROM regions;
3. Select the state_name and population for all states.
	- SELECT state_name, population FROM states;
4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.
	- SELECT state_name, population From states ORDER BY population DESC;
5. Select the state_name for the states in region 7
	- SELECT state_name FROM states WHERE region_id = 7;
6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.
	- SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;
7. Select the state_name for states with a population between 1 million and 1.5 million people.
	- SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;
8. Select the state_name and region_id for states ordered by region in ascending order.
	- SELECT state_name, region_id FROM states ORDER BY region_id ASC;
9. Select the region_name for the regions with "Central" in the name.
	- SELECT region_name FROM regions WHERE region_name LIKE '%Central%';
10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).
	- SELECT region_name, state_name FROM states JOIN regions ON states.region_id=regions.id ORDER BY region_id ASC;

![Tables](/week-8/databse-intro/schema_img.png)

What are databases for?
-Databases are for storing large amounts of information for a webpage or program
What is a one-to-many relationship?
-A one-to-many relationship is when one datapoint is connected to many other data points.
What is a primary key? What is a foreign key? How can you determine which is which?
-A primary he is a unique indentifier for a row within a table whereas a foreign key is an identifier that links to another primary key in a different data table
How can you select information out of a SQL database? What are some general guidelines for that?
-To select data out of a SQL database one would us the SELECT command and the table name FROM which you want that data. And can also use certain constraints like BETWEEN and WHERE.