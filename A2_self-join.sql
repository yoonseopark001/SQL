# JOIN

SELECT p1.country AS country1, p2.country AS country2, p1.continent # country column selected twice
FROM prime_ministers AS p1
INNER JOIN prime_ministers AS p2
ON p1.continent = p2.continent
LIMIT 15;

---------------------------------------------------------
# Self-join

SELECT p1.country AS country1, p2.country AS country2, p1.continent # country column selected twice
FROM prime_ministers AS p1
INNER JOIN prime_ministers AS p2
ON p1.continent = p2.continent AND p1.country <> p2.country # match or not match
LIMIT 15;

----------------------------------------------------------
