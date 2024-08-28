create database school;
use school;

	CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY auto_increment,
    Teacher_Name VARCHAR(100) not null,
    salary int not null,
    gender varchar (10));
    
    desc teachers;
    
    CREATE TABLE Classgrade(
    Class varchar(20) PRIMARY KEY,
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
    );
desc Classgrade;

	CREATE TABLE Students (
    StudentID INT PRIMARY KEY auto_increment,
    Student_Name VARCHAR(100) not null,
    Class varchar(20),
    DOB DATE,
    Gender VARCHAR(10),
    Address VARCHAR(255),
    Phone VARCHAR(100),
    FOREIGN KEY (class) REFERENCES Classgrade(class)
);

desc students;

	CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    Class varchar(20),
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (Class) REFERENCES Classgrade(Class)
);
desc Enrollments;

	CREATE TABLE Attendance (
    Attendanceid INT primary key auto_increment,
    StudentID INT,
    Class varchar(20),
    Date DATE,
    Status VARCHAR(10),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (Class) REFERENCES Classgrade(Class)
   );

	desc Attendance;

INSERT INTO Teachers (TeacherID, Teacher_Name, Salary, Gender) VALUES
(1001, 'John Smith', 50000, 'Male'),
(1002, 'Emily Jones', 48000, 'Female'),
(1003, 'Michael Brown', 52000, 'Male'),
(1004, 'Sarah Lee', 51000, 'Female'),
(1005, 'David Clark', 49000, 'Male'),
(1006, 'Emma Taylor', 47000, 'Female');

select * from teachers;

INSERT INTO Classgrade (Class, TeacherID) VALUES
('Grade 1', 1001),
('Grade 2', 1002),
('Grade 3', 1003),
('Grade 4', 1004),
('Grade 5', 1005);

select * from classgrade;

INSERT INTO Students (StudentID, Student_Name, Class, DOB, Gender, Address, Phone)    VALUES
(1, 'Alice Smith', 'Grade 1', '2009-03-15', 'Female', '123 Main St', '123-456-7890'),
(2, 'Bob Johnson', 'Grade 1', '2009-05-20', 'Male', '456 Elm St', '456-789-0123'),
(3, 'Emma Brown', 'Grade 1', '2009-01-10', 'Female', '789 Oak St', '789-012-3456'),
(4, 'James Williams', 'Grade 1', '2009-08-05', 'Male', '321 Pine St', '321-654-9870'),
(5, 'Olivia Davis', 'Grade 1', '2009-05-25', 'Female', '456 Maple St', '456-987-6543'),
(6, 'William Wilson', 'Grade 1', '2009-02-15', 'Male', '987 Cedar St', '987-654-3210'),
(7, 'Sophia Martinez', 'Grade 1', '2009-11-20', 'Female', '654 Birch St', '654-321-0987'),
(8, 'Liam Jones', 'Grade 1', '2009-04-30', 'Male', '147 Pineapple St', '147-258-3690'),
(9, 'Charlotte Garcia', 'Grade 1', '2009-09-12', 'Female', '852 Cherry St', '852-963-7410'),
(10, 'Ethan Rodriguez', 'Grade 1', '2009-07-08', 'Male', '369 Lemon St', '369-147-2580'),
(11, 'Ava Hernandez', 'Grade 2', '2010-03-17', 'Female', '741 Orange St', '741-852-9630'),
(12, 'Noah Martinez', 'Grade 2', '2010-11-22', 'Male', '852 Apple St', '852-963-7410'),
(13, 'Isabella Lopez', 'Grade 2', '2010-10-14', 'Female', '963 Grape St', '963-852-7410'),
(14, 'Mason Perez', 'Grade 2', '2010-08-30', 'Male', '123 Peach St', '123-456-7890'),
(15, 'Sophia Thompson', 'Grade 2', '2010-06-03', 'Female', '456 Banana St', '456-789-0123'),
(16, 'Liam Smith', 'Grade 2', '2010-04-18', 'Male', '789 Mango St', '789-012-3456'),
(17, 'Isabella White', 'Grade 2', '2010-12-12', 'Female', '321 Pear St', '321-654-9870'),
(18, 'Oliver Martin', 'Grade 2', '2010-02-28', 'Male', '654 Watermelon St', '654-987-6543'),
(19, 'Amelia Thompson', 'Grade 2', '2010-09-05', 'Female', '987 Kiwi St', '987-654-3210'),
(20, 'Elijah Harris', 'Grade 2', '2010-05-19', 'Male', '147 Strawberry St', '147-258-3690'),
(21, 'Avery Garcia', 'Grade 3', '2011-04-07', 'Female', '852 Raspberry St', '852-963-7410'),
(22, 'Ethan Johnson', 'Grade 3', '2011-03-22', 'Male', '369 Blueberry St', '369-147-2580'),
(23, 'Aria Hernandez', 'Grade 3', '2011-09-16', 'Female', '741 Blackberry St', '741-852-9630'),
(24, 'Benjamin Lopez', 'Grade 3', '2011-07-11', 'Male', '852 Cranberry St', '852-963-7410'),
(25, 'Amelia Perez', 'Grade 3', '2011-10-29', 'Female', '963 Gooseberry St', '963-852-7410'),
(26, 'Lucas Martinez', 'Grade 3', '2011-12-25', 'Male', '123 Cherry St', '123-456-7890'),
(27, 'Charlotte Taylor', 'Grade 3', '2011-06-21', 'Female', '456 Strawberry St', '456-789-0123'),
(28, 'Mia Brown', 'Grade 3', '2011-04-14', 'Male', '789 Raspberry St', '789-012-3456'),
(29, 'Mason Wilson', 'Grade 3', '2011-05-07', 'Female', '321 Blueberry St', '321-654-9870'),
(30, 'Ava Jones', 'Grade 3', '2011-01-23', 'Male', '654 Blackberry St', '654-987-6543'),
(31, 'William Johnson', 'Grade 4', '2012-08-27', 'Female', '987 Gooseberry St', '987-654-3210'),
(32, 'Harper Smith', 'Grade 4', '2012-07-03', 'Male', '147 Kiwi St', '147-258-3690'),
(33, 'Aiden Garcia', 'Grade 4', '2012-09-09', 'Female', '741 Cranberry St', '741-852-9630'),
(34, 'Ella Perez', 'Grade 4', '2012-11-24', 'Male', '852 Raspberry St', '852-963-7410'),
(35, 'Jackson Martinez', 'Grade 4', '2012-01-11', 'Female', '369 Blackberry St', '369-147-2580'),
(36, 'Scarlett Lopez', 'Grade 4', '2012-02-28', 'Male', '741 Blueberry St', '741-852-9630'),
(37, 'Aiden Wilson', 'Grade 4', '2012-06-14', 'Female', '987 Strawberry St', '987-654-3210'),
(38, 'Olivia Taylor', 'Grade 4', '2012-05-19', 'Male', '147 Blueberry St', '147-258-3690'),
(39, 'Elijah Brown', 'Grade 4', '2012-03-04', 'Female', '741 Blackberry St', '741-852-9630'),
(40, 'Evelyn Smith', 'Grade 4', '2012-07-30', 'Male', '852 Cranberry St', '852-963-7410'),
(41, 'Carter Garcia', 'Grade 5', '2013-11-11', 'Female', '963 Raspberry St', '963-852-7410'),
(42, 'Mia Perez', 'Grade 5', '2013-12-22', 'Male', '123 Strawberry St', '123-456-7890'),
(43, 'Liam Johnson', 'Grade 5', '2013-09-09', 'Female', '456 Blueberry St', '456-789-0123'),
(44, 'Avery Wilson', 'Grade 5', '2013-02-14', 'Male', '789 Blackberry St', '789-012-3456'),
(45, 'Harper Brown', 'Grade 5', '2013-04-25', 'Female', '321 Gooseberry St', '321-654-9870'),
(46, 'Ethan Taylor', 'Grade 5', '2013-08-12', 'Male', '654 Cranberry St', '654-987-6543'),
(47, 'Scarlett Garcia', 'Grade 5', '2013-07-01', 'Female', '987 Strawberry St', '987-654-3210'),
(48, 'Jackson Davis', 'Grade 5', '2013-06-11', 'Male', '147 Blueberry St', '147-258-3690'),
(49, 'Aria Williams', 'Grade 5', '2013-05-02', 'Female', '741 Blackberry St', '741-852-9630'),
(50, 'Michael Wilson', 'Grade 5', '2013-02-28', 'Male', '852 Cranberry St', '852-963-7410');



INSERT INTO Enrollments (EnrollmentID, StudentID, Class, EnrollmentDate) VALUES
(201, 1, 'Grade 1', '2024-04-01'),
(202, 2, 'Grade 1', '2024-04-01'),
(203, 3, 'Grade 1', '2024-04-01'),
(204, 4, 'Grade 1', '2024-04-01'),
(205, 5, 'Grade 1', '2024-04-01'),
(206, 6, 'Grade 1', '2024-04-01'),
(207, 7, 'Grade 1', '2024-04-01'),
(208, 8, 'Grade 1', '2024-04-01'),
(209, 9, 'Grade 1', '2024-04-01'),
(210, 10, 'Grade 1', '2024-04-01'),
(211, 11, 'Grade 2', '2024-04-02'),
(212, 12, 'Grade 2', '2024-04-02'),
(213, 13, 'Grade 2', '2024-04-02'),
(214, 14, 'Grade 2', '2024-04-02'),
(215, 15, 'Grade 2', '2024-04-02'),
(216, 16, 'Grade 2', '2024-04-02'),
(217, 17, 'Grade 2', '2024-04-02'),
(218, 18, 'Grade 2', '2024-04-02'),
(219, 19, 'Grade 2', '2024-04-02'),
(220, 20, 'Grade 2', '2024-04-02'),
(221, 21, 'Grade 3', '2024-04-03'),
(222, 22, 'Grade 3', '2024-04-03'),
(223, 23, 'Grade 3', '2024-04-03'),
(224, 24, 'Grade 3', '2024-04-03'),
(225, 25, 'Grade 3', '2024-04-03'),
(226, 26, 'Grade 3', '2024-04-03'),
(227, 27, 'Grade 3', '2024-04-03'),
(228, 28, 'Grade 3', '2024-04-03'),
(229, 29, 'Grade 3', '2024-04-03'),
(230, 30, 'Grade 3', '2024-04-03'),
(231, 31, 'Grade 4', '2024-04-04'),
(232, 32, 'Grade 4', '2024-04-04'),
(233, 33, 'Grade 4', '2024-04-04'),
(234, 34, 'Grade 4', '2024-04-04'),
(235, 35, 'Grade 4', '2024-04-04'),
(236, 36, 'Grade 4', '2024-04-04'),
(237, 37, 'Grade 4', '2024-04-04'),
(238, 38, 'Grade 4', '2024-04-04'),
(239, 39, 'Grade 4', '2024-04-04'),
(240, 40, 'Grade 4', '2024-04-04'),
(241, 41, 'Grade 5', '2024-04-05'),
(242, 42, 'Grade 5', '2024-04-05'),
(243, 43, 'Grade 5', '2024-04-05'),
(244, 44, 'Grade 5', '2024-04-05'),
(245, 45, 'Grade 5', '2024-04-05'),
(246, 46, 'Grade 5', '2024-04-05'),
(247, 47, 'Grade 5', '2024-04-05'),
(248, 48, 'Grade 5', '2024-04-05'),
(249, 49, 'Grade 5', '2024-04-05'),
(250, 50, 'Grade 5', '2024-04-05');

INSERT INTO Attendance (AttendanceID, StudentID, Class, Date, Status) VALUES
(501, 1, 'Grade 1', '2024-04-15', 'Present'),
(502, 2, 'Grade 1', '2024-04-15', 'Present'),
(503, 3, 'Grade 1', '2024-04-15', 'Absent'),
(504, 4, 'Grade 1', '2024-04-15', 'Present'),
(505, 5, 'Grade 1', '2024-04-15', 'Present'),
(506, 6, 'Grade 1', '2024-04-15', 'Absent'),
(507, 7, 'Grade 1', '2024-04-15', 'Present'),
(508, 8, 'Grade 1', '2024-04-15', 'Present'),
(509, 9, 'Grade 1', '2024-04-15', 'Absent'),
(510, 10, 'Grade 1', '2024-04-15', 'Present'),
(511, 11, 'Grade 2', '2024-04-15', 'Present'),
(512, 12, 'Grade 2', '2024-04-15', 'Present'),
(513, 13, 'Grade 2', '2024-04-15', 'Absent'),
(514, 14, 'Grade 2', '2024-04-15', 'Present'),
(515, 15, 'Grade 2', '2024-04-15', 'Present'),
(516, 16, 'Grade 2', '2024-04-15', 'Absent'),
(517, 17, 'Grade 2', '2024-04-15', 'Present'),
(518, 18, 'Grade 2', '2024-04-15', 'Present'),
(519, 19, 'Grade 2', '2024-04-15', 'Absent'),
(520, 20, 'Grade 2', '2024-04-15', 'Present'),
(521, 21, 'Grade 3', '2024-04-15', 'Present'),
(522, 22, 'Grade 3', '2024-04-15', 'Present'),
(523, 23, 'Grade 3', '2024-04-15', 'Absent'),
(524, 24, 'Grade 3', '2024-04-15', 'Present'),
(525, 25, 'Grade 3', '2024-04-15', 'Present'),
(526, 26, 'Grade 3', '2024-04-15', 'Absent'),
(527, 27, 'Grade 3', '2024-04-15', 'Present'),
(528, 28, 'Grade 3', '2024-04-15', 'Present'),
(529, 29, 'Grade 3', '2024-04-15', 'Absent'),
(530, 30, 'Grade 3', '2024-04-15', 'Present'),
(531, 31, 'Grade 4', '2024-04-15', 'Present'),
(532, 32, 'Grade 4', '2024-04-15', 'Present'),
(533, 33, 'Grade 4', '2024-04-15', 'Absent'),
(534, 34, 'Grade 4', '2024-04-15', 'Present'),
(535, 35, 'Grade 4', '2024-04-15', 'Present'),
(536, 36, 'Grade 4', '2024-04-15', 'Absent'),
(537, 37, 'Grade 4', '2024-04-15', 'Present'),
(538, 38, 'Grade 4', '2024-04-15', 'Present'),
(539, 39, 'Grade 4', '2024-04-15', 'Absent'),
(540, 40, 'Grade 4', '2024-04-15', 'Present'),
(541, 41, 'Grade 5', '2024-04-15', 'Present'),
(542, 42, 'Grade 5', '2024-04-15', 'Present'),
(543, 43, 'Grade 5', '2024-04-15', 'Absent'),
(544, 44, 'Grade 5', '2024-04-15', 'Present'),
(545, 45, 'Grade 5', '2024-04-15', 'Present'),
(546, 46, 'Grade 5', '2024-04-15', 'Absent'),
(547, 47, 'Grade 5', '2024-04-15', 'Present'),
(548, 48, 'Grade 5', '2024-04-15', 'Present'),
(549, 49, 'Grade 5', '2024-04-15', 'Absent'),
(550, 50, 'Grade 5', '2024-04-15', 'Present'),
(551, 1, 'Grade 1', '2024-04-16', 'Present'),
(552, 2, 'Grade 1', '2024-04-16', 'Present'),
(553, 3, 'Grade 1', '2024-04-16', 'Absent'),
(554, 4, 'Grade 1', '2024-04-16', 'Present'),
(555, 5, 'Grade 1', '2024-04-16', 'Present'),
(556, 6, 'Grade 1', '2024-04-16', 'Absent'),
(557, 7, 'Grade 1', '2024-04-16', 'Present'),
(558, 8, 'Grade 1', '2024-04-16', 'Present'),
(559, 9, 'Grade 1', '2024-04-16', 'Absent'),
(560, 10, 'Grade 1', '2024-04-16', 'Present'),
(561, 11, 'Grade 2', '2024-04-16', 'Present'),
(562, 12, 'Grade 2', '2024-04-16', 'Present'),
(563, 13, 'Grade 2', '2024-04-16', 'Absent'),
(564, 14, 'Grade 2', '2024-04-16', 'Present'),
(565, 15, 'Grade 2', '2024-04-16', 'Present'),
(566, 16, 'Grade 2', '2024-04-16', 'Absent'),
(567, 17, 'Grade 2', '2024-04-16', 'Present'),
(568, 18, 'Grade 2', '2024-04-16', 'Present'),
(569, 19, 'Grade 2', '2024-04-16', 'Absent'),
(570, 20, 'Grade 2', '2024-04-16', 'Present'),
(571, 21, 'Grade 3', '2024-04-16', 'Present'),
(572, 22, 'Grade 3', '2024-04-16', 'Present'),
(573, 23, 'Grade 3', '2024-04-16', 'Absent'),
(574, 24, 'Grade 3', '2024-04-16', 'Present'),
(575, 25, 'Grade 3', '2024-04-16', 'Present'),
(576, 26, 'Grade 3', '2024-04-16', 'Absent'),
(577, 27, 'Grade 3', '2024-04-16', 'Present'),
(578, 28, 'Grade 3', '2024-04-16', 'Present'),
(579, 29, 'Grade 3', '2024-04-16', 'Absent'),
(580, 30, 'Grade 3', '2024-04-16', 'Present'),
(581, 31, 'Grade 4', '2024-04-16', 'Present'),
(582, 32, 'Grade 4', '2024-04-16', 'Present'),
(583, 33, 'Grade 4', '2024-04-16', 'Absent'),
(584, 34, 'Grade 4', '2024-04-16', 'Present'),
(585, 35, 'Grade 4', '2024-04-16', 'Present'),
(586, 36, 'Grade 4', '2024-04-16', 'Absent'),
(587, 37, 'Grade 4', '2024-04-16', 'Present'),
(588, 38, 'Grade 4', '2024-04-16', 'Present'),
(589, 39, 'Grade 4', '2024-04-16', 'Absent'),
(590, 40, 'Grade 4', '2024-04-16', 'Present'),
(591, 41, 'Grade 5', '2024-04-16', 'Present'),
(592, 42, 'Grade 5', '2024-04-16', 'Present'),
(593, 43, 'Grade 5', '2024-04-16', 'Absent'),
(594, 44, 'Grade 5', '2024-04-16', 'Present'),
(595, 45, 'Grade 5', '2024-04-16', 'Present'),
(596, 46, 'Grade 5', '2024-04-16', 'Absent'),
(597, 47, 'Grade 5', '2024-04-16', 'Present'),
(598, 48, 'Grade 5', '2024-04-16', 'Present'),
(599, 49, 'Grade 5', '2024-04-16', 'Absent'),
(600, 50, 'Grade 5', '2024-04-16', 'Present'),
(601, 1, 'Grade 1', '2024-04-17', 'Present'),
(602, 2, 'Grade 1', '2024-04-17', 'Present'),
(603, 3, 'Grade 1', '2024-04-17', 'Absent'),
(604, 4, 'Grade 1', '2024-04-17', 'Present'),
(605, 5, 'Grade 1', '2024-04-17', 'Present'),
(606, 6, 'Grade 1', '2024-04-17', 'Absent'),
(607, 7, 'Grade 1', '2024-04-17', 'Present'),
(608, 8, 'Grade 1', '2024-04-17', 'Present'),
(609, 9, 'Grade 1', '2024-04-17', 'Absent'),
(610, 10, 'Grade 1', '2024-04-17', 'Present'),
(611, 11, 'Grade 2', '2024-04-17', 'Present'),
(612, 12, 'Grade 2', '2024-04-17', 'Present'),
(613, 13, 'Grade 2', '2024-04-17', 'Absent'),
(614, 14, 'Grade 2', '2024-04-17', 'Present'),
(615, 15, 'Grade 2', '2024-04-17', 'Present'),
(616, 16, 'Grade 2', '2024-04-17', 'Absent'),
(617, 17, 'Grade 2', '2024-04-17', 'Present'),
(618, 18, 'Grade 2', '2024-04-17', 'Present'),
(619, 19, 'Grade 2', '2024-04-17', 'Absent'),
(620, 20, 'Grade 2', '2024-04-17', 'Present'),
(621, 21, 'Grade 3', '2024-04-17', 'Present'),
(622, 22, 'Grade 3', '2024-04-17', 'Present'),
(623, 23, 'Grade 3', '2024-04-17', 'Absent'),
(624, 24, 'Grade 3', '2024-04-17', 'Present'),
(625, 25, 'Grade 3', '2024-04-17', 'Present'),
(626, 26, 'Grade 3', '2024-04-17', 'Absent'),
(627, 27, 'Grade 3', '2024-04-17', 'Present'),
(628, 28, 'Grade 3', '2024-04-17', 'Present'),
(629, 29, 'Grade 3', '2024-04-17', 'Absent'),
(630, 30, 'Grade 3', '2024-04-17', 'Present'),
(631, 31, 'Grade 4', '2024-04-17', 'Present'),
(632, 32, 'Grade 4', '2024-04-17', 'Present'),
(633, 33, 'Grade 4', '2024-04-17', 'Absent'),
(634, 34, 'Grade 4', '2024-04-17', 'Present'),
(635, 35, 'Grade 4', '2024-04-17', 'Present'),
(636, 36, 'Grade 4', '2024-04-17', 'Absent'),
(637, 37, 'Grade 4', '2024-04-17', 'Present'),
(638, 38, 'Grade 4', '2024-04-17', 'Present'),
(639, 39, 'Grade 4', '2024-04-17', 'Absent'),
(640, 40, 'Grade 4', '2024-04-17', 'Present'),
(641, 41, 'Grade 5', '2024-04-17', 'Present'),
(642, 42, 'Grade 5', '2024-04-17', 'Present'),
(643, 43, 'Grade 5', '2024-04-17', 'Absent'),
(644, 44, 'Grade 5', '2024-04-17', 'Present'),
(645, 45, 'Grade 5', '2024-04-17', 'Present'),
(646, 46, 'Grade 5', '2024-04-17', 'Absent'),
(647, 47, 'Grade 5', '2024-04-17', 'Present'),
(648, 48, 'Grade 5', '2024-04-17', 'Present'),
(649, 49, 'Grade 5', '2024-04-17', 'Absent'),
(650, 50, 'Grade 5', '2024-04-17', 'Present'),
(651, 1, 'Grade 1', '2024-04-18', 'Present'),
(652, 2, 'Grade 1', '2024-04-18', 'Present'),
(653, 3, 'Grade 1', '2024-04-18', 'Absent'),
(654, 4, 'Grade 1', '2024-04-18', 'Present'),
(655, 5, 'Grade 1', '2024-04-18', 'Present'),
(656, 6, 'Grade 1', '2024-04-18', 'Absent'),
(657, 7, 'Grade 1', '2024-04-18', 'Present'),
(658, 8, 'Grade 1', '2024-04-18', 'Present'),
(659, 9, 'Grade 1', '2024-04-18', 'Absent'),
(660, 10, 'Grade 1', '2024-04-18', 'Present'),
(661, 11, 'Grade 2', '2024-04-18', 'Present'),
(662, 12, 'Grade 2', '2024-04-18', 'Present'),
(663, 13, 'Grade 2', '2024-04-18', 'Absent'),
(664, 14, 'Grade 2', '2024-04-18', 'Present'),
(665, 15, 'Grade 2', '2024-04-18', 'Present'),
(666, 16, 'Grade 2', '2024-04-18', 'Absent'),
(667, 17, 'Grade 2', '2024-04-18', 'Present'),
(668, 18, 'Grade 2', '2024-04-18', 'Present'),
(669, 19, 'Grade 2', '2024-04-18', 'Absent'),
(670, 20, 'Grade 2', '2024-04-18', 'Present'),
(671, 21, 'Grade 3', '2024-04-18', 'Present'),
(672, 22, 'Grade 3', '2024-04-18', 'Present'),
(673, 23, 'Grade 3', '2024-04-18', 'Absent'),
(674, 24, 'Grade 3', '2024-04-18', 'Present'),
(675, 25, 'Grade 3', '2024-04-18', 'Present'),
(676, 26, 'Grade 3', '2024-04-18', 'Absent'),
(677, 27, 'Grade 3', '2024-04-18', 'Present'),
(678, 28, 'Grade 3', '2024-04-18', 'Present'),
(679, 29, 'Grade 3', '2024-04-18', 'Absent'),
(680, 30, 'Grade 3', '2024-04-18', 'Present'),
(681, 31, 'Grade 4', '2024-04-18', 'Present'),
(682, 32, 'Grade 4', '2024-04-18', 'Present'),
(683, 33, 'Grade 4', '2024-04-18', 'Absent'),
(684, 34, 'Grade 4', '2024-04-18', 'Present'),
(685, 35, 'Grade 4', '2024-04-18', 'Present'),
(686, 36, 'Grade 4', '2024-04-18', 'Absent'),
(687, 37, 'Grade 4', '2024-04-18', 'Present'),
(688, 38, 'Grade 4', '2024-04-18', 'Present'),
(689, 39, 'Grade 4', '2024-04-18', 'Absent'),
(690, 40, 'Grade 4', '2024-04-18', 'Present'),
(691, 41, 'Grade 5', '2024-04-18', 'Present'),
(692, 42, 'Grade 5', '2024-04-18', 'Present'),
(693, 43, 'Grade 5', '2024-04-18', 'Absent'),
(694, 44, 'Grade 5', '2024-04-18', 'Present'),
(695, 45, 'Grade 5', '2024-04-18', 'Present'),
(696, 46, 'Grade 5', '2024-04-18', 'Absent'),
(697, 47, 'Grade 5', '2024-04-18', 'Present'),
(698, 48, 'Grade 5', '2024-04-18', 'Present'),
(699, 49, 'Grade 5', '2024-04-18', 'Absent'),
(700, 50, 'Grade 5', '2024-04-18', 'Present');

-- sub queries

-- Identify students who have never been absent
SELECT studentID, Student_Name 
FROM Students 
WHERE StudentID NOT IN (SELECT StudentID FROM Attendance WHERE Status = 'Absent');

-- List the names of students who are enrolled in the same class as 'Alice Smith'
SELECT studentID, Student_Name 
FROM Students 
WHERE Class = (SELECT Class FROM Students WHERE Student_Name = 'Alice Smith');

-- Find the teacher with the highest salary using a subquery
SELECT Teacher_Name, salary
FROM Teachers 
WHERE Salary = (SELECT MAX(Salary) FROM Teachers);

-- Display the student with the earliest date of birth
SELECT Student_Name, DOB 
FROM Students 
WHERE DOB = (SELECT MIN(DOB) FROM Students);

-- Display studentID along with their enrollmentID and enrollmentDate who enrolled for the latest enrollment date.
SELECT enrollmentID,StudentID,EnrollmentDate FROM Enrollments
 WHERE EnrollmentDate = (SELECT MAX(EnrollmentDate) FROM Enrollments);

-- joins

-- Show the names of students and their attendance records.
SELECT students.Student_Name, attendance.Date, attendance.Status 
FROM Students 
JOIN Attendance on students.StudentID = attendance.StudentID
where attendance.Date = "2024-04-15";

-- List all teachers and their assigned grades, including those without students.
SELECT teachers.Teacher_Name, classGrade.Class 
FROM Teachers 
LEFT JOIN Classgrade ON teachers.TeacherID = classGrade.TeacherID;

-- Show each teacher and a count of students they teach, including teachers with no students.
 SELECT teachers.Teacher_Name, COUNT(students.StudentID) as Student_Count
FROM Teachers 
LEFT JOIN Classgrade  ON teachers.TeacherID = classGrade.TeacherID
LEFT JOIN Students  ON classGrade.Class = students.Class
GROUP BY teachers.Teacher_Name;

-- List all the students who are in classes taught only by male teachers.
SELECT students.student_name, students.class,teachers.teacher_name
FROM students 
JOIN classgrade ON students.class = classgrade.class
JOIN teachers  ON classgrade.teacherid = teachers.teacherid
WHERE teachers.gender = 'male';

-- List student names along with their address and phone number who enrolled on date '2024-04-02'
SELECT students.student_name, students.phone,students.address, enrollments.enrollmentdate
FROM students 
JOIN enrollments ON students.studentID = enrollments.studentID
WHERE enrollments.enrollmentDate = '2024-04-02';


-- QUERIES

-- Calculate the average salary of all teachers.
 select avg(salary) as avg_salary from teachers;
 
-- Find the maximum and minimum date of birth among all students to determine the oldest and youngest student.
 
 select max(DOB) as oldest_student , min(DOB) AS Youngest_student from students;

-- Show the number of students in each class, ordered by the class size descending.
select class, count(*) as no_of_students from students group by class order by no_of_students desc;

-- List the five most recent enrollments.
select studentID, enrollmentID  from enrollments order by enrollmentdate desc
limit 5;

-- Find all students whose names start with 'A'.
 select student_name from students where student_name like'A%';
 
 





