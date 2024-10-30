SELECT cities.name, regions.name FROM cities,regions WHERE population > 350000;


SELECT cities.name, region FROM cities,regions WHERE regions.name = "Nord" AND cities.region = regions.uuid;