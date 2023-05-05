-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2018 at 01:59 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oop_register_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permission`) VALUES
(1, 'standard user', ''),
(2, 'Administrator', '(\r\n\"admin\": 1,\r\n\"moderates\": 1\r\n)');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `salt` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `joined` datetime NOT NULL,
  `groups` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `name`, `joined`, `groups`) VALUES
(4, 'Ajala', 'åbBc+ßBë!ó˜æ8`õ9¯¦bôÈ0ƒÛ¶Q', '´‘A-ªtÙ/)jt{U¸Q¼ˆàQouaL@ä=Ï.”', 'Samuel', '2018-07-23 17:35:03', 1),
(5, 'Johnson', 'É@(Y¬—CÜð)2ûoÂÈí«€­–ê÷Ñ?î;d', 'Ð–ûr©yÐ…GÔ·ìî~\'¥ØŒ	lÖ`¢1Dªç!', 'Jonnel', '2018-07-23 17:41:08', 1),
(6, 'oluwajohnson', 'åbBc+ßBë!ó˜æ8`õ9¯¦bôÈ0ƒÛ¶Q', 'À~±Ði‹5¹Î›Ó„E9ÓkéÇø§Ùaÿâ‹ôrµ', 'Samuel', '2018-07-23 17:41:57', 1),
(7, 'Toluwalase', 'M¡P«· ±oh¾µ¥éäQQUæê;QŽb²ÙAâMñ\r', 'Û˜%kõl\r-kb2„“ZÉ…ŸëíÂÕš½p]þ,eN', 'Ajala', '2018-07-25 13:13:38', 1),
(8, 'Toluwalase2', 'M¡P«· ±oh¾µ¥éäQQUæê;QŽb²ÙAâMñ\r', '”åžò¥jJ0šï¢£þZ¾@¯÷)ØK‰s~—ÕQ³@', 'Ajala Oluwafemi', '2018-07-25 13:14:45', 1),
(9, 'Kaykay', 'HþãÕö\nWÇTfªßá©WýÓžM§gÒø‹Ã‹D', 'Cmø^˜ûÕÞk´ÿWøëÒ}¿³„\n¾u÷G¨Œ', 'kay', '2018-07-25 13:24:42', 1),
(10, 'kayode', 'ÖF*™·iˆQj\nˆÀ{fuL9kR @RÛÊ×\"ú', 'Ú„1Ú(>‘5éW\\³ç1dÿ£Ô’I·õ× Q€=°', 'kay', '2018-07-25 13:30:19', 1),
(11, 'mr. man', '›F/Ï	Ê@XíXi¬kæêû9Jg!êwÁž®à', 'ëN®æè·‰_Óž@ô\"šæ.øÔæ½\0çX\Z', 'man', '2018-07-25 13:32:15', 1),
(12, 'manypeople', 'É&€øˆgN+\"tu‡U¿ }êr›h×Þ\\R×òa¿', '³¥í­a,¶aLÓqìç\rdO\'ýÄÌIæ\0,Þ', 'bill', '2018-07-25 13:34:35', 1),
(13, 'WellWell', '!—æã\r?{þ–åv—?0¸®×H¼q]ËÆ', '‡û{xé€¥*).,ú]ö‘“‚Üáë¡,#', 'wellwell', '2018-07-25 13:37:39', 1),
(14, 'ayanfe', '‚o´A^­[î€njDZ_aM?±„ë+ð±†IÇ¡Køµ•', 'îÔ°ˆÎ½Ù§ÂÓå+F”„ëM!M\'g7ï°2zô¶', 'femi boy1', '2018-07-26 13:50:22', 2),
(15, '', '', '', '', '0000-00-00 00:00:00', 0),
(16, 'femo', 'åbBc+ßBë!ó˜æ8`õ9¯¦bôÈ0ƒÛ¶Q', 'ràÕ6Z­•Üùú‚/è ´Â)2f˜2Ñ‹Æ Z', 'Ajala Oluwafemi', '2018-07-30 17:47:49', 1),
(17, 'femie', 'åbBc+ßBë!ó˜æ8`õ9¯¦bôÈ0ƒÛ¶Q', 'ô3ü\\‹ÅÐ–ÇêT|\r\Z¨ìç%¾þvá£Ë´Qa2', 'femooo', '2018-08-22 15:25:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
