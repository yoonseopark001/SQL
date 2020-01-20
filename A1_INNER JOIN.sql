##############
# PostgreSQL #
##############

# INNER JOIN

SELECT *
FROM left_table
INNER JOIN right_table
ON left_table.id = right_table.id;

------------------------------------

SELECT p1.country, p1.continent,
       prime_minister, prisident
FROM prime_minister AS p1
INNER JOIN presidents AS p2
ON p1.country = p2.country;

------------------------------------

SELECT * 
FROM cities
  -- 1. Inner join to countries
  INNER JOIN countries
    -- 2. Match on the country codes
    ON cities.country_code = countries.code;

------------------------------------

SELECT cities.name as city, countries.name as country, region
FROM cities
  INNER JOIN countries
    ON cities.country_code = countries.code;
