





CREATE TABLE performerForTask (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    task_id INT NOT NULL
);



CREATE TABLE userAndProject (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    project_id INT NOT NULL 
);


CREATE TABLE fileAndProject(
    id INT PRIMARY KEY AUTO_INCREMENT,
    files_id INT NOT NULL,
    project_id INT NOT NULL 
);

CREATE TABLE fileAndTask(
    id INT PRIMARY KEY AUTO_INCREMENT,
    files_id INT NOT NULL,
    task_id INT NOT NULL 
);




CREATE TABLE task(
    id INT PRIMARY KEY AUTO_INCREMENT,
    project_id INT NOT NULL,
    author_id INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL
);



CREATE TABLE user(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL	
);



CREATE TABLE project(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);


CREATE TABLE files(
    id INT PRIMARY KEY AUTO_INCREMENT,
    file_path VARCHAR(255) NOT NULL,
    about_file VARCHAR(255) DEFAULT NULL	
);


mysqldump lab9 > lab9_dump.sql


















