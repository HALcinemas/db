-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016 年 11 朁E17 日 03:41
-- サーバのバージョン： 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iw32`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `adminstar`
--

CREATE TABLE `adminstar` (
  `adminstar_id` int(11) NOT NULL,
  `adminstar_mail` varchar(20) NOT NULL,
  `adminstar_pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `adminstar`
--

INSERT INTO `adminstar` (`adminstar_id`, `adminstar_mail`, `adminstar_pass`) VALUES
(1, 'test@test.com', 'test');

-- --------------------------------------------------------

--
-- テーブルの構造 `data`
--

CREATE TABLE `data` (
  `data_time` int(11) NOT NULL,
  `data_ticket` int(10) NOT NULL,
  `data_theatar` int(10) NOT NULL,
  `data_opus` int(10) NOT NULL,
  `data_plan` int(10) NOT NULL,
  `data_birthday` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `data`
--

INSERT INTO `data` (`data_time`, `data_ticket`, `data_theatar`, `data_opus`, `data_plan`, `data_birthday`) VALUES
(0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `op`
--

CREATE TABLE `op` (
  `op_id` int(11) NOT NULL,
  `op_name` varchar(20) NOT NULL,
  `op_directed` varchar(10) NOT NULL,
  `op_cast` varchar(30) NOT NULL,
  `op_playtime` int(5) NOT NULL,
  `op_image` varchar(30) NOT NULL,
  `op_text` varchar(100) NOT NULL,
  `op_entryday` int(8) NOT NULL,
  `op_planday` int(8) NOT NULL,
  `op_releaseday` int(8) NOT NULL,
  `op_screeinngday` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `op`
--

INSERT INTO `op` (`op_id`, `op_name`, `op_directed`, `op_cast`, `op_playtime`, `op_image`, `op_text`, `op_entryday`, `op_planday`, `op_releaseday`, `op_screeinngday`) VALUES
(1, 'ほげ', 'ほげ', 'ほげ,ふげ', 108, 'image/hoge.jpg', 'hogehogehogehogehogehogehogehogehoge\r\nほげふげ', 20110101, 20110101, 20110101, 20110101);

-- --------------------------------------------------------

--
-- テーブルの構造 `play`
--

CREATE TABLE `play` (
  `play_id` int(11) NOT NULL,
  `play_theatar` varchar(20) NOT NULL,
  `play_screen` varchar(20) NOT NULL,
  `play_screening` varchar(20) NOT NULL,
  `play_plan` varchar(20) NOT NULL,
  `play_day` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `play`
--

INSERT INTO `play` (`play_id`, `play_theatar`, `play_screen`, `play_screening`, `play_plan`, `play_day`) VALUES
(1, 'ほげシアター', 'screen1', 'ほげふげ', 'ほげふげ', 20110101);

-- --------------------------------------------------------

--
-- テーブルの構造 `screen`
--

CREATE TABLE `screen` (
  `sc_id` int(11) NOT NULL,
  `sc_name` varchar(20) NOT NULL,
  `sc_theatar` varchar(20) NOT NULL,
  `sc_screening` varchar(20) NOT NULL,
  `sc_planday` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `screen`
--

INSERT INTO `screen` (`sc_id`, `sc_name`, `sc_theatar`, `sc_screening`, `sc_planday`) VALUES
(1, 'screen1', 'ほげシアター', 'ほげふげ', 'ほげふげ');

-- --------------------------------------------------------

--
-- テーブルの構造 `th`
--

CREATE TABLE `th` (
  `th_id` int(11) NOT NULL,
  `th_name` varchar(20) NOT NULL,
  `th_location` varchar(20) NOT NULL,
  `th_screen` varchar(10) NOT NULL,
  `th_screeningday` int(20) NOT NULL,
  `th_planday` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `th`
--

INSERT INTO `th` (`th_id`, `th_name`, `th_location`, `th_screen`, `th_screeningday`, `th_planday`) VALUES
(1, 'ほげシアター', 'ほげ県フゲ市huga-0-0-0', 'screen1', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `ticket`
--

CREATE TABLE `ticket` (
  `ti_id` int(11) NOT NULL,
  `ti_user` varchar(10) NOT NULL,
  `ti_type` int(5) NOT NULL,
  `ti_price` int(10) NOT NULL,
  `ti_sheet` varchar(5) NOT NULL,
  `ti_theatar` varchar(20) NOT NULL,
  `ti_opus` varchar(20) NOT NULL,
  `ti_useday` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `ticket`
--

INSERT INTO `ticket` (`ti_id`, `ti_user`, `ti_type`, `ti_price`, `ti_sheet`, `ti_theatar`, `ti_opus`, `ti_useday`) VALUES
(1, 'ほげ', 1, 1000, 'X1', 'ほげシアター', 'ほげふげ', 20110101);

-- --------------------------------------------------------

--
-- テーブルの構造 `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_mail` varchar(20) NOT NULL,
  `user_pass` varchar(20) NOT NULL,
  `user_name1` varchar(10) NOT NULL,
  `user_name2` varchar(20) NOT NULL,
  `user_gender` int(1) NOT NULL,
  `user_birthday` int(7) NOT NULL,
  `user_tel` varchar(20) NOT NULL,
  `user_card1` varchar(20) NOT NULL,
  `user_card2` int(3) NOT NULL,
  `user_card3` int(5) NOT NULL,
  `user_card4` varchar(10) NOT NULL,
  `user_pt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `user`
--

INSERT INTO `user` (`user_id`, `user_mail`, `user_pass`, `user_name1`, `user_name2`, `user_gender`, `user_birthday`, `user_tel`, `user_card1`, `user_card2`, `user_card3`, `user_card4`, `user_pt`) VALUES
(1, 'hoge@huge.huga', 'hogehuga', 'ほげ', 'ふが', 0, 20110101, '09010101010', '1111111111111111', 111, 1111, 'HUGEHUGA', 1000000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`data_time`);

--
-- Indexes for table `op`
--
ALTER TABLE `op`
  ADD PRIMARY KEY (`op_name`);

--
-- Indexes for table `play`
--
ALTER TABLE `play`
  ADD PRIMARY KEY (`play_theatar`,`play_screen`);

--
-- Indexes for table `screen`
--
ALTER TABLE `screen`
  ADD PRIMARY KEY (`sc_name`);

--
-- Indexes for table `th`
--
ALTER TABLE `th`
  ADD PRIMARY KEY (`th_name`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ti_id`,`ti_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`,`user_mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
