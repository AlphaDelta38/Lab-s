SELECT name, population FROM cities WHERE population>=100000 * 10;

SELECT name, region, population FROM cities WHERE region="E" OR region="W" ORDER BY population;

SELECT name, population, region FROM cities WHERE population > 50000 AND region IN("S","N","C");

SELECT name, population, region FROM cities WHERE population > 150000 AND population < 350000 
AND region IN("E","W","N") ORDER BY name LIMIT 20;

SELECT name, population, region FROM cities WHERE NOT region IN("E","W") LIMIT 10 OFFSET 10; 
