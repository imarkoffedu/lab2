-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 05, 2023 at 06:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `EmployeeManagementDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `CourseAttendance`
--

CREATE TABLE `CourseAttendance` (
  `attendance_id` int(11) NOT NULL COMMENT 'ID',
  `employee_id` int(11) NOT NULL COMMENT 'ID працівника',
  `course_id` int(11) NOT NULL COMMENT 'ID курсу'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `CourseAttendance`
--

INSERT INTO `CourseAttendance` (`attendance_id`, `employee_id`, `course_id`) VALUES
(1, 15, 1),
(2, 13, 1),
(3, 14, 1),
(4, 2, 2),
(5, 1, 2),
(6, 4, 2),
(7, 14, 2),
(8, 15, 3),
(9, 1, 3),
(10, 2, 3),
(11, 3, 3),
(12, 14, 4),
(13, 13, 4);

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE `Courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL COMMENT 'Назва курсу',
  `description` text NOT NULL COMMENT 'Опис курсу',
  `date` date NOT NULL COMMENT 'Дата проведення курсу'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`course_id`, `course_name`, `description`, `date`) VALUES
(1, 'Фінансова звітність', 'Основи фінансової звітності та аналізу.', '2023-09-11'),
(2, 'Менеджмент проектів', 'Управління проектами та методології.', '2023-09-22'),
(3, 'Англійська мова', 'Курс для покращення рівня володіння англійською.', '2023-09-30'),
(4, 'Основи маркетингу', 'Маркетингові стратегії та практики.', '2023-10-04');

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `employee_id` int(11) NOT NULL COMMENT 'ID',
  `first_name` varchar(50) NOT NULL COMMENT 'Ім''я',
  `last_name` varchar(50) NOT NULL COMMENT 'Прізвище',
  `email` varchar(128) NOT NULL COMMENT 'Електронна пошта',
  `birthdate` date NOT NULL COMMENT 'Дата народження',
  `position_id` int(11) NOT NULL COMMENT 'ID посади'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`employee_id`, `first_name`, `last_name`, `email`, `birthdate`, `position_id`) VALUES
(1, 'Олег', 'Іваненко', 'oleg@gmail.com', '1990-03-15', 1),
(2, 'Ірина', 'Петренко', 'irina@outlook.com', '1985-07-22', 2),
(3, 'Анна', 'Коваль', 'anna@gmail.com', '1995-05-10', 3),
(4, 'Володимир', 'Сидоренко', 'volodymyr@ukr.net', '1988-09-03', 4),
(13, 'Антон', 'Костанюк', 'kostaniul@gmail.com', '2006-10-01', 13),
(14, 'Леонід', 'Зварич', 'moy.meneger@gmail.com', '2006-10-24', 1),
(15, 'Віктор', 'Ковальчук', 'viktor.kovalchuk@gmail.com', '2005-08-17', 14);

-- --------------------------------------------------------

--
-- Table structure for table `Positions`
--

CREATE TABLE `Positions` (
  `position_id` int(11) NOT NULL COMMENT 'ID',
  `title` varchar(50) NOT NULL COMMENT 'Назва',
  `description` text NOT NULL COMMENT 'Опис'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Positions`
--

INSERT INTO `Positions` (`position_id`, `title`, `description`) VALUES
(1, 'Менеджер', 'Керує відділом продажів.'),
(2, 'Бухгалтер', 'Займається фінансовим обліком.'),
(3, 'HR-менеджер', 'Відповідає за підбір персоналу.'),
(4, 'ІТ-спеціаліст', 'Забезпечує підтримку ІТ-інфраструктури.'),
(13, 'Front-end developer', 'Створює веб-сайти та веб-додатки.'),
(14, 'Тамада', 'Розважає персонал');

-- --------------------------------------------------------

--
-- Table structure for table `Salaries`
--

CREATE TABLE `Salaries` (
  `salary_id` int(11) NOT NULL COMMENT 'ID',
  `employee_id` int(11) NOT NULL COMMENT 'ID працівника',
  `payment_date` date NOT NULL COMMENT 'Дата виплати',
  `amount` decimal(10,2) NOT NULL COMMENT 'Сума зарплати'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Salaries`
--

INSERT INTO `Salaries` (`salary_id`, `employee_id`, `payment_date`, `amount`) VALUES
(1, 1, '2023-09-30', 35650.42),
(2, 1, '2023-08-31', 35650.42),
(3, 2, '2023-09-30', 12423.13),
(4, 2, '2023-08-31', 13576.46),
(5, 3, '2023-09-30', 24831.34),
(6, 3, '2023-08-31', 25890.09),
(7, 4, '2023-09-30', 18791.96),
(8, 4, '2023-08-31', 18791.96),
(9, 14, '2023-10-04', 0.34),
(10, 13, '2023-10-04', 54698.93);

-- --------------------------------------------------------

--
-- Table structure for table `Vacations`
--

CREATE TABLE `Vacations` (
  `vacation_id` int(11) NOT NULL COMMENT 'ID',
  `employee_id` int(11) NOT NULL COMMENT 'ID працівника',
  `start_date` date NOT NULL COMMENT 'Дата початку відпустки',
  `end_date` date NOT NULL COMMENT 'Дата кінця відпустки',
  `reason` varchar(100) NOT NULL COMMENT 'Тип відпустки (+причина)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Vacations`
--

INSERT INTO `Vacations` (`vacation_id`, `employee_id`, `start_date`, `end_date`, `reason`) VALUES
(1, 1, '2023-08-10', '2023-08-15', 'відпустка з оплатою'),
(2, 1, '2023-09-20', '2023-09-22', 'відпустка без оплати'),
(3, 2, '2023-07-05', '2023-07-10', 'відпустка з оплатою'),
(5, 4, '2023-08-25', '2023-08-30', 'відгул'),
(6, 15, '2023-08-08', '2023-08-10', 'кішка родила'),
(7, 15, '2023-08-18', '2023-08-18', 'собака штани з\'їла'),
(8, 15, '2023-10-01', '2023-10-01', 'закрили в хаті');

-- --------------------------------------------------------

--
-- Table structure for table `WorkHours`
--

CREATE TABLE `WorkHours` (
  `workhour_id` int(11) NOT NULL COMMENT 'ID',
  `employee_id` int(11) NOT NULL COMMENT 'ID працівника',
  `work_date` date NOT NULL COMMENT 'Дата виходу на роботу',
  `start_time` time NOT NULL COMMENT 'Початок зміни',
  `end_time` time NOT NULL COMMENT 'Кінець зміни'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `WorkHours`
--

INSERT INTO `WorkHours` (`workhour_id`, `employee_id`, `work_date`, `start_time`, `end_time`) VALUES
(1, 1, '2023-10-01', '08:00:00', '17:00:00'),
(2, 1, '2023-10-02', '09:00:00', '18:00:00'),
(3, 1, '2023-10-03', '08:30:00', '16:30:00'),
(4, 2, '2023-10-01', '08:30:00', '17:30:00'),
(5, 2, '2023-10-02', '08:00:00', '16:00:00'),
(6, 3, '2023-10-01', '09:00:00', '18:00:00'),
(7, 3, '2023-10-02', '09:30:00', '17:30:00'),
(8, 3, '2023-10-03', '08:00:00', '16:00:00'),
(9, 4, '2023-10-01', '09:00:00', '18:00:00'),
(10, 4, '2023-10-02', '08:30:00', '17:30:00'),
(11, 13, '2023-10-04', '10:03:02', '18:04:25'),
(12, 13, '2023-10-03', '11:39:43', '19:44:59'),
(13, 14, '2023-10-04', '12:04:42', '14:03:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CourseAttendance`
--
ALTER TABLE `CourseAttendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `Courses`
--
ALTER TABLE `Courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `position_id` (`position_id`);

--
-- Indexes for table `Positions`
--
ALTER TABLE `Positions`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `Salaries`
--
ALTER TABLE `Salaries`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `Vacations`
--
ALTER TABLE `Vacations`
  ADD PRIMARY KEY (`vacation_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `WorkHours`
--
ALTER TABLE `WorkHours`
  ADD PRIMARY KEY (`workhour_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CourseAttendance`
--
ALTER TABLE `CourseAttendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `Courses`
--
ALTER TABLE `Courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Employees`
--
ALTER TABLE `Employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Positions`
--
ALTER TABLE `Positions`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Salaries`
--
ALTER TABLE `Salaries`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Vacations`
--
ALTER TABLE `Vacations`
  MODIFY `vacation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `WorkHours`
--
ALTER TABLE `WorkHours`
  MODIFY `workhour_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CourseAttendance`
--
ALTER TABLE `CourseAttendance`
  ADD CONSTRAINT `CourseAttendance_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `Courses` (`course_id`),
  ADD CONSTRAINT `CourseAttendance_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `Employees` (`employee_id`);

--
-- Constraints for table `Employees`
--
ALTER TABLE `Employees`
  ADD CONSTRAINT `position_id` FOREIGN KEY (`position_id`) REFERENCES `Positions` (`position_id`);

--
-- Constraints for table `Salaries`
--
ALTER TABLE `Salaries`
  ADD CONSTRAINT `Salaries_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `Employees` (`employee_id`);

--
-- Constraints for table `Vacations`
--
ALTER TABLE `Vacations`
  ADD CONSTRAINT `Vacations_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `Employees` (`employee_id`);

--
-- Constraints for table `WorkHours`
--
ALTER TABLE `WorkHours`
  ADD CONSTRAINT `WorkHours_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `Employees` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
