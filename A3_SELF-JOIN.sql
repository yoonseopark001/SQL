# SElF-JOIN // issue

SELECT p1.country AS country1, p2.country AS country2, p1.continent # country column selected twice
FROM prime_ministers AS p1
INNER JOIN prime_ministers AS p2
ON p1.continent = p2.continent
LIMIT 15;

---------------------------------------------------------
# SELF-JOIN // solved

SELECT p1.country AS country1, p2.country AS country2, p1.continent # country column selected twice
FROM prime_ministers AS p1
INNER JOIN prime_ministers AS p2
ON p1.continent =       p2.continent AND p1.country <> p2.country # match or not match
LIMIT 15;

----------------------------------------------------------

# SElF-JOIN // issue

-- 4. Select fields with aliases
SELECT p1.country_code,
p1.size AS size2010,
p2.size AS size2015
-- 1. From populations (alias as p1)
FROM populations AS p1
  -- 2. Join to itself (alias as p2)
  JOIN populations AS p2
    -- 3. Match on country code
    ON p1.country_code = p2.country_code

---------------------------------------------------------
# SELF-JOIN // solved    

-- 5. Select fields with aliases
SELECT p1.country_code,
       p1.size AS size2010,
       p2.size AS size2015
-- 1. From populations (alias as p1)
FROM populations as p1
  -- 2. Join to itself (alias as p2)
  INNER JOIN populations as p2
    -- 3. Match on country code
    ON p1.country_code = p2.country_code
        -- 4. and year (with calculation)
        AND p1.year = p2.year-5

---------------------------------------------------------

SELECT p1.country_code,
       p1.size AS size2010, 
       p2.size AS size2015,
       -- 1. calculate growth_perc
       ((p2.size - p1.size)/p1.size * 100.0) AS growth_perc
-- 2. From populations (alias as p1)
FROM populations AS p1
  -- 3. Join to itself (alias as p2)
  INNER JOIN populations AS p2
    -- 4. Match on country code
    ON p1.country_code = p2.country_code
        -- 5. and year (with calculation)
        AND p1.year = p2.year - 5;        
