CREATE TABLE post(
    id INT PRIMARY KEY AUTO_INCREMENT,
    category_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    text TEXT NOT NULL,
    author_name VARCHAR(100) DEFAULT NULL,
    watched_amount INT DEFAULT 0,	
    likes INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE comment(
    id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT NOT NULL,
    responsed_id INT DEFAULT NULL,
    user_name VARCHAR(100),
    comment VARCHAR(255) NOT NULL,	 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE raiting(
    post_id INT NOT NULL,
    user_ip VARCHAR(50) NOT NULL,
    raiting INT	NOT NULL,
    PRIMARY KEY (post_id, user_ip)
);


CREATE TABLE category(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL	
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






