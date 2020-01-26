SELECT left_table.id AS L_id
       left_table.val AS L_var
       right_table.val AS R_var
FROM left_table
INNER JOIN right_table
ON left_table.id = right_table.id;

----------------vs.-------------------

## USING ()
# instead of ON

SELECT left_table.id AS L_id
       left_table.val AS L_var
       right_table.val AS R_var
FROM left_table
INNER JOIN right_table
USING (id);

--------------------------------------

SELECT p1.country, p1.continent, prime_minister, president
FROM president AS p1
INNER JOIN prime_ministers AS p2
USING (country);

--------------------------------------

-- 4. Select fields
SELECT c.name AS country, continent, l.name AS language, official
  -- 1. From countries (alias as c)
  FROM countries AS c
  -- 2. Join to languages (as l)
  JOIN languages AS l
    -- 3. Match using code
    USING(code);
