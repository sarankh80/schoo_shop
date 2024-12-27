-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 27, 2024 at 02:59 AM
-- Server version: 5.7.36
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_schools`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `imge` varchar(200) DEFAULT NULL,
  `video` varchar(300) DEFAULT NULL,
  `description` text,
  `status` smallint(6) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `imge`, `video`, `description`, `status`, `date`) VALUES
(1, 'dfdf', 'fdf', 'https://www.youtube.com/embed/FOVd-jrGyic?si=RUYklNtXXthDVNUi', NULL, 1, '2024-12-20 03:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `description` text,
  `status` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`, `image`, `description`, `status`) VALUES
(1, 'Book 1', 'book.png', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `ordering` smallint(6) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `status`, `ordering`, `date`) VALUES
(1, 'ABOUT', 0, 1, '2019-07-05 00:00:00'),
(2, 'Book', 1, 2, '2019-07-26 09:43:58'),
(13, 'News', 1, 3, '2024-11-22 08:59:19'),
(14, 'Pictures', 1, 5, '2024-11-22 09:01:36'),
(15, 'Cash1112222', 0, 9, '2024-11-22 09:03:56'),
(16, 'Cash', 0, 9, '2024-11-22 09:26:58'),
(17, 'About ', 1, 1, '2024-12-06 07:40:26');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `status` smallint(6) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `sub_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `cat_id`, `image`, `title`, `description`, `status`, `date`, `sub_id`) VALUES
(1, 1, 'f-right.jpg', 'dfsdfsdfsdfs', 'fdsdfsdfdsfsdf', 1, '2019-08-29 23:18:24', 1),
(2, 1, 'f-right.jpg', 'dfsdfsdfsdfs', 'fdsdfsdfdsfsdf', 1, '2019-08-29 23:18:43', 1),
(3, 1, 'f-right.jpg', 'dfsdfsdfsdfs', 'fdsdfsdfdsfsdf', 1, '2019-08-29 23:19:19', 1),
(4, 1, 'logo.gif', 'sfgsdfdfsdf', 'dsfsdfsdfsdfsdf', 1, '2019-08-29 23:19:33', 1),
(5, 1, 'f-right.jpg', 'dfsdfsdfsdfs', 'fdsdfsdfdsfsdf', 1, '2019-08-29 23:23:09', 1),
(6, 1, 'logo.gif', 'sfgsdfdfsdf', 'dsfsdfsdfsdfsdf', 1, '2019-08-29 23:24:35', 1),
(7, 1, 'f-right.jpg', 'dfsdfsdfsdfs', 'fdsdfsdfdsfsdf', 1, '2019-08-29 23:27:31', 1),
(8, 1, 'f-right.jpg', 'dfsdfsdfsdfs', 'fdsdfsdfdsfsdf', 1, '2019-08-29 23:27:36', 1),
(15, 0, '', 'admin ', '', 1, '2019-08-29 23:39:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
CREATE TABLE IF NOT EXISTS `picture` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tile` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `status` smallint(6) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
CREATE TABLE IF NOT EXISTS `position` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `position` text,
  `description` text,
  `status` smallint(6) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

DROP TABLE IF EXISTS `slide`;
CREATE TABLE IF NOT EXISTS `slide` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `button` varchar(100) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `image`, `title`, `description`, `button`, `status`, `date`) VALUES
(1, 'banner1.jpg', 'Slider', 'sara khan sarn ', 'on', 0, '2019-08-07 00:06:35'),
(2, 'banner2.jpg', 'Slider 2', 'Image banner to slide ', 'on', 0, '2019-08-07 00:09:35'),
(3, 'barcode (3).gif', 'Slide', ' \r\n						d', NULL, 0, '2024-12-06 07:55:23'),
(4, 'barcode (3).gif', 'Slide 2', ' Slide 2\r\n						', NULL, 0, '2024-12-06 08:06:10'),
(5, 'barcode (5).gif', 'Title', ' \r\n						s', NULL, 0, '2024-12-06 08:17:17'),
(6, '', 'T1', ' Slide\r\n						', NULL, 0, '2024-12-06 08:18:51'),
(7, '', 'T', ' 1\r\n						', NULL, 0, '2024-12-06 08:19:51'),
(8, '', 'T', ' 1\r\n						', NULL, 0, '2024-12-06 08:21:40'),
(9, 'banner1.jpg', 'Slide', ' \r\n							 \r\n							 \r\n							 \r\n							 Slide\r\n																														', NULL, 1, '2024-12-06 10:02:53'),
(10, 'barcode.gif', 'barcode (2).gif', ' barcode (2).gif\r\n						', NULL, 0, '2024-12-06 10:04:21'),
(11, 'banner2.jpg', 'Slide', ' \r\n							 image\r\n												', NULL, 1, '2024-12-06 10:05:53'),
(12, 'banner3.jpg', 'Slide111', ' \r\n							 Sar\r\n												', NULL, 1, '2024-12-06 10:07:16'),
(13, 'Untitled design.png', 'Slide', 'Slide', NULL, 0, '2024-12-13 07:58:06'),
(14, '', 'sd', ' \r\n						', NULL, 0, '2024-12-13 08:30:59'),
(15, 'Untitled design (2).png', 'wqw', ' \r\n						', NULL, 0, '2024-12-13 08:31:32'),
(16, 'Untitled design (3).png', 'sds', ' \r\n						', NULL, 0, '2024-12-13 08:35:12'),
(17, '5EV.png', 'profile', ' \r\n							 \r\n												', NULL, 0, '2024-12-13 08:35:54'),
(18, 'blog-img4.jpg', 'School', ' \r\n						', NULL, 1, '2024-12-27 08:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `sponser`
--

DROP TABLE IF EXISTS `sponser`;
CREATE TABLE IF NOT EXISTS `sponser` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tile` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `description` text,
  `status` smallint(6) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat`
--

DROP TABLE IF EXISTS `sub_cat`;
CREATE TABLE IF NOT EXISTS `sub_cat` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `ordering` smallint(6) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_cat`
--

INSERT INTO `sub_cat` (`id`, `cat_id`, `name`, `status`, `ordering`, `date`) VALUES
(1, 1, 'Admin Saran Khan', 1, 1, '2019-08-25 13:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `image`, `group`, `status`, `date`) VALUES
(1, 'Admin', 'admin@gmail.com', '12345', '086888172', NULL, 1, 1, '2019-07-05 00:00:00'),
(2, 'Sopheak', 'sopheak@gmail.com', '12345', '098987766', NULL, 1, 1, '2019-07-05 00:00:00'),
(3, 'hong', 'hong@gmail.com', '12345', '09878878', 'user.png', 1, 1, '2019-07-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

DROP TABLE IF EXISTS `year`;
CREATE TABLE IF NOT EXISTS `year` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `description` text,
  `status` smallint(6) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
