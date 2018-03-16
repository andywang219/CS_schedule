CREATE TABLE professors(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    prof_fname VARCHAR(100) NOT NULL,
    prof_lname VARCHAR(100) NOT NULL
);

CREATE TABLE courses(
    section INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    course_num INT NOT NULL, -- example: 22000
    courseName VARCHAR(50) NOT NULL, -- example: algorithm
    professors_id INT,
    seats INT NOT NULL,
    credits INT NOT NULL,
    prereqs VARCHAR(250),
    FOREIGN KEY(professors_id) REFERENCES professors(id) ON DELETE CASCADE
);


CREATE TABLE schedule(
    course_section INT NOT NULL,
    building VARCHAR(255),
    room VARCHAR(100),
    times VARCHAR(255),
    FOREIGN KEY(course_section) REFERENCES courses(section) ON DELETE CASCADE
);

CREATE TABLE ratings(
    prof_rating DECIMAL(2,1),
    difficulty DECIMAL(2,1),
    chilly_pepper VARCHAR(7),
    would_take_again INT,
    professors_id INT,
    FOREIGN KEY(professors_id) REFERENCES professors(id) ON DELETE CASCADE
);
-- Ratings will be: not hot, hot, sexy

CREATE TABLE reviews(
    review VARCHAR(255),
    created DATE,
    professors_id INT,
    FOREIGN KEY(professors_id) REFERENCES professors(id) ON DELETE CASCADE
);


CREATE TABLE users(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100)
);


CREATE TABLE TAs(
    ta_fname VARCHAR(20),
    ta_lname VARCHAR(20),
    course_section INT,
    FOREIGN KEY(course_section) REFERENCES courses(section) ON DELETE CASCADE
);
