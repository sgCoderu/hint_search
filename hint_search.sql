-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 09 2022 г., 18:09
-- Версия сервера: 5.7.24
-- Версия PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hint_search`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`) VALUES
(1, 'Валерия', 'Савина'),
(2, 'Ника', 'Крылова'),
(3, 'Владимир', 'Алексеев'),
(4, 'Ирина', 'Зотова'),
(5, 'Дмитрии', 'Зотов'),
(6, 'Алексей', 'Ульянов'),
(7, 'Егор', 'Лукьянов'),
(8, 'Марк', 'Сорокин'),
(9, 'Изабелла', 'Карасева'),
(10, 'Алиса', 'Акимова'),
(11, 'Елизавета', 'Родионова'),
(12, 'Дарья', 'Субботина'),
(13, 'Максим', 'Матвеев'),
(14, 'Богдан', 'Розанов'),
(15, 'Марк', 'Сычев'),
(16, 'Владислав', 'Рыжов'),
(17, 'Владимир', 'Миронов'),
(18, 'Валерия', 'Савельева'),
(19, 'Даниил', 'Фокин'),
(20, 'Пётр', 'Беляев'),
(21, 'Лев', 'Петров'),
(22, 'Александр', 'Власов'),
(23, 'Григорий', 'Смирнов'),
(24, 'Михаил', 'Журавлев'),
(25, 'Александр', 'Никитин'),
(26, 'Мирон', 'Зайцев'),
(27, 'Егор', 'Соловьев'),
(28, 'Полина', 'Глебова'),
(29, 'Ярослав', 'Логинов'),
(30, 'Максим', 'Юдин');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
