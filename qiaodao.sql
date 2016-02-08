-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-02-08 16:26:48
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `qiaodao`
--

-- --------------------------------------------------------

--
-- 表的结构 `dutys`
--

CREATE TABLE IF NOT EXISTS `dutys` (
  `id` tinyint(20) NOT NULL AUTO_INCREMENT,
  `classid` text NOT NULL,
  `date` date NOT NULL,
  `stime` time NOT NULL,
  `etime` time NOT NULL,
  `aorp` text NOT NULL,
  `week` text NOT NULL,
  `early` text NOT NULL,
  `over` text NOT NULL,
  `ontime` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- 转存表中的数据 `dutys`
--

INSERT INTO `dutys` (`id`, `classid`, `date`, `stime`, `etime`, `aorp`, `week`, `early`, `over`, `ontime`) VALUES
(1, '13110402096', '2016-01-30', '01:23:40', '14:29:03', 'am', '6', '0', '1', '12'),
(2, '13110402096', '2016-01-29', '01:23:48', '01:23:55', 'am', '5', '1', '1', '12'),
(3, '13110402096', '2016-01-29', '01:24:05', '01:24:13', 'am', '5', '1', '1', '12'),
(4, '13110402096', '2016-01-29', '01:24:23', '01:24:28', 'am', '5', '1', '1', '12'),
(5, '13110402096', '2016-01-29', '01:33:38', '01:46:30', 'am', '5', '1', '1', '12'),
(6, '13110402096', '2016-01-29', '01:51:28', '01:51:40', 'am', '5', '1', '1', '12'),
(7, '13110402096', '2016-01-31', '14:29:02', '14:29:03', 'pm', '7', '1', '1', '56'),
(8, '13110402096', '2016-01-31', '14:29:11', '15:25:54', 'pm', '7', '1', '1', '56'),
(9, '13110402096', '2016-01-31', '15:36:21', '15:38:54', 'pm', '7', '1', '1', '56'),
(10, '13110402096', '2016-01-31', '15:42:52', '15:43:05', 'pm', '7', '1', '1', '56'),
(11, '13110402096', '2016-01-31', '17:25:22', '10:45:16', 'pm', '7', '1', '1', '78'),
(12, '13110402096', '2016-02-01', '10:44:55', '10:45:16', 'am', '1', '1', '1', '34'),
(13, '13110402096', '2016-02-01', '10:45:22', '10:45:39', 'am', '1', '1', '1', '34'),
(14, '13110402096', '2016-02-01', '10:46:22', '18:06:07', 'am', '1', '0', '1', '34'),
(15, '13110402096', '2016-02-01', '20:20:26', '22:20:52', 'pm', '1', '0', '1', '910'),
(16, '13110403003', '2016-02-01', '22:20:25', '23:56:15', 'pm', '1', '0', '1', '910'),
(17, '13110402096', '2016-02-02', '12:41:06', '12:41:41', 'pm', '2', '1', '1', '56'),
(18, '13110402096', '2016-02-02', '12:52:15', '20:54:58', 'pm', '2', '0', '1', '56'),
(19, '13110402096', '2016-02-02', '20:55:09', '11:51:41', 'pm', '2', '0', '1', '910'),
(20, '13110403003', '2016-02-02', '20:55:47', '20:56:15', 'pm', '2', '1', '1', '910'),
(22, '13110402096', '2016-02-03', '10:27:15', '11:51:41', 'am', '3', '0', '1', '34'),
(26, '13110402096', '2016-02-04', '22:59:43', '23:07:38', 'pm', '4', '1', '1', '910'),
(25, '13110402096', '2016-02-04', '17:30:37', '23:07:38', 'pm', '4', '1', '1', '78'),
(27, '13110402096', '2016-02-04', '23:08:59', '23:46:21', 'pm', '4', '1', '1', '910'),
(28, '13110402096', '2016-02-05', '09:42:14', '12:58:57', 'am', '5', '0', '1', '12'),
(30, '13110402096', '2016-02-05', '13:00:26', '16:16:39', 'pm', '5', '0', '1', '56'),
(32, '13110403003', '2016-02-05', '16:55:06', '16:55:59', 'pm', '5', '1', '1', '78'),
(33, '13110402096', '2016-02-05', '16:55:16', '16:55:38', 'pm', '5', '1', '1', '78'),
(35, '13110402096', '2016-02-05', '16:56:45', '23:14:23', 'pm', '5', '0', '1', '78'),
(36, '13110403003', '2016-02-05', '23:14:33', '23:14:33', 'pm', '5', '0', '0', '910'),
(42, '12111006020', '2016-02-08', '12:32:06', '12:32:06', 'pm', '1', '0', '0', '56'),
(38, '13110402096', '2016-02-05', '23:14:56', '11:17:28', 'pm', '5', '0', '1', '910'),
(39, '13110402096', '2016-02-06', '00:04:35', '11:17:28', 'am', '6', '0', '1', '12'),
(40, '13110402096', '2016-02-07', '13:39:49', '13:39:49', 'pm', '7', '0', '0', '56'),
(41, '13110402096', '2016-02-08', '12:18:50', '12:18:50', 'pm', '1', '0', '0', '56');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` tinyint(20) NOT NULL AUTO_INCREMENT,
  `classid` text NOT NULL,
  `name` text NOT NULL,
  `depart` text NOT NULL,
  `birthday` date NOT NULL,
  `class` int(2) DEFAULT NULL COMMENT '试用，正式，退站',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `classid`, `name`, `depart`, `birthday`, `class`) VALUES
(1, '13110402096', '刘熹', '技术部', '1994-04-02', 1),
(2, '13110403003', '洪廷壮', '技术部', '1993-02-06', 1),
(12, '12111006020', '杨友存', '技术部', '2016-02-05', 2);

-- --------------------------------------------------------

--
-- 表的结构 `user_dutys`
--

CREATE TABLE IF NOT EXISTS `user_dutys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` text NOT NULL,
  `onweek` text NOT NULL,
  `ontime` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `user_dutys`
--

INSERT INTO `user_dutys` (`id`, `classid`, `onweek`, `ontime`) VALUES
(27, '13110403003', '1', '12'),
(26, '13110402096', '4', '12'),
(25, '13110402096', '3', '12'),
(24, '13110402096', '1', '12'),
(28, '13110403003', '2', '56');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
