-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 03, 2017 at 08:39 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpas1`
--

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `iduser` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `time` time NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `iduser`, `username`, `action`, `status`, `time`, `tanggal`) VALUES
(1, 1, 'irwans', 'login', 'sukses', '07:30:13', '0000-00-00'),
(2, 1, 'irwans', 'LOGIN', 'SUKSES', '09:51:31', '0000-00-00'),
(3, 1, 'irwans', 'Logib', 'Sukses', '10:34:39', '2017-03-08'),
(5, 1, 'irwans', 'Login', 'Sukses', '10:48:57', '2017-03-08'),
(6, 1, 'irwans', 'Login', 'Sukses', '10:56:01', '2017-03-08'),
(11, 6, 'irwans', 'Update Data Operator', 'Sukses', '11:35:58', '2017-03-08'),
(12, 6, 'irwans', 'Insert Data Surat Masuk', 'Sukses', '11:39:00', '2017-03-08'),
(13, 6, 'irwans', 'Insert Data Surat Keluar', 'Sukses', '11:40:55', '2017-03-08'),
(14, 6, 'irwans', 'Insert Data User', 'Sukses', '11:42:00', '2017-03-08'),
(15, 4, 'test', 'Login', 'Sukses', '11:48:06', '2017-03-08'),
(16, 4, 'test', 'Login', 'Sukses', '11:50:42', '2017-03-08'),
(17, 4, 'test', 'Login', 'Sukses', '11:54:59', '2017-03-08'),
(18, 4, 'test', 'Login', 'Sukses', '11:56:00', '2017-03-08'),
(19, 4, 'test', 'Login', 'Sukses', '11:58:09', '2017-03-08'),
(20, 4, 'test', 'Login', 'Sukses', '11:59:34', '2017-03-08'),
(21, 4, 'test', 'Update Surat Masuk', 'Sukses', '12:01:04', '2017-03-08'),
(22, 4, 'test', 'Update Surat Masuk', 'Sukses', '12:01:15', '2017-03-08'),
(23, 4, 'test', 'Update Surat Masuk', 'Sukses', '12:01:19', '2017-03-08'),
(24, 4, 'test', 'Login', 'Sukses', '12:02:44', '2017-03-08'),
(25, 4, 'test', 'Login', 'Sukses', '12:04:17', '2017-03-08'),
(26, 0, 'test', 'Login', 'gagal', '12:06:05', '2017-03-08'),
(27, 4, 'test', 'Login', 'Sukses', '12:06:10', '2017-03-08'),
(28, 4, 'test', 'Update Surat Keluar', 'Sukses', '12:07:06', '2017-03-08'),
(29, 4, 'test', 'Update Surat Keluar', 'Sukses', '12:07:48', '2017-03-08'),
(30, 4, 'test', 'Update Surat Keluar', 'Sukses', '12:07:57', '2017-03-08'),
(31, 4, 'test', 'Update Data Operator', 'Sukses', '12:15:45', '2017-03-08'),
(32, 6, 'irwans', 'Login', 'Sukses', '12:18:35', '2017-03-08'),
(33, 4, 'test', 'Login', 'Sukses', '12:18:53', '2017-03-08'),
(34, 6, 'irwans', 'Login', 'Sukses', '12:19:54', '2017-03-08'),
(35, 4, 'test', 'Login', 'Sukses', '12:23:09', '2017-03-08'),
(36, 6, 'irwans', 'Login', 'Sukses', '12:29:57', '2017-03-08'),
(37, 4, 'test', 'Login', 'Sukses', '12:31:10', '2017-03-08'),
(38, 4, 'test', 'Update Surat Masuk', 'Sukses', '12:31:25', '2017-03-08'),
(39, 6, 'irwans', 'Login', 'Sukses', '13:28:59', '2017-03-08'),
(40, 6, 'irwans', 'Login', 'Sukses', '13:32:36', '2017-03-08'),
(41, 6, 'irwans', 'Insert Data Surat Keluar', 'Sukses', '13:34:33', '2017-03-08'),
(42, 4, 'test', 'Login', 'Sukses', '15:37:13', '2017-03-08'),
(43, 4, 'test', 'Login', 'Sukses', '15:40:07', '2017-03-08'),
(44, 4, 'test', 'Insert Data Surat Masuk', 'Sukses', '15:41:33', '2017-03-08'),
(45, 4, 'test', 'Update Surat Masuk', 'Sukses', '15:41:52', '2017-03-08'),
(46, 4, 'test', 'Update Surat Masuk', 'Sukses', '15:42:04', '2017-03-08'),
(47, 4, 'test', 'Login', 'Sukses', '15:44:45', '2017-03-08'),
(48, 4, 'test', 'Insert Data Surat Keluar', 'Sukses', '15:45:06', '2017-03-08'),
(49, 4, 'test', 'Login', 'Sukses', '15:45:26', '2017-03-08'),
(50, 6, 'irwans', 'Login', 'Sukses', '08:54:48', '2017-03-09'),
(51, 0, 'aa', 'Login', 'gagal', '09:11:25', '2017-03-09'),
(52, 6, 'irwans', 'Login', 'Sukses', '09:20:44', '2017-03-09'),
(53, 6, 'irwans', 'Login', 'Sukses', '10:53:16', '2017-03-09'),
(54, 6, 'irwans', 'Login', 'Sukses', '10:54:11', '2017-03-09'),
(55, 6, 'irwans', 'Login', 'Sukses', '10:54:48', '2017-03-09'),
(56, 6, 'irwans', 'Login', 'Sukses', '14:11:10', '2017-03-09'),
(57, 6, 'irwans', 'Login', 'Sukses', '14:13:50', '2017-03-09'),
(58, 6, 'irwans', 'Login', 'Sukses', '14:13:57', '2017-03-09'),
(59, 6, 'irwans', 'Update Data Operator', 'Sukses', '15:10:06', '2017-03-09'),
(60, 6, 'irwans', 'Update Data Operator', 'Sukses', '15:14:39', '2017-03-09'),
(61, 6, 'irwans', 'Insert Data User', 'Sukses', '15:28:30', '2017-03-09'),
(62, 6, 'irwans', 'Insert Data User', 'Sukses', '15:29:04', '2017-03-09'),
(63, 6, 'irwans', 'Insert Data User', 'Sukses', '15:30:10', '2017-03-09'),
(64, 6, 'irwans', 'Insert Data User', 'Sukses', '15:34:39', '2017-03-09'),
(65, 6, 'irwans', 'Insert Data User', 'Sukses', '15:35:57', '2017-03-09'),
(66, 6, 'irwans', 'Insert Data User', 'Sukses', '15:36:34', '2017-03-09'),
(67, 6, 'irwans', 'Insert Data User', 'Sukses', '15:37:21', '2017-03-09'),
(68, 6, 'irwans', 'Insert Data User', 'Sukses', '15:38:15', '2017-03-09'),
(69, 6, 'irwans', 'Update Data Operator', 'Sukses', '15:46:34', '2017-03-09'),
(70, 6, 'irwans', 'Update Data Operator', 'Sukses', '15:47:25', '2017-03-09'),
(71, 6, 'irwans', 'Update Data Operator', 'Sukses', '15:53:42', '2017-03-09'),
(72, 6, 'irwans', 'Login', 'Sukses', '21:43:21', '2017-03-09'),
(73, 4, 'test', 'Login', 'Sukses', '21:43:53', '2017-03-09'),
(74, 0, 'test', 'Login', 'gagal', '21:54:10', '2017-03-09'),
(75, 4, 'test', 'Login', 'Sukses', '21:54:16', '2017-03-09'),
(76, 4, 'test', 'Insert Data User', 'Sukses', '21:56:34', '2017-03-09'),
(77, 4, 'test', 'Login', 'Sukses', '21:58:07', '2017-03-09'),
(78, 4, 'test', 'Insert Data User', 'Gagal', '21:58:37', '2017-03-09'),
(79, 4, 'test', 'Insert Data User', 'Sukses', '21:59:17', '2017-03-09'),
(80, 4, 'test', 'Insert Data User', 'Sukses', '22:04:14', '2017-03-09'),
(81, 0, 'test', 'Login', 'gagal', '08:17:11', '2017-03-10'),
(82, 4, 'test', 'Login', 'Sukses', '08:17:16', '2017-03-10'),
(83, 4, 'test', 'Update Data Operator', 'Sukses', '08:40:06', '2017-03-10'),
(84, 10, 'irwans001', 'Login', 'Sukses', '08:54:45', '2017-03-10'),
(85, 10, 'irwans001', 'Update Data Operator', 'Sukses', '09:03:40', '2017-03-10'),
(86, 4, 'test', 'Login', 'Sukses', '09:16:10', '2017-03-10'),
(87, 10, 'irwans001', 'Login', 'Sukses', '09:16:39', '2017-03-10'),
(88, 10, 'irwans001', 'Update Data Operator', 'Sukses', '09:32:05', '2017-03-10'),
(89, 6, 'irwans', 'Login', 'Sukses', '15:25:09', '2017-03-10'),
(90, 6, 'irwans', 'Login', 'Sukses', '20:03:48', '2017-03-10'),
(91, 6, 'irwans', 'Login', 'Sukses', '09:03:14', '2017-03-11'),
(92, 6, 'irwans', 'Login', 'Sukses', '09:22:06', '2017-03-11'),
(93, 6, 'irwans', 'Login', 'Sukses', '08:03:34', '2017-03-14'),
(94, 6, 'irwans', 'Login', 'Sukses', '08:12:34', '2017-03-14'),
(95, 6, 'irwans', 'Login', 'Sukses', '09:40:29', '2017-03-14'),
(96, 6, 'irwans', 'Login', 'Sukses', '10:36:23', '2017-03-14'),
(97, 6, 'irwans', 'Login', 'Sukses', '13:51:42', '2017-03-14'),
(98, 6, 'irwans', 'Login', 'Sukses', '09:07:28', '2017-03-17'),
(99, 6, 'irwans', 'Login', 'Sukses', '14:39:11', '2017-03-17'),
(100, 6, 'irwans', 'Login', 'Sukses', '20:38:31', '2017-03-17'),
(101, 6, 'irwans', 'Insert Data Surat Keluar', 'Gagal', '20:38:39', '2017-03-17'),
(102, 6, 'irwans', 'Insert Data Surat Keluar', 'Sukses', '20:39:08', '2017-03-17'),
(103, 6, 'irwans', 'Insert Data Surat Keluar', 'Sukses', '20:50:51', '2017-03-17'),
(104, 6, 'irwans', 'Login', 'Sukses', '11:58:14', '2017-03-19'),
(105, 6, 'irwans', 'Login', 'Sukses', '19:47:36', '2017-03-19'),
(107, 6, 'irwans', 'Insert Data Surat Keluar', 'Sukses', '23:50:25', '2017-03-19'),
(108, 6, 'irwans', 'Update Surat Keluar', 'Sukses', '00:23:26', '2017-03-20'),
(109, 6, 'irwans', 'Insert Data Surat Keluar', 'Sukses', '00:24:11', '2017-03-20'),
(110, 6, 'irwans', 'Update Surat Keluar', 'Sukses', '00:27:07', '2017-03-20'),
(111, 6, 'irwans', 'Update Surat Keluar', 'Sukses', '00:27:18', '2017-03-20'),
(112, 6, 'irwans', 'Update Surat Keluar', 'Sukses', '00:27:25', '2017-03-20'),
(113, 6, 'irwans', 'Update Surat Keluar', 'Sukses', '00:28:34', '2017-03-20'),
(114, 0, 'irwans1', 'Login', 'gagal', '00:59:14', '2017-03-20'),
(115, 6, 'irwans', 'Login', 'Sukses', '00:59:20', '2017-03-20'),
(116, 6, 'irwans', 'Login', 'Sukses', '08:33:43', '2017-03-20'),
(117, 6, 'irwans', 'Login', 'Sukses', '08:39:52', '2017-03-20'),
(118, 2, 'irwans77', 'Insert Data Surat Keluar', 'Gagal', '09:51:34', '2017-03-20'),
(119, 2, 'irwans77', 'Insert Data Surat Keluar', 'Gagal', '09:51:38', '2017-03-20'),
(120, 2, 'irwans77', 'Insert Data Surat Keluar', 'Gagal', '09:59:36', '2017-03-20'),
(121, 2, 'irwans77', 'Insert Data User', 'Sukses', '10:17:20', '2017-03-20'),
(122, 6, 'irwans', 'Login', 'Sukses', '15:06:34', '2017-03-20'),
(123, 6, 'irwans', 'Login', 'Sukses', '15:07:05', '2017-03-20'),
(124, 6, 'irwans', 'Login', 'Sukses', '15:13:02', '2017-03-20'),
(125, 6, 'irwans', 'Login', 'Sukses', '15:13:26', '2017-03-20'),
(126, 6, 'irwans', 'Login', 'Sukses', '16:05:02', '2017-03-20'),
(127, 6, 'irwans', 'Login', 'Sukses', '08:57:38', '2017-03-21'),
(128, 6, 'irwans', 'Login', 'Sukses', '08:57:49', '2017-03-21'),
(129, 13, 'irwans', 'Login', 'Sukses', '09:00:51', '2017-03-21'),
(130, 13, 'irwans', 'Insert Data Surat Keluar', 'Sukses', '11:38:19', '2017-03-21'),
(131, 11, 'irwans123', 'Login', 'Sukses', '13:44:55', '2017-03-21'),
(132, 13, 'irwans', 'Login', 'Sukses', '13:45:56', '2017-03-21'),
(133, 4, 'test', 'Login', 'Sukses', '13:46:21', '2017-03-21'),
(134, 4, 'test', 'Insert Data Surat Keluar', 'Sukses', '13:52:34', '2017-03-21'),
(135, 13, 'irwans', 'Login', 'Sukses', '13:57:50', '2017-03-21'),
(136, 4, 'test', 'Login', 'Sukses', '13:58:06', '2017-03-21'),
(137, 4, 'test', 'Insert Data User', 'Gagal', '14:04:33', '2017-03-21'),
(138, 4, 'test', 'Insert Data User', 'Gagal', '14:04:46', '2017-03-21'),
(139, 4, 'test', 'Insert Data User', 'Sukses', '14:06:26', '2017-03-21'),
(140, 13, 'irwans', 'Login', 'Sukses', '14:11:12', '2017-03-21'),
(141, 4, 'test', 'Login', 'Sukses', '14:12:11', '2017-03-21'),
(142, 4, 'test', 'Update Data User', 'Sukses', '14:27:33', '2017-03-21'),
(143, 4, 'test', 'Update Data User', 'Sukses', '14:28:47', '2017-03-21'),
(144, 11, 'irwans123', 'Login', 'Sukses', '14:35:45', '2017-03-21'),
(145, 4, 'test', 'Login', 'Sukses', '14:42:20', '2017-03-21'),
(146, 13, 'irwans', 'Login', 'Sukses', '14:49:07', '2017-03-21'),
(147, 13, 'irwans', 'Insert Data User', 'Sukses', '14:54:31', '2017-03-21'),
(148, 13, 'irwans', 'Update Data Operator', 'Sukses', '14:54:37', '2017-03-21'),
(149, 13, 'irwans', 'Insert Data User', 'Sukses', '15:04:47', '2017-03-21'),
(150, 13, 'irwans', 'Insert Data User', 'Sukses', '15:05:19', '2017-03-21'),
(151, 13, 'irwans', 'Insert Data User', 'Sukses', '15:05:19', '2017-03-21'),
(152, 4, 'test', 'Login', 'Sukses', '15:06:26', '2017-03-21'),
(153, 13, 'irwans', 'Login', 'Sukses', '15:07:00', '2017-03-21'),
(154, 13, 'irwans', 'Insert Data User', 'Sukses', '15:11:26', '2017-03-21'),
(155, 13, 'irwans', 'Insert Data User', 'Sukses', '15:11:34', '2017-03-21'),
(156, 13, 'irwans', 'Insert Data User', 'Gagal', '15:12:42', '2017-03-21'),
(157, 13, 'irwans', 'Insert Data User', 'Sukses', '15:13:34', '2017-03-21'),
(158, 13, 'irwans', 'Update Data User', 'Sukses', '15:22:18', '2017-03-21'),
(159, 13, 'irwans', 'Update Data User', 'Sukses', '15:22:28', '2017-03-21'),
(160, 13, 'irwans', 'Login', 'Sukses', '21:46:51', '2017-03-21'),
(161, 11, 'irwans123', 'Login', 'Sukses', '00:54:31', '2017-03-22'),
(162, 0, 'test', 'Login', 'gagal', '14:17:14', '2017-03-22'),
(163, 0, 'test', 'Login', 'gagal', '14:25:42', '2017-03-22'),
(164, 4, 'test', 'Login', 'Sukses', '14:26:19', '2017-03-22'),
(165, 4, 'test', 'Login', 'Sukses', '19:07:07', '2017-03-22'),
(166, 13, 'irwans', 'Login', 'Sukses', '19:09:59', '2017-03-22'),
(167, 11, 'irwans123', 'Login', 'Sukses', '19:12:20', '2017-03-22'),
(168, 4, 'test', 'Login', 'Sukses', '19:15:12', '2017-03-22'),
(169, 13, 'irwans', 'Login', 'Sukses', '21:57:41', '2017-03-22'),
(170, 13, 'irwans', 'Login', 'Sukses', '07:33:27', '2017-03-23'),
(171, 13, 'irwans', 'Login', 'Sukses', '07:34:23', '2017-03-23'),
(172, 0, 'irwans', 'Login', 'gagal', '08:46:12', '2017-03-23'),
(173, 13, 'irwans', 'Login', 'Sukses', '08:50:17', '2017-03-23'),
(174, 13, 'irwans', 'Insert Data Surat Masuk', 'Gagal', '08:50:30', '2017-03-23'),
(175, 13, 'irwans', 'Insert Data Surat Masuk', 'Gagal', '08:50:33', '2017-03-23'),
(176, 13, 'irwans', 'Insert Data Surat Masuk', 'Gagal', '08:56:09', '2017-03-23'),
(177, 13, 'irwans', 'Insert Data Surat Masuk', 'Gagal', '08:56:12', '2017-03-23'),
(178, 13, 'irwans', 'Insert Data Surat Keluar', 'Gagal', '08:57:29', '2017-03-23'),
(179, 13, 'irwans', 'Insert Data User', 'Gagal', '08:58:53', '2017-03-23'),
(180, 13, 'irwans', 'Insert Data User', 'Gagal', '08:58:58', '2017-03-23'),
(181, 13, 'irwans', 'Insert Data User', 'Gagal', '08:59:01', '2017-03-23'),
(182, 13, 'irwans', 'Insert Data User', 'Gagal', '08:59:05', '2017-03-23'),
(183, 13, 'irwans', 'Login', 'Sukses', '09:06:07', '2017-03-23'),
(184, 13, 'irwans', 'Login', 'Sukses', '19:06:44', '2017-03-24'),
(185, 13, 'irwans', 'Update Surat Masuk', 'Sukses', '19:18:22', '2017-03-24'),
(186, 13, 'irwans', 'Update Surat Masuk', 'Sukses', '19:18:36', '2017-03-24'),
(187, 13, 'irwans', 'Update Surat Masuk', 'Sukses', '19:18:45', '2017-03-24'),
(188, 13, 'irwans', 'Update Surat Masuk', 'Sukses', '19:18:53', '2017-03-24'),
(189, 13, 'irwans', 'Update Surat Masuk', 'Sukses', '19:19:02', '2017-03-24'),
(190, 13, 'irwans', 'Update Surat Masuk', 'Sukses', '19:19:10', '2017-03-24'),
(191, 13, 'irwans', 'Login', 'Sukses', '19:59:04', '2017-03-24'),
(192, 13, 'irwans', 'Update Surat Masuk', 'Sukses', '19:59:13', '2017-03-24'),
(193, 13, 'irwans', 'Login', 'Sukses', '13:58:37', '2017-03-25'),
(194, 13, 'irwans', 'Login', 'Sukses', '14:13:25', '2017-03-25'),
(195, 13, 'irwans', 'Login', 'Sukses', '10:36:53', '2017-03-26'),
(196, 4, 'test', 'Login', 'Sukses', '11:48:48', '2017-03-26'),
(197, 11, 'irwans123', 'Login', 'Sukses', '11:49:37', '2017-03-26'),
(198, 13, 'irwans', 'Login', 'Sukses', '12:01:49', '2017-03-26'),
(199, 13, 'irwans', 'Login', 'Sukses', '21:31:08', '2017-03-26'),
(200, 13, 'irwans', 'Login', 'Sukses', '10:17:42', '2017-03-27'),
(201, 13, 'irwans', 'Login', 'Sukses', '14:44:24', '2017-03-27'),
(202, 13, 'irwans', 'Login', 'Sukses', '20:33:37', '2017-04-05'),
(203, 13, 'irwans', 'Login', 'Sukses', '21:50:34', '2017-04-10'),
(204, 13, 'irwans', 'Login', 'Sukses', '17:48:01', '2017-04-11'),
(205, 13, 'irwans', 'Login', 'Sukses', '14:51:00', '2017-04-18'),
(206, 13, 'irwans', 'Update Surat Masuk', 'Sukses', '15:22:43', '2017-04-18'),
(207, 13, 'irwans', 'Login', 'Sukses', '20:40:58', '2017-04-24'),
(208, 13, 'irwans', 'Login', 'Sukses', '14:06:01', '2017-12-03'),
(209, 13, 'irwans', 'Insert Data Surat Masuk', 'Sukses', '14:08:00', '2017-12-03'),
(210, 13, 'irwans', 'Insert Data Surat Keluar', 'Sukses', '14:14:46', '2017-12-03'),
(211, 13, 'irwans', 'Insert Data Surat Masuk', 'Sukses', '14:30:42', '2017-12-03'),
(212, 13, 'irwans', 'Insert Data Surat Masuk', 'Sukses', '14:30:50', '2017-12-03'),
(213, 13, 'irwans', 'Insert Data Surat Masuk', 'Sukses', '14:31:29', '2017-12-03'),
(214, 13, 'irwans', 'Insert Data Surat Masuk', 'Sukses', '14:32:32', '2017-12-03'),
(215, 13, 'irwans', 'Insert Data Surat Keluar', 'Sukses', '14:33:30', '2017-12-03'),
(216, 13, 'irwans', 'Insert Data Surat Masuk', 'Sukses', '14:36:28', '2017-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id` int(11) NOT NULL,
  `id_su` varchar(50) NOT NULL,
  `id_sm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id`, `id_su`, `id_sm`) VALUES
(1, '97', '6'),
(2, '98', '6'),
(3, '99', '6'),
(4, '97', '7'),
(5, '98', '7'),
(6, '99', '7'),
(7, '97', '8'),
(8, '98', '8'),
(9, '99', '8'),
(10, '97', '9'),
(11, '98', '9'),
(12, '99', '9'),
(13, '97', '10'),
(14, '98', '10'),
(15, '99', '10'),
(16, '97', '11'),
(17, '98', '11'),
(18, '99', '11');

-- --------------------------------------------------------

--
-- Table structure for table `suratkeluar`
--

CREATE TABLE `suratkeluar` (
  `nosurat2` int(11) NOT NULL,
  `nosurat1` varchar(50) NOT NULL,
  `nosurat3` varchar(50) NOT NULL,
  `tanggalsurat` date NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `perihal` varchar(50) NOT NULL,
  `tembusan` varchar(100) NOT NULL,
  `lampiran` varchar(100) NOT NULL,
  `isilampiran` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `sifatsurat` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suratmasuk`
--

CREATE TABLE `suratmasuk` (
  `id` int(11) NOT NULL,
  `nosurat` varchar(50) NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `tanggalsurat` date NOT NULL,
  `tanggalmsurat` date NOT NULL,
  `sifatsurat` varchar(50) NOT NULL,
  `jenis` varchar(55) NOT NULL,
  `isi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suratmasuk`
--

INSERT INTO `suratmasuk` (`id`, `nosurat`, `perihal`, `pengirim`, `status`, `tanggalsurat`, `tanggalmsurat`, `sifatsurat`, `jenis`, `isi`) VALUES
(17, '1', 'Tugas', 'Bimbim', 'Proses', '2010-11-11', '2007-11-11', 'Rahasia', 'surat masuk', '51-97-2-PB5.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `userfile` varchar(255) NOT NULL,
  `level` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `nip`, `userfile`, `level`) VALUES
(4, 'test', 'e10adc3949ba59abbe56e057f20f883e', 'Bambang', 'testaaaa', '', 2),
(10, 'irwans001', 'e10adc3949ba59abbe56e057f20f883e', 'Irwan Suprianto', '123456', 'Meet_Greet_11.jpg', 3),
(11, 'irwans123', 'e10adc3949ba59abbe56e057f20f883e', 'Irwan Suprianto', '123456', 'Meet_Greet_12.jpg', 3),
(12, 'tesq', '2d3ad586e7bafe646ad2943575204569', 'hvhvhv', 'hmbmb', 'DSC_0109.JPG', 2),
(13, 'irwans', 'e10adc3949ba59abbe56e057f20f883e', 'irwan suprianto', '123456', '', 1),
(14, 'HAHA', '0cc175b9c0f1b6a831c399e269772661', 'irwan Suprianto', 'a', '', 3),
(15, 'hAHA', 'd41d8cd98f00b204e9800998ecf8427e', 'bayan', 'jjkjkn', '85661.jpg', 2),
(16, 'aaaaa', '0cc175b9c0f1b6a831c399e269772661', 'aaaaa', 'aaaaa', 'Screen_Shot_2017-02-12_at_2_24_28_PM.png', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suratkeluar`
--
ALTER TABLE `suratkeluar`
  ADD PRIMARY KEY (`nosurat2`);

--
-- Indexes for table `suratmasuk`
--
ALTER TABLE `suratmasuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `suratkeluar`
--
ALTER TABLE `suratkeluar`
  MODIFY `nosurat2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `suratmasuk`
--
ALTER TABLE `suratmasuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
