
SELECT name, continent, indep_year,
    CASE WHEN indep_year <= 1930 THEN 'before 1900'
         WHEN indep_year <= 1930 THEN 'between 1900 and 1930'
         ELSE 'after 1930' END
         AS indep_year_group
FROM states
ORDER BY indep_year_group

