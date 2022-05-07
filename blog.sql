-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8080
-- Server version: 5.7.26
-- PHP Version: 7.3.8
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Database: `blog`
--
-- --------------------------------------------------------
--
-- Table structure for table `posts`
--
CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `posts`
--
INSERT INTO `posts` (
    `id`,
    `user_id`,
    `topic_id`,
    `title`,
    `image`,
    `body`,
    `published`,
    `created_at`
  )
VALUES (
    1,
    21,
    2,
    '5 decors to make your christmas tree stand out',
    'treedecor_2.jpg',
    '&lt;p&gt;Lorem ipsum dolor sit amet consectetur, adipisicing elit. Exercitationem optio possimus a inventore maxime laborum.&lt;p&gt;',
    1,
    '2021-12-24 15:56:19'
  ),
  (
    2,
    21,
    2,
    'Last minute shopping ideas',
    'gifts_2.jpg',
    '&lt;p&gt;Lorem ipsum dolor sit amet consectetur, adipisicing elit. Exercitationem optio possimus a inventore maxime laborum.&lt;p&gt;',
    1,
    '2021-12-24 16:01:28'
  ),
  (
    3,
    22,
    3,
    'collaboration in business',
    'startup_3.jpg',
    '&lt;p&gt;Lorem ipsum dolor sit amet consectetur, adipisicing elit. Exercitationem optio possimus a inventore maxime laborum.&lt;p&gt;',
    1,
    '2021-12-20 16:01:57'
  ),
  (
    4,
    22,
    3,
    'how i started a cool business or something...',
    'woman_business_3.jpg',
    '&lt;p&gt;Lorem ipsum dolor sit amet consectetur, adipisicing elit. Exercitationem optio possimus a inventore maxime laborum.&lt;p&gt;',
    1,
    '2021-11-19 16:02:23'
  ),
  (
    5,
    22,
    4,
    'A new you with our Autumn collection',
    'pretty_4.jpg ',
    '&lt;p&gt;Lorem ipsum dolor sit amet consectetur, adipisicing elit. Exercitationem optio possimus a inventore maxime laborum.&lt;p&gt;',
    1,
    ' 2021-09-30 16:02:53'
  ),
  (
    6,
    21,
    4,
    'Life in Paris is just better!',
    'stripes_4.jpg',
    '&lt;p&gt;Lorem ipsum dolor sit amet consectetur, adipisicing elit. Exercitationem optio possimus a inventore maxime laborum.&lt;p&gt;',
    1,
    '2021-9-24 16:01:28'
  ),
  (
    7,
    21,
    5,
    'Google pixel phone is what you need!',
    'phone_5.jpg',
    '&lt;p&gt;Lorem ipsum dolor sit amet consectetur, adipisicing elit. Exercitationem optio possimus a inventore maxime laborum.&lt;p&gt;',
    1,
    '2021-8-24 16:01:28'
  ),
  (
    8,
    21,
    5,
    'How to choose your first camera',
    'camera_5.jpg',
    '&lt;p&gt;Lorem ipsum dolor sit amet consectetur, adipisicing elit. Exercitationem optio possimus a inventore maxime laborum.&lt;p&gt;',
    1,
    '2021-7-21 16:01:28'
  ),
  (
    9,
    21,
    6,
    'Looking at pictures makes you inspired or something...',
    'woman_inspire_6.jpg',
    '&lt;p&gt;Lorem ipsum dolor sit amet consectetur, adipisicing elit. Exercitationem optio possimus a inventore maxime laborum.&lt;p&gt;',
    1,
    '2021-6-2 16:01:28'
  ),
  (
    10,
    22,
    6,
    'Why your new year will not be any different! ',
    '2022_6.jpg',
    '&lt;p&gt;Lorem ipsum dolor sit amet consectetur, adipisicing elit. Exercitationem optio possimus a inventore maxime laborum.&lt;p&gt;',
    1,
    '2020-12-31 16:01:28'
  ),
  (
    11,
    21,
    7,
    'Strength training to beat your odds!',
    'beat_7.jpg',
    '&lt;p&gt;Lorem ipsum dolor sit amet consectetur, adipisicing elit. Exercitationem optio possimus a inventore maxime laborum.&lt;p&gt;',
    1,
    '2020-12-24 16:01:28'
  ),
  (
    12,
    21,
    7,
    'How dried fruit can keep you healthy!',
    'food_7.jpg',
    '&lt;p&gt;Lorem ipsum dolor sit amet consectetur, adipisicing elit. Exercitationem optio possimus a inventore maxime laborum.&lt;p&gt;',
    1,
    '2020-11-11 16:01:28'
  );
-- --------------------------------------------------------
--
-- Table structure for table `topics`
--
CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `topics`
--
INSERT INTO `topics` (`id`, `name`, `description`)
VALUES (2, ' Trending ', ''),
  (3, ' Businesss ', ''),
  (4, ' Fashion ', ''),
  (5, ' Technology ', ''),
  (6, ' Inspiration ', ''),
  (7, ' Health', '');
-- --------------------------------------------------------
--
-- Table structure for table `users`
--
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- Dumping data for table `users`
--
INSERT INTO `users` (
    `id`,
    `admin`,
    `username`,
    `email`,
    `password`,
    `created_at`
  )
VALUES (
    21,
    1,
    ' author1',
    ' author @gmail.com ',
    ' $2y$10$9aBiE7MybiZwqOmcgTPnouKrEDhFw4sSGZuvfZ3uBpSpXVgzQmQEq ',
    ' 2021-11-20 14:23:30 '
  ),
  (
    22,
    1,
    'author2',
    'author2@gmail.com ',
    ' easyloginplease ',
    ' 2021-11-20 07:08:45 '
  );
--
-- Indexes for dumped tables
--
--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);
--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);
--
-- Indexes for table `users`
--
ALTER TABLE `users`
ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 18;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 23;
--
-- Constraints for dumped tables
--
--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE
SET NULL ON UPDATE CASCADE;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;