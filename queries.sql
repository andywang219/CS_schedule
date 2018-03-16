-- Some queries
SELECT courseName, CONCAT_WS(' ', prof_fname, prof_lname) AS Professor
FROM courses JOIN professors ON courses.professors_id = professors.id;

SELECT
    CONCAT('CSC', course_num,' ', courseName) AS Course,
    CONCAT_WS(' ', prof_fname, prof_lname) AS Professor,
    prof_rating,
    difficulty,
    would_take_again AS 'Would Take Again (%)',
    chilly_pepper,
    CONCAT(SUBSTRING(review, 1, 50), '...') AS 'Recent Reviews',
    created AS 'Created On'
FROM courses JOIN professors ON courses.professors_id = professors.id
             JOIN ratings ON ratings.professors_id = professors.id
             JOIN reviews ON reviews.professors_id = professors.id
GROUP BY review
ORDER BY prof_lname;
