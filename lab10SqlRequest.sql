





CREATE TABLE lines(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    color VARCHAR(30) DEFAULT NULL
);


CREATE TABLE statuses(
    id INT PRIMARY KEY AUTO_INCREMENT,
    status VARCHAR(100) NOT NULL
);


CREATE TABLE stations(
    id INT PRIMARY KEY AUTO_INCREMENT,
    next_station_id INT UNIQUE DEFAULT NULL, 
    previous_station_id INT UNIQUE DEFAULT NULL,
    line_id INT NOT NULL,
    status_id INT NOT NULL,
    name VARCHAR(100) NOT NULL

    FOREIGN KEY (next_station_id) REFERENCES stations(id)
    FOREIGN KEY (previous_station_id) REFERENCES stations(id)
    FOREIGN KEY (line_id) REFERENCES lines(id)
    FOREIGN KEY (status_id) REFERENCES statuses(id)  

    
);


CREATE TABLE transition_on_station(
    first_station_id INT NOT NULL,
    second_station_id INT NOT NULL,
    PRIMARY KEY first_station_id, second_station_id)

    FOREIGN KEY (first_station_id) REFERENCES stations(id)
    FOREIGN KEY (second_station_id) REFERENCES stations(id)
	
);







mysqldump lab10 > lab10_dump.sql


















