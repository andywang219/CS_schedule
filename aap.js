// Need to npm install --save express, mysql, ejs, and body-parser
var express = require('express');
var mysql = require('mysql');
var bodyParser = require("body-parser");
var app = express();

// Will look for a file in local directory called "views" and for a file with ".ejs" at the end
app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({extended: true})); // Needed for post requests ie: submitting a form
app.use(express.static(__dirname + "/public")); // Use public folder to access css

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Omarelnagdy1',
    database: 'fuckthis'
});

// Check if server is working properly
connection.connect(function(error) {
    if(!!error) {
        console.log("error");
    } else {
        console.log("Connected");
    }
});

app.get('/', function(req, res) {
    res.render("searchpage");
    console.log("Sup!!!");
});

app.post('/results', function(req, res) {
    // Find count of users in database
    var userResult = req.body.Course_Number;
    console.log(userResult);
    var q = 'SELECT CONCAT("CSc", course_num) AS COURSE, courseName, CONCAT_WS(" ", prof_fname, prof_lname) AS Professor, CASE WHEN prof_rating = -1 THEN "N/A" ELSE prof_rating END AS "Professor_Rating", CONCAT_WS(" ", building, room, times) AS "Location_and_Time" FROM courses JOIN professors ON courses.professors_id = professors.id JOIN ratings ON ratings.professors_id = professors.id JOIN schedule ON courses.section = schedule.course_section WHERE course_num = ' + userResult + ' ORDER BY COURSE';
    // var q = 'SELECT COUNT(*) FROM courses'
    // res.send("hi");
    connection.query(q, function(err, results) {
        if(err) throw err;
        // var count = results[0].count;

        // Respond with that count
        // console.log(results);
        // res.render("schedule");
        var results_json = [];
        results.forEach(function(result) {
            results_json.push({
                num: result.COURSE,
                name: result.courseName,
                prof: result.Professor,
                rating: result.Professor_Rating,
                timeLoc: result.Location_and_Time
            });
        });
        // Uses views/orders.ejs
        res.render("schedule", {results: results_json});
    });
    console.log("Someone requested The Select Squad!");
});

// app.post("/prof/:name", function(req, res) {
//     console.log(req);
// });

// Message for devs to see on localhost http://127.0.0.1:8080/
app.listen(8080, function() {
    console.log("Server running on 8080");
});
