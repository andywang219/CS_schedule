-- courses w/ professor w/ rating w/ location and time
SELECT
       CONCAT("CSC",course_num, " ",courseName) AS Course,
       CONCAT_WS(" ", prof_fname, prof_lname) AS Professor,
       CASE
          WHEN prof_rating = -1 THEN "N/A"
          ELSE prof_rating
       END AS "Professor Rating",
       CONCAT_WS(", ", building, room, times) AS "Location and Time"
FROM courses JOIN professors ON courses.professors_id = professors.id
             JOIN ratings ON ratings.professors_id = professors.id
             JOIN schedule ON courses.section = schedule.course_section
ORDER BY Course;

-- professor w/ ratings/ with review
SELECT
    CONCAT_WS(" ", prof_fname, prof_lname) AS Professor,
    CASE
       WHEN prof_rating = -1 THEN "N/A"
       ELSE prof_rating
    END AS "Professor Rating",
    CASE
       WHEN difficulty = -1 THEN "N/A"
       ELSE difficulty
    END AS Difficulty,
    CASE
       WHEN would_take_again = -1 THEN "N/A"
       ELSE would_take_again
    END AS "Would Take Again %",
    chilly_pepper AS "Popularity",
    CONCAT(SUBSTRING(review, 1, 30), "...") AS Review,
    created AS "Created On"
FROM professors JOIN ratings ON ratings.professors_id = professors.id
                JOIN reviews ON reviews.professors_id = professors.id
ORDER BY Professor;


-- section, course number, course name, prereq, professor, ta, rating, review; the whole nine yard
SELECT
       section AS Section,
       CONCAT("CSc",course_num, " ",courseName) AS Course,
       CONCAT_WS(" ", prof_fname, prof_lname) AS Professor,
       CONCAT_WS(" ", ta_fname, ta_lname) AS TA,
       CASE
          WHEN prof_rating = -1 THEN "N/A"
          ELSE prof_rating
       END AS "Professor Rating",
       CASE
          WHEN difficulty = -1 THEN "N/A"
          ELSE difficulty
       END AS "Professor Difficulty",
       CASE
          WHEN would_take_again = -1 THEN "N/A"
          ELSE would_take_again
       END AS "Would Take Again%",
       chilly_pepper AS "Chilly Pepper",
       CONCAT(SUBSTRING(review, 1, 30), "...") AS Review,
       seats AS Seats,
       prereqs AS PreReqs
FROM courses JOIN professors ON courses.professors_id = professors.id
             JOIN ratings ON ratings.professors_id = professors.id
             JOIN reviews ON reviews.professors_id = professors.id
             LEFT JOIN TAs ON courses.section = TAs.course_section;

