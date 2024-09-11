SELECT name FROM cities WHERE name LIKE('%ськ');

SELECT name FROM cities WHERE name LIKE('%донец%');

SELECT Concat(name, ' (',region,')') AS cities_with_Region, population FROM cities WHERE population > 100000 ORDER BY region; 


SELECT name, population, (population/40000000)*100 AS PerCent_OF_ALLPEOPLE FROM cities LIMIT 10; 

SELECT Concat(name, ' - ', percentage, '%') AS cities_percentage_people_Statistic FROM(
	SELECT name, (population/40000000)*100 AS percentage FROM cities
) AS subquery WHERE percentage >= 0.1;

