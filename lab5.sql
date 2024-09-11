SELECT region, SUM(population) AS population_OF_region FROM cities GROUP BY region;

SELECT region, SUM(population) AS population_OF_region FROM cities GROUP BY region HAVING COUNT(*) >= 10;

SELECT Concat(name, ' - ', population,  ' - ', region) AS City_With_Population FROM cities WHERE region IN(
	SELECT region FROM cities GROUP BY region HAVING COUNT(*) >= 5
) LIMIT 5 OFFSET 10;


SELECT Concat('Регион: ' ,region, ' Населення: ', SUM(population)) AS Info_About_Region FROM cities WHERE population > 300000 GROUP BY region;


SELECT name, population, region FROM cities WHERE region IN(
	SELECT region FROM cities GROUP BY region HAVING Count(*) <= 5
) AND  NOT population BETWEEN 150000 AND 500000;


