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

------------------------------------

-- 3. Select fields with aliases
SELECT c.code AS country_code, c.name, e.year, e.inflation_rate
FROM countries AS c
  -- 1. Join to economies (alias e)
  INNER JOIN economies AS e
    -- 2. Match on code
    ON c.code = e.code;
    
------------------------------------

-- 4. Select fields
SELECT c.code, name, region, year, fertility_rate
  -- 1. From countries (alias as c)
  FROM countries AS c
  -- 2. Join to populations (as p)
  INNER JOIN populations AS p
    -- 3. Match on country code
    ON c.code = p.country_code
    
 ------------------------------------
 
 -- 6. Select fields
SELECT c.code, name, region, e.year, fertility_rate, e.unemployment_rate
  -- 1. From countries (alias as c)
  FROM countries AS c
  -- 2. Join to populations (as p)
  INNER JOIN populations AS p
    -- 3. Match on country code
    ON c.code = p.country_code
  -- 4. Join to economies (as e)
  INNER JOIN economies AS e
    -- 5. Match on country code
    ON c.code = e.code ;
  
 ------------------------------------

-- 6. Select fields
SELECT c.code, name, region, e.year, fertility_rate, unemployment_rate
  -- 1. From countries (alias as c)
  FROM countries AS c
  -- 2. Join to populations (as p)
  INNER JOIN populations AS p
    -- 3. Match on country code
    ON c.code = p.country_code
  -- 4. Join to economies (as e)
  INNER JOIN economies AS e
    -- 5. Match on country code and year
    ON c.code = e.code AND e.year = p.year ;
