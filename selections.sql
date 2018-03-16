-- Some Selections
SELECT courseName, CONCAT_WS(' ', prof_fname, prof_lname) AS Professor
FROM courses JOIN professors ON courses.professors_id = professors.id;
