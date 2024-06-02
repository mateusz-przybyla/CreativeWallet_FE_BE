SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

DROP DATABASE IF EXISTS creative_wallet;

CREATE DATABASE creative_wallet;

USE  creative_wallet;

CREATE TABLE IF NOT EXISTS `incomes_category_default` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `incomes_category_default` (`id`, `name`) VALUES
(1, 'salary'),
(2, 'bank_interest'),
(3, 'allegro_sale'),
(4, 'other');

CREATE TABLE IF NOT EXISTS `incomes_category_assigned_to_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `incomes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `incomes_category_assigned_to_user_id` int(11) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `date_of_income` date NOT NULL,
  `income_comment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'adam', 'adam@gmail.com', 'aaa'),
(2, 'marek', 'marek@gmail.com', 'bbb');