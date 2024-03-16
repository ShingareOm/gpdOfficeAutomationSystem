-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2024 at 01:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gpd_department`
--

CREATE TABLE `gpd_department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `department_head_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gpd_department`
--

INSERT INTO `gpd_department` (`department_id`, `department_name`, `department_head_user_id`) VALUES
(1, 'Computer Engineering', 2),
(2, 'Dress Designing and Garment Manufacture', 3),
(3, 'Civil Engineering', 12),
(4, 'Mechanical Engineering', 8),
(5, 'Electronics and Tele-Communication Engineering', 2),
(7, 'Automobile Engineering', 10);

-- --------------------------------------------------------

--
-- Table structure for table `gpd_hod`
--

CREATE TABLE `gpd_hod` (
  `hod_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gpd_hod`
--

INSERT INTO `gpd_hod` (`hod_id`, `user_id`, `department_id`) VALUES
(1, 2, 1),
(2, 3, 2),
(5, 33, 5);

-- --------------------------------------------------------

--
-- Table structure for table `gpd_letters`
--

CREATE TABLE `gpd_letters` (
  `letter_id` int(11) NOT NULL,
  `letter_creator_user_id` int(11) NOT NULL,
  `letter_title` text NOT NULL,
  `letter_content` text NOT NULL,
  `letter_status` int(11) DEFAULT 1,
  `letter_hod_remarks` text DEFAULT NULL,
  `letter_lipik_remarks` text DEFAULT NULL,
  `letter_principal_remarks` text DEFAULT NULL,
  `letter_principal_approval_date` datetime DEFAULT NULL,
  `letter_lipik_approval_date` datetime DEFAULT NULL,
  `letter_hod_approval_date` datetime DEFAULT NULL,
  `letter_created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gpd_letters`
--

INSERT INTO `gpd_letters` (`letter_id`, `letter_creator_user_id`, `letter_title`, `letter_content`, `letter_status`, `letter_hod_remarks`, `letter_lipik_remarks`, `letter_principal_remarks`, `letter_principal_approval_date`, `letter_lipik_approval_date`, `letter_hod_approval_date`, `letter_created_date`) VALUES
(1, 20, 'I love you babe', 'I love you babe content', 1, 'done', 'done', '', '2024-03-04 09:49:30', '2024-03-04 09:49:30', '2024-03-04 09:49:30', '2024-03-04'),
(9, 20, 'This is my title', 'Hello', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gpd_letter_history`
--

CREATE TABLE `gpd_letter_history` (
  `history_id` int(11) NOT NULL,
  `letter_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `action_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gpd_teacher`
--

CREATE TABLE `gpd_teacher` (
  `teacher_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gpd_teacher`
--

INSERT INTO `gpd_teacher` (`teacher_id`, `user_id`, `department_id`) VALUES
(1, 4, 1),
(2, 5, 2),
(3, 10, 3),
(4, 16, 1),
(7, 26, 4),
(8, 27, 2),
(9, 28, 1),
(10, 29, 3),
(11, 32, 2);

-- --------------------------------------------------------

--
-- Table structure for table `gpd_users`
--

CREATE TABLE `gpd_users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_password` text NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_surname` varchar(200) NOT NULL,
  `user_profile_pic` varchar(300) NOT NULL DEFAULT 'no-image-available.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gpd_users`
--

INSERT INTO `gpd_users` (`user_id`, `user_email`, `user_password`, `user_type_id`, `user_name`, `user_surname`, `user_profile_pic`) VALUES
(1, 'omshingare@admin.com', 'e807f1fcf82d132f9bb018ca6738a19f', 1, 'om', 'shingare', '\'no-image-available.png\''),
(2, 'omhod1@hod.com', 'omhod1@hod.com', 3, 'om', 'hod1', '\'no-image-available.png\''),
(3, 'omhod2@hod.com', 'omhod2@hod.com', 3, 'om', 'hod2', '\'no-image-available.png\''),
(4, 'omteacher1@teacher.com', 'omteacher1@teacher.com', 2, 'om', 'teacher1', '\'no-image-available.png\''),
(5, 'omteacher2@teacher.com', 'omteacher2@teacher.com', 2, 'om', 'teacher2', '\'no-image-available.png\''),
(8, 'omprincipal@principal.com', 'omprincipal@principal.com', 5, 'om', 'principal', '\'no-image-available.png\''),
(10, 'test@gmail.com', 'a8f5f167f44f4964e6c998dee827110c', 5, 'qweqwe', 'qweqew', '\'no-image-available.png\''),
(11, 'amitgaikwad@gmail.com', '35f0c162c3c188910b9172ed48fd92f3', 3, 'amit', 'gaikwad', '\'no-image-available.png\''),
(12, 'qwe@qwe.com', 'efe6398127928f1b2e9ef3207fb82663', 3, 'qwe', 'qwe', '\'no-image-available.png\''),
(13, 'ambure@ambure.com', '69ad5cb19f1820c9b14b203ee3f5ab29', 2, 'Ambure', 'TEMP', '\'no-image-available.png\''),
(14, 'abhinavambure@ambure.com', 'e81a1cc4be55e1fd3f06b5398bcae4c8', 2, 'abinav', 'ambure', '\'no-image-available.png\''),
(15, 'qweqwe@asd.com', '389d11a6f4fb751af9b1764a4e868b61', 2, 'qwe', 'qwe', '\'no-image-available.png\''),
(16, 'temp@temp.com', '5323f6cf1ab10ed8746118accfaadb89', 2, 'qwe', 'qwe', '\'no-image-available.png\''),
(17, 'temp@temp1.com', '5323f6cf1ab10ed8746118accfaadb89', 2, 'qwe', 'qwe', '\'no-image-available.png\''),
(18, 'temp@temp2.com', '5aeaacd688cbac198b1424848340e3e5', 1, 'asd', 'asd', '\'no-image-available.png\''),
(19, 'qweqwe@qwe.com', '76d80224611fc919a5d54f0ff9fba446', 2, 'qwe', 'qwe', '\'no-image-available.png\''),
(20, 'alshafe@sayed.com', '202cb962ac59075b964b07152d234b70', 3, 'alshafe', 'sayed', '\'no-image-available.png\''),
(22, 'amitshah@sha.com', 'b2baa42c184be54d651acfc9f57cdfb7', 3, 'amit', 'shah', '\'no-image-available.png\''),
(23, 'amitshah2@sha.com', 'b2baa42c184be54d651acfc9f57cdfb7', 3, 'amitshah', 'amitshah', '\'no-image-available.png\''),
(24, 'asdasd@asda.com', '4b650efc20abe41f4e6119bec6e9d15e', 3, 'amit', 'amit', '\'no-image-available.png\''),
(26, 'myco@myco.com', '02023a85961499247c3e30bcd0d3073b', 2, 'myco', 'myco', 'no-image-available.png'),
(27, 'fake@use.com', '4c69c6e3c673bd2b906953bbaff65ed2', 2, 'fake', 'one', 'no-image-available.png'),
(28, 'afds@asdasd.com', '8caf35bd38e72744aefcf703998a07cd', 2, 'omasd', 'asdad', 'no-image-available.png'),
(29, 'asdfasfdafiasdpif@asdads.com', '394e165a291fdef908a46e1067921d75', 2, 'asdfasfdafiasdpif', 'asdfasfdafiasdpif', '1709531880_images.jpg'),
(30, 'omshingare120@gmail.com', 'd812740ee9cdef8fd18e4b489b251ad2', 1, 'om ', 'shingare', '1709532360_images.jpg'),
(31, 'office.gposmanabad@dtemaharash', 'd351bb232cfa46ab7ab0f2cbfffdf80c', 5, 'S. L.', 'Andhare', '1709542560_principal.jpg'),
(32, 'samarth31j@gmail.com', '921718c2ba07faab93cbedb78fb27f87', 2, 'samarth', 'joshi', '1709562840_principal.jpg'),
(33, 'yogeshkshirsagar7553@gmail.com', '202cb962ac59075b964b07152d234b70', 3, 'Yogesh', 'Khirsakhar', '1709564100_IMG_20240129_200057_286.jpg'),
(34, 'omuser@user.com', '202cb962ac59075b964b07152d234b70', 1, 'Om', 'Shingare', '1709562480_images.png'),
(35, 'lipik@gmail.com', 'ac9db79f7bf9e556ee52ebd8207472b8', 4, 'Lipik', 'Test', '1710588420_IMG_20220921_134754.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gpd_user_type`
--

CREATE TABLE `gpd_user_type` (
  `user_type_id` int(11) NOT NULL,
  `user_type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gpd_user_type`
--

INSERT INTO `gpd_user_type` (`user_type_id`, `user_type_name`) VALUES
(1, 'administrator'),
(2, 'teacher'),
(3, 'hod'),
(4, 'lipik'),
(5, 'principal');

-- --------------------------------------------------------

--
-- Table structure for table `project_list`
--

CREATE TABLE `project_list` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `manager_id` int(30) NOT NULL,
  `user_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_list`
--

INSERT INTO `project_list` (`id`, `name`, `description`, `status`, `start_date`, `end_date`, `manager_id`, `user_ids`, `date_created`) VALUES
(4, 'AdminTestProject', '						&lt;h1&gt;&lt;b&gt;This is text&lt;/b&gt;&lt;/h1&gt;&lt;h4&gt;&lt;b&gt;weree is our tesx&lt;/b&gt;&lt;/h4&gt;					', 3, '2024-02-29', '2024-03-01', 8, '9', '2024-02-29 17:50:28'),
(5, '', '											', 0, '0000-00-00', '0000-00-00', 8, '', '2024-02-29 17:54:05'),
(6, ' पुण्यातील कोडिंग प्रतियोगिता साठी प्रवासाची योजना', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 14pt; margin-left: 0px; padding: 0px; font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: 13.3333px; line-height: 1.5; color: rgb(0, 0, 0);&quot;&gt;सादर जाहिर,&lt;br style=&quot;margin: 0px; padding: 0px; font-size: 10pt; line-height: 1.5;&quot;&gt;सातारा महाविद्यालयाच्या कॉम्प्यूटर विज्ञान विभागाचे हेड ऑफ डिपार्टमेंट असामी, मी त्यांच्या सर्व प्राप्त आदराने सांगितले की, आम्ही पुण्यातील एक कोडिंग प्रतियोगितेसाठी प्रवास करायचं आहे.&lt;/p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: 13.3333px;&quot;&gt;या प्रतियोगितेमध्ये आम्ही आमच्या विद्यार्थ्यांना अधिक अनुभव, प्रतिसाद आणि विश्वासाची क्षमता वाढवण्याचा सर्वात चांगला अवसर मानतो.&lt;/span&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 14pt; margin-left: 0px; padding: 0px; font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: 13.3333px; line-height: 1.5; color: rgb(0, 0, 0);&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 14pt; margin-left: 0px; padding: 0px; font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: 13.3333px; line-height: 1.5; color: rgb(0, 0, 0);&quot;&gt;त्याबद्दल, आम्ही आपल्याला विनंती करतो की, कृपया आपल्याच्या स्वीकृतीनुसार, आमच्या विद्यार्थ्यांसह पुण्यातील या प्रतियोगितेसाठी एक दिवसीय प्रवास आयोजित करावा.&lt;br style=&quot;margin: 0px; padding: 0px; font-size: 10pt; line-height: 1.5;&quot;&gt;कृपया आपल्याची स्वीकृती असल्याचे विनंती करतो.&lt;/p&gt;											', 0, '2024-03-04', '0000-00-00', 31, '', '2024-03-04 14:56:21'),
(7, 'asd', 'asd', 0, '2024-03-20', '0000-00-00', 31, '', '2024-03-04 14:57:20');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'GPD Office Management System', 'omshingare@duck.com', '+918767561500', 'Dharashiv', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `project_id`, `task`, `description`, `status`, `date_created`) VALUES
(1, 1, 'Sample Task 1', '								&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Fusce ullamcorper mattis semper. Nunc vel risus ipsum. Sed maximus dapibus nisl non laoreet. Pellentesque quis mauris odio. Donec fermentum facilisis odio, sit amet aliquet purus scelerisque eget.&amp;nbsp;&lt;/span&gt;													', 3, '2020-12-03 11:08:58'),
(2, 1, 'Sample Task 2', 'Sample Task 2							', 1, '2020-12-03 13:50:15'),
(3, 2, 'Task Test', 'Sample', 1, '2020-12-03 13:52:25'),
(4, 2, 'test 23', 'Sample test 23', 1, '2020-12-03 13:52:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `avatar` text NOT NULL DEFAULT '\'no-image-available.png\'',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(7, 'Om', 'admin', 'omadmin@gmail.com', 'f0be0569d5097c9f16751ce64723d48f', 1, '1709205840_c99.php', '2024-02-29 16:50:53'),
(8, 'om', 'Project manager', 'ommanager@gmail.com', '1506175d8d6ad05de38433dce67cf978', 2, 'no-image-available.png', '2024-02-29 17:46:49'),
(9, 'om', 'Employee', 'omemp@gmail.com', '54e7343e535073614f04eeb95e4392f8', 3, 'no-image-available.png', '2024-02-29 17:47:58'),
(10, 'Check', 'user', 'check@data.con', 'bed723c192d98bd744e5e59ef0a49e7a', 1, '\'no-image-available.png\'', '2024-03-03 17:58:16'),
(11, ' sdf', 'rfsdf', 'check@fata.com', 'e053c81038b225e4e70c18c04ddf7d41', 5, '\'no-image-available.png\'', '2024-03-03 17:59:00'),
(12, 'weqwe', 'wer', 'ertetr@faada.com', 'b6fd1aea5346734ca716f8ad918d3855', 1, '\'no-image-available.png\'', '2024-03-03 17:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `user_productivity`
--

CREATE TABLE `user_productivity` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `subject` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int(30) NOT NULL,
  `time_rendered` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_productivity`
--

INSERT INTO `user_productivity` (`id`, `project_id`, `task_id`, `comment`, `subject`, `date`, `start_time`, `end_time`, `user_id`, `time_rendered`, `date_created`) VALUES
(1, 1, 1, '							&lt;p&gt;Sample Progress&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Test 1&lt;/li&gt;&lt;li&gt;Test 2&lt;/li&gt;&lt;li&gt;Test 3&lt;/li&gt;&lt;/ul&gt;																			', 'Sample Progress', '2020-12-03', '08:00:00', '10:00:00', 1, 2, '2020-12-03 12:13:28'),
(2, 1, 1, '							Sample Progress						', 'Sample Progress 2', '2020-12-03', '13:00:00', '14:00:00', 1, 1, '2020-12-03 13:48:28'),
(3, 1, 2, '							Sample						', 'Test', '2020-12-03', '08:00:00', '09:00:00', 5, 1, '2020-12-03 13:57:22'),
(4, 1, 2, 'asdasdasd', 'Sample Progress', '2020-12-02', '08:00:00', '10:00:00', 2, 2, '2020-12-03 14:36:30'),
(5, 3, 0, '													', 'om shingare is the best ', '0000-00-00', '00:00:00', '00:00:00', 3, 0, '2024-02-29 06:38:13'),
(6, 4, 0, 'Done sir', '', '2024-02-29', '17:57:00', '17:59:00', 9, 0.0333333, '2024-02-29 17:53:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gpd_department`
--
ALTER TABLE `gpd_department`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `gpd_department_ibfk_1` (`department_head_user_id`);

--
-- Indexes for table `gpd_hod`
--
ALTER TABLE `gpd_hod`
  ADD PRIMARY KEY (`hod_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `gpd_letters`
--
ALTER TABLE `gpd_letters`
  ADD PRIMARY KEY (`letter_id`),
  ADD KEY `letter_creator_user_id` (`letter_creator_user_id`);

--
-- Indexes for table `gpd_letter_history`
--
ALTER TABLE `gpd_letter_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `letter_id` (`letter_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `gpd_teacher`
--
ALTER TABLE `gpd_teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `gpd_teacher_ibfk_1` (`user_id`),
  ADD KEY `gpd_teacher_ibfk_2` (`department_id`);

--
-- Indexes for table `gpd_users`
--
ALTER TABLE `gpd_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `gpd_users_ibfk_1` (`user_type_id`);

--
-- Indexes for table `gpd_user_type`
--
ALTER TABLE `gpd_user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `project_list`
--
ALTER TABLE `project_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_productivity`
--
ALTER TABLE `user_productivity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gpd_department`
--
ALTER TABLE `gpd_department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gpd_hod`
--
ALTER TABLE `gpd_hod`
  MODIFY `hod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gpd_letters`
--
ALTER TABLE `gpd_letters`
  MODIFY `letter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gpd_letter_history`
--
ALTER TABLE `gpd_letter_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gpd_teacher`
--
ALTER TABLE `gpd_teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gpd_users`
--
ALTER TABLE `gpd_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `gpd_user_type`
--
ALTER TABLE `gpd_user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_list`
--
ALTER TABLE `project_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_productivity`
--
ALTER TABLE `user_productivity`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gpd_department`
--
ALTER TABLE `gpd_department`
  ADD CONSTRAINT `gpd_department_ibfk_1` FOREIGN KEY (`department_head_user_id`) REFERENCES `gpd_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gpd_hod`
--
ALTER TABLE `gpd_hod`
  ADD CONSTRAINT `gpd_hod_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `gpd_users` (`user_id`),
  ADD CONSTRAINT `gpd_hod_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `gpd_department` (`department_id`);

--
-- Constraints for table `gpd_letters`
--
ALTER TABLE `gpd_letters`
  ADD CONSTRAINT `gpd_letters_ibfk_1` FOREIGN KEY (`letter_creator_user_id`) REFERENCES `gpd_users` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `gpd_letter_history`
--
ALTER TABLE `gpd_letter_history`
  ADD CONSTRAINT `gpd_letter_history_ibfk_1` FOREIGN KEY (`letter_id`) REFERENCES `gpd_letters` (`letter_id`),
  ADD CONSTRAINT `gpd_letter_history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `gpd_users` (`user_id`);

--
-- Constraints for table `gpd_teacher`
--
ALTER TABLE `gpd_teacher`
  ADD CONSTRAINT `gpd_teacher_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `gpd_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gpd_teacher_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `gpd_department` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gpd_users`
--
ALTER TABLE `gpd_users`
  ADD CONSTRAINT `gpd_users_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `gpd_user_type` (`user_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
