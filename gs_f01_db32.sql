-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018 年 9 月 27 日 20:43
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_f01_db32`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE IF NOT EXISTS `gs_bm_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(1, '星の王子様', 'http://www.lepetitprince.co.jp/top.html', 'キツネがいた', '2018-09-19 07:24:36'),
(2, 'ワンピース', 'https://one-piece.com/', 'ゴーイングメリー号', '2018-09-19 07:47:31'),
(3, 'momotaro', 'jjjjjjjjjjjjmomotaro.com', 'あるところにおじいさんとおばあさんがいました。おじいさんは山へおばあさんは川へ。桃が流れてきて桃太郎が生まれてサルとキジと犬に会って鬼を退治した。めでたしめでたし。', '2018-09-19 07:52:11'),
(4, '幽遊白書', 'https://shonenjumpplus.com/episode/10833519556325021909', '浦飯幽助って漢字変換が一発で出るのすごい', '2018-09-20 19:50:12'),
(5, 'ジャイアントキリング', 'http://morning.moae.jp/lineup/20', '王道ジャンプ系と、モーニング系の漫画が結構好き', '2018-09-20 20:05:37');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_php02_table`
--

CREATE TABLE IF NOT EXISTS `gs_php02_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(6) NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_php02_table`
--

INSERT INTO `gs_php02_table` (`id`, `name`, `email`, `age`, `detail`, `indate`) VALUES
(1, 'makimaki', 'aaa@aaaaaaaa', 22, 'table', '2018-09-15 15:22:11'),
(2, 'hoge', 'kakka@kakaka', 45, 'dddd', '2018-09-15 15:35:16'),
(3, 'mmm', 'ghghgh@gmail.com', 90, 'kkajliuga', '2018-09-15 15:35:52'),
(4, 'hogehoge', 'ghghgh@gmail.com', 77, 'comment', '2018-09-15 15:36:07'),
(5, 'mmhoge', 'ghghgh@yahoo.co.jp', 11, 'textttt', '2018-09-15 15:37:13'),
(6, '望月　眞喜', 'mochizuki@kajiwara-shika.jp', 12, 'っd', '2018-09-15 16:24:21'),
(7, '望月　眞喜', 'mochizuki@kajiwara-shika.jp', 34, 'kdkdk', '2018-09-15 16:24:34'),
(8, '望月　眞喜', 'mochizuki@kajiwara-shika.jp', 65, '', '2018-09-15 16:26:59'),
(9, 'カカシ', '＠jdjdjdjd', 25, 'jkjkjkjk', '2018-09-15 16:48:15'),
(10, 'hanako', 'kkk@kkkkkkkkk', 44, 'はなはなはなはな', '2018-09-18 19:46:17'),
(11, 'mamam', 'm@rakuten.do.jp', 21, '22', '2018-09-18 21:21:44'),
(12, 'mamama', 'k@googole.com', 22, '', '2018-09-18 21:26:32'),
(13, 'jj', 'ii@gmail.com', 33, '', '2018-09-18 21:27:42'),
(14, 'hahah', 'test1lll@jajaj.kk', 40, 'kakaka', '2018-09-18 21:39:27'),
(15, 'tete', 'aaa@test1.co.jp', 55, '', '2018-09-18 21:39:55'),
(16, 'kkieiuoius', 'myatest1@kkkklll', 38, '', '2018-09-18 21:41:43'),
(17, 'tatumi', 'etu@kakaka.jp', 37, '', '2018-09-18 21:43:01'),
(18, 'tsubaki', 'kappa@etu.jp', 26, 'kappa', '2018-09-18 21:43:26'),
(19, 'mura', 'llaigeu@kaitest1.jj', 39, '', '2018-09-18 21:43:54'),
(20, 'tell', 'u@kaiuotest1', 20, '', '2018-09-18 21:49:54'),
(21, 'jr', 'kaiuoie@kkkk', 10, '', '2018-09-18 21:51:47'),
(22, 'older', 'jaja@yetfa', 30, '', '2018-09-18 21:52:00'),
(23, 'four', 'jauyiuet@kkk', 40, '', '2018-09-18 21:52:13'),
(24, '望月　眞喜', 'gegege', 30, '', '2018-09-18 22:08:48'),
(25, '望月　眞喜', 'mochizuki@kajiwara-shika.jp', 40, '', '2018-09-18 22:08:55'),
(26, 'ごまめ', 'alkgejioiuoagkj', 0, '送信テスト', '2018-09-19 07:37:33');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_php03_table`
--

CREATE TABLE IF NOT EXISTS `gs_php03_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_php03_table`
--

INSERT INTO `gs_php03_table` (`id`, `name`, `email`, `detail`, `indate`) VALUES
(1, 'Kodamaひろやす', 'kodama@gs.gs.gggsss', 'test01テストテスト', '2018-09-15 15:21:00'),
(3, 'osg', 'osg@gs.gs', 'test03', '2018-09-15 15:23:20'),
(4, 'morita', 'morita@gs.gs', 'test04', '2018-09-15 15:23:48'),
(6, 'kamiyama', 'kamiyama@gs.gs', 'test06', '2018-09-15 16:12:26'),
(7, 'kanou', 'kanou@gs.gs', 'test07', '2018-09-15 16:13:06'),
(8, 'kosuge小菅', 'kosuge@gs.gs', 'test08', '2018-09-15 16:17:04'),
(9, 'iseki', 'iseki@gs.gs', 'test09', '2018-09-15 16:47:30');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE IF NOT EXISTS `gs_user_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kanri_flg` int(1) DEFAULT NULL,
  `life_flg` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'myApp', '', '', 0, 0),
(2, 'maki', '', '', 0, 0),
(3, '望月　眞喜', '', '', 0, 0),
(5, 'ggggg', '', '', 0, 0),
(6, 'kindlemania', '', '', 0, 0),
(7, 'mymymymymy', '', '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_php02_table`
--
ALTER TABLE `gs_php02_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_php03_table`
--
ALTER TABLE `gs_php03_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `gs_php02_table`
--
ALTER TABLE `gs_php02_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `gs_php03_table`
--
ALTER TABLE `gs_php03_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
