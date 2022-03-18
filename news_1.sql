-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 18 2022 г., 13:25
-- Версия сервера: 10.4.19-MariaDB
-- Версия PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `news`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `name`, `description`, `image`) VALUES
(1, 'Воздушный гимнаст с диареей облагородил 23 человека во время выступления', 'В Валенсию прибыл замечательный бельгийский цирк, полный магии, иллюзий, смеха, шоу, веселья, с укротителями тигров и отважными артистами — акробатами», — таковой была презентация цирка в пятницу в Валенсии', 'img/id1'),
(2, 'В Пермском крае в 14-й раз состоится чемпионат по метанию коровьих лепёшек', 'В селе Крылово (Осинский район Пермского края) пройдёт юбилейный знаменитый турнир по метанию коровьих лепёшек «Весёлый коровяк». URA.RU выяснило, как идёт подготовка к турниру.', 'img/id2'),
(3, 'Телефонные мошенники украли миллиард долларов, выделенный Украине', 'Заместитель руководителя Государственного департамента США Том Джемесон стал жертвой преступников. 10 марта на его служебный номер поступил звонок с украинского телефонного номера. Неизвестный представился сотрудником Нацбанка Украины и попросил незамедлительно перевести миллиард долларов, которые накануне Конгресс выделил в качестве финансовой помощи Киеву. ', 'img/id3'),
(4, 'Юлия Якубеня уронила отварную сосиску', '19 октября около 6 часов вечера выпускница НГУ, Юлия Якубеня закончив отваривать молочную сосиску СПК, подцепила ее кончиком вилки чтобы переместить из кипятка в миску с отварным картофелем. \"Я думала, что сосиска прочно держится на зубчиках вилки, но я ошибалась...\" - вспоминает девушка.', 'img/id4'),
(5, 'Иван Семеныч угощает голубцами с сюрпризом', 'Описание было утеряно', 'img/id5'),
(6, 'Трамп отказался закрывать счет в Сбербанке', 'Дональд Трамп призвал американцев бойкотировать санкции против России. Сам экс-президент США заявил, что не планирует закрывать свой личный счёт в Сбербанке. \r\n\r\n«Кто дал право Байдену ограничивать мою финансовую свободу? В Сбербанке прекрасный сервис и высокий процент по вкладам, ни один американский банк таких условий предложить не может. Я был, есть и буду клиентом Сбера, а престарелые лидеры демократов мне не указ!» - написал Трамп в своём Twitter 25 февраля.', 'img/id6');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `admin`) VALUES
(1, '$login', '$password', 0),
(2, 'Nera', '321', 0),
(3, 'Nera', '4848', 0),
(4, 'Neraa', '12364', 0),
(5, 'Мобуту-сесе-Секо Куку', '568', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
