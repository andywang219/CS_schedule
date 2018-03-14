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
    FOREIGN KEY(professors_id) REFERENCES professors(id)
);

CREATE TABLE schedule(
    course_code INT NOT NULL,
    building VARCHAR(255),
    room VARCHAR(100),
    times VARCHAR(255),
    FOREIGN KEY(course_code) REFERENCES course(code)
);

CREATE TABLE ratings(
    prof_rating DECIMAL(2,1),
    difficulty DECIMAL(2,1),
    chilly_pepper VARCHAR(7),
    would_take_again INT,
    professors_id INT,
    FOREIGN KEY(professors_id) REFERENCES professors(id))
);
-- Ratings will be: not hot, hot, sexy
