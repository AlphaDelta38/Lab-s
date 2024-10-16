CREATE TABLE post(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    description_path VARCHAR(255),
    authorName VARCHAR(255) DEFAULT NULL,
    watchedAmount INT DEFAULT 0,	
    likes INT DEFAULT 0,
    category VARCHAR(255) DEFAULT 'forAll',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE comment(
    id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    responses_id VARCHAR(255) DEFAULT NULL,
    responsed_id INT DEFAULT NULL,
    user_ip VARCHAR(255),
    user_name VARCHAR(255),
    description VARCHAR(255),	 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE raiting(
    id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    user_ip VARCHAR(255),
    raiting INT	
);


// "192:128:33:5946"



INSERT INTO post(
title,
description_path,
category
)       VALUES("donuts are the best", "desctiptionFour.txt", "food");


INSERT INTO comment(
post_id,
user_ip,
user_name,
description,
responsed_id
)       VALUES(1, "13:113:33:5246", "Serega", "i`m not like this theme", 3);



INSERT INTO raiting(
post_id,
user_ip,
raiting 
)       VALUES(2, "192:113:33:5246", 5);






