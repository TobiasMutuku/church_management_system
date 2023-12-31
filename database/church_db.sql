-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2023 at 05:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `church_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_request`
--

CREATE TABLE `appointment_request` (
  `id` int(30) NOT NULL,
  `sched_type_id` int(30) NOT NULL,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `schedule` datetime NOT NULL,
  `remarks` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment_request`
--

INSERT INTO `appointment_request` (`id`, `sched_type_id`, `fullname`, `contact`, `address`, `schedule`, `remarks`, `status`, `date_created`, `date_updated`) VALUES
(1, 2, 'Kelvin Mutinda', '0795042134', 'Karen, Nairobi', '2023-07-20 22:00:00', 'How to approach girls', 1, '2023-07-18 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'Mary Wambui', '09445122988', 'Bahati, Nakuru', '2023-07-23 09:03:00', 'How do I get in touch with my femininity', 0, '2021-09-16 14:12:13', '2023-07-18 17:31:38'),
(3, 1, 'David Mutiso', '0789457632', 'LangaLanga, Nakuru', '2023-08-01 16:00:00', 'How to quit masturbation', 2, '2021-09-16 14:13:19', '2023-07-18 17:33:12');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `topic_id` int(30) DEFAULT NULL,
  `content` text NOT NULL,
  `keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `banner_path` text NOT NULL,
  `upload_dir_code` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = unpublished ,1= published',
  `blog_url` text NOT NULL,
  `author_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `topic_id`, `content`, `keywords`, `meta_description`, `banner_path`, `upload_dir_code`, `status`, `blog_url`, `author_id`, `date_created`, `date_updated`) VALUES
(1, 'SUGARS', 2, 'Sugars is the culprit of all the chronic ailments.', 'sugar, food, fructose,sucrose', 'Sugars is the culprit of all the chronic ailments.', 'uploads/blog_uploads/banners/1_banner.jpg', 'Zk1pDmHIo2', 1, 'pages/sample_101.php', 1, '2021-08-17 12:56:54', '2023-07-18 17:54:28'),
(2, 'Saccos & MMF', 1, '&lt;h3 style=\\&quot;text-align: left; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\\&quot;&gt;Sacco are the best institutions to invest your money&lt;/h3&gt;', 'Sacco, money, MMF, investment, deposit', 'Sacco are the best institutions to invest your money', 'uploads/blog_uploads/banners/2_banner.jpg', '', 1, 'pages/sample_102.php', 1, '2021-08-17 13:57:56', '2023-07-18 17:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `daily_verses`
--

CREATE TABLE `daily_verses` (
  `id` int(30) NOT NULL,
  `verse` text NOT NULL,
  `verse_from` text NOT NULL,
  `image_path` text NOT NULL,
  `display_date` date NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daily_verses`
--

INSERT INTO `daily_verses` (`id`, `verse`, `verse_from`, `image_path`, `display_date`, `date_created`, `date_updated`) VALUES
(3, 'Boys Are Born\r\nMen Are Made', 'Tobias Mutuku', '', '2023-07-18', '2023-07-18 15:44:59', '2023-07-18 17:17:55'),
(5, 'women', 'moon', '', '2023-07-18', '2023-07-18 15:47:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `schedule` date NOT NULL,
  `img_path` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `schedule`, `img_path`, `date_created`) VALUES
(3, 'Health Wednesday', 'Rectifying our lifestyle', '2023-07-19', 'uploads/events/healthwed1.jpg', '2021-08-17 15:17:52'),
(4, 'Sculpting Friday', 'Take the Red Pill and dispose the Blue Pill', '2023-07-21', 'uploads/events/redpill.jpg', '2021-08-17 15:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_type`
--

CREATE TABLE `schedule_type` (
  `id` int(11) NOT NULL,
  `sched_type` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule_type`
--

INSERT INTO `schedule_type` (`id`, `sched_type`, `description`, `status`) VALUES
(1, 'Quit Masturbation', '90 day challenge to quit masturbation.', 1),
(2, 'Quit Sugars', 'Simple ways to quit sugars', 1),
(3, 'How Quit Social Media', 'Simple ways to stop social media addiction', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Sculpting Men'),
(6, 'short_name', 'Sculpting Men'),
(11, 'logo', 'uploads/sculptinglogo.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/sculptinglogo.png'),
(15, 'welcome_content', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Sample Welcome Content<br></p>'),
(16, 'home_quote', 'Making Men Great Again'),
(17, 'contact', '0741877729'),
(18, 'email', 'sculptingmen@gmail.com'),
(19, 'address', 'Room 23, 3rd Floor,Tower One, Nakuru, Kenya.');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=Inactive, 1=Active',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Financial Monday', 'Mondays are Money Days', 1, '2021-08-17 08:51:41', '2023-07-18 17:14:52'),
(2, 'Health Wednesday', 'If you fail to eat food as medicine, you will eat medicine as food.', 1, '2021-08-17 08:53:01', '2023-07-18 17:18:47'),
(5, 'Sculpting Friday', 'When you refuse to be a man the consequences are dire.', 1, '2021-08-17 08:53:01', '2023-07-18 17:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `file_path` text NOT NULL,
  `dir_code` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `user_id`, `file_path`, `dir_code`, `date_created`) VALUES
(1, 1, 'uploads/blog_uploads/gInV4MOSIc/1629172196_1.jpg', 'gInV4MOSIc', '2021-08-17 11:49:56'),
(2, 1, 'uploads/blog_uploads/gInV4MOSIc/1629172196_download.jpg', 'gInV4MOSIc', '2021-08-17 11:49:56'),
(3, 1, 'uploads/blog_uploads/qI8ZJiELzQ/1629172988_1.jpg', 'qI8ZJiELzQ', '2021-08-17 12:03:08'),
(4, 1, 'uploads/blog_uploads/qI8ZJiELzQ/1629172988_download.jpg', 'qI8ZJiELzQ', '2021-08-17 12:03:08'),
(5, 1, 'uploads/blog_uploads/vLLU8CyJZd/1629174024_1.jpg', 'vLLU8CyJZd', '2021-08-17 12:20:24'),
(6, 1, 'uploads/blog_uploads/Zk1pDmHIo2/1629176073_1.jpg', 'Zk1pDmHIo2', '2021-08-17 12:54:33'),
(7, 1, 'uploads/blog_uploads/K1dZZqq4SO/1629176614_warehouse-portrait.jpg', 'K1dZZqq4SO', '2021-08-17 13:03:34'),
(8, 1, 'uploads/blog_uploads/YSzqldklKk/1629176691_warehouse-portrait.jpg', 'YSzqldklKk', '2021-08-17 13:04:51'),
(10, 1, 'uploads/blog_uploads/Zk1pDmHIo2/1629176847_warehouse-portrait.jpg', 'Zk1pDmHIo2', '2021-08-17 13:07:27'),
(11, 1, 'uploads/blog_uploads/causes_uploads/1629190918_dark-bg.jpg', 'causes_uploads', '2021-08-17 17:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Tobias', 'Mutuku', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2023-07-18 15:25:19'),
(9, 'Staff', '1', 'staff1', '4d7d719ac0cf3d78ea8a94701913fe47', 'uploads/1631778840_avatar_.png', NULL, 0, '2021-09-16 15:54:58', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_request`
--
ALTER TABLE `appointment_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `topic_id_2` (`topic_id`);

--
-- Indexes for table `daily_verses`
--
ALTER TABLE `daily_verses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_type`
--
ALTER TABLE `schedule_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_request`
--
ALTER TABLE `appointment_request`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `daily_verses`
--
ALTER TABLE `daily_verses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedule_type`
--
ALTER TABLE `schedule_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
