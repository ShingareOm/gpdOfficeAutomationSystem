-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2024 at 05:02 AM
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
(25, 58, 'Important Announcement Regarding Annual Event', 'Dear All, We are excited to announce that the annual event will take place on...', 3, NULL, NULL, NULL, '2024-03-10 00:00:00', NULL, NULL, '2024-02-28'),
(26, 58, 'Reminder: Staff Meeting Tomorrow', 'This is a reminder that there will be a staff meeting tomorrow at 9:00 AM in the conference room...', 2, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-12'),
(27, 58, 'Urgent: System Maintenance Scheduled', 'Dear Team, Please be informed that there will be a scheduled system maintenance...', 2, NULL, NULL, NULL, '2024-03-05 00:00:00', NULL, NULL, '2024-02-29'),
(28, 58, 'Congratulations to Employee of the Month', 'We are pleased to announce that the Employee of the Month for February is Mr. John Smith...', 2, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-07'),
(29, 58, 'Request for Leave Approval', 'Dear Manager, I would like to request approval for leave from March 20th to March 25th...', 2, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-03'),
(30, 58, 'Invitation to Quarterly Review Meeting', 'Dear Team, You are cordially invited to attend the quarterly review meeting scheduled for...', 2, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-09'),
(31, 58, 'Reminder: Project Deadline Approaching', 'This is a gentle reminder that the deadline for Project X is approaching...', 2, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-01'),
(32, 58, 'Announcement: New Employee Orientation', 'We are delighted to welcome our new employees who will be joining us next week...', 2, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-06'),
(33, 58, 'Notice: Office Closure on Public Holiday', 'Please note that our office will remain closed on Monday, March 18th, due to the public holiday...', 2, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-02'),
(34, 58, 'Reminder: Submit Quarterly Reports', 'A friendly reminder to all department heads to submit their quarterly reports by the end of the week...', 2, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-08'),
(35, 60, 'Request for Leave of Absence for 1 week', '&lt;p style=&quot;border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space-collapse: preserve;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Dear Principal S.L. Andhare,&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space-collapse: preserve;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;I hope this letter finds you well. I am writing to request a leave of absence from my duties as a teacher in the Computer Department. Due to personal reasons, I find it necessary to take some time off from work.&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space-collapse: preserve;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;I apologize for any inconvenience my absence may cause, and I assure you that I will do my best to minimize disruption to the department&amp;#x2019;s activities during my leave. I have arranged for my lesson plans to be covered in my absence, and I will make myself available via email for any urgent matters that may arise.&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space-collapse: preserve;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;I understand the importance of maintaining continuity in our educational programs, and I am committed to returning to work as soon as possible. I kindly request your approval for a leave of absence starting from [start date] to [end date].&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space-collapse: preserve;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Thank you for your understanding and consideration.&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space-collapse: preserve;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Sincerely,&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px 0px; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space-collapse: preserve;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Satish Pore\r\nComputer Department Teacher&lt;/font&gt;&lt;/p&gt;											', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-17'),
(36, 39, 'Request for Permission for Departmental Trip', '																		<p style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px;\">I hope this letter finds you in good health and high spirits. I am writing to seek your kind permission for organizing a trip for the students of the DDGM (Department of Digital Graphics and Media) department of our esteemed college.</p><p style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px;\">As the Head of Department, it is our endeavor to provide holistic education to our students, which goes beyond the confines of the classroom. We believe that educational trips play a vital role in enhancing the overall learning experience and broadening the horizons of our students. Therefore, we have meticulously planned a trip that we believe will be both educational and enjoyable for our students.</p><p style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px;\">Trip Details:</p><ul style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; list-style-position: initial; list-style-image: initial; margin: 1.25em 0px; padding: 0px; display: flex; flex-direction: column;\"><li style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">Destination: Latur</li><li style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">Duration: 3</li><li style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">Purpose: The trip aims to expose our students to [Educational Purpose], providing them with practical insights into their field of study. It will also serve as a platform for team building and fostering camaraderie among the students.</li></ul><p style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px;\">Thank you for considering our request. We eagerly await your favorable response.</p>																										', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-18'),
(38, 61, 'Request for Leave', '												<p style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px;\"><b>I hope this letter finds you in good health and high spirits. I am writing to request a short leave from my duties as a teacher in the CO Department</b>.</p><p style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px;\">Due to unforeseen personal circumstances, I find it necessary to request leave from today to tomorrow. During my absence, I will ensure that all necessary arrangements are made to minimize disruption to the department’s operations.</p><p style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px;\">I apologize for any inconvenience my absence may cause and assure you that I will do my best to make up for any missed responsibilities upon my return.</p><p style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px;\">Thank you for considering my request. Your understanding and support in this matter are greatly appreciated.</p>																					', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-18');

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
(40, 61, 1);

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
(30, 'omshingare120@gmail.com', 'd812740ee9cdef8fd18e4b489b251ad2', 1, 'om ', 'shingare', '1709532360_images.jpg'),
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
(53, 'shashikantpanke@gmail.com', '1c6bb7ba1452932427b4502bb64ea7b9', 3, 'Shashikant', 'Panke', '1710647700_pankhe.jpg'),
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
(71, 'sunilandhare@gmail.com', '7ecbf7d11f8a6be3b619d88b6b0d785a', 3, 'Sunil', 'Andhare', '1710640920_principal.jpg');

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
  ADD UNIQUE KEY `user_email` (`user_email`) USING HASH,
  ADD UNIQUE KEY `user_email_2` (`user_email`) USING HASH,
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
  MODIFY `hod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `gpd_letters`
--
ALTER TABLE `gpd_letters`
  MODIFY `letter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `gpd_letter_history`
--
ALTER TABLE `gpd_letter_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gpd_teacher`
--
ALTER TABLE `gpd_teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `gpd_users`
--
ALTER TABLE `gpd_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

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
