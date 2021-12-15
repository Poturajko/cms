-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Дек 15 2021 г., 17:51
-- Версия сервера: 5.7.32
-- Версия PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `im`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `menu_position` int(11) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `name`, `parent_id`, `menu_position`, `content`) VALUES
(1, 'art1', 2, 1, NULL),
(2, 'art2', NULL, 1, NULL),
(3, 'art3', NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `filters`
--

CREATE TABLE `filters` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `visible` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `menu_position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `filters`
--

INSERT INTO `filters` (`id`, `name`, `content`, `visible`, `parent_id`, `menu_position`) VALUES
(1, 'red', '1', 1, 9, 1),
(2, 'green', '2', NULL, 9, 2),
(3, '200mm', '3', NULL, 10, 1),
(4, '300mm', '4', NULL, 10, 2),
(7, '400mm', NULL, NULL, 10, 3),
(8, 'lightred', NULL, NULL, 9, 3),
(9, 'Color', NULL, NULL, NULL, 3),
(10, 'Width', NULL, NULL, NULL, 3),
(14, 'Height', '', 1, NULL, 2),
(15, '1 px', '', 1, 14, 2),
(16, '2px', '', 1, 14, 1),
(17, '3px', '', 1, 14, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `filters_categories`
--

CREATE TABLE `filters_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `filters_categories`
--

INSERT INTO `filters_categories` (`id`, `name`) VALUES
(1, 'Цвет'),
(2, 'Ширина');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `visible` int(11) DEFAULT NULL,
  `menu_position` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `content` text,
  `keywords` varchar(255) DEFAULT NULL,
  `gallery_img` text,
  `date` date DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `main_img` varchar(255) DEFAULT NULL,
  `new_gallery_img` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `visible`, `menu_position`, `img`, `content`, `keywords`, `gallery_img`, `date`, `datetime`, `alias`, `main_img`, `new_gallery_img`) VALUES
(15, 'good1', 1, 1, 'goods/iphone_11.jpg', '<p><img title=\"go pro.jpg\" src=\"/userfiles/goods/content_files/go-projpg.jpg\" alt=\"\" width=\"992\" height=\"701\" /></p>', '', '[\"goods\\/beats.jpg\",\"goods\\/5se.jpg\",\"goods\\/bosch.jpg\"]', '2021-05-25', '2021-05-25 11:24:50', 'good1', 'goods/htc-one-s-706.jpg', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `goods_filters`
--

CREATE TABLE `goods_filters` (
  `goods_id` int(11) NOT NULL,
  `filters_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `old_alias`
--

CREATE TABLE `old_alias` (
  `alias` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `table_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `new_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `name`, `new_name`) VALUES
(1, 'page1', NULL),
(2, 'page2', NULL),
(3, 'page3', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `parsing_data`
--

CREATE TABLE `parsing_data` (
  `all_links` longtext,
  `temp_links` longtext,
  `bad_links` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `parsing_data`
--

INSERT INTO `parsing_data` (`all_links`, `temp_links`, `bad_links`) VALUES
('', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `visible` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `name`, `content`, `parent_id`, `visible`) VALUES
(1, 'student - 1', '1', NULL, 1),
(2, 'student - 2', '2', NULL, NULL),
(3, 'student - 3', '3', NULL, NULL),
(4, 'student - 4', '4', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `stud_teach`
--

CREATE TABLE `stud_teach` (
  `teachers` int(10) NOT NULL,
  `students` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `stud_teach`
--

INSERT INTO `stud_teach` (`teachers`, `students`) VALUES
(1, 1),
(2, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `visible` int(11) DEFAULT NULL,
  `menu_position` int(11) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `content` text,
  `keywords` varchar(255) DEFAULT NULL,
  `gallery_img` text,
  `date` date DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `visible`, `menu_position`, `parent_id`, `img`, `content`, `keywords`, `gallery_img`, `date`, `datetime`, `alias`) VALUES
(1, 'teacher1', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'teacher2', NULL, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'New teacher', 1, 1, 1, NULL, NULL, 'Klu4eviki', NULL, '2021-04-29', '2021-04-29 19:06:11', NULL),
(4, 'techer3', 1, 1, 1, NULL, NULL, 'vavavaev', NULL, '2021-04-29', '2021-04-29 19:09:07', NULL),
(5, 'FINAL', 1, 1, 1, NULL, NULL, 'Klucheviki', NULL, '2021-04-30', '2021-04-30 13:37:07', 'teacher_111'),
(6, 'sacascasc', 1, 1, 1, NULL, NULL, 'ascascasc', NULL, '2021-04-30', '2021-04-30 14:34:27', 'kanvkwnv122dx_--xasw1kdx1cmpo1'),
(7, 'Новый классный тичер /\\@$%$%', 1, 1, 1, NULL, NULL, 'Keywords', NULL, '2021-04-30', '2021-04-30 14:42:09', ''),
(8, 'Новый классный тичер /\\@$%$%', 1, 1, 1, NULL, NULL, 'privet', NULL, '2021-04-30', '2021-04-30 14:43:56', ''),
(9, 'Новый классный тичер /\\@$%$%', 1, 1, 1, NULL, NULL, 'wcsdvadv', NULL, '2021-04-30', '2021-04-30 15:44:03', 'noviy-klassniy-ticher-'),
(10, 'Новый уитель 1', 1, 1, 1, NULL, NULL, 'asvasvasvasv', NULL, '2021-04-30', '2021-04-30 15:44:31', 'noviy-uitel-1'),
(11, 'Новый училка', 1, 1, 1, NULL, NULL, 'фдсьцуолумц', NULL, '2021-04-30', '2021-04-30 15:45:26', ''),
(12, 'новый перец', 1, 1, 1, NULL, NULL, 'вямыифи', NULL, '2021-04-30', '2021-04-30 15:46:04', 'noviy-perets'),
(16, 'testasdvae43vtevd', 1, 1, 1, '5se_3facc6be.jpg', NULL, '', '[\"5se.jpg\",\"beats.jpg\",\"bosch.jpg\",\"delonghi.jpg\"]', '2021-05-05', '2021-05-05 13:45:10', 'testasdvae43vtevd'),
(17, 'testdvnaekjvnalv', 1, 1, 1, '5se_74fd7ba4.jpg', NULL, '', '[\"5se_a062b54d.jpg\",\"beats_1902bbb6.jpg\",\"bosch_6baf2544.jpg\",\"delonghi_cdb90ba3.jpg\"]', '2021-05-05', '2021-05-05 13:46:15', 'testdvnaekjvnalv');

-- --------------------------------------------------------

--
-- Структура таблицы `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id_idx` (`parent_id`);

--
-- Индексы таблицы `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filters_filters_id_fk` (`parent_id`);

--
-- Индексы таблицы `filters_categories`
--
ALTER TABLE `filters_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods_filters`
--
ALTER TABLE `goods_filters`
  ADD PRIMARY KEY (`goods_id`,`filters_id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stud_teach`
--
ALTER TABLE `stud_teach`
  ADD PRIMARY KEY (`students`,`teachers`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_students_id_fk` (`parent_id`);

--
-- Индексы таблицы `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_test_id_fk` (`parent_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `filters`
--
ALTER TABLE `filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `filters_categories`
--
ALTER TABLE `filters_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `parent_id` FOREIGN KEY (`parent_id`) REFERENCES `pages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `filters`
--
ALTER TABLE `filters`
  ADD CONSTRAINT `filters_filters_id_fk` FOREIGN KEY (`parent_id`) REFERENCES `filters` (`id`);

--
-- Ограничения внешнего ключа таблицы `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_test_id_fk` FOREIGN KEY (`parent_id`) REFERENCES `test` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
