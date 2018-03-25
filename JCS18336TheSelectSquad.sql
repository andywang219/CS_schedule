-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 25, 2018 at 07:05 AM
-- Server version: 10.2.7-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `JCS18336TheSelectSquad`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `section` int(11) NOT NULL,
  `course_num` int(11) NOT NULL,
  `courseName` varchar(80) NOT NULL,
  `professors_id` int(11) NOT NULL,
  `seats` int(11) NOT NULL DEFAULT 30,
  `credits` int(11) NOT NULL DEFAULT 3,
  `prereqs` varchar(250) NOT NULL DEFAULT 'NONE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`section`, `course_num`, `courseName`, `professors_id`, `seats`, `credits`, `prereqs`) VALUES
(1, 10300, 'Introduction to Computing for Majors', 1, 30, 3, 'MATH19500, MATH20100(Co)'),
(2, 10300, 'Introduction to Computing for Majors', 2, 30, 3, 'MATH19500, MATH20100(Co)'),
(3, 10400, 'Discrete Mathematical Structures I', 3, 30, 4, 'MATH20100'),
(4, 10400, 'Discrete Mathematical Structures I', 4, 30, 4, 'MATH20100'),
(5, 10400, 'Discrete Mathematical Structures I', 5, 30, 4, 'MATH20100'),
(6, 11300, 'Programming Language', 6, 30, 1, 'CSc10300'),
(8, 21000, 'Computers and Assembly Language Programming', 4, 30, 3, 'NONE'),
(9, 21100, 'Fundamentals of Computer Systems', 7, 30, 3, 'CSc10300'),
(10, 21100, 'Fundamentals of Computer Systems', 8, 30, 3, 'CSc10300'),
(11, 21200, 'Data Structures', 17, 30, 3, 'CSc10300, CSc10400'),
(12, 21200, 'Data Structures', 20, 30, 3, 'CSc10300, CSc10400'),
(13, 21200, 'Data Structures', 18, 30, 3, 'CSc10300, CSc10400'),
(14, 21200, 'Data Structures', 19, 30, 3, 'CSc10300, CSc10400'),
(15, 21700, 'Probability and Statistics for Computer Science', 21, 30, 3, 'CSc10300, CSc10400, MATH20100'),
(16, 21700, 'Probability and Statistics for Computer Science', 10, 30, 3, 'CSc10300, CSc10400, MATH20100'),
(17, 22000, 'Algorithms', 21, 30, 3, 'CSc21200'),
(18, 22000, 'Algorithms', 6, 30, 3, 'CSc21200'),
(19, 22000, 'Algorithms', 3, 30, 3, 'CSc21200'),
(20, 22100, 'Software Design Laboratory', 15, 30, 3, 'CSc21200, ENGL21007'),
(21, 22100, 'Software Design Laboratory', 22, 30, 3, 'CSc21200, ENGL21007'),
(22, 22100, 'Software Design Laboratory', 18, 30, 3, 'CSc21200, ENGL21007'),
(23, 30100, 'Numerical Issues In Scientific Programming', 9, 30, 3, 'MATH34600, CSc21700, CSc20300, CSc22000'),
(24, 30100, 'Numerical Issues In Scientific Programming', 10, 30, 3, 'MATH34600, CSc21700, CSc20300, CSc22000'),
(25, 30400, 'Introduction to Theortical Computer Science', 9, 30, 3, 'CSc22000'),
(26, 32200, 'Software Engineering', 23, 30, 3, 'CSc2200, CSc22100'),
(27, 33200, 'Operating Systems', 24, 30, 4, 'CSc2200, CSc21700'),
(28, 33500, 'Programming Language Paradigms', 5, 30, 3, 'CSc2200, CSc22100'),
(29, 33600, 'Introduction to Database Systems', 16, 30, 3, 'CSc2200, CSc22100'),
(30, 34200, 'Computer Organization', 12, 30, 3, 'CSc21100, CSc34300(Co)'),
(31, 34200, 'Computer Organization', 8, 30, 3, 'CSc21100, CSc34300(Co)'),
(32, 34300, 'Computer Systems Design Laboratory', 8, 30, 3, 'CSc34200(Co)'),
(33, 34300, 'Computer Systems Design Laboratory', 12, 30, 3, 'CSc34200(Co)'),
(34, 34300, 'Computer Systems Design Laboratory', 13, 30, 3, 'CSc34200(Co)'),
(35, 42000, 'Complier Construction', 4, 30, 3, 'CSc30400'),
(36, 44800, 'Artificial Intelligence', 14, 30, 3, 'CSc2200, CSc22100'),
(37, 33600, 'Introduction to Databases Systems', 25, 30, 3, 'CSc22000,CSc22100');

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

CREATE TABLE `professors` (
  `id` int(11) NOT NULL,
  `prof_fname` varchar(100) NOT NULL,
  `prof_lname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professors`
--

INSERT INTO `professors` (`id`, `prof_fname`, `prof_lname`) VALUES
(1, 'William', 'Skeith'),
(2, 'Jeffrey', 'Gitlin'),
(3, 'Peter', 'Brass'),
(4, 'Michael', 'Vulis'),
(5, 'Douglas', 'Troeger'),
(6, 'Ahmet', 'Yuksel'),
(7, 'Isidor', 'Gertner'),
(8, 'Xiang', 'Meng'),
(9, 'Leonid', 'Gurtvis'),
(10, 'Irina', 'Gladkova'),
(11, 'Jie', 'Wei'),
(12, 'Zheng', 'Peng'),
(13, 'Donald', 'Gordon'),
(14, 'Stephen', 'Lucci'),
(15, 'Mohammed', 'Shibli'),
(16, 'John', 'Connor'),
(17, 'Maryam', 'Vatankhah'),
(18, 'Nooredin', 'Naghibolhosseini'),
(19, 'Cesar', 'Rojas'),
(20, 'Zhigang', 'Zhu'),
(21, 'Elahe', 'Vahdani'),
(22, 'See', 'Chiu'),
(23, 'Jie', 'Wei'),
(24, 'Devendra', 'Kumar'),
(25, 'Peter', 'Barnett'),
(26, 'Huy', 'Vo'),
(27, 'Erik', 'Grimmelmann'),
(28, 'Rosario', 'Gennaro'),
(29, 'Nikolai', 'Avteniev'),
(30, 'Dong Hwan', 'Moon'),
(31, 'Michael', 'Grossberg'),
(32, 'Ronak', 'Etemadpour'),
(33, 'Akira', 'Kawaguchi');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `prof_rating` decimal(2,1) NOT NULL,
  `difficulty` decimal(2,1) NOT NULL,
  `chilly_pepper` varchar(7) NOT NULL DEFAULT 'Not Hot',
  `would_take_again` int(11) NOT NULL,
  `professors_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`prof_rating`, `difficulty`, `chilly_pepper`, `would_take_again`, `professors_id`) VALUES
('1.6', '4.3', 'Not Hot', 0, 2),
('3.3', '3.3', 'Not Hot', 44, 3),
('2.4', '3.8', 'Not Hot', 62, 4),
('2.5', '4.4', 'Not Hot', 6, 5),
('4.4', '3.9', 'Hot', 93, 6),
('3.8', '3.9', 'Not Hot', 82, 1),
('2.7', '3.7', 'Not Hot', 62, 7),
('-1.0', '-1.0', 'N/A', -1, 8),
('3.0', '3.8', 'Not Hot', 57, 9),
('2.1', '4.0', 'Not Hot', -1, 10),
('3.8', '3.0', 'Not Hot', -1, 11),
('2.6', '4.8', 'Not Hot', 20, 12),
('-1.0', '-1.0', 'N/A', -1, 13),
('4.0', '2.4', 'Is Hot', -1, 14),
('2.5', '3.6', 'Not Hot', 50, 15),
('4.9', '3.5', 'Sexy', 89, 16),
('2.0', '1.0', 'Sexy', -1, 17),
('4.7', '1.6', 'Is Hot', -1, 18),
('-1.0', '-1.0', 'N/A', -1, 19),
('4.2', '3.1', 'Not Hot', -1, 20),
('-1.0', '-1.0', 'Not Hot', -1, 21),
('4.0', '2.0', 'N/A', -1, 22),
('3.8', '3.0', 'Not Hot', -1, 23),
('3.1', '2.9', 'N/A', -1, 24),
('4.4', '2.8', 'Is Hot', -1, 25),
('3.0', '4.0', 'N/A', -1, 26),
('-1.0', '-1.0', 'N/A', -1, 27),
('3.0', '3.7', 'Not Hot', -1, 28),
('-1.0', '-1.0', 'N/A', -1, 29),
('-1.0', '-1.0', 'N/A', -1, 30),
('3.5', '3.3', 'Not Hot', -1, 31),
('3.0', '4.4', 'Not Hot', -1, 32),
('2.3', '4.3', 'Not Hot', 39, 33);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review` varchar(500) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `professors_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review`, `created`, `professors_id`) VALUES
('Professor Skeith is there to make your life easier. It would be in your best interest to attend lectures, even though he uploads the class notes onto his Bitbucket. Do note that if you have no experience with programming, this class can prove difficult. However, as long as you attend lectures, do the TODOs, and read the textbook, you will do fine.', '2017-12-27', 1),
('It\'s very rare you come across a Professor that is so devoted to giving his students the highest degree of knowledge they can get. Just by looking at his 103 homepage you can see the time he put into making all the pages explaining things like git, gdb, arch-linux, etc. His projects are interesting, demanding and rewarding. He is a true gem.', '2017-11-01', 1),
('If you go into this class knowing 0 programming, you\'re in for a rough ride. He codes on the command line which is something you get used to. Not very clear when he lectures, but his projects are where I learned the most from. Projects rating (4.5/5)', '2018-01-16', 2),
('the worst professor ever. If you have legit no idea about programming, be aware and don\'t take him, even if it takes costs you one semester for a better professor do it. This guy doesn\'t make any sense. Choosing him as my professor was one of the worst thing i ever did. Beware and don\'t take him. i wish i could give him negative rating.', '2017-12-22', 2),
('Not recommended at all. Tough grader and really hard projects.', '2018-01-30', 3),
('This guy teaches but never understood what he was teaching. He never explained things clearly. Never asks student if they understood or not. Grading Policy is super clear: 3 tasks; Test 1 4 Programming Assignments Test 2. Takes median of those grades. Kindda easy if you know ur stuff but not a great professor. CHANGE IF POSSIBLE.', '2017-08-07', 3),
('3rd year student here, best CSC professor Ive had yet. Clearly has been programming since it was a hobby as he said in the 80s. Everything you need for projects given in lecture, a tiny bit of things you need to look up but straight forward. Any textbook allowed, most assembly books are open source/free! Only 3 ppl got C for just handing in smthng', '2017-12-28', 4),
('This is by far one of the best professor\'s at CCNY, despite his thick accent he knows his stuff and is willing to explain. This course is not for the weak, be prepare to think for yourself and learn! I enjoyed his course.', '2017-12-27', 4),
('If you want to pass this class, make sure you do all the homework and visit his office hour where you will be solving homework problems on the board. Most students don\'t do the homework which is a biggest mistake. Try to get hold of past exams to prepare for his midterms and finals as the questions will be very similar. He grades very harshly.', '2017-12-20', 5),
('Hard professor but learned a lot. Pay attention to lectures since theres no feedback for writing proofs on your own. Avoid if GPA is more important than content.', '2018-01-09', 5),
('Super helpful, and he is an eye candy. He doesn\'t give much feedback unless you ask him, but otherwise great professor.', '2018-02-03', 6),
('He has a memory like an elephant. He\'ll remember everything comes out of your mouth and what\'s written on assignments. His algorithms lecture is super fun! He talks to every single student in class and he makes sure his students learn the stuff. Makes me look forward to the next lecture.', '2017-10-13', 6),
('Professor Skeith is there to make your life easier. It would be in your best interest to attend lectures, even though he uploads the class notes onto his Bitbucket. Do note that if you have no experience with programming, this class can prove difficult. However, as long as you attend lectures, do the TODOs, and read the textbook, you will do fine.', '2017-12-27', 1),
('It\'s very rare you come across a Professor that is so devoted to giving his students the highest degree of knowledge they can get. Just by looking at his 103 homepage you can see the time he put into making all the pages explaining things like git, gdb, arch-linux, etc. His projects are interesting, demanding and rewarding. He is a true gem.', '2017-11-01', 1),
('This class is a very difficult and stressful one. Professor Gertner will challenge you and put you to work. Your grade really shows how much effort you put into his class. Do the homework the second they are assigned or you will stay up late trying to do them. Read up on VHDL, Binary to Hexadecimal translations, and get yourself a raspberry pi.', '2018-03-08', 7),
('No review up to date', '2018-03-16', 8),
('He seems like a nice guy, but he doesn\'t know how to teach. The assignments/exams he gives are hard and require too much time to understand. If you\'re not self motivated AND good at math, avoid him if possible and take Gladkova instead. She\'s just as hard but she actually teaches everything you need for an A in class, no Wikipedia torture required!', '2017-05-04', 9),
('Absolutely terrible. Do not expect to learn from her lectures. She reads straight from the slides which are based off of the textbook. You are better off reading the textbook and looking at the examples. 1 exam, midterm, final, simulation project, and a group project. Curves are crappy too. Aced everything but final and ended up with a B+ -.-', '2017-06-29', 10),
('Very interesting course. Teaches the subject very well and makes the class fun. Going to class and taking notes will help you a lot for the quiz,midterm,and final. Find a good group (great programmers) and start it as early as you can. Lab quiz will be based on the handouts from your lab TA.', '2017-12-16', 11),
('Take Gartner instead In the beginning it would seem like he\'s a good professor but wait till he start deducting points for silly mistakes. His vhdl projects aren	 that difficult but he wants you to implement them the way he wants otherwise he would deduct so many points which I hated it avoid him if u can', '2017-12-20', 12),
('No review up to date', '2018-03-16', 13),
('He is a great lecturer. You would need to study a lot to be able to get a good grade.', '0107-12-06', 14),
('absolutely horrible. worst teacher in the entire school. he has no idea what he is teaching. doesnt know the material he suppose to teach. his grading makes no sense. u can do all the work correctly and still get an 80. his class is a joke!!! BEWARE OF THIS TEACHER!', '2017-12-28', 15),
('BEST PROFESSOR EVER! :D', '2018-03-16', 16),
('No review up to date', '2018-03-16', 17),
('Nooreddin really cares about his students, he will stop to explain something in the easiest possible way and he\'s very relaxed. You\'ll learn a lot of life lessons as well as CSC, enjoy him if you have him because a lot of other professors in this school aren\'t as enjoyable to have.', '2018-01-04', 18),
('No review up to date', '2018-03-16', 19),
('This school has a tendency to have subpar CS prof and I was glad Zhu was the exception. He actually cares about students and teaches his lectures so that even beginner programmers understand. He does have pop quizzes and 6-7 assignments but if you read the textbook and lectures before hand you should be fine.', '2018-01-10', 20),
('No review up to date', '2018-03-16', 21),
('Was actually easier than expected. Had to study but not too much. Take him if you can you\'ll actually pick up something useful!', '2018-01-11', 22),
('No final, 3 test( he calls them quizzes) 300 points each 2 questions each but if u know the information you can easily just think through them. Lectures kind of get boring and I think even he realizes it. Better than the average CSC Dept in ccny', '2017-12-03', 24),
('Exams are very similar to review. Home work and project will help you to understand materials', '2017-02-05', 25),
('Tricky class, the big data course. This guy can be confusing at times. Overall, you learn a lot. Expect to have your Python basics down. This is a HEAVY Python course. However, very practical, useful knowledge.', '2016-12-05', 26),
('No review up to date', '2018-03-16', 27),
('Great Professor. He teaches in detail. He is always wiling to go back and explain. He is always available to help outside of office hours. Must do well on the midterm and final. He curves generously.', '2017-01-04', 28),
('No review up to date', '2018-03-16', 29),
('No review up to date', '2018-03-16', 30),
('You will learn a LOT from his class. And i don\'t just mean textbook material but material that is going to be very useful in the real world. This has probably been my most helpful class I have taken at CCNY and a class I would recommend all CSC majors take. He really makes you work but it really is all worth it in the end.', '2016-08-26', 31),
('Stay away if you can. She gives a lot of info in powerpoint but doesn\'t reinforce the material with useful assignments. No review for midterm/final, which is frustrating because her tests don\'t reflect what you\'ve worked on in class/hw. This class could benefit from a proper text book and weekly programming assignments that reflect the lectures.', '2017-12-28', 32),
('DO NOT TAKE HIM UNLESS YOU GOT EXPERIENCE I took him 2x, I dropped in the fall and retook it in the summer after getting some experience. For newbies the assignments are difficult he there is no lecture he makes videos which you have watch to pass, he is rude when asked a question. If you have experience you can get by the 7 hw the 3 exams are hard', '2018-01-11', 33);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `course_section` int(11) NOT NULL,
  `building` varchar(255) DEFAULT NULL,
  `room` varchar(100) DEFAULT NULL,
  `times` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`course_section`, `building`, `room`, `times`) VALUES
(1, 'Marshak', 'MR4, NAC 7/117', 'TuesThur 11:00am-11:50am, Fri 9:00am-10:40am'),
(2, 'Marshak', 'MR4, NAC 7/107', 'MonWe 11:00am-11:50am.Fri 9:00am-10:40am'),
(3, 'NAC,Sheapard', '4/220C, S-209', 'MonWe 9:00am-10:40am,We 12:00pm,1:40pm'),
(4, 'Sheapard,Marshak', 'S-210,417N', 'MonWe 4:00pm-5:40pm,We 9:00am,10:40pm'),
(5, 'NAC', '6/115', 'TuesThurs 2:00pm-3:40pm,Fri 1:00pm,2:40pm'),
(6, 'Shepard', 'S-209', 'Tues 9:30am-10:45am'),
(8, 'NAC', '7/231', 'MonWed 11:00am-12:15pm'),
(9, 'NAC', '7/225', 'MonWed 2:00PM-3:15pm,MonWed 3:30pm-4:20pm'),
(10, 'NAC', '4/113', 'TuesThurs 11:00am-12:15pm'),
(11, 'Shepard', 'S-209', 'MonWed 10:00pm-11:40am'),
(12, 'Shepard', 'S-209', 'MonWed 2:00pm-3:40pm'),
(13, 'NAC', '6/112', 'TuesThurs 10:00am-11:40am'),
(14, 'Shepard', 'S-203', 'TuesThurs 2:00pm-3:40pm'),
(15, 'NAC', '5/102', 'TuesFri 3:30pm-4:45pm'),
(16, 'NAC', '5/126', 'TuesThurs 2:00pm-3:15pm'),
(17, 'NAC', '5/126', 'TuesThurs 11:00am-12:15pm'),
(18, 'NAC', '7/306', 'MonWe 12:30am-1:45pm'),
(19, 'NAC', '7/6113', 'TuesFri 11:00am-12:15pm'),
(20, 'Shepard', 'S-21', 'MonWed 3:30am-4:45pm'),
(21, 'NAC', '5/150', 'TuesThurs 2:00pm-3:15pm'),
(22, 'Marshak', '410', 'TuesThurs 3:30pm-4:45pm'),
(23, 'NAC', '4/125', 'TuesThurs 2:00pm-3:15pm'),
(24, 'NAC', '4/125', 'TuesThurs 11:00am-12:15pm'),
(25, 'Baskervill', '106', 'TuesThurs 5:00pm-6:15pm'),
(26, 'Marshak, NAC', 'MR4, 4/156', 'MonWed 2:00pm-3:15pm, Fri 1:00pm-2:40pm'),
(27, 'NAC', '4/130, 7/106', 'Sa 9:00am-11:30am, Fri 9:00am-10:40am'),
(28, 'Shepard', 'S-209', 'TuesThurs 11:00am-12:15pm'),
(29, 'NAC', '4/121B', 'MonWed 5:00pm-6:15pm'),
(37, 'Shepard', 'S-209', 'TuesThurs 2:00pm-3:15pm'),
(30, 'NAC', '5/150', 'MonWed 11:00am-12:15pm'),
(31, 'NAC', '6/114', 'TuesThurs 2:00pm-3:15pm'),
(32, 'NAC', '7/105', 'TuesThurs 5:00pm-7:30pm'),
(33, 'NAC', '5/126', 'MonWed 2:00pm-3:15pm'),
(34, 'NAC', '4/220C', 'TuesThurs 3:30pm-4:45pm'),
(35, 'NAC', '4/120', 'MonWed 2:00pm-3:15pm'),
(36, 'NAC', '4/220C', 'MonWed 3:30pm-4:45pm');

-- --------------------------------------------------------

--
-- Table structure for table `TAs`
--

CREATE TABLE `TAs` (
  `ta_fname` varchar(20) DEFAULT NULL,
  `ta_lname` varchar(20) DEFAULT NULL,
  `course_section` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TAs`
--

INSERT INTO `TAs` (`ta_fname`, `ta_lname`, `course_section`) VALUES
('Amir', 'Mohsen', 2),
('Toliyat', 'Abolhassani', 2),
('Bin', 'Mu', 1),
('Siyu', 'Liao', 3),
('Nihal', 'Vatandas', 4),
('Chi-Him', 'Liu', 5),
('Isatou', 'Sanneh', 26),
('Michael', 'Iannelli', 27);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`) VALUES
(1, 'Luis_B007'),
(2, 'Andy_W002'),
(3, 'Omar_E004'),
(4, 'Evan_V005');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`section`),
  ADD KEY `professors_id` (`professors_id`);

--
-- Indexes for table `professors`
--
ALTER TABLE `professors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD KEY `professors_id` (`professors_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD KEY `professor_id` (`professors_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD KEY `course_section` (`course_section`);

--
-- Indexes for table `TAs`
--
ALTER TABLE `TAs`
  ADD KEY `course_section` (`course_section`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `section` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `professors`
--
ALTER TABLE `professors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`professors_id`) REFERENCES `professors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`professors_id`) REFERENCES `professors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`professors_id`) REFERENCES `professors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`course_section`) REFERENCES `courses` (`section`) ON DELETE CASCADE;

--
-- Constraints for table `TAs`
--
ALTER TABLE `TAs`
  ADD CONSTRAINT `TAs_ibfk_1` FOREIGN KEY (`course_section`) REFERENCES `courses` (`section`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
