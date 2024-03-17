-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 16 2024 г., 18:38
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `metal_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `info`
--

CREATE TABLE `info` (
  `id` int NOT NULL,
  `logo` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `thameSound` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `info`
--

INSERT INTO `info` (`id`, `logo`, `about`, `thameSound`, `user_id`) VALUES
(1, 'img/rhcpimg.png', '<p><strong>Red Hot Chili Peppers</strong> (часто используется аббревиатура <strong>RHCP</strong>; с&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">англ.</a> — «Красные острые перцы чили»)&nbsp;— американская <a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%BE%D0%BA-%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0\">рок-группа</a>, образованная в <a href=\"https://ru.wikipedia.org/wiki/1983_%D0%B2_%D0%BC%D1%83%D0%B7%D1%8B%D0%BA%D0%B5\">1983 году</a> в <a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D0%BB%D0%B8%D1%84%D0%BE%D1%80%D0%BD%D0%B8%D1%8F\">Калифорнии</a> вокалистом <a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D0%B4%D0%B8%D1%81,_%D0%AD%D0%BD%D1%82%D0%BE%D0%BD%D0%B8\">Энтони Кидисом</a>, басистом <a href=\"https://ru.wikipedia.org/wiki/%D0%A4%D0%BB%D0%B8\">Майклом Бэлзари</a> (больше известным как Фли), гитаристом <a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D0%BB%D0%BE%D0%B2%D0%B0%D0%BA,_%D0%A5%D0%B8%D0%BB%D0%BB%D0%B5%D0%BB\">Хиллелом Словаком</a> и барабанщиком <a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%B9%D1%80%D0%BE%D0%BD%D1%81,_%D0%94%D0%B6%D0%B5%D0%BA\">Джеком Айронсом</a>. Обладает 7 премиями «<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D1%80%D1%8D%D0%BC%D0%BC%D0%B8\">Грэмми</a>». Во всём мире проданы более 80 миллионов копий их альбомов<a href=\"https://ru.wikipedia.org/wiki/Red_Hot_Chili_Peppers#cite_note-1\">[1]</a>. По версии <a href=\"https://ru.wikipedia.org/wiki/VH1\">VH1</a> <i>«100 Greatest Artists of Hard Rock»</i> заняли 30-е место. 14 апреля 2012 года группа была включена в <a href=\"https://ru.wikipedia.org/wiki/%D0%97%D0%B0%D0%BB_%D1%81%D0%BB%D0%B0%D0%B2%D1%8B_%D1%80%D0%BE%D0%BA-%D0%BD-%D1%80%D0%BE%D0%BB%D0%BB%D0%B0\">Зал славы рок-н-ролла</a>. Группа заняла третье место в символическом списке «Лучшие исполнители за 10 лет скробблинга» портала <a href=\"https://ru.wikipedia.org/wiki/Last.fm\">Last.fm</a><a href=\"https://ru.wikipedia.org/wiki/Red_Hot_Chili_Peppers#cite_note-2\">[2]</a>.</p>', 'song/rhcp.mp3', 0),
(2, 'img/blackimg.png', '<p><strong>Black Sabbath</strong> (МФА: <a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B5%D0%B6%D0%B4%D1%83%D0%BD%D0%B0%D1%80%D0%BE%D0%B4%D0%BD%D1%8B%D0%B9_%D1%84%D0%BE%D0%BD%D0%B5%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9_%D0%B0%D0%BB%D1%84%D0%B0%D0%B2%D0%B8%D1%82\">[blæk ˈsæbəθ]</a>)&nbsp;— <a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D1%83%D0%B7%D1%8B%D0%BA%D0%B0_%D0%92%D0%B5%D0%BB%D0%B8%D0%BA%D0%BE%D0%B1%D1%80%D0%B8%D1%82%D0%B0%D0%BD%D0%B8%D0%B8\">британская</a> <a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%BE%D0%BA-%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0\">рок-группа</a>, образованная в <a href=\"https://ru.wikipedia.org/wiki/%D0%91%D0%B8%D1%80%D0%BC%D0%B8%D0%BD%D0%B3%D0%B5%D0%BC\">Бирмингеме</a>, <a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D1%8F\">Англия</a>, в <a href=\"https://ru.wikipedia.org/wiki/1968_%D0%B3%D0%BE%D0%B4_%D0%B2_%D0%BC%D1%83%D0%B7%D1%8B%D0%BA%D0%B5\">1968&nbsp;году</a> и оказавшая значительное влияние на развитие <a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%BE%D0%BA-%D0%BC%D1%83%D0%B7%D1%8B%D0%BA%D0%B0\">рок-музыки</a>, прежде всего, <a href=\"https://ru.wikipedia.org/wiki/%D0%A5%D0%B5%D0%B2%D0%B8-%D0%BC%D0%B5%D1%82%D0%B0%D0%BB\">хеви-метала</a><a href=\"https://ru.wikipedia.org/wiki/Black_Sabbath#cite_note-2\">[2]</a>. Дебютный альбом <a href=\"https://ru.wikipedia.org/wiki/Black_Sabbath_(%D0%B0%D0%BB%D1%8C%D0%B1%D0%BE%D0%BC)\"><i>Black Sabbath</i></a> считается одним из первых <a href=\"https://ru.wikipedia.org/wiki/%D0%A5%D0%B5%D0%B2%D0%B8-%D0%BC%D0%B5%D1%82%D0%B0%D0%BB\">хеви-метал</a>-альбомов, заложившим, кроме того, фундамент и для последующего развития <a href=\"https://ru.wikipedia.org/wiki/%D0%94%D1%83%D0%BC-%D0%BC%D0%B5%D1%82%D0%B0%D0%BB\">дум-метала</a>. Десять альбомов группы входили в первую десятку <a href=\"https://ru.wikipedia.org/wiki/UK_Albums_Chart\">UK Albums Chart</a><a href=\"https://ru.wikipedia.org/wiki/Black_Sabbath#cite_note-chartstats-3\">[3]</a>. К 2012&nbsp;году общий тираж альбомов Black Sabbath приблизился к 70 миллионам<a href=\"https://ru.wikipedia.org/wiki/Black_Sabbath#cite_note-4\">[4]</a>.</p><p>Лидером и основным композитором Black Sabbath был гитарист <a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%B9%D0%BE%D0%BC%D0%BC%D0%B8,_%D0%A2%D0%BE%D0%BD%D0%B8\">Тони Айомми</a>, вторым почти неизменным участником и соавтором песен&nbsp;— басист <a href=\"https://ru.wikipedia.org/wiki/%D0%91%D0%B0%D1%82%D0%BB%D0%B5%D1%80,_%D0%93%D0%B8%D0%B7%D0%B5%D1%80\">Гизер Батлер</a>. Остальной состав группы неоднократно менялся. Альбомы до 1980&nbsp;года записаны классическим составом с вокалистом <a href=\"https://ru.wikipedia.org/wiki/%D0%9E%D1%81%D0%B1%D0%BE%D1%80%D0%BD,_%D0%9E%D0%B7%D0%B7%D0%B8\">Оззи Осборном</a>. После расставания с ним на различных альбомах группы пели <a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%BE%D0%BD%D0%BD%D0%B8_%D0%94%D0%B8%D0%BE\">Ронни Дио</a>, <a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D1%80%D1%82%D0%B8%D0%BD,_%D0%A2%D0%BE%D0%BD%D0%B8_(%D0%BC%D1%83%D0%B7%D1%8B%D0%BA%D0%B0%D0%BD%D1%82)\">Тони Мартин</a> и другие вокалисты. В 2011&nbsp;году группа воссоединилась в классическом составе, а в 2017&nbsp;году после прощального тура завершила выступления окончательно<a href=\"https://ru.wikipedia.org/wiki/Black_Sabbath#cite_note-breakup-5\">[5]</a><a href=\"https://ru.wikipedia.org/wiki/Black_Sabbath#cite_note-nme-6\">[6]</a>. Участники Black Sabbath, в особенности Оззи и <a href=\"https://ru.wikipedia.org/wiki/Dio\">Дио</a>, также сделали успешные сольные карьеры после ухода из группы.</p>', 'song/BlackSabbath.mp3', 0),
(3, 'img/megadethimg.png', '<p><strong>Megadeth</strong>&nbsp;— <a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D0%BE%D0%B5%D0%B4%D0%B8%D0%BD%D1%91%D0%BD%D0%BD%D1%8B%D0%B5_%D0%A8%D1%82%D0%B0%D1%82%D1%8B_%D0%90%D0%BC%D0%B5%D1%80%D0%B8%D0%BA%D0%B8\">американская</a> <a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B5%D1%82%D0%B0%D0%BB\">метал</a>-группа из города <a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%BE%D1%81-%D0%90%D0%BD%D0%B4%D0%B6%D0%B5%D0%BB%D0%B5%D1%81\">Лос-Анджелес</a>, штат <a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D0%BB%D0%B8%D1%84%D0%BE%D1%80%D0%BD%D0%B8%D1%8F\">Калифорния</a>, сформированная в <a href=\"https://ru.wikipedia.org/wiki/1983_%D0%B3%D0%BE%D0%B4_%D0%B2_%D0%BC%D1%83%D0%B7%D1%8B%D0%BA%D0%B5\">1983 году</a>. Коллектив основан <a href=\"https://ru.wikipedia.org/wiki/%D0%93%D0%B8%D1%82%D0%B0%D1%80%D0%B8%D1%81%D1%82\">гитаристом</a> и <a href=\"https://ru.wikipedia.org/wiki/%D0%92%D0%BE%D0%BA%D0%B0%D0%BB%D0%B8%D1%81%D1%82\">вокалистом</a> <a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D1%81%D1%82%D0%B5%D0%B9%D0%BD,_%D0%94%D1%8D%D0%B9%D0%B2\">Дэйвом Мастейном</a> и <a href=\"https://ru.wikipedia.org/wiki/%D0%91%D0%B0%D1%81-%D0%B3%D0%B8%D1%82%D0%B0%D1%80%D0%B0\">бас-гитаристом</a> <a href=\"https://ru.wikipedia.org/wiki/%D0%AD%D0%BB%D0%BB%D0%B5%D1%84%D1%81%D0%BE%D0%BD,_%D0%94%D1%8D%D0%B2%D0%B8%D0%B4\">Дэвидом Эллефсоном</a> после того, как Мастейн был уволен из группы <a href=\"https://ru.wikipedia.org/wiki/Metallica\">Metallica</a>. С тех пор Megadeth выпустили 16 <a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D1%83%D0%B7%D1%8B%D0%BA%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9_%D0%B0%D0%BB%D1%8C%D0%B1%D0%BE%D0%BC\">студийных альбомов</a><a href=\"https://ru.wikipedia.org/wiki/Megadeth#cite_note-2\">[2]</a>.</p><p>В 2002 году Megadeth распалась после того, как Мастейн тяжело повредил <a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D1%83%D1%87%D0%B5%D0%B2%D0%BE%D0%B9_%D0%BD%D0%B5%D1%80%D0%B2\">лучевой нерв</a><a href=\"https://ru.wikipedia.org/wiki/Megadeth#cite_note-Megadeth_Disbands_Press_Release-3\">[3]</a>, но уже в 2004 году, после прохождения физиотерапии, он восстановил группу. В том же году Megadeth выпустили альбом <a href=\"https://ru.wikipedia.org/wiki/The_System_Has_Failed\"><i>The System Has Failed</i></a>, который стартовал на 18-м месте в хит-параде популярных альбомов журнала <a href=\"https://ru.wikipedia.org/wiki/Billboard\"><i>Billboard</i></a><a href=\"https://ru.wikipedia.org/wiki/Megadeth#cite_note-BB-A-4\">[4]</a></p><p>За сорок лет деятельности группы в ней официально участвовало <a href=\"https://ru.wikipedia.org/wiki/%D0%A3%D1%87%D0%B0%D1%81%D1%82%D0%BD%D0%B8%D0%BA%D0%B8_%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D1%8B_Megadeth\">более двадцати музыкантов</a>, и лишь Дэйв Мастейн остаётся лидером группы ещё с первого состава и основным автором песен.</p>', 'song/Megadeth.mp3', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `music`
--

CREATE TABLE `music` (
  `id` int NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `music` varchar(255) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'staizy', 'besiter200708@gmail.com', '481b47d99d156951e14427a97ef41a28', 1),
(2, 'test', 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 1),
(5, 'test2', 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`(250));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `info`
--
ALTER TABLE `info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `music`
--
ALTER TABLE `music`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `music`
--
ALTER TABLE `music`
  ADD CONSTRAINT `music_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
