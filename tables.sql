CREATE TABLE professors(
    id INT PRIMARY KEY AUTO_INCREMENT,
    prof_fname VARCHAR(100),
    prof_lname VARCHAR(100),
    department VARCHAR(100)
);

CREATE TABLE course(
    code INT PRIMARY KEY NOT NULL,
    courseNAME VARCHAR(255),
    professors_id INT,
    seats INT,
    credits INT NOT NULL,
    FOREIGN KEY(professors_id) REFERNCES professors(id)
);
