-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 04:37 AM
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
-- Database: `gpdoffice_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gpd_department`
--

CREATE TABLE `gpd_department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `department_head_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gpd_department`
--

INSERT INTO `gpd_department` (`department_id`, `department_name`, `department_head_user_id`) VALUES
(1, 'Computer Engineering', 58),
(2, 'Dress Designing and Garment Manufacture', 39),
(3, 'Civil Engineering', 63),
(4, 'Mechanical Engineering', NULL),
(5, 'Electronics and Tele-Communication Engineering', 53),
(6, 'Electrical Engineering', NULL),
(7, 'Automobile Engineering', 48);

-- --------------------------------------------------------

--
-- Table structure for table `gpd_hod`
--

CREATE TABLE `gpd_hod` (
  `hod_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gpd_hod`
--

INSERT INTO `gpd_hod` (`hod_id`, `user_id`, `department_id`) VALUES
(11, 58, 1),
(12, 63, 3),
(13, 48, 7),
(14, 39, 2),
(15, 53, 5),
(16, 71, 4);

-- --------------------------------------------------------

--
-- Table structure for table `gpd_letters`
--

CREATE TABLE `gpd_letters` (
  `letter_id` int(11) NOT NULL,
  `letter_creator_user_id` int(11) NOT NULL,
  `letter_title` text NOT NULL,
  `letter_content` text NOT NULL,
  `letter_status` int(11) DEFAULT 2,
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
(45, 61, 'Proposal for Educational Trip to solapur', '&lt;div&gt;Dear Principal,&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;I hope this letter finds you well. I am writing to propose an educational trip for the students of [Department/Class] to [Destination] on [Date(s)]. The purpose of this trip is to provide our students with a practical understanding of [Educational Purpose/Subject Matter], which aligns with our curriculum objectives.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;The itinerary includes visits to [Key Locations], where students will have the opportunity to [Activities/Experiences]. We believe this trip will offer invaluable learning experiences and enhance the students&amp;#x2019; academic and personal development.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;I have prepared a detailed plan covering transportation, accommodation, safety measures, and estimated costs. I am confident that with your support, we can make this educational trip a memorable and enriching experience for our students.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;I look forward to discussing this proposal with you further.&lt;/div&gt;											', 5, 'Approved, Take care of students and have great edu. trip ', 'Approved', 'Approved', NULL, NULL, NULL, '2024-03-19'),
(46, 73, 'Leave Request for Student Participation in Dista Event Solapur', '&lt;div&gt;Dear Principal,&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;I am writing to request leave for&lt;b&gt;&lt;i&gt; Om Shingare, Purushottam Sarsekar, Yogesh Kshirsagar, Samarth Joshi &lt;/i&gt;&lt;/b&gt;from Computer Dept. to attend the Dista Event held in Solapur from today to Tommarow. This conference is a significant opportunity for our students to engage with the latest developments in IoT, network with professionals, and present their research/work.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Participation in this conference aligns with our university&amp;#x2019;s goals of fostering academic excellence and promoting student involvement in professional communities. Therefore, I kindly ask for your approval of their leave for the duration of the conference.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Thank you for considering this request. I am available to discuss any details or concerns you may have.&lt;/div&gt;											', 5, 'Approved, Go ahead. Good luck', 'Approved', 'done', NULL, NULL, NULL, '2024-03-19'),
(48, 61, 'temp letter', 'temp letter ..', 5, 'approved', 'approved', 'done', NULL, NULL, NULL, '2024-03-21'),
(49, 61, 'Temp leave.. for the project', 'Temp leave.. for the project&amp;nbsp;Temp leave.. for the projectTemp leave.. for the projectTemp leave.. for the projectTemp leave.. for the projectTemp leave.. for the projectTemp leave.. for the projectTemp leave.. for the project', 5, 'Okay.', 'Approved', 'Done, Approved', NULL, NULL, NULL, '2024-03-22'),
(50, 61, 'Test 2', 'Test 2&amp;nbsp;Test 2Test 2Test 2Test 2Test 2Test 2Test 2', 5, 'approved', 'Okay', 'Done', NULL, NULL, NULL, '2024-03-22'),
(51, 74, 'Request for Permission for Educational Trip to Latur for IoT Projects', '&lt;div&gt;I hope this letter finds you in good health and high spirits. I am writing to request your permission for an educational trip to Latur for our IoT (Internet of Things) projects.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Our students have been diligently working on various IoT projects, and a visit to Latur presents an invaluable opportunity to enhance their practical skills and knowledge in this field. The trip will include visits to relevant facilities and interactions with professionals in the IoT industry, providing our students with real-world insights and experiences.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;We assure you that all necessary measures will be taken to ensure the safety and supervision of our students throughout the trip. Additionally, we will adhere to all school policies and guidelines during our time away from the campus.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;We believe that this trip will greatly benefit our students and align with our commitment to providing holistic education. Your approval of this request would be greatly appreciated.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Thank you for considering our proposal. We look forward to your favorable response.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Sincerely,&lt;/div&gt;											', 5, 'approved', 'Done', 'Approved', NULL, NULL, NULL, '2024-04-01');

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
(21, 48, 7),
(22, 49, 7),
(32, 62, 3),
(33, 65, 3),
(34, 66, 3),
(35, 67, 3),
(36, 68, 3),
(37, 69, 3),
(38, 70, 3),
(39, 60, 1),
(40, 61, 1),
(41, 73, 1),
(42, 74, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gpd_users`
--

CREATE TABLE `gpd_users` (
  `user_id` int(11) NOT NULL,
  `user_email` text NOT NULL,
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
(30, 'omshingare120@gmail.com', 'd812740ee9cdef8fd18e4b489b251ad2', 1, 'om ', 'shingare', '1710817860_IMG_20220921_134754.jpg'),
(35, 'lipik@gmail.com', 'ac9db79f7bf9e556ee52ebd8207472b8', 4, 'Lipik', 'Test', '1710588420_IMG_20220921_134754.jpg'),
(39, 'mayakagne16@gmail.com', '9d147c7cdfc069f14deaa1b18a7d77b9', 3, 'Maya', 'Kagne', '1710644760_mayan.jpg'),
(40, 'sonaliawad1@gmail.com', '774c1888873840766a6160db757cfa7d', 2, 'Sonali', 'Awad', '1710644880_sonaliawad1@gmail.jpg'),
(41, 'rajanimande@gmail.com', '61c303f0630bb78b935a4ec5ddda9058', 2, 'Rajani', 'Joshi', '1710644940_Joshi.jpg'),
(42, 'soniyadange123@gmail.com', '193732ebf7c3e727c85a41d92d2c98d5', 2, 'Soniya', 'Khune', '1710645060_Khune.jpg'),
(43, 'anupsalunke77@gmail.com', '7680ef71c1bce50d7757dbb9b1b34b4d', 2, 'Anup', 'Salunke', '1710645120_anupsalunke.jpg'),
(44, 'shradharathi24@gmail.com', '560099f6d545180154cd65e1d19712a1', 2, 'Shraddha', 'Rathi', '1710645180_sharadha.jpg'),
(45, 'chavanamol10@gmail.com', 'ddec958783eefe71aeeef1dbcd102757', 2, 'Chavan', 'jayram', '1710645300_jayram.jpg'),
(46, 'surajdgangawane@gmail.com', 'cbf2a459d0c0de5c991a0ea3a991358d', 2, 'Suraj', 'Gangawane', '1710645360_Gangawane.jpg'),
(47, 'pallavitorambe8@gmail.com', 'b2624cf56a23460aaf1e6546bf8eb055', 2, 'Pallavi', 'torambe', '1710645420_torambe.jpg'),
(48, 'lahumane1@gmail.com', '86c65d5556f4fc3b798a05dbb4d15e3c', 3, 'Lahu', 'Mane', '1710647520_manea.jpg'),
(49, 'wakurets21@gmail.com', '08ca2902cd254d9b63b7bac1d48497dc', 2, 'Wakure', 'Sopanrao', '1710645720_Sopanrao.jpg'),
(50, 'meetvishalbansode@gmail.com', '8a3de382c372d3f38f880cc6ea169893', 2, 'Vishal', 'Bansode', '1710646860_Bansode.jpg'),
(52, 'pames.jagtap@gmail.com', '6c55a3c15bc90ce3bf7e24ae3ad56f01', 2, 'Pramod', 'Jagtap', '1710647640_jagtap.jpg'),
(53, 'shashikantpanke@gmail.com', '1c6bb7ba1452932427b4502bb64ea7b9', 5, 'Shashikant', 'Panke', '1710647700_pankhe.jpg'),
(54, 'prandhare73@gmail.com', '33c1a0aa5eca765d2e8fa8094abab21b', 2, 'Prakash', 'Andhare', '1710647760_andhare.jpg'),
(55, 'shital.mete@gmail.com', 'e8c6265a5a9090eec1ee25ec2e14b29d', 2, 'Sheetal', 'Mete', '1710647820_methe.jpg'),
(56, 'ashwini.maindarkar5@gmail.com', 'aa2a296f0208a3f4996f407ff07357dc', 2, 'ASHWINI', 'MAINDARKAR', '1710647880_ashvini.jpg'),
(57, 'saeeprit@gmail.com', 'bb44b9089255d2cd4d0ec592c059698a', 2, 'Smita', 'Mane', '1710648060_Manemam.jpg'),
(58, 'amit.gaikwad@gov.in', '5e6d36cfa030444ea4a4a150f91db339', 3, 'Amit', 'Gaikwad', '1710648240_amit.jpg'),
(59, 'bchauhan07@rediffmail.com', '3c293034aece9a8495bc989773720077', 2, 'BALVIRSING', 'CHAUHAN', '1710648300_CHAUHAN.jpg'),
(60, 'satish.pore@gov.in', '2aaf57fad2245b35e1d75b2b8a166f53', 2, 'SATISH', 'PORE', '1710648360_pore.jpg'),
(61, 'ada.gposm@gmail.com', 'e6b27e5e911813226f8d77256b0b8b1d', 2, 'Abhinay', 'Ambure', '1710648420_Ambure.jpg'),
(62, 'sudhirkulkarni456@gmail.com', '9dd89d878c073dfc848f78cf26beb4c2', 2, 'sudhir', 'Kulkarni', '1710648540_sudir.jpg'),
(63, 'kavita.ghalke@gmail.com', '2165cdd8a87eba26282d35ed3701888e', 3, 'Kavita', 'Awate', '1710648600_Awate.jpg'),
(65, 'dattatraya.manjare@rediffmail.com', '4640733fb6db9fcf0c2d81dda4e96da1', 2, 'Dattatraya', 'Manjare', '1710649020_datta.jpg'),
(66, 'ganesh.konge15@gmail.com', 'accb89d65e057f1496719fdac1024ad9', 2, 'GANESH', 'KONGE', '1710649080_KONGE.jpg'),
(67, 'kotmalesahadev@gmail.com', 'fd951585b32766cc318d03016b74b77d', 2, 'KOTMALE', 'BABURAO', '1710649080_BABURAO.jpg'),
(68, 'patilvarsha651@gmail.com', '3f61fb97283a0ef8cf723cf20dd00bca', 2, 'VARSHA', 'PATIL', '1710649140_PATIL.jpg'),
(69, 'apurvapatil1212@gmail.com', '9f31bedf11b837acd9ff511666bab13c', 2, 'Apurva', 'Patil', '1710649260_Patilapurva.jpg'),
(70, 'ajinkyapayal@gmail.com', '32cc77610a021a01d2a62b54d5040a5e', 2, 'Ajinkya', 'Payal', '1710649320_Payal.jpg'),
(71, 'sunilandhare@gmail.com', '7ecbf7d11f8a6be3b619d88b6b0d785a', 3, 'Sunil', 'Andhare', '1710640920_principal.jpg'),
(73, 'prajaktajagdale@gmail.com', 'f2f9be26ed53c833d7c1a67e18254ae1', 2, 'Prajakta', 'Jagdale', 'no-image-available.png'),
(74, 'mane@gmail.com', '64bc3b281f05f94f43a4871997a3e626', 2, 'Bhagyashri', 'Mane', '1710862800_img3.jpg');

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gpd_department`
--
ALTER TABLE `gpd_department`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `department_head_user_id` (`department_head_user_id`);

--
-- Indexes for table `gpd_hod`
--
ALTER TABLE `gpd_hod`
  ADD PRIMARY KEY (`hod_id`),
  ADD KEY `gpd_hod_ibfk_1` (`user_id`),
  ADD KEY `gpd_hod_ibfk_2` (`department_id`);

--
-- Indexes for table `gpd_letters`
--
ALTER TABLE `gpd_letters`
  ADD PRIMARY KEY (`letter_id`),
  ADD KEY `gpd_letters_ibfk_1` (`letter_creator_user_id`);

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
  ADD UNIQUE KEY `user_email` (`user_email`) USING HASH,
  ADD UNIQUE KEY `user_email_2` (`user_email`) USING HASH,
  ADD KEY `gpd_users_ibfk_1` (`user_type_id`);

--
-- Indexes for table `gpd_user_type`
--
ALTER TABLE `gpd_user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
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
  MODIFY `hod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `gpd_letters`
--
ALTER TABLE `gpd_letters`
  MODIFY `letter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `gpd_teacher`
--
ALTER TABLE `gpd_teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `gpd_users`
--
ALTER TABLE `gpd_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `gpd_user_type`
--
ALTER TABLE `gpd_user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gpd_department`
--
ALTER TABLE `gpd_department`
  ADD CONSTRAINT `gpd_department_ibfk_1` FOREIGN KEY (`department_head_user_id`) REFERENCES `gpd_users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `gpd_hod`
--
ALTER TABLE `gpd_hod`
  ADD CONSTRAINT `gpd_hod_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `gpd_department` (`department_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `gpd_hod_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `gpd_users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `gpd_letters`
--
ALTER TABLE `gpd_letters`
  ADD CONSTRAINT `gpd_letters_ibfk_1` FOREIGN KEY (`letter_creator_user_id`) REFERENCES `gpd_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
