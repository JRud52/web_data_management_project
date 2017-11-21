-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2017 at 07:11 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jr_wdm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `is_login` tinyint(1) NOT NULL,
  `address` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`date_time`, `username`, `is_login`, `address`, `success`) VALUES
('2017-10-29 22:07:06', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 00:09:38', 'hello', 1, '127.0.0.1', 1),
('2017-10-30 00:18:59', 'hello', 1, '127.0.0.1', 1),
('2017-10-30 04:03:08', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:03:14', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:07:45', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:09:32', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:09:36', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:09:45', 'hello', 1, '127.0.0.1', 1),
('2017-10-30 04:09:53', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:10:18', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:20:51', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:20:59', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:21:51', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:22:52', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:23:10', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:23:44', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:24:15', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:24:50', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:24:55', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:24:58', 'hello', 1, '127.0.0.1', 1),
('2017-10-30 04:28:32', 'hello', 1, '127.0.0.1', 1),
('2017-10-30 04:30:00', 'hello', 1, '127.0.0.1', 1),
('2017-10-30 04:31:15', 'hello', 1, '127.0.0.1', 1),
('2017-10-30 04:32:56', 'hello', 1, '127.0.0.1', 1),
('2017-10-30 04:34:07', 'lasfj;', 0, '1', 1),
('2017-10-30 04:34:25', 'lasfj;', 0, '1', 1),
('2017-10-30 04:35:31', 'hello', 1, '127.0.0.1', 1),
('2017-10-30 04:36:40', 'khjjkkjh', 0, '23456789', 1),
('2017-10-30 04:37:57', 'hello', 1, '127.0.0.1', 1),
('2017-10-30 04:52:03', 'asdg', 1, '127.0.0.1', 0),
('2017-10-30 04:55:05', 'asdg', 1, '127.0.0.1', 0),
('2017-10-30 04:55:09', 'asdg', 1, '127.0.0.1', 0),
('2017-10-30 04:55:28', 'asdg', 1, '127.0.0.1', 0),
('2017-10-30 04:56:17', 'asdg', 1, '127.0.0.1', 0),
('2017-10-30 04:56:27', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:58:17', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 04:58:23', '', 1, '127.0.0.1', 0),
('2017-10-30 05:00:14', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 05:04:26', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 05:04:38', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 05:04:42', 'safd', 1, '127.0.0.1', 0),
('2017-10-30 05:05:11', 'safd', 1, '127.0.0.1', 0),
('2017-10-30 05:05:21', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 05:06:45', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 05:06:55', 'asf', 1, '127.0.0.1', 0),
('2017-10-30 05:10:55', 'asd', 1, '127.0.0.1', 0),
('2017-10-30 05:11:00', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 05:11:03', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 05:11:06', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 05:13:14', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 05:13:19', 'asd', 1, '127.0.0.1', 0),
('2017-10-30 05:13:22', 'safd', 1, '127.0.0.1', 0),
('2017-10-30 05:13:25', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 05:13:28', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 05:16:26', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 05:16:34', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 05:16:37', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 05:16:40', 'asdfadsfa', 1, '127.0.0.1', 0),
('2017-10-30 05:16:43', 'asfd', 1, '127.0.0.1', 0),
('2017-10-30 05:27:24', 'adsf', 1, '127.0.0.1', 0),
('2017-10-30 05:27:36', 'afds', 1, '127.0.0.1', 0),
('2017-10-30 05:27:38', 'fdsa', 1, '127.0.0.1', 0),
('2017-10-30 05:27:40', 'fdsa', 1, '127.0.0.1', 0),
('2017-10-30 05:27:43', 'fdsa', 1, '127.0.0.1', 0),
('2017-10-30 05:28:45', '', 1, '127.0.0.1', 0),
('2017-10-30 05:28:46', '', 1, '127.0.0.1', 0),
('2017-10-30 05:28:47', '', 1, '127.0.0.1', 0),
('2017-10-30 05:28:48', '', 1, '127.0.0.1', 0),
('2017-10-30 05:28:49', '', 1, '127.0.0.1', 0),
('2017-10-30 05:28:50', '', 1, '127.0.0.1', 0),
('2017-10-30 05:30:54', 'asdfasd', 1, '127.0.0.1', 0),
('2017-10-30 05:30:55', '', 1, '127.0.0.1', 0),
('2017-10-30 05:30:56', '', 1, '127.0.0.1', 0),
('2017-10-30 05:30:57', '', 1, '127.0.0.1', 0),
('2017-10-30 05:30:58', '', 1, '127.0.0.1', 0),
('2017-10-30 05:30:59', '', 1, '127.0.0.1', 0),
('2017-10-30 05:31:00', '', 1, '127.0.0.1', 0),
('2017-10-30 05:31:41', '', 1, '127.0.0.1', 0),
('2017-10-30 05:31:43', '', 1, '127.0.0.1', 0),
('2017-10-30 05:31:44', '', 1, '127.0.0.1', 0),
('2017-10-30 05:31:45', '', 1, '127.0.0.1', 0),
('2017-10-30 05:31:46', '', 1, '127.0.0.1', 0),
('2017-10-30 05:31:50', 'adsfadsfadsf', 1, '127.0.0.1', 0),
('2017-10-30 16:47:33', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 16:47:37', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 16:47:38', '', 1, '127.0.0.1', 0),
('2017-10-30 16:47:39', '', 1, '127.0.0.1', 0),
('2017-10-30 16:47:40', '', 1, '127.0.0.1', 0),
('2017-10-30 16:47:43', 'asdf', 1, '127.0.0.1', 0),
('2017-10-30 16:47:45', 'asdfa', 1, '127.0.0.1', 0),
('2017-10-30 17:06:15', '', 1, '127.0.0.1', 0),
('2017-10-30 17:06:17', '', 1, '127.0.0.1', 0),
('2017-10-30 17:06:18', '', 1, '127.0.0.1', 0),
('2017-10-30 17:06:19', '', 1, '127.0.0.1', 0),
('2017-10-30 17:06:20', '', 1, '127.0.0.1', 0),
('2017-10-30 17:06:21', '', 1, '127.0.0.1', 0),
('2017-10-30 17:08:22', '', 1, '127.0.0.1', 0),
('2017-10-30 17:08:23', '', 1, '127.0.0.1', 0),
('2017-10-30 17:08:24', '', 1, '127.0.0.1', 0),
('2017-10-30 17:08:25', '', 1, '127.0.0.1', 0),
('2017-10-30 17:08:26', '', 1, '127.0.0.1', 0),
('2017-10-30 17:08:27', '', 1, '127.0.0.1', 0),
('2017-10-30 17:08:28', '', 1, '127.0.0.1', 0),
('2017-10-30 17:09:05', '', 1, '127.0.0.1', 0),
('2017-10-30 17:09:06', '', 1, '127.0.0.1', 0),
('2017-10-30 17:09:07', '', 1, '127.0.0.1', 0),
('2017-10-30 17:09:08', '', 1, '127.0.0.1', 0),
('2017-10-30 17:09:24', '', 1, '127.0.0.1', 0),
('2017-10-30 17:09:25', '', 1, '127.0.0.1', 0),
('2017-10-30 17:09:26', '', 1, '127.0.0.1', 0),
('2017-10-30 17:09:35', '', 1, '127.0.0.1', 0),
('2017-10-30 17:09:36', '', 1, '127.0.0.1', 0),
('2017-10-30 17:09:37', '', 1, '127.0.0.1', 0),
('2017-10-30 17:09:38', '', 1, '127.0.0.1', 0),
('2017-10-30 17:09:39', '', 1, '127.0.0.1', 0),
('2017-10-30 17:09:40', '', 1, '127.0.0.1', 0),
('2017-10-30 17:10:39', '', 1, '127.0.0.1', 0),
('2017-10-30 17:10:40', '', 1, '127.0.0.1', 0),
('2017-10-30 17:10:41', '', 1, '127.0.0.1', 0),
('2017-10-30 17:10:42', '', 1, '127.0.0.1', 0),
('2017-10-30 17:12:26', '', 1, '127.0.0.1', 0),
('2017-10-30 17:12:28', '', 1, '127.0.0.1', 0),
('2017-10-30 17:12:30', '', 1, '127.0.0.1', 0),
('2017-10-30 17:12:31', '', 1, '127.0.0.1', 0),
('2017-10-30 17:12:32', '', 1, '127.0.0.1', 0),
('2017-10-30 17:12:33', '', 1, '127.0.0.1', 0),
('2017-10-30 17:12:34', '', 1, '127.0.0.1', 0),
('2017-10-30 17:21:45', '', 1, '127.0.0.1', 0),
('2017-10-30 17:25:28', '', 1, '127.0.0.1', 0),
('2017-10-30 17:26:00', '', 1, '127.0.0.1', 0),
('2017-10-30 17:26:02', '', 1, '127.0.0.1', 0),
('2017-10-30 17:26:03', '', 1, '127.0.0.1', 0),
('2017-10-30 17:27:41', 'hello', 1, '127.0.0.1', 1),
('2017-10-30 17:29:32', 'hello', 1, '127.0.0.1', 1),
('2017-10-30 17:31:18', 'test', 0, '127.0.0.1', 1),
('2017-10-30 17:35:57', 'hello', 0, '127.0.0.1', 1),
('2017-10-30 17:36:07', 'hello', 0, '127.0.0.1', 1),
('2017-10-30 17:36:25', 'hello', 0, '127.0.0.1', 1),
('2017-10-30 17:36:40', 'hello', 0, '127.0.0.1', 1),
('2017-10-30 17:36:41', 'hello', 0, '127.0.0.1', 1),
('2017-10-30 17:37:21', 'hello', 1, '127.0.0.1', 1),
('2017-10-30 17:37:23', 'hello', 0, '127.0.0.1', 1),
('2017-10-30 17:38:31', 'hello', 1, '127.0.0.1', 1),
('2017-10-30 17:38:37', 'hello', 0, '127.0.0.1', 1),
('2017-10-30 17:47:35', 'hello', 1, '127.0.0.1', 1),
('2017-10-30 17:55:47', 'hello', 0, '127.0.0.1', 1),
('2017-11-01 00:11:04', 'hello', 1, '127.0.0.1', 1),
('2017-11-01 01:02:32', 'hello', 0, '127.0.0.1', 1),
('2017-11-01 01:02:34', '', 1, '127.0.0.1', 0),
('2017-11-01 01:02:35', '', 1, '127.0.0.1', 0),
('2017-11-01 01:02:36', '', 1, '127.0.0.1', 0),
('2017-11-05 16:47:08', 'hello', 1, '127.0.0.1', 1),
('2017-11-05 17:13:44', 'hello', 0, '127.0.0.1', 1),
('2017-11-05 17:13:50', 'hello', 1, '127.0.0.1', 1),
('2017-11-05 17:34:54', 'hello', 0, '127.0.0.1', 1),
('2017-11-05 17:34:58', 'hello', 1, '127.0.0.1', 1),
('2017-11-05 17:38:26', 'hello', 0, '127.0.0.1', 1),
('2017-11-05 17:38:37', 'testing', 1, '127.0.0.1', 1),
('2017-11-05 17:38:55', 'testing', 0, '127.0.0.1', 1),
('2017-11-05 17:39:38', 'hello', 1, '127.0.0.1', 1),
('2017-11-05 18:06:33', 'hello', 0, '127.0.0.1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lockout_times`
--

CREATE TABLE `lockout_times` (
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lockout_times`
--

INSERT INTO `lockout_times` (`date_time`, `address`) VALUES
('2017-10-30 05:07:31', '23456789'),
('2017-10-30 05:10:55', '127.0.0.1'),
('2017-10-30 05:11:07', '127.0.0.1'),
('2017-10-30 05:13:22', '127.0.0.1'),
('2017-10-30 05:16:26', '127.0.0.1'),
('2017-10-30 05:16:40', '127.0.0.1'),
('2017-10-30 05:27:36', '127.0.0.1'),
('2017-10-30 05:27:43', '127.0.0.1'),
('2017-10-30 05:28:46', '127.0.0.1'),
('2017-10-30 05:28:48', '127.0.0.1'),
('2017-10-30 05:30:54', '127.0.0.1'),
('2017-10-30 05:30:56', '127.0.0.1'),
('2017-10-30 05:30:59', '127.0.0.1'),
('2017-10-30 05:31:00', '127.0.0.1'),
('2017-10-30 05:31:43', '127.0.0.1'),
('2017-10-30 05:31:45', '127.0.0.1'),
('2017-10-30 05:31:51', '127.0.0.1'),
('2017-10-30 16:47:38', '127.0.0.1'),
('2017-10-30 16:47:40', '127.0.0.1'),
('2017-10-30 16:47:43', '127.0.0.1'),
('2017-10-30 17:06:18', '127.0.0.1'),
('2017-10-30 17:06:20', '127.0.0.1'),
('2017-10-30 17:08:22', '127.0.0.1'),
('2017-10-30 17:08:24', '127.0.0.1'),
('2017-10-30 17:08:26', '127.0.0.1'),
('2017-10-30 17:08:28', '127.0.0.1'),
('2017-10-30 17:09:06', '127.0.0.1'),
('2017-10-30 17:09:07', '127.0.0.1'),
('2017-10-30 17:09:25', '127.0.0.1'),
('2017-10-30 17:09:37', '127.0.0.1'),
('2017-10-30 17:09:39', '127.0.0.1'),
('2017-10-30 17:10:40', '127.0.0.1'),
('2017-10-30 17:10:42', '127.0.0.1'),
('2017-10-30 17:12:30', '127.0.0.1'),
('2017-10-30 17:12:32', '127.0.0.1'),
('2017-10-30 17:12:33', '127.0.0.1'),
('2017-10-30 17:25:28', '127.0.0.1'),
('2017-10-30 17:26:03', '127.0.0.1'),
('2017-11-01 01:02:36', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(11) NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `subject`, `description`, `created`, `username`, `deleted`) VALUES
(1, 'Clean car...', '...right now', '2017-10-31 23:59:01', 'hello', 0),
(2, 'new ', 'reminder', '2017-11-05 17:38:00', 'hello', 1),
(3, 'new ', 'reminder', '2017-11-05 17:38:22', 'hello', 0),
(4, 'new testing ', 'reminder!', '2017-11-05 17:38:51', 'testing', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password_hash`) VALUES
('12345HelloWorld!@#', '$2y$10$eu9t.WrF.OnF5X.0glDISetp30zRVm6HUwz5MN9hvWHovhutHPvAi'),
('asdfadsfa', '$2y$10$de3cCu0qVZ.9AloEGnFcO.I/IaBwDkrRR1umB4KyQCB.S2x4uUvEG'),
('atari', '$2y$10$zi4lTYW.CPho7ZXLalKoOuzrECRgL/7rGyuQTej70SvGA2AG1CCPG'),
('hello', '$2y$10$QGlngYufoJsIlReWTPSkOOO.QihQwRFwkSXZihe5zjlLqZ1t0Tuw2'),
('name', '$2y$10$VNn9cRy5khTRD69035/.5eMSCqpu3SFv74B8HGlEqriV/pR0qvmNu'),
('new_user', '$2y$10$EfFHS9ssZ.gN8JxOGml2Cea9NsJiVqRXgJQkt8tdMJhONFjquK8z6'),
('new_user2', '$2y$10$PpKFc83c5NIpq.wT.aJskuONPcFJvL8U0YllyOF2hpQ1IAUlAWrW2'),
('new_user3', '$2y$10$60uAxhI5DRQLqVxfoMKz8.f0PgiSEIRfYnJtd2yxFYebuSpUoES8S'),
('pass_check_test', '$2y$10$LVP88mwHgS0MFjaeRbtrvuYQ0DJMioeuKd0doykupG2QxON.NtWeW'),
('some', '$2y$10$tZu/.8M42VPhZwpOxcRhsu9k/KvzlMxaZaD44vcfbda8xZzGJ5F5K'),
('test', '$2y$10$FV46AFM4dF8Xy33VntfTn.NOQ0Da2BBr0UWHPRZKEF0XdLe6saB3y'),
('testing', '$2y$10$wQ6GAewf4HK9ea4QyN6B9.z.CQlxjQdwZQMSiHcMjixXBr11GT7AW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`date_time`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;