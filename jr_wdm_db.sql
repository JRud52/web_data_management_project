-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2017 at 04:32 AM
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
('2017-11-05 18:06:33', 'hello', 0, '127.0.0.1', 1),
('2017-11-12 04:13:29', 'hello', 1, '::1', 1),
('2017-11-12 04:14:08', 'hello', 0, '::1', 1),
('2017-11-12 19:06:43', 'hello', 1, '::1', 1),
('2017-11-12 19:29:33', 'hello', 0, '::1', 1),
('2017-11-12 19:34:41', 'hello', 1, '::1', 1),
('2017-11-12 19:59:53', 'hello', 0, '::1', 1),
('2017-11-12 20:29:52', 'hello', 1, '::1', 1),
('2017-11-12 20:29:59', 'hello', 0, '::1', 1),
('2017-11-12 20:33:33', 'hello', 1, '::1', 1),
('2017-11-12 20:33:49', 'hello', 0, '::1', 1),
('2017-11-12 20:38:41', 'adsfa', 1, '::1', 0),
('2017-11-12 20:42:54', 'adsfads', 1, '::1', 0),
('2017-11-12 20:43:30', 'adsfads', 1, '::1', 0),
('2017-11-12 20:43:34', 'adsfads', 1, '::1', 0),
('2017-11-12 20:43:35', 'adsfads', 1, '::1', 0),
('2017-11-12 20:43:36', 'adsfads', 1, '::1', 0),
('2017-11-12 20:43:38', 'adsfads', 1, '::1', 0),
('2017-11-12 20:43:48', 'adsfads', 1, '::1', 0),
('2017-11-12 20:43:49', 'adsfads', 1, '::1', 0),
('2017-11-12 20:43:53', 'asdfadsfa', 1, '::1', 0),
('2017-11-12 20:43:56', 'asdfad', 1, '::1', 0),
('2017-11-12 20:43:58', 'asdfads', 1, '::1', 0),
('2017-11-12 20:44:00', 'asdfadsfa', 1, '::1', 0),
('2017-11-12 20:44:09', 'asdf', 1, '::1', 0),
('2017-11-12 20:44:13', 'asdfa', 1, '::1', 0),
('2017-11-12 20:44:16', 'asdfasdf', 1, '::1', 0),
('2017-11-12 20:44:19', 'asdfadsfa', 1, '::1', 0),
('2017-11-12 20:51:38', 'hello', 1, '::1', 1),
('2017-11-12 20:53:01', 'hello', 0, '::1', 1),
('2017-11-12 20:53:06', 'hello', 1, '::1', 1),
('2017-11-12 20:54:15', 'hello', 0, '::1', 1),
('2017-11-12 20:54:18', 'hello', 1, '::1', 1),
('2017-11-12 20:59:30', 'hello', 0, '::1', 1),
('2017-11-12 20:59:36', 'hello', 1, '::1', 1),
('2017-11-12 21:04:30', 'hello', 0, '::1', 1),
('2017-11-12 21:04:31', 'hello', 0, '::1', 1),
('2017-11-12 21:04:37', 'hello', 1, '::1', 1),
('2017-11-12 21:08:16', 'hello', 0, '::1', 1),
('2017-11-12 21:08:20', 'hello', 1, '::1', 1),
('2017-11-12 21:09:36', 'hello', 0, '::1', 1),
('2017-11-12 21:09:39', 'hello', 1, '::1', 1),
('2017-11-12 21:10:13', 'hello', 0, '::1', 1),
('2017-11-12 21:10:16', 'hello', 1, '::1', 1),
('2017-11-12 21:10:28', 'hello', 0, '::1', 1),
('2017-11-19 16:43:10', 'hello', 1, '127.0.0.1', 1),
('2017-11-19 16:56:29', 'hello', 0, '127.0.0.1', 1),
('2017-11-19 16:56:34', 'hello', 1, '127.0.0.1', 1),
('2017-11-19 16:56:38', 'hello', 0, '127.0.0.1', 1),
('2017-11-19 16:56:39', 'hello', 0, '127.0.0.1', 1),
('2017-11-19 16:56:44', 'testing', 1, '127.0.0.1', 1),
('2017-11-19 16:56:48', 'testing', 0, '127.0.0.1', 1),
('2017-11-19 16:56:49', 'testing', 0, '127.0.0.1', 1),
('2017-11-19 16:56:52', 'hello', 1, '127.0.0.1', 1),
('2017-11-19 16:57:06', 'hello', 0, '127.0.0.1', 1),
('2017-11-19 16:57:10', 'testing', 1, '127.0.0.1', 1),
('2017-11-19 16:57:26', 'testing', 0, '127.0.0.1', 1),
('2017-11-19 16:57:43', 'hello', 1, '127.0.0.1', 1),
('2017-11-19 16:57:50', 'hello', 0, '127.0.0.1', 1),
('2017-11-19 16:57:54', 'testing', 1, '127.0.0.1', 1),
('2017-11-19 16:58:10', 'testing', 0, '127.0.0.1', 1),
('2017-11-19 16:59:30', 'testing', 1, '127.0.0.1', 1),
('2017-11-19 17:01:03', 'hello', 1, '::1', 1),
('2017-11-19 17:01:08', 'hello', 0, '::1', 1),
('2017-11-19 17:01:11', 'testing', 1, '::1', 0),
('2017-11-19 17:01:15', 'testing', 1, '::1', 1),
('2017-11-19 17:02:55', 'testing', 0, '::1', 1),
('2017-11-19 17:02:59', 'hello', 1, '::1', 1),
('2017-11-19 17:03:01', 'hello', 0, '::1', 1),
('2017-11-19 17:03:05', 'testing', 1, '::1', 1),
('2017-11-19 17:06:06', 'testing', 0, '::1', 1),
('2017-11-19 17:06:40', 'testing', 0, '127.0.0.1', 1),
('2017-11-19 17:06:53', 'hello', 1, '127.0.0.1', 1),
('2017-11-28 06:09:43', 'hello', 1, '127.0.0.1', 1),
('2017-11-30 00:47:34', 'hello', 1, '127.0.0.1', 1),
('2017-12-02 21:34:41', 'hello', 1, '127.0.0.1', 1),
('2017-12-03 19:51:48', 'hello', 1, '127.0.0.1', 1),
('2017-12-04 00:20:59', 'hello', 0, '127.0.0.1', 1),
('2017-12-04 00:21:00', 'hello', 0, '127.0.0.1', 1),
('2017-12-04 00:21:03', 'hello', 1, '127.0.0.1', 1),
('2017-12-04 04:30:57', 'hello', 1, '127.0.0.1', 1),
('2017-12-04 04:54:03', 'hello', 0, '127.0.0.1', 1),
('2017-12-04 04:54:08', 'hello', 1, '127.0.0.1', 1),
('2017-12-04 05:45:07', 'hello', 1, '127.0.0.1', 1),
('2017-12-04 21:42:11', 'hello', 1, '127.0.0.1', 1),
('2017-12-04 22:56:21', 'hello', 0, '127.0.0.1', 1),
('2017-12-04 22:56:22', 'hello', 0, '127.0.0.1', 1),
('2017-12-04 22:56:25', 'hello', 1, '127.0.0.1', 1),
('2017-12-04 22:57:46', 'hello', 0, '127.0.0.1', 1),
('2017-12-04 22:57:49', 'hello', 1, '127.0.0.1', 1),
('2017-12-04 23:03:12', 'hello', 0, '127.0.0.1', 1),
('2017-12-04 23:03:16', 'hello', 1, '127.0.0.1', 1),
('2017-12-04 23:07:38', 'hello', 0, '127.0.0.1', 1),
('2017-12-04 23:07:41', 'hello', 1, '127.0.0.1', 1),
('2017-12-05 02:41:04', 'asdfadsfadsffffff', 0, '127.0.0.1', 1),
('2017-12-05 02:41:09', 'hello', 1, '127.0.0.1', 1),
('2017-12-05 03:26:24', 'atari', 1, '127.0.0.1', 1),
('2017-12-05 03:29:00', 'atari', 0, '127.0.0.1', 1),
('2017-12-05 03:29:04', 'hello', 1, '127.0.0.1', 1);

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
('2017-11-01 01:02:36', '127.0.0.1'),
('2017-11-12 20:43:31', '::1'),
('2017-11-12 20:43:36', '::1'),
('2017-11-12 20:43:48', '::1'),
('2017-11-12 20:43:49', '::1'),
('2017-11-12 20:43:49', '::1'),
('2017-11-12 20:43:58', '::1'),
('2017-11-12 20:44:13', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `manager_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`manager_id`, `staff_id`) VALUES
(12, 1),
(12, 2),
(12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `name_list`
--

CREATE TABLE `name_list` (
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `province` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `name_list`
--

INSERT INTO `name_list` (`name`, `added_by`, `birthdate`, `email`, `phone_number`, `province`, `city`) VALUES
('asdfadsfadsfadsfa', '3', '2017-12-11', 'adsfasdf@algomau.ca', '123-123-1234', 'Ontario', 'Sault Ste Marie'),
('dfasdfadsf', '4', '0000-00-00', 'asdfasfas@algomau.ca', 'asdf', 'Ontario', 'Sault Ste Marie'),
('querty', '3', '1234-12-12', 'asdfasfas@algomau.ca', '123-123-1234', 'Manitoba', 'Sault Ste Marie'),
('qwerty', '4', '1234-12-12', 'aasdfewrqw@algomau.ca', '123-123-1234', 'Prince Edward Island', 'Sault Ste Marie'),
('sdfadsfadsfadsfa', '3', '2934-12-23', 'fadsfadsfa@algomau.ca', '1234567890', 'Ontario', 'Sault Ste Marie'),
('test', '4', '1324-12-12', 'test@algomau.ca', '123-123-1234', 'New Brunswick', 'Sault Ste Marie');

-- --------------------------------------------------------

--
-- Table structure for table `personal_details`
--

CREATE TABLE `personal_details` (
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `phone_number` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `personal_details`
--

INSERT INTO `personal_details` (`username`, `birthdate`, `phone_number`, `first_name`, `last_name`, `email`) VALUES
('atari', '2017-12-15', '1234513242134', 'Atari', '2600', 'asdfads@asdfa.sadf'),
('hello', '2017-12-12', '7322374859', 'hello', 'world', 'hello@world.com'),
('testing', '2017-12-16', '4749585748', 'Testing', '123', 'some@guy.com');

-- --------------------------------------------------------

--
-- Table structure for table `province_city`
--

CREATE TABLE `province_city` (
  `province` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `province_city`
--

INSERT INTO `province_city` (`province`, `city`) VALUES
('British Columbia', 'Abbotsford'),
('Prince Edward Island', 'Alberton'),
('Nova Scotia', 'Amherst'),
('New Brunswick', 'Bathurst'),
('Manitoba', 'Brandon'),
('British Columbia', 'Burnaby'),
('Alberta', 'Calgary'),
('New Brunswick', 'Campbellton'),
('Newfoundland', 'Carbonear'),
('Prince Edward Island', 'Charlottetown'),
('Manitoba', 'Churchill'),
('Newfoundland', 'Corner Brook'),
('Prince Edward Island', 'Cornwall'),
('Nova Scotia', 'Dartmouth'),
('Newfoundland', 'Deer Lake'),
('New Brunswick', 'Dieppe'),
('Nova Scotia', 'Digby'),
('Alberta', 'Edmonton'),
('Manitoba', 'Elkhorn'),
('Manitoba', 'Flin Flon'),
('Alberta', 'Fort McMurray'),
('New Brunswick', 'Fredricton'),
('Prince Edward Island', 'Georgetown'),
('Alberta', 'Grande Prairie'),
('Ontario', 'Guelph'),
('Nova Scotia', 'Halifax'),
('Ontario', 'Hamilton'),
('Newfoundland', 'Harbour Grace'),
('British Columbia', 'Kamloops'),
('British Columbia', 'Kelowna'),
('Prince Edward Island', 'Kensington'),
('Ontario', 'Kingston'),
('Alberta', 'Leduc'),
('Alberta', 'Lethbridge'),
('Saskatchewan', 'Lloydminster'),
('Ontario', 'London'),
('Nova Scotia', 'Lunenburg'),
('Alberta', 'Medicine Hat'),
('New Brunswick', 'Miramichi'),
('New Brunswick', 'Moncton'),
('Prince Edward Island', 'Montague'),
('Saskatchewan', 'Moose Jaw'),
('Saskatchewan', 'Moosomin'),
('Manitoba', 'Morden'),
('Newfoundland', 'Mount Pearl'),
('British Columbia', 'Naniamo'),
('Nova Scotia', 'New Glasglow'),
('Saskatchewan', 'Nipowin'),
('Saskatchewan', 'North Battleford'),
('Newfoundland', 'Placentia'),
('Saskatchewan', 'Prince Albert'),
('British Columbia', 'Prince George'),
('Alberta', 'Red Deer'),
('Saskatchewan', 'Regina'),
('British Columbia', 'Richmond'),
('Manitoba', 'Roblin'),
('Prince Edward Island', 'Rustico'),
('New Brunswick', 'Sackville'),
('New Brunswick', 'Saint John'),
('Saskatchewan', 'Saskatoon'),
('Ontario', 'Sault Ste. Marie'),
('Manitoba', 'Selkirk'),
('New Brunswick', 'Shediac'),
('Prince Edward Island', 'Souris'),
('Alberta', 'Spruce Grove'),
('Alberta', 'St. Albert'),
('Newfoundland', 'St. John\'s'),
('Manitoba', 'Steinbach'),
('Newfoundland', 'Stephenville'),
('Prince Edward Island', 'Stratford'),
('Ontario', 'Sudbury'),
('Prince Edward Island', 'Summerside'),
('British Columbia', 'Surrey'),
('New Brunswick', 'Sussex'),
('Nova Scotia', 'Sydney'),
('Ontario', 'Thunder Bay'),
('Newfoundland', 'Torbay'),
('Ontario', 'Toronto'),
('Nova Scotia', 'Truro'),
('Newfoundland', 'Twillingate'),
('British Columbia', 'Vancouver'),
('British Columbia', 'Victoria'),
('Saskatchewan', 'Watrous'),
('Ontario', 'Wawa'),
('Ontario', 'Windsor'),
('Manitoba', 'Winkler'),
('Manitoba', 'Winnipeg'),
('Nova Scotia', 'Wolfville'),
('Nova Scotia', 'Yarmouth'),
('Saskatchewan', 'Yorkton');

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
  `id` int(11) NOT NULL,
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `acl` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `acl`) VALUES
(1, '12345HelloWorld!@#', '$2y$10$eu9t.WrF.OnF5X.0glDISetp30zRVm6HUwz5MN9hvWHovhutHPvAi', 1),
(2, 'asdfadsfa', '$2y$10$de3cCu0qVZ.9AloEGnFcO.I/IaBwDkrRR1umB4KyQCB.S2x4uUvEG', 1),
(3, 'atari', '$2y$10$zi4lTYW.CPho7ZXLalKoOuzrECRgL/7rGyuQTej70SvGA2AG1CCPG', 1),
(4, 'hello', '$2y$10$QGlngYufoJsIlReWTPSkOOO.QihQwRFwkSXZihe5zjlLqZ1t0Tuw2', 3),
(5, 'name', '$2y$10$VNn9cRy5khTRD69035/.5eMSCqpu3SFv74B8HGlEqriV/pR0qvmNu', 1),
(6, 'new_user', '$2y$10$EfFHS9ssZ.gN8JxOGml2Cea9NsJiVqRXgJQkt8tdMJhONFjquK8z6', 1),
(7, 'new_user2', '$2y$10$PpKFc83c5NIpq.wT.aJskuONPcFJvL8U0YllyOF2hpQ1IAUlAWrW2', 1),
(8, 'new_user3', '$2y$10$60uAxhI5DRQLqVxfoMKz8.f0PgiSEIRfYnJtd2yxFYebuSpUoES8S', 1),
(9, 'pass_check_test', '$2y$10$LVP88mwHgS0MFjaeRbtrvuYQ0DJMioeuKd0doykupG2QxON.NtWeW', 1),
(10, 'some', '$2y$10$tZu/.8M42VPhZwpOxcRhsu9k/KvzlMxaZaD44vcfbda8xZzGJ5F5K', 1),
(11, 'test', '$2y$10$FV46AFM4dF8Xy33VntfTn.NOQ0Da2BBr0UWHPRZKEF0XdLe6saB3y', 1),
(12, 'testing', '$2y$10$wQ6GAewf4HK9ea4QyN6B9.z.CQlxjQdwZQMSiHcMjixXBr11GT7AW', 2),
(13, 'some_guy', '$2y$10$Mh54saeXpXBLu5b4W15wCe/CPTh82PDq/C2DHSFYsE/ERY.eO91pK', 1),
(14, 'asdfalksdjflkajdsfjasdjfalsjdflkajdslfkasd', '$2y$10$NTMpyaK3X/ku1LD9fKSC6OvvmPZNgWBVrhdk6YyNRCFP3y5zGUI9e', 1),
(15, 'fffffffffffffffffffffff', '$2y$10$xAo5BPCZQWYPWQY9Josvj.CxKj/r3Fmll1x/0RqG1CQROTADIeiL.', 1),
(16, 'asdfadsfadsffffff', '$2y$10$IuNlS.d7DJEecFPnMgCOEe9aXO.XtQgQAF6GGQsi2xhwDuhnRWkGS', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`date_time`);

--
-- Indexes for table `name_list`
--
ALTER TABLE `name_list`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `personal_details`
--
ALTER TABLE `personal_details`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `province_city`
--
ALTER TABLE `province_city`
  ADD UNIQUE KEY `city` (`city`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
