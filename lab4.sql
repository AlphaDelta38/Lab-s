SELECT UPPER(name) AS name FROM cities ORDER BY name LIMIT 5 OFFSET 5;  

SELECT name, lenght_Name FROM (
	SELECT name, LENGTH(name) AS lenght_Name FROM cities
) AS subquery WHERE NOT lenght_Name IN(8,9,10);

SELECT region, SUM(population) AS population_In_Regions FROM cities WHERE region IN ('C','S') GROUP BY region;

SELECT region , AVG(population) AS Average_populatiot_In_Region FROM cities WHERE region = 'W' GROUP BY region;


SELECT region , COUNT(name) AS Which_Cities_In_Region FROM cities WHERE region = 'E' GROUP BY region;