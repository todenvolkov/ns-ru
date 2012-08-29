-- phpMyAdmin SQL Dump
-- version 2.6.2
-- http://www.phpmyadmin.net
--
-- Хост: mysql56.1gb.ru:3306
-- Время создания: Авг 27 2012 г., 18:04
-- Версия сервера: 5.1.43
-- Версия PHP: 5.2.17

SET FOREIGN_KEY_CHECKS=0;
--
-- БД: `gb_ns2006`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `icon` varchar(300) NOT NULL DEFAULT '',
  `slug` varchar(150) NOT NULL,
  `type` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `create_user_id` int(10) unsigned NOT NULL,
  `update_user_id` int(10) unsigned NOT NULL,
  `create_date` int(11) unsigned NOT NULL,
  `update_date` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `create_user_id` (`create_user_id`),
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `update_user_id` (`update_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `blog`
--


-- --------------------------------------------------------

--
-- Структура таблицы `businessTypes`
--

DROP TABLE IF EXISTS `businessTypes`;
CREATE TABLE IF NOT EXISTS `businessTypes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `sortorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `businessTypes`
--

INSERT INTO `businessTypes` (`id`, `title`, `sortorder`) VALUES (3, 'Машиностроение', 1);
INSERT INTO `businessTypes` (`id`, `title`, `sortorder`) VALUES (4, 'Мебель', 1);
INSERT INTO `businessTypes` (`id`, `title`, `sortorder`) VALUES (5, 'Кафе и рестораны', 1);
INSERT INTO `businessTypes` (`id`, `title`, `sortorder`) VALUES (6, 'Графика', 1);
INSERT INTO `businessTypes` (`id`, `title`, `sortorder`) VALUES (7, 'Разное', 1);
INSERT INTO `businessTypes` (`id`, `title`, `sortorder`) VALUES (8, 'Услуги', 1);
INSERT INTO `businessTypes` (`id`, `title`, `sortorder`) VALUES (9, 'Строительство и строительные материалы ', 1);
INSERT INTO `businessTypes` (`id`, `title`, `sortorder`) VALUES (10, 'Недвижимость ', 1);
INSERT INTO `businessTypes` (`id`, `title`, `sortorder`) VALUES (11, 'Еда', 1);
INSERT INTO `businessTypes` (`id`, `title`, `sortorder`) VALUES (12, 'Одежда', 1);
INSERT INTO `businessTypes` (`id`, `title`, `sortorder`) VALUES (13, 'Здоровье', 1);
INSERT INTO `businessTypes` (`id`, `title`, `sortorder`) VALUES (14, 'Гостиницы', 1);
INSERT INTO `businessTypes` (`id`, `title`, `sortorder`) VALUES (15, 'Авто', 1);
INSERT INTO `businessTypes` (`id`, `title`, `sortorder`) VALUES (16, 'Бытовая техника', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `alias` varchar(50) NOT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `category`
--


-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `model` varchar(50) NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `url` varchar(150) DEFAULT NULL,
  `text` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `model` (`model`,`model_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `comment`
--


-- --------------------------------------------------------

--
-- Структура таблицы `content_block`
--

DROP TABLE IF EXISTS `content_block`;
CREATE TABLE IF NOT EXISTS `content_block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `content` text NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_unique` (`code`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `content_block`
--

INSERT INTO `content_block` (`id`, `name`, `code`, `type`, `content`, `description`) VALUES (1, 'block-two', 'block_two', 2, 'echo ''<h3>Нам доверяют</h3><div class="clearfix">\r\n<ul class="clearfix">\r\n    <li><a href="/portfolio/corp/6"><img src="/themes/nsystems/images/logo-1.jpg" width="126" height="83" alt=""></a></li>\r\n    <li><a href="/portfolio/card/25"><img src="/themes/nsystems/images/logo-2.jpg" width="126" height="83" alt=""></a></li>\r\n    <li><a href="/portfolio/card/26"><img src="/themes/nsystems/images/logo-3.jpg" width="126" height="83" alt=""></a></li>\r\n    <li><a href="/portfolio/ishop/27"><img src="/themes/nsystems/images/logo-4.jpg" width="126" height="83" alt=""></a></li>\r\n    <li><a href="#"><img src="/themes/nsystems/images/logo-5.jpg" width="126" height="83" alt=""></a></li>\r\n    <li><a href="/portfolio/special/8"><img src="/themes/nsystems/images/logo-6.jpg" width="126" height="83" alt=""></a></li>\r\n    <li><a href="#"><img src="/themes/nsystems/images/logo-7.jpg" width="126" height="83" alt=""></a></li>\r\n    <li><a href="#"><img src="/themes/nsystems/images/logo-8.jpg" width="126" height="83" alt=""></a></li></ul>\r\n        <a href="/portfolio" class="read-more">Показать всех</a> <span class="activities"><strong>Всего\r\n        <mark>'';\r\necho Yii::app()->db->createCommand("SELECT COUNT(id) FROM portfolio")->queryScalar();\r\n\r\necho "</mark>\r\n        компании</strong> —  присоединяйтесь, с нами хорошо!</span></div>";', '');
INSERT INTO `content_block` (`id`, `name`, `code`, `type`, `content`, `description`) VALUES (2, 'block-one', 'block_one', 3, '<h3>Почему мы?!</h3>\r\n<div class="clearfix">\r\n        <ul class="clearfix">\r\n          <li>Солидный опыт в 300 проектах</li>\r\n          <li>Лучшие специалисты</li>\r\n          <li>Ценим качество</li>\r\n          <li>Держим слово</li>\r\n          <li>Работаем прозрачно</li>\r\n        </ul>\r\n<a href="/benefits" class="read-more">Узнать больше</a> </div>', '');
INSERT INTO `content_block` (`id`, `name`, `code`, `type`, `content`, `description`) VALUES (3, 'benefits', 'benefits', 3, '<div class="blocks">\r\n    <section class="block-one">\r\n      <h3>Ориентация на результат<br>\r\n        <span>Создание сайтов решающих реальные задачи бизнеса. Умение понять требования и предложить оптимальные решения</span></h3>\r\n      <p><img src="/uploads/images/box.png"  alt=""></p>\r\n      <a href="#" class="more">Подробнее</a>\r\n    </section>\r\n    <section class="block-two">\r\n      <h3>Каждый клиент<br>\r\n        охвачен вниманием<span>и всегда в курсе происходящего, благодаря системе управления проектами</span></h3>\r\n      <p><a href="http://www.teamworkpm.net/refer/nsystems" target="_blank"><img src="http://wwwstatic3.myteamworkpm.net/contentfiles/images/pageIconsv2/scheduleMilestones.png"  alt="TeamworkPM" border="0"> <img src="http://wwwstatic3.myteamworkpm.net/contentfiles/images/pageIconsv2/messages.png"  alt="TeamworkPM" border="0"></a></p>\r\n      <a href="#" class="more">Подробнее</a>\r\n    </section>\r\n    <section class="block-three">\r\n      <h3>Делаем сложное - простым<br>\r\n         <span>Чтобы не париться, и тратить время только на нужное</span></h3>\r\n      <p><img src="/themes/nsystems/images/pic-3.png" width="102" height="101" alt=""></p>\r\n      <a href="#" class="more">Подробнее</a>\r\n    </section>\r\n    <a href="/benefits" class="read-more">Все приемущества</a>\r\n</div>', '');
INSERT INTO `content_block` (`id`, `name`, `code`, `type`, `content`, `description`) VALUES (4, 'Main slide 1', 'top_slider1', 3, 'Корпоративный сайт Корпоративный сайт Корпоративный сайт', 'Корпоративный сайт');
INSERT INTO `content_block` (`id`, `name`, `code`, `type`, `content`, `description`) VALUES (5, 'Корпоративный сайт', 'top_slider2', 3, 'Корпоративный сайт Корпоративный сайт Корпоративный сайт', '');

-- --------------------------------------------------------

--
-- Структура таблицы `contest`
--

DROP TABLE IF EXISTS `contest`;
CREATE TABLE IF NOT EXISTS `contest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `start_add_image` datetime NOT NULL,
  `stop_add_image` datetime NOT NULL,
  `start_vote` datetime NOT NULL,
  `stop_vote` datetime NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `contest`
--


-- --------------------------------------------------------

--
-- Структура таблицы `dictionary_data`
--

DROP TABLE IF EXISTS `dictionary_data`;
CREATE TABLE IF NOT EXISTS `dictionary_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `value` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL DEFAULT '',
  `creation_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_user_id` int(10) unsigned NOT NULL,
  `update_user_id` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `group_id` (`group_id`),
  KEY `create_user_id` (`create_user_id`),
  KEY `update_user_id` (`update_user_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `dictionary_data`
--


-- --------------------------------------------------------

--
-- Структура таблицы `dictionary_group`
--

DROP TABLE IF EXISTS `dictionary_group`;
CREATE TABLE IF NOT EXISTS `dictionary_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL DEFAULT '',
  `description` varchar(300) NOT NULL DEFAULT '',
  `creation_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_user_id` int(10) unsigned NOT NULL,
  `update_user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `create_user_id` (`create_user_id`),
  KEY `update_user_id` (`update_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `dictionary_group`
--


-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `answer_user` int(10) unsigned DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `change_date` datetime NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `theme` varchar(150) NOT NULL,
  `text` text NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `answer` text NOT NULL,
  `answer_date` datetime DEFAULT NULL,
  `is_faq` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `isFaq` (`is_faq`),
  KEY `fk_feedback_user` (`answer_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `feedback`
--


-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `description` text,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `description`, `status`) VALUES (1, '111111', '121212', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(300) NOT NULL,
  `description` text,
  `file` varchar(500) NOT NULL,
  `creation_date` datetime NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `alt` varchar(150) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `user_id` (`user_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8 AUTO_INCREMENT=166 ;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (7, NULL, '123123', '', '/uploads/images/2012/05/24/7.png', '2012-05-24 14:02:40', 83, '123123', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (8, NULL, 'Цветочный базар', '', '/uploads/images/2012/05/24/8.jpg', '2012-05-24 15:29:08', 83, 'cvet', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (9, NULL, 'Каталог гостиниц России - Служба гостиничного бронирования', '', '/uploads/images/2012/05/24/9.jpg', '2012-05-24 15:40:06', 83, 'Каталог гостиниц России', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (10, NULL, 'Радио Победа', '', '/uploads/images/2012/05/28/10.jpg', '2012-05-28 12:37:13', 83, 'Radio', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (11, NULL, 'Хорошее здоровье, интернет-магазин товаров для здоровь', '', '/uploads/images/2012/05/28/11.jpg', '2012-05-28 12:41:14', 83, 'zdorove', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (12, NULL, 'Портал Строй Информ', '', '/uploads/images/2012/05/28/12.jpg', '2012-05-28 12:45:17', 83, 'Портал Строй Информ', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (13, NULL, 'УКПТО ТюменьАвтоТран', '', '/uploads/images/2012/05/28/13.jpg', '2012-05-28 12:48:50', 83, 'УКПТО ТюменьАвтоТран', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (14, NULL, 'А-Мега', '', '/uploads/images/2012/05/29/14.jpg', '2012-05-29 10:06:55', 83, 'А-Мега', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (15, NULL, 'Жилфонд', '', '/uploads/images/2012/05/29/15.png', '2012-05-29 12:04:34', 83, 'Жилфонд', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (16, NULL, 'Жилфонд', '', '/uploads/images/2012/05/29/16.jpg', '2012-05-29 12:18:52', 83, 'Жилфонд', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (17, NULL, 'Парфюмерный магазин', '', '/uploads/images/2012/05/29/17.jpg', '2012-05-29 12:27:16', 83, 'Парфюмерный магазин', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (18, NULL, 'Парфюмерный магазин', '', '/uploads/images/2012/05/29/18.jpg', '2012-05-29 12:29:56', 83, 'Парфюмерный магазин', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (19, NULL, 'China Town', '', '/uploads/images/2012/05/29/19.jpg', '2012-05-29 12:37:57', 83, 'China Town', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (20, NULL, 'Попрыгайка', '', '/uploads/images/2012/05/29/20.jpg', '2012-05-29 12:47:13', 83, 'Попрыгайка', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (21, NULL, 'МедМаг', '', '/uploads/images/2012/05/29/21.jpg', '2012-05-29 12:54:28', 83, 'МедМаг', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (22, NULL, 'Эксперт-колес', '', '/uploads/images/2012/05/29/22.jpg', '2012-05-29 12:59:10', 83, 'Эксперт-колес', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (23, NULL, 'Соблазн', '', '/uploads/images/2012/05/29/23.jpg', '2012-05-29 13:11:11', 83, 'Соблазн', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (24, NULL, 'ТИБП', '', '/uploads/images/2012/05/29/24.jpg', '2012-05-29 13:21:40', 83, 'ТИБП', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (25, NULL, 'СтопПоиск', '', '/uploads/images/2012/05/29/25.jpg', '2012-05-29 13:27:31', 83, 'СтопПоиск', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (26, NULL, 'AST', '', '/uploads/images/2012/05/29/26.jpg', '2012-05-29 13:45:11', 83, 'AST', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (27, NULL, 'Муравейник', '', '/uploads/images/2012/05/29/27.jpg', '2012-05-29 13:49:35', 83, 'Муравейник', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (28, NULL, 'Пневмоцентр', '', '/uploads/images/2012/05/29/28.jpg', '2012-05-29 14:18:11', 83, 'Пневмоцентр', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (29, NULL, 'Радио Победа', '', '/uploads/images/2012/05/29/29.jpg', '2012-05-29 14:22:44', 83, 'Радио Победа', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (30, NULL, 'Ресторан Потаскуй', '', '/uploads/images/2012/05/29/30.jpg', '2012-05-29 14:51:44', 83, 'Ресторан Потаскуй', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (31, NULL, 'Запсибгазпром', '', '/uploads/images/2012/05/29/31.jpg', '2012-05-29 15:06:45', 83, 'Запсибгазпром', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (32, NULL, 'Максим', '', '/uploads/images/2012/05/29/32.jpg', '2012-05-29 15:13:22', 83, 'Максим', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (33, NULL, 'аст', '', '/uploads/images/2012/05/31/33.jpg', '2012-05-31 12:05:57', 83, 'аст', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (34, NULL, 'аст', '', '/uploads/images/2012/05/31/34.jpg', '2012-05-31 12:06:18', 83, 'аст', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (35, NULL, 'Русалочка', '', '/uploads/images/2012/06/13/35.jpg', '2012-06-13 10:09:05', 83, 'Русалочка', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (36, NULL, 'Свита', '', '/uploads/images/2012/06/14/36.jpg', '2012-06-14 14:03:04', 83, 'свита', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (37, NULL, 'Свита', '', '/uploads/images/2012/06/14/37.jpg', '2012-06-14 14:05:08', 83, 'Свита', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (38, NULL, 'Роддом №2', '', '/uploads/images/2012/06/14/38.jpg', '2012-06-14 14:10:32', 83, 'Роддом №2', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (39, NULL, 'Роддом №2', '', '/uploads/images/2012/06/14/39.jpg', '2012-06-14 14:12:54', 83, 'Роддом №2', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (40, NULL, 'ТюменьПожСервис', '', '/uploads/images/2012/06/14/40.jpg', '2012-06-14 14:25:51', 83, 'ТюменьПожСервис', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (41, NULL, 'ТюменьПожСервис', '', '/uploads/images/2012/06/14/41.jpg', '2012-06-14 14:29:42', 83, 'ТюменьПожСервис', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (42, NULL, 'Западно-Сибирский Центр Безопасности', '', '/uploads/images/2012/06/14/42.jpg', '2012-06-14 14:40:43', 83, 'Западно-Сибирский Центр Безопасности', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (43, NULL, 'ООО Завод металлоизделий', '', '/uploads/images/2012/06/14/43.jpg', '2012-06-14 15:05:56', 83, 'ООО Завод металлоизделий', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (44, NULL, 'ООО Управляющая компания «Запсибгазпром»', '', '/uploads/images/2012/06/14/44.jpg', '2012-06-14 15:19:28', 83, 'ООО Управляющая компания «Запсибгазпром»', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (45, NULL, 'Магазин Pinocchio', '', '/uploads/images/2012/06/20/45.jpg', '2012-06-20 08:46:19', 83, 'Магазин Pinocchio', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (46, NULL, 'Центр систем безопасност', '', '/uploads/images/2012/06/20/46.jpg', '2012-06-20 09:59:38', 83, 'Центр систем безопасност', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (47, NULL, 'Серый кардинал', '', '/uploads/images/2012/06/20/47.jpg', '2012-06-20 10:07:30', 83, 'Серый кардинал', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (48, NULL, 'Престиж авто', '', '/uploads/images/2012/06/20/48.jpg', '2012-06-20 10:29:23', 83, 'Престиж авто', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (49, NULL, 'Вся недвижимость в Тюмени', '', '/uploads/images/2012/06/20/49.jpg', '2012-06-20 10:49:34', 83, 'Вся недвижимость в Тюмени', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (50, NULL, 'Ferranordic Machines', '', '/uploads/images/2012/06/20/50.jpg', '2012-06-20 11:23:32', 83, 'Ferranordic Machines', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (51, NULL, 'Events72', '', '/uploads/images/2012/06/20/51.jpg', '2012-06-20 11:36:27', 83, 'Events72', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (52, NULL, 'Тюмень АвтоДеталь', '', '/uploads/images/2012/06/20/52.jpg', '2012-06-20 11:41:48', 83, 'Тюмень АвтоДеталь', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (53, NULL, 'Сытый папа', '', '/uploads/images/2012/06/20/53.jpg', '2012-06-20 11:46:41', 83, 'Сытый папа', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (54, NULL, 'Сытый папа', '', '/uploads/images/2012/06/20/54.jpg', '2012-06-20 11:47:31', 83, 'Сытый папа', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (55, NULL, 'Эй-Джи-Эй Сургут', '', '/uploads/images/2012/06/20/55.jpg', '2012-06-20 12:17:46', 83, 'Эй-Джи-Эй Сургут', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (56, NULL, 'Многофункциональный комплекс Калинк', '', '/uploads/images/2012/06/20/56.jpg', '2012-06-20 12:25:15', 83, 'Многофункциональный комплекс Калинк', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (57, NULL, 'Кофейня МаксиМ', '', '/uploads/images/2012/06/20/57.jpg', '2012-06-20 12:29:54', 83, 'Кофейня МаксиМ', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (58, NULL, 'Коллегия адвокатов Евгения Хабнера', '', '/uploads/images/2012/06/20/58.jpg', '2012-06-20 12:34:36', 83, 'Коллегия адвокатов Евгения Хабнера', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (59, NULL, 'Пейнтбольный клуб ШТУРМ v.2.0', '', '/uploads/images/2012/06/20/59.jpg', '2012-06-20 12:39:30', 83, 'Пейнтбольный клуб ШТУРМ v.2.0', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (60, NULL, 'Комитт v.2.0', '', '/uploads/images/2012/06/20/60.jpg', '2012-06-20 12:46:10', 83, 'Комитт v.2.0', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (61, NULL, 'Тюмень-Маркет v.2.0', '', '/uploads/images/2012/06/20/61.jpg', '2012-06-20 13:19:25', 83, 'Тюмень-Маркет v.2.0', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (62, NULL, 'Корзина72', '', '/uploads/images/2012/06/20/62.jpg', '2012-06-20 14:29:19', 83, 'Корзина72', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (63, NULL, 'Тюмень Крио Банк', '', '/uploads/images/2012/06/20/63.jpg', '2012-06-20 14:33:47', 83, 'Тюмень Крио Банк', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (64, NULL, 'Всероссийское общество автомобилистов', '', '/uploads/images/2012/07/30/64.jpg', '2012-07-30 09:15:11', 83, 'Всероссийское общество автомобилистов', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (65, NULL, 'Город', '', '/uploads/images/2012/07/30/65.jpg', '2012-07-30 12:12:01', 83, 'Город', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (66, NULL, 'Союз-Инвест', '', '/uploads/images/2012/07/30/66.jpg', '2012-07-30 12:17:54', 83, 'Союз-Инвест', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (67, NULL, 'Сибирский рубщик', '', '/uploads/images/2012/07/30/67.jpg', '2012-07-30 12:24:15', 83, 'Сибирский рубщик', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (68, NULL, 'АлисА', '', '/uploads/images/2012/07/30/68.jpg', '2012-07-30 12:31:48', 83, 'АлисА', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (69, NULL, 'Многопрофильный медицинский центр Avicenna', '', '/uploads/images/2012/07/30/69.jpg', '2012-07-30 12:48:58', 83, 'Многопрофильный медицинский центр Avicenna', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (70, NULL, 'Полиграф Интер', '', '/uploads/images/2012/07/30/70.jpg', '2012-07-30 12:54:01', 83, 'Полиграф Интер', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (71, NULL, 'Непоседа', '', '/uploads/images/2012/07/30/71.jpg', '2012-07-30 13:01:57', 83, 'Непоседа', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (72, NULL, 'Пятница', '', '/uploads/images/2012/07/30/72.jpg', '2012-07-30 13:05:13', 83, 'Пятница', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (73, NULL, 'Центр по профилактике и борьбе со СПИД', '', '/uploads/images/2012/07/30/73.jpg', '2012-07-30 13:15:16', 83, 'Центр по профилактике и борьбе со СПИД', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (74, NULL, 'Электра-M, продажа электроустановочных изделий', '', '/uploads/images/2012/07/30/74.jpg', '2012-07-30 13:27:36', 83, 'Электра-M, продажа электроустановочных изделий', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (75, NULL, 'СК Потенциал', '', '/uploads/images/2012/07/30/75.jpg', '2012-07-30 13:38:55', 83, 'СК Потенциал', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (76, NULL, 'Хорошее здоровье, интернет-магазин товаров для здоровья', '', '/uploads/images/2012/07/30/76.jpg', '2012-07-30 13:50:23', 83, 'Хорошее здоровье, интернет-магазин товаров для здоровья', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (77, NULL, 'Avanti pizza', '', '/uploads/images/2012/08/02/77.jpg', '2012-08-02 09:21:09', 83, 'Avanti pizza', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (78, NULL, 'Инжиниринговая компания БИК (v.2.0)', '', '/uploads/images/2012/08/02/78.jpg', '2012-08-02 09:25:26', 83, 'Инжиниринговая компания БИК (v.2.0)', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (79, NULL, 'Тюмень Крио Банк', '', '/uploads/images/2012/08/03/79.jpg', '2012-08-03 08:29:18', 83, 'Тюмень Крио Банк', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (80, NULL, 'БИК', '', '/uploads/images/2012/08/03/80.jpg', '2012-08-03 08:42:47', 83, 'БИК', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (81, NULL, 'Утяшевоагропромснаб', '', '/uploads/images/2012/08/03/81.jpg', '2012-08-03 08:47:33', 83, 'Утяшевоагропромснаб', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (82, NULL, 'ЗАО Племзавод-Юбилейный', '', '/uploads/images/2012/08/03/82.jpg', '2012-08-03 09:12:07', 83, 'ЗАО Племзавод-Юбилейный', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (83, NULL, 'Дизайн Клуб Центр', '', '/uploads/images/2012/08/03/83.jpg', '2012-08-03 09:15:26', 83, 'Дизайн Клуб Центр', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (84, NULL, 'ИНЕС - Институт экономических стратегий', '', '/uploads/images/2012/08/03/84.jpg', '2012-08-03 09:20:34', 83, 'ИНЕС - Институт экономических стратегий', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (85, NULL, 'Эверест', '', '/uploads/images/2012/08/03/85.jpg', '2012-08-03 09:24:59', 83, 'Эверест', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (86, NULL, 'АвтоТрейд-Тюмень', '', '/uploads/images/2012/08/03/86.jpg', '2012-08-03 11:27:50', 83, 'АвтоТрейд-Тюмень', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (87, NULL, 'Сеть ресторанов Кои-Сан', '', '/uploads/images/2012/08/03/87.jpg', '2012-08-03 12:47:32', 83, 'Сеть ресторанов Кои-Сан', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (88, NULL, 'Реклама в лифтах', '', '/uploads/images/2012/08/03/88.jpg', '2012-08-03 12:52:07', 83, 'Реклама в лифтах', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (89, NULL, 'Dynamic Future', '', '/uploads/images/2012/08/03/89.jpg', '2012-08-03 15:02:16', 83, 'Dynamic Future', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (90, NULL, 'Neo-Clinic v.4.0', '', '/uploads/images/2012/08/03/90.jpg', '2012-08-03 15:05:38', 83, 'Neo-Clinic v.4.0', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (91, NULL, 'Ресторан Чарка', '', '/uploads/images/2012/08/03/91.jpg', '2012-08-03 15:08:00', 83, 'Ресторан Чарка', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (92, NULL, 'Евролюкс', '', '/uploads/images/2012/08/03/92.jpg', '2012-08-03 15:11:00', 83, 'Евролюкс', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (93, NULL, 'Недвижимость и строительство', '', '/uploads/images/2012/08/03/93.jpg', '2012-08-03 15:12:59', 83, 'Недвижимость и строительство', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (94, NULL, 'ЗАО Бизнес-Перспектива, ГК ТюмБит', '', '/uploads/images/2012/08/03/94.jpg', '2012-08-03 15:18:36', 83, 'ЗАО Бизнес-Перспектива, ГК ТюмБит', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (95, NULL, 'Портал Строй Информ', '', '/uploads/images/2012/08/07/95.jpg', '2012-08-07 09:28:43', 83, 'Портал Строй Информ', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (96, NULL, 'Боливар', '', '/uploads/images/2012/08/07/96.jpg', '2012-08-07 09:30:48', 83, 'Боливар', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (97, NULL, 'ШИНДАН', '', '/uploads/images/2012/08/07/97.jpg', '2012-08-07 09:32:32', 83, 'ШИНДАН', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (98, NULL, 'Бартерная сеть Уральского Федерального Округа', '', '/uploads/images/2012/08/07/98.jpg', '2012-08-07 09:34:49', 83, 'Бартерная сеть Уральского Федерального Округа', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (99, NULL, 'Форум молодёжи 2009', '', '/uploads/images/2012/08/07/99.jpg', '2012-08-07 09:36:54', 83, 'Форум молодёжи 2009', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (100, NULL, 'Мой Песик', '', '/uploads/images/2012/08/07/100.jpg', '2012-08-07 09:38:33', 83, 'Мой Песик', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (101, NULL, 'УКПТО ТюменьАвтоТранс', '', '/uploads/images/2012/08/07/101.jpg', '2012-08-07 09:40:18', 83, 'УКПТО ТюменьАвтоТранс', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (102, NULL, 'Яхт-Клуб Рубин', '', '/uploads/images/2012/08/07/102.jpg', '2012-08-07 09:42:58', 83, 'Яхт-Клуб Рубин', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (103, NULL, 'Пеликан-Тюмень', '', '/uploads/images/2012/08/07/103.jpg', '2012-08-07 09:45:14', 83, 'Пеликан-Тюмень', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (104, NULL, 'Торговый дом СанТехКомплект', '', '/uploads/images/2012/08/07/104.jpg', '2012-08-07 09:47:34', 83, 'Торговый дом СанТехКомплект', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (105, NULL, 'Интернет магазин СПТ-Тюмень', '', '/uploads/images/2012/08/07/105.jpg', '2012-08-07 09:50:10', 83, 'Интернет магазин СПТ-Тюмень', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (106, NULL, 'Детективное агентство BIT', '', '/uploads/images/2012/08/07/106.jpg', '2012-08-07 12:30:09', 83, 'Детективное агентство BIT', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (107, NULL, 'Кофейня и караоке-клуб AVENЮ', '', '/uploads/images/2012/08/07/107.jpg', '2012-08-07 12:39:47', 83, 'Кофейня и караоке-клуб AVENЮ', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (108, NULL, 'Интернет магазин Цветкоff', '', '/uploads/images/2012/08/07/108.jpg', '2012-08-07 12:41:34', 83, 'Интернет магазин Цветкоff', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (109, NULL, 'Ресторан Винтаж', '', '/uploads/images/2012/08/07/109.jpg', '2012-08-07 12:43:11', 83, 'Ресторан Винтаж', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (110, NULL, 'Сеть ресторанов Максим', '', '/uploads/images/2012/08/07/110.jpg', '2012-08-07 12:45:21', 83, 'Сеть ресторанов Максим', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (111, NULL, 'Дизайн студия URAN 238', '', '/uploads/images/2012/08/07/111.jpg', '2012-08-07 12:47:14', 83, 'Дизайн студия URAN 238', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (112, NULL, 'Птицефабрика Пышминская', '', '/uploads/images/2012/08/07/112.jpg', '2012-08-07 12:49:31', 83, 'Птицефабрика Пышминская', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (113, NULL, 'Каталог товаров - Северный сосед', '', '/uploads/images/2012/08/07/113.jpg', '2012-08-07 12:50:57', 83, 'Каталог товаров - Северный сосед', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (114, NULL, 'Ресторан Потаскуй', '', '/uploads/images/2012/08/07/114.jpg', '2012-08-07 12:53:54', 83, 'Ресторан Потаскуй', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (115, NULL, 'Бизнес портал Компас+', '', '/uploads/images/2012/08/07/115.jpg', '2012-08-07 13:10:16', 83, 'Бизнес портал Компас+', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (116, NULL, 'Интернет магазин канцелярии Золотая Нить', '', '/uploads/images/2012/08/07/116.jpg', '2012-08-07 13:12:18', 83, 'Интернет магазин канцелярии Золотая Нить', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (117, NULL, 'Интернет магазин канцелярии Золотая Нить', '', '/uploads/images/2012/08/07/117.jpg', '2012-08-07 13:12:35', 83, 'Интернет магазин канцелярии Золотая Нить', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (118, NULL, 'Sport Мода - сеть магазинов спортивных товаров и одежды', '', '/uploads/images/2012/08/07/118.jpg', '2012-08-07 13:14:03', 83, 'Sport Мода - сеть магазинов спортивных товаров и одежды', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (119, NULL, 'ТюмТИПБ - институт повышения квалификации бухгалтеров', '', '/uploads/images/2012/08/07/119.jpg', '2012-08-07 13:15:32', 83, 'ТюмТИПБ - институт повышения квалификации бухгалтеров', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (120, NULL, 'Детский сайт ГИБДД', '', '/uploads/images/2012/08/07/120.jpg', '2012-08-07 13:29:34', 83, 'Детский сайт ГИБДД', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (121, NULL, 'Центр систем безопасности', '', '/uploads/images/2012/08/07/121.jpg', '2012-08-07 13:31:25', 83, 'Центр систем безопасности', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (122, NULL, 'Лифт-Паркинг', '', '/uploads/images/2012/08/07/122.jpg', '2012-08-07 13:33:46', 83, 'Лифт-Паркинг', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (123, NULL, 'Клиника мужского здоровья Neo-Andros', '', '/uploads/images/2012/08/07/123.jpg', '2012-08-07 14:05:48', 83, 'Клиника мужского здоровья Neo-Andros', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (124, NULL, 'Издательский дом Тая-АгроМедиа', '', '/uploads/images/2012/08/07/124.jpg', '2012-08-07 14:23:40', 83, 'Издательский дом Тая-АгроМедиа', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (125, NULL, 'NEO-Clinic. Клиника эстетической и лазерной медицины', '', '/uploads/images/2012/08/07/125.jpg', '2012-08-07 14:25:34', 83, 'NEO-Clinic. Клиника эстетической и лазерной медицины', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (126, NULL, 'Департамент занятости населения Ямало-Ненецкого автономного округа', '', '/uploads/images/2012/08/07/126.jpg', '2012-08-07 14:27:36', 83, 'Департамент занятости населения Ямало-Ненецкого автономного округа', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (127, NULL, 'Портал Info City', '', '/uploads/images/2012/08/08/127.jpg', '2012-08-08 11:21:05', 83, 'Портал Info City', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (128, NULL, 'Тепло-Сервис', '', '/uploads/images/2012/08/08/128.jpg', '2012-08-08 11:22:28', 83, 'Тепло-Сервис', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (129, NULL, 'СтройСити', '', '/uploads/images/2012/08/08/129.jpg', '2012-08-08 11:24:25', 83, 'СтройСити', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (130, NULL, 'ЕвроТехСервис', '', '/uploads/images/2012/08/08/130.jpg', '2012-08-08 11:26:25', 83, 'ЕвроТехСервис', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (131, NULL, 'Аккумуляторный завод "Алькор"', '', '/uploads/images/2012/08/08/131.jpg', '2012-08-08 11:30:20', 83, 'Аккумуляторный завод "Алькор"', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (132, NULL, 'Ваш налоговый консультант', '', '/uploads/images/2012/08/08/132.jpg', '2012-08-08 11:45:10', 83, 'Ваш налоговый консультант', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (133, NULL, 'Департамент Здравоохранения Тюменской области', '', '/uploads/images/2012/08/08/133.jpg', '2012-08-08 11:47:06', 83, 'Департамент Здравоохранения Тюменской области', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (134, NULL, 'Ритейл Технолоджис', '', '/uploads/images/2012/08/08/134.jpg', '2012-08-08 11:50:47', 83, 'Ритейл Технолоджис', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (135, NULL, 'Доставка DVD дисков', '', '/uploads/images/2012/08/08/135.jpg', '2012-08-08 11:52:17', 83, 'Доставка DVD дисков', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (136, NULL, 'МПК Атлант', '', '/uploads/images/2012/08/08/136.jpg', '2012-08-08 11:55:03', 83, 'МПК Атлант', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (137, NULL, 'Салон красоты Рандеву', '', '/uploads/images/2012/08/08/137.jpg', '2012-08-08 11:56:33', 83, 'Салон красоты Рандеву', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (138, NULL, 'NEO-Travel Каталог клиник со всего мира', '', '/uploads/images/2012/08/08/138.jpg', '2012-08-08 11:58:11', 83, 'NEO-Travel Каталог клиник со всего мира', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (139, NULL, 'Отель Савалан', '', '/uploads/images/2012/08/08/139.jpg', '2012-08-08 12:40:57', 83, 'Отель Савалан', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (140, NULL, 'Пейнтбольно-страйкбольный клуб Штурм', '', '/uploads/images/2012/08/08/140.jpg', '2012-08-08 12:42:42', 83, 'Пейнтбольно-страйкбольный клуб Штурм', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (141, NULL, 'Портал недвижимости (Недвижимость и Строительство)', '', '/uploads/images/2012/08/08/141.jpg', '2012-08-08 12:51:23', 83, 'Портал недвижимости (Недвижимость и Строительство)', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (142, NULL, 'Аккумуляторный дом', '', '/uploads/images/2012/08/08/142.jpg', '2012-08-08 12:53:35', 83, 'Аккумуляторный дом', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (143, NULL, 'Каталог одежды для беременных Леди и Беби', '', '/uploads/images/2012/08/08/143.jpg', '2012-08-08 12:56:44', 83, 'Каталог одежды для беременных Леди и Беби', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (144, NULL, 'Федерация Футбола Тюменской области', '', '/uploads/images/2012/08/08/144.jpg', '2012-08-08 13:06:27', 83, 'Федерация Футбола Тюменской области', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (145, NULL, 'УК Тюменские Моторостроители', '', '/uploads/images/2012/08/08/145.jpg', '2012-08-08 13:09:10', 83, 'УК Тюменские Моторостроители', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (146, NULL, 'Фотостудия Чижовой Надежды', '', '/uploads/images/2012/08/08/146.jpg', '2012-08-08 13:11:12', 83, 'Фотостудия Чижовой Надежды', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (147, NULL, 'ГЛПУ ТО Областной офтальмологический диспансер', '', '/uploads/images/2012/08/08/147.jpg', '2012-08-08 13:13:09', 83, 'ГЛПУ ТО Областной офтальмологический диспансер', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (148, NULL, 'Автозапчасти для иномарок Ириал-Авт', '', '/uploads/images/2012/08/08/148.jpg', '2012-08-08 13:15:14', 83, 'Автозапчасти для иномарок Ириал-Авт', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (149, NULL, 'Финансовая компания Finance Capital Group', '', '/uploads/images/2012/08/08/149.jpg', '2012-08-08 13:17:19', 83, 'Финансовая компания Finance Capital Group', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (150, NULL, 'Каталог нефтегазопромыслового оборудование Комитт', '', '/uploads/images/2012/08/08/150.jpg', '2012-08-08 13:19:03', 83, 'Каталог нефтегазопромыслового оборудование Комитт', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (151, NULL, 'Каталог гостиниц России - Служба гостиничного бронирования', '', '/uploads/images/2012/08/08/151.jpg', '2012-08-08 13:49:14', 83, 'Каталог гостиниц России - Служба гостиничного бронирования', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (152, NULL, 'Сайт средней школы №69 г. Тюмени', '', '/uploads/images/2012/08/08/152.jpg', '2012-08-08 13:51:30', 83, 'Сайт средней школы №69 г. Тюмени', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (153, NULL, 'ОАО Тюменский Рыбокомбинат', '', '/uploads/images/2012/08/08/153.jpg', '2012-08-08 13:53:06', 83, 'ОАО Тюменский Рыбокомбинат', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (154, NULL, 'Элемент-Сервис', '', '/uploads/images/2012/08/08/154.jpg', '2012-08-08 13:55:01', 83, 'Элемент-Сервис', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (155, NULL, 'Тюменская Государственная Сельскохозяйственная Академия', '', '/uploads/images/2012/08/08/155.jpg', '2012-08-08 13:58:05', 83, 'Тюменская Государственная Сельскохозяйственная Академия', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (156, NULL, 'Сибирь-Оптика', '', '/uploads/images/2012/08/08/156.jpg', '2012-08-08 14:08:29', 83, 'Сибирь-Оптика', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (157, NULL, 'Официальный сайт департамента информатизации и общественных связей ЯНАО', '', '/uploads/images/2012/08/08/157.jpg', '2012-08-08 14:10:35', 83, 'Официальный сайт департамента информатизации и общественных связей ЯНАО', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (158, NULL, 'Обучение вождению УПК Автомобилист', '', '/uploads/images/2012/08/08/158.jpg', '2012-08-08 14:12:21', 83, 'Обучение вождению УПК Автомобилист', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (159, NULL, 'ОАО Тюменский Аккуммуляторный завод', '', '/uploads/images/2012/08/08/159.jpg', '2012-08-08 14:13:38', 83, 'ОАО Тюменский Аккуммуляторный завод', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (160, NULL, 'ЭкоПраво', '', '/uploads/images/2012/08/08/160.jpg', '2012-08-08 14:14:56', 83, 'ЭкоПраво', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (161, NULL, 'Нефтяная компания Бурнефтегаз', '', '/uploads/images/2012/08/08/161.jpg', '2012-08-08 14:16:20', 83, 'Нефтяная компания Бурнефтегаз', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (162, NULL, 'Интернет-магазин EIT-Company', '', '/uploads/images/2012/08/08/162.jpg', '2012-08-08 14:18:56', 83, 'Интернет-магазин EIT-Company', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (163, NULL, 'НЕО Холдинг', '', '/uploads/images/2012/08/08/163.jpg', '2012-08-08 14:20:02', 83, 'НЕО Холдинг', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (164, NULL, 'Мебельная компания КупеПлюс', '', '/uploads/images/2012/08/08/164.jpg', '2012-08-08 14:22:01', 83, 'Мебельная компания КупеПлюс', 3, 1);
INSERT INTO `image` (`id`, `parent_id`, `name`, `description`, `file`, `creation_date`, `user_id`, `alt`, `type`, `status`) VALUES (165, NULL, 'NEO-Clinic. Клиника эстетической и лазерной медицины v 1.0', '', '/uploads/images/2012/08/08/165.jpg', '2012-08-08 14:23:10', 83, 'NEO-Clinic. Клиника эстетической и лазерной медицины v 1.0', 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `image_to_contest`
--

DROP TABLE IF EXISTS `image_to_contest`;
CREATE TABLE IF NOT EXISTS `image_to_contest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image_id` int(10) unsigned NOT NULL,
  `contest_id` int(10) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `image_contest_unique` (`image_id`,`contest_id`),
  KEY `image_id` (`image_id`),
  KEY `contestId` (`contest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `image_to_contest`
--


-- --------------------------------------------------------

--
-- Структура таблицы `image_to_gallery`
--

DROP TABLE IF EXISTS `image_to_gallery`;
CREATE TABLE IF NOT EXISTS `image_to_gallery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image_id` int(10) unsigned NOT NULL,
  `galleryId` int(10) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `image_gallery_unique` (`image_id`,`galleryId`),
  KEY `image_id` (`image_id`),
  KEY `galleryId` (`galleryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `image_to_gallery`
--


-- --------------------------------------------------------

--
-- Структура таблицы `image_to_portfolio`
--

DROP TABLE IF EXISTS `image_to_portfolio`;
CREATE TABLE IF NOT EXISTS `image_to_portfolio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image_id` int(10) unsigned NOT NULL,
  `portfolioId` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `image_portfolio_unique` (`image_id`,`portfolioId`),
  KEY `image_id` (`image_id`),
  KEY `portfolioId` (`portfolioId`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 AUTO_INCREMENT=162 ;

--
-- Дамп данных таблицы `image_to_portfolio`
--

INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (4, 8, 4, '2012-05-24 15:29:08');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (5, 9, 5, '2012-05-24 15:40:06');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (7, 11, 7, '2012-05-28 12:41:14');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (8, 12, 8, '2012-05-28 12:45:17');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (9, 13, 9, '2012-05-28 12:48:50');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (10, 14, 10, '2012-05-29 10:06:55');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (11, 15, 11, '2012-05-29 12:04:34');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (12, 16, 12, '2012-05-29 12:18:52');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (13, 17, 13, '2012-05-29 12:27:16');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (14, 18, 13, '2012-05-29 12:29:56');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (15, 19, 14, '2012-05-29 12:37:57');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (16, 20, 15, '2012-05-29 12:47:13');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (17, 21, 16, '2012-05-29 12:54:28');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (18, 22, 17, '2012-05-29 12:59:10');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (19, 23, 18, '2012-05-29 13:11:11');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (20, 24, 19, '2012-05-29 13:21:41');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (21, 25, 20, '2012-05-29 13:27:31');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (22, 26, 21, '2012-05-29 13:45:11');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (23, 27, 22, '2012-05-29 13:49:35');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (24, 28, 23, '2012-05-29 14:18:11');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (25, 29, 6, '2012-05-29 14:22:44');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (26, 30, 25, '2012-05-29 14:51:45');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (27, 31, 26, '2012-05-29 15:06:45');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (28, 32, 27, '2012-05-29 15:13:22');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (29, 33, 21, '2012-05-31 12:05:57');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (30, 34, 21, '2012-05-31 12:06:18');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (31, 35, 28, '2012-06-13 10:09:05');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (32, 36, 29, '2012-06-14 14:03:04');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (33, 37, 29, '2012-06-14 14:05:08');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (34, 38, 30, '2012-06-14 14:10:32');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (35, 39, 30, '2012-06-14 14:12:54');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (36, 40, 31, '2012-06-14 14:25:51');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (37, 41, 31, '2012-06-14 14:29:42');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (38, 42, 32, '2012-06-14 14:40:43');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (39, 43, 33, '2012-06-14 15:05:56');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (40, 44, 34, '2012-06-14 15:19:28');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (41, 45, 36, '2012-06-20 08:46:19');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (42, 46, 37, '2012-06-20 09:59:38');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (43, 47, 38, '2012-06-20 10:07:30');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (44, 48, 39, '2012-06-20 10:29:23');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (45, 49, 40, '2012-06-20 10:49:34');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (46, 50, 41, '2012-06-20 11:23:32');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (47, 51, 42, '2012-06-20 11:36:27');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (48, 52, 43, '2012-06-20 11:41:48');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (49, 53, 44, '2012-06-20 11:46:41');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (50, 54, 44, '2012-06-20 11:47:31');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (51, 55, 45, '2012-06-20 12:17:46');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (52, 56, 46, '2012-06-20 12:25:15');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (53, 57, 47, '2012-06-20 12:29:54');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (54, 58, 48, '2012-06-20 12:34:36');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (55, 59, 49, '2012-06-20 12:39:30');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (56, 60, 50, '2012-06-20 12:46:10');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (57, 61, 51, '2012-06-20 13:19:25');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (58, 62, 52, '2012-06-20 14:29:19');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (59, 63, 53, '2012-06-20 14:33:47');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (60, 64, 54, '2012-07-30 09:15:11');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (61, 65, 55, '2012-07-30 12:12:01');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (62, 66, 56, '2012-07-30 12:17:54');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (63, 67, 57, '2012-07-30 12:24:15');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (64, 68, 58, '2012-07-30 12:31:48');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (65, 69, 59, '2012-07-30 12:48:58');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (66, 70, 60, '2012-07-30 12:54:01');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (67, 71, 61, '2012-07-30 13:01:57');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (68, 72, 62, '2012-07-30 13:05:13');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (69, 73, 63, '2012-07-30 13:15:16');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (70, 74, 64, '2012-07-30 13:27:36');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (71, 75, 65, '2012-07-30 13:38:55');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (72, 76, 66, '2012-07-30 13:50:23');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (73, 77, 68, '2012-08-02 09:21:09');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (74, 78, 69, '2012-08-02 09:25:26');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (75, 79, 70, '2012-08-03 08:29:18');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (76, 80, 71, '2012-08-03 08:42:47');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (77, 81, 72, '2012-08-03 08:47:33');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (78, 82, 73, '2012-08-03 09:12:07');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (79, 83, 74, '2012-08-03 09:15:26');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (80, 84, 75, '2012-08-03 09:20:34');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (81, 85, 77, '2012-08-03 09:24:59');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (82, 86, 78, '2012-08-03 11:27:50');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (83, 87, 79, '2012-08-03 12:47:32');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (84, 88, 80, '2012-08-03 12:52:07');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (85, 89, 81, '2012-08-03 15:02:16');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (86, 90, 82, '2012-08-03 15:05:38');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (87, 91, 83, '2012-08-03 15:08:00');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (88, 92, 84, '2012-08-03 15:11:00');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (89, 93, 85, '2012-08-03 15:12:59');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (90, 94, 86, '2012-08-03 15:18:36');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (91, 95, 87, '2012-08-07 09:28:43');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (92, 96, 88, '2012-08-07 09:30:49');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (93, 97, 89, '2012-08-07 09:32:32');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (94, 98, 90, '2012-08-07 09:34:49');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (95, 99, 91, '2012-08-07 09:36:54');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (96, 100, 92, '2012-08-07 09:38:33');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (97, 101, 93, '2012-08-07 09:40:18');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (98, 102, 94, '2012-08-07 09:42:58');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (99, 103, 95, '2012-08-07 09:45:14');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (100, 104, 96, '2012-08-07 09:47:34');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (101, 105, 97, '2012-08-07 09:50:10');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (102, 106, 98, '2012-08-07 12:30:09');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (103, 107, 99, '2012-08-07 12:39:47');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (104, 108, 100, '2012-08-07 12:41:34');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (105, 109, 101, '2012-08-07 12:43:11');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (106, 110, 102, '2012-08-07 12:45:21');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (107, 111, 103, '2012-08-07 12:47:14');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (108, 112, 104, '2012-08-07 12:49:31');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (109, 113, 105, '2012-08-07 12:50:57');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (110, 114, 106, '2012-08-07 12:53:55');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (111, 115, 107, '2012-08-07 13:10:16');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (112, 116, 108, '2012-08-07 13:12:18');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (113, 117, 108, '2012-08-07 13:12:35');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (114, 118, 109, '2012-08-07 13:14:03');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (115, 119, 110, '2012-08-07 13:15:32');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (116, 120, 111, '2012-08-07 13:29:34');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (117, 121, 112, '2012-08-07 13:31:25');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (118, 122, 113, '2012-08-07 13:33:46');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (119, 123, 114, '2012-08-07 14:05:48');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (120, 124, 115, '2012-08-07 14:23:40');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (121, 125, 116, '2012-08-07 14:25:34');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (122, 126, 117, '2012-08-07 14:27:36');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (123, 127, 118, '2012-08-08 11:21:05');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (124, 128, 119, '2012-08-08 11:22:28');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (125, 129, 120, '2012-08-08 11:24:25');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (126, 130, 121, '2012-08-08 11:26:25');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (127, 131, 122, '2012-08-08 11:30:20');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (128, 132, 123, '2012-08-08 11:45:10');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (129, 133, 124, '2012-08-08 11:47:06');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (130, 134, 125, '2012-08-08 11:50:47');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (131, 135, 126, '2012-08-08 11:52:17');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (132, 136, 127, '2012-08-08 11:55:03');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (133, 137, 128, '2012-08-08 11:56:33');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (134, 138, 129, '2012-08-08 11:58:11');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (135, 139, 130, '2012-08-08 12:40:57');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (136, 140, 131, '2012-08-08 12:42:42');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (137, 141, 132, '2012-08-08 12:51:23');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (138, 142, 133, '2012-08-08 12:53:35');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (139, 143, 134, '2012-08-08 12:56:44');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (140, 144, 135, '2012-08-08 13:06:27');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (141, 145, 136, '2012-08-08 13:09:10');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (142, 146, 137, '2012-08-08 13:11:12');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (143, 147, 138, '2012-08-08 13:13:09');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (144, 148, 139, '2012-08-08 13:15:14');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (145, 149, 140, '2012-08-08 13:17:19');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (146, 150, 141, '2012-08-08 13:19:03');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (147, 151, 142, '2012-08-08 13:49:14');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (148, 152, 143, '2012-08-08 13:51:30');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (149, 153, 144, '2012-08-08 13:53:06');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (150, 154, 145, '2012-08-08 13:55:01');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (151, 155, 146, '2012-08-08 13:58:05');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (152, 156, 147, '2012-08-08 14:08:29');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (153, 157, 148, '2012-08-08 14:10:35');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (154, 158, 149, '2012-08-08 14:12:21');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (155, 159, 150, '2012-08-08 14:13:38');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (156, 160, 151, '2012-08-08 14:14:56');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (157, 161, 152, '2012-08-08 14:16:20');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (158, 162, 153, '2012-08-08 14:18:56');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (159, 163, 154, '2012-08-08 14:20:02');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (160, 164, 155, '2012-08-08 14:22:01');
INSERT INTO `image_to_portfolio` (`id`, `image_id`, `portfolioId`, `creation_date`) VALUES (161, 165, 156, '2012-08-08 14:23:10');

-- --------------------------------------------------------

--
-- Структура таблицы `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `identity_id` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `identityId` (`identity_id`,`type`),
  KEY `user_id` (`user_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `login`
--


-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `code` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `name`, `code`, `description`, `status`) VALUES (3, 'Верхнее меню', 'topmenu', 'Верхнее меню', 1);
INSERT INTO `menu` (`id`, `name`, `code`, `description`, `status`) VALUES (4, 'Нижнее меню', 'bottommenu', ' Нижнее меню', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `menu_item`
--

DROP TABLE IF EXISTS `menu_item`;
CREATE TABLE IF NOT EXISTS `menu_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `menu_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `href` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_id` (`menu_id`),
  KEY `sort` (`sort`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Дамп данных таблицы `menu_item`
--

INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (1, 0, 3, 'Главная', '/', 1, 1, 1, 'Главная страница сайта');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (2, 0, 3, 'Портфолио', '/portfolio', 1, 1, 1, 'Наши работы');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (3, 0, 3, 'Стоимость сайта', '/cost', 1, 1, 1, 'Цены на услуги по созданию сайта');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (4, 2, 3, 'По типам, отраслям', '', 1, 1, 1, 'Узнаваемость бренда');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (5, 4, 3, 'Корпоративные', '/portfolio/corp', 1, 1, 1, 'Узнаваемость бренда');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (6, 4, 3, 'Интернет магазины', '/portfolio/ishop', 1, 1, 1, 'Увеличение продаж');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (7, 0, 3, 'Поддержка', '/support', 1, 1, 1, 'Техническая поддержка');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (8, 0, 3, 'Контакты', '/contacts', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (9, 2, 3, 'По годам', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (10, 9, 3, '2011', '/portfolio/year/2011', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (11, 9, 3, '2010', '/portfolio/year/2010', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (12, 7, 3, 'Виды техподдерджки', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (13, 7, 3, 'Стоимость', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (14, 7, 3, 'Оставить заявку', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (15, 7, 3, 'Статус заявок', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (16, 7, 3, 'Заказать акты', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (17, 3, 3, 'Визитная карточка', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (18, 3, 3, 'Сайт фирмы', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (19, 4, 3, 'Порталы и спец. проекты', '/portfolio/special', 1, 3, 1, 'Нестандартные проекты на заказ, дорого…');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (20, 9, 3, '2012', '/portfolio/year/2012', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (21, 0, 4, 'О компании', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (22, 21, 4, 'Сотрудники', '/pages/personal', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (23, 21, 4, 'Отзывы и благодарности', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (24, 21, 4, 'Должностной кодекс', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (25, 21, 4, 'Пресс-центр', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (26, 0, 4, 'Создание сайтов', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (27, 26, 4, 'Изготовление сайтов', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (28, 26, 4, 'Какой  сайт вам нужен', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (29, 0, 4, 'Продвижение сайтов', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (30, 29, 4, 'SEO в поисковых системах', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (31, 29, 4, 'Контекстная реклама', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (32, 29, 4, 'Реклама в соцсетях', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (33, 0, 4, 'Техподдержка', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (34, 33, 4, 'Хостинг, регистрация доменов', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (35, 33, 4, 'Обслуживание сайтов', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (36, 33, 4, 'Администрирование сайтов', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (37, 0, 4, 'Программирование на заказ', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (38, 37, 4, 'Заказать разработку программы', '', 1, 1, 1, '');
INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `type`, `sort`, `status`, `description`) VALUES (39, 37, 4, 'Продукты', '', 1, 1, 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime NOT NULL,
  `change_date` datetime NOT NULL,
  `date` date NOT NULL,
  `title` varchar(150) NOT NULL,
  `alias` varchar(150) NOT NULL,
  `short_text` varchar(400) NOT NULL,
  `full_text` text NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `keywords` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias_unique` (`alias`),
  KEY `status` (`status`),
  KEY `is_protected` (`is_protected`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `news`
--


-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE IF NOT EXISTS `page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_Id` int(10) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `change_date` datetime NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `change_user_id` int(10) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `title` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `body` text NOT NULL,
  `keywords` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `is_protected` int(11) NOT NULL,
  `menu_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_unique` (`slug`),
  KEY `status` (`status`),
  KEY `is_protected` (`is_protected`),
  KEY `user_id` (`user_id`),
  KEY `change_user_id` (`change_user_id`),
  KEY `order` (`menu_order`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `parent_Id`, `creation_date`, `change_date`, `user_id`, `change_user_id`, `name`, `title`, `slug`, `body`, `keywords`, `description`, `status`, `is_protected`, `menu_order`) VALUES (1, NULL, '2012-05-23 15:37:28', '2012-05-29 18:05:00', 83, 83, 'Создание сайтов, разработка и продажа программного обеспечения', 'О компании', 'about', '<h3 style="margin: 0px; padding: 0px 0px 21px; color: rgb(55, 55, 55); float: none; ">Давайте определимся - какой сайт вам нужен?</h3>\r\n\r\n\r\n<ul style="list-style: none none; margin: 0px 0px 11px; padding: 0px; color: rgb(55, 55, 55); ">\r\n\r\n	<li style="background-image: url(/themes/nsystems/css/images/our-company-li-bg.png); padding: 0px 0px 27px 8px; background-position: 0px 7px; background-repeat: no-repeat no-repeat; "><h3 style="margin: 0px; padding: 0px 0px 7px; float: none; ">Мне нужен обычный сайт</h3>\r\n\r\n<p style="margin: 0px 0px 0px -9px; padding: 0px; ">Это довольно просто.&nbsp;<a href="#" style="margin: 0px; padding: 0px; vertical-align: baseline; text-decoration: none; color: rgb(1, 112, 175); ">Присылайте</a>&nbsp;ваш логотип и пожелания по внешнему виду, информацию для разделов "О компании", "Контакты", "Услуги" и все, что считаете нужным. Для обычного сайта будет достаточно информации помещающейся на 3-10 страницах А4. Срок создания сайта от 3 до 10 дней. Стоимость "под ключ" - всего 18 000 рублей.</p>\r\n\r\n</li>\r\n\r\n	<li style="background-image: url(/themes/nsystems/css/images/our-company-li-bg.png); padding: 0px 0px 27px 8px; background-position: 0px 7px; background-repeat: no-repeat no-repeat; "><h3 style="margin: 0px; padding: 0px 0px 7px; float: none; ">Мне нужен интернет-магазин</h3>\r\n\r\n<p style="margin: 0px 0px 0px -9px; padding: 0px; ">Вариантов исполнения - масса,&nbsp;<a href="/contacts">позвоните</a>&nbsp;нам, мы вместе попробуем выбрать подходящий именно вам. Если же брать самый распространенный вариант - сайт с каталогом товаров из 100 наименований, принимающий оплату электронными деньгами, и позволяющий автоматически выгружать ваши цены и остатки товара из 1С - то всего за 49 700 рублей, уже через 2 недели вы получите интернет-магазин готовый принимать заказы! Сомневаетесь - посмотрите на&nbsp;<a href="/portfolio/ishop">интернет-магазины</a>&nbsp;, которые мы уже сделали.</p>\r\n\r\n</li>\r\n\r\n	<li style="background-image: url(/themes/nsystems/css/images/our-company-li-bg.png); padding: 0px 0px 27px 8px; background-position: 0px 7px; background-repeat: no-repeat no-repeat; "><h3 style="margin: 0px; padding: 0px 0px 7px; float: none; ">Мне нужен крупный корпоративный сайт</h3>\r\n\r\n<p style="margin: 0px 0px 0px -9px; padding: 0px; ">Большая часть сайтов, которые мы сделали - именно корпоративные. Стоимость и сроки варьируются довольно широко от 10 до 30 дней и от 30 000 до 200 000. Преимущества - наш фирменный подход "Сайт под ключ", простая но мощная система управления сайтом, бесплатное внесение всей предоставленной информации на сайт (в разумных пределах, естественно). За примерами сайтов далеко ходить на надо - посмотрите наше&nbsp;<a href="/portfolio">портфолио</a>. А после этого - мы ждем от вас звонка на (3452) 93-21-81, где с удовольствием ответим на все ваши вопросы. Обсудить детали с глазу на глаз можно&nbsp;<a href="#" style="margin: 0px; padding: 0px; vertical-align: baseline; text-decoration: none; color: rgb(1, 112, 175); ">у нас в офисе</a>&nbsp;за чашечкой кофе или чая, а при необходимости мы подъедем к вам сами.</p>\r\n\r\n</li>\r\n\r\n	<li style="background-image: url(/themes/nsystems/css/images/our-company-li-bg.png); padding: 0px 0px 27px 8px; background-position: 0px 7px; background-repeat: no-repeat no-repeat; "><h3 style="margin: 0px; padding: 0px 0px 7px; float: none; ">Не могу определиться, какой именно сайт мне нужен :(</h3>\r\n\r\n<p style="margin: 0px 0px 0px -9px; padding: 0px; ">Побродите по интернету или по нашему&nbsp;<a href="/portfolio">портфолио</a>&nbsp;и попытайтесь определить что вам более-менее подходит. А после этого - мы ждем от вас звонка на (3452) 93-21-81, где мы точно определим с вами - что же за сайт вам нужен, сколько он будет стоить и как быстро будет готов. Пообщаться лично можно&nbsp;<a href="#" style="margin: 0px; padding: 0px; vertical-align: baseline; text-decoration: none; color: rgb(1, 112, 175); ">у нас в офисе</a>&nbsp;за чашечкой кофе или чая, или мы приедем к вам.</p>\r\n\r\n</li></ul>\r\n\r\n<h3 style="margin: 0px; padding: 0px 0px 21px; color: rgb(55, 55, 55); float: none; ">А еще</h3>\r\n\r\n<h4 style="margin: 0px; padding: 0px 0px 7px; color: rgb(55, 55, 55); float: none; ">Мне нужна раскрутка сайта</h4>\r\n\r\n<p style="margin: 0px; padding: 0px 0px 22px; color: rgb(55, 55, 55); ">Раскрутка - вещь еще более индвидуальная чем создание сайта, поэтому "средних" рекомендаций мы не сможем дать. Пишите, звоните (3452) 93-21-81, приезжайте - посмотрим на ваш сайт, попробуем подобрать поисковые запросы и рассчитать стоимость. Кроме раскрутки (продвижения в поисковых системах) мы можем предложить еще контекстную рекламу на 3 ведущих площадках Рунета, юзабилити-тестирование, продвижение в социальных сетях и копирайтинг. Чтобы предварительно понимать порядок цен - мы подготовили несколько различных расчетов&nbsp;<a href="#" style="margin: 0px; padding: 0px; vertical-align: baseline; text-decoration: none; color: rgb(1, 112, 175); ">стоимости продвижения сайта</a>.</p>\r\n\r\n<h4 style="margin: 0px; padding: 0px 0px 7px; color: rgb(55, 55, 55); float: none; ">Нужно просто обслуживать мой сайт</h4>\r\n\r\n<p style="margin: 0px; padding: 0px 0px 22px; color: rgb(55, 55, 55); ">У нас есть несколько тарифов на поддержку сайтов. От "Экономного" до "Беззаботного".&nbsp;<a href="#" style="margin: 0px; padding: 0px; vertical-align: baseline; text-decoration: none; color: rgb(1, 112, 175); ">Обращайтесь</a>&nbsp;- подберем оптимальный вариант.</p>\r\n\r\n<h4 style="margin: 0px; padding: 0px 0px 7px; color: rgb(55, 55, 55); float: none; ">Ключевыми направлениями работы компании «Нео-Системс» являются:</h4>\r\n\r\n\r\n<ul style="list-style: none none; margin: 0px; padding: 0px 0px 24px; color: rgb(55, 55, 55); ">\r\n\r\n	<li style="background-image: url(/themes/nsystems/css/images/neo-systems-li-bg.png); padding: 0px 0px 5px 11px; background-position: 0px 3px; background-repeat: no-repeat no-repeat; ">Создание сайтов любого уровня сложности&nbsp;<a href="#" style="margin: 0px; padding: 0px; vertical-align: baseline; text-decoration: none; color: rgb(1, 112, 175); ">(коммерческое предложение на создание сайта)</a></li>\r\n\r\n	<li style="background-image: url(/themes/nsystems/css/images/neo-systems-li-bg.png); padding: 0px 0px 5px 11px; background-position: 0px 3px; background-repeat: no-repeat no-repeat; ">Реклама в интернете — продвижение сайтов, контекстная реклама</li>\r\n\r\n	<li style="background-image: url(/themes/nsystems/css/images/neo-systems-li-bg.png); padding: 0px 0px 5px 11px; background-position: 0px 3px; background-repeat: no-repeat no-repeat; ">Разработка, внедрение и продажа программного обеспечения.</li></ul>\r\n\r\n<h4 style="margin: 0px; padding: 0px 0px 7px; color: rgb(55, 55, 55); float: none; ">За 3 года, специалистами компании</h4>\r\n\r\n<p style="margin: 0px; padding: 0px 0px 22px; color: rgb(55, 55, 55); "><a href="/portfolio">185 созданых сайтов</a>&nbsp;\r\n\r\n<br>10 интернет-магазинов\r\n\r\n<br>сделано комплексное продвижение сайтов наших заказчиков,\r\n\r\n<br>успешно внедрена система электронного документооборота DocsVision,\r\n\r\n<br>список поставщиков лицензионного ПО составляет более 300 компаний.\r\n\r\n<br>Разработан ряд собственных программных продуктов.\r\n\r\n<br></p>\r\n\r\n<h4 style="margin: 0px; padding: 0px 0px 7px; color: rgb(55, 55, 55); float: none; ">Вы можете переговорить с нами прямо сейчас! Кликните на сообщение ниже, если мы в сети (зеленый индикатор)</h4>\r\n\r\n<p style="margin: 0px; padding: 0px 0px 22px; color: rgb(55, 55, 55); ">Мы уделяем большое внимание внешнему виду наших сайтов и ПО, стремимся сделать интерфейс как можно проще, не потеряв при этом функционала. Сотрудники компании тратят до 20% рабочего времени на собственные разработки, и самые лучшие из них воплощаются в наших проектах. Кроме того, что вы можете увидеть в нашем&nbsp;<a href="/portfolio">портфолио</a>, — внешней стороны создания сайтов — есть ещё скрытая от глаз внутрення — бизнес-логика и бизнес-инструменты сайта. За годы работы мы создали действительно уникальные продукты, решили сложные задачи, прочитать о которых и оценить вы можете в разделе «Уникальные разработки»</p>\r\n\r\n<p style="margin: 0px; padding: 0px 0px 22px; color: rgb(55, 55, 55); "><strong><em>Сейчас мы открыты для вас, для того чтобы сделать ваш сайт лучше, извлечь из него максимальную выгоду и получить удовольствие от общения с нами.<span id="pastemarkerend">&nbsp;</span></em></strong></p>', 'О компании', 'О компании', 1, 0, 0);
INSERT INTO `page` (`id`, `parent_Id`, `creation_date`, `change_date`, `user_id`, `change_user_id`, `name`, `title`, `slug`, `body`, `keywords`, `description`, `status`, `is_protected`, `menu_order`) VALUES (2, 1, '2012-05-27 21:25:18', '2012-08-06 10:21:43', 83, 83, 'Контакты', 'Контактная информация и карта проезда', 'contacts', '<div class="row-fluid">\r\n<div class="span3">\r\n<ul class="nav nav-list">\r\n  <li class="nav-header">\r\n    Навигация\r\n  </li>\r\n  <li class="active">\r\n    <a href="#first">Контакты</a>\r\n  </li>\r\n<li>\r\n    <a href="#second">Карта - как проехать</a>\r\n  </li>\r\n  <li>\r\n    <a href="#third">Реквизиты и карточка предприятия</a>\r\n  </li>\r\n<li>\r\n    <a href="#fourth">Руководитель</a>\r\n  </li>  \r\n</ul>\r\n</div>\r\n<div class="span8 offset1">\r\n<div class="row-fluid">\r\n<div class="span12">\r\n<a name="first"></a><h2>Контакты</h2><p>\r\n<b>Компания</b>  ООО <span itemprop="name">"Н-Системс"\r\n<br><b>Основной телефон</b>:<span itemprop="telephone">(3452) 500-348 </span>,&nbsp;\r\n<br><b>Техническая поддержка</b>:<span itemprop="telephone">(3452) 682-554</span>,&nbsp;\r\n<br><b>Секретарь, факс</b>:<span itemprop="faxNumber">(3452) 681-870 </span>,&nbsp;\r\n<br><b>E-mail</b>: <a href="mailto:info@neo-systems.ru" itemprop="email">info@neo-systems.ru</a></P> \r\n<div class="alert alert-info">С 2006 по 2011 год компания называлась ООО "Нео-Системс"</div>\r\n</div>\r\n</div>\r\n<div class="row-fluid">\r\n<div class="span12">\r\n<a name="second"></a><h2>Карта - как проехать</h2>\r\n<script charset="utf-8" type="text/javascript" src="http://firmsonmap.api.2gis.ru/js/DGWidgetLoader.js"></script>\r\n<script charset="utf-8" type="text/javascript">new DGWidgetLoader({"borderColor":"#a3a3a3","width":"460","height":"400","wid":"e733b134073acfbf37e3f7d802c61bfc","pos":{"lon":"65.536485860214","lat":"57.147082297786","zoom":"15"},"opt":{"ref":"hidden","card":["name","contacts"],"city":"tyumen"},"org":[{"id":"1830115629619384"}]});</script>\r\n<noscript style="color:#c00;font-size:16px;font-weight:bold;">Виджет карты использует JavaScript. Включите его в настройках вашего браузера.</noscript>\r\n\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span12"><p>\r\n<a name="third"></a><h2>Реквизиты и карточка предприятия</h2></P>\r\n<div class="row-fluid">\r\n<div class="span8">\r\n<p>\r\n<b>ИНН</b> 7202154366 <br>\r\n<b>КПП</b> 720201001<br>\r\nБанковские реквизиты:<br>\r\nБИК 047102658<br>\r\nР/с 40702810200000000399<br>\r\nКБ "Стройлесбанк" (ООО) г. Тюмень<br>\r\nК/с 30101810900000000658<br>\r\n\r\n</div>\r\n<div class="span4">\r\n<a href="/uploads/nsystemscard.doc" title="Скачать карточку предприятия"><img src="/uploads/images/word_icon.png" align="left" class="thumbnail"><br>Скачать карточку предприятия</a>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span12">\r\n<a name="fourth"></a><h2>Руководитель</h2>\r\n<div class="row-fluid">\r\n<div class="span6">\r\n  <img src="/uploads/images/denis.jpg" itemprop="image" alt="" style="float: left; margin: 0px 10px 10px 0px; ">\r\n</div>\r\n<div class="span6">\r\n<br><span itemprop="jobTitle">Генеральный директор</span>&nbsp;\r\n&nbsp; \r\n\r\n<br> \r\nВолков Денис Андреевич<span id="pastemarkerend">&nbsp;</span>\r\n\r\n    <br><span itemprop="telephone">Мобильный:<span id="pastemarkerend">&nbsp;</span>+7 (9044) 932-181</span>&nbsp;\r\n&nbsp;  \r\n\r\n<br><a href="mailto:director@neo-systems.ru" itemprop="email">director@neo-systems.ru</a>&nbsp;\r\n&nbsp;\r\n\r\n<br><a href="http://www.facebook.com/to.den.volkov" itemprop="url">facebook</a>&nbsp;\r\n\r\n<br><p><a href="https://twitter.com/NeoSystems">twitter</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n    </div>\r\n</div>\r\n    </div>', 'Контакты', 'Контакты', 1, 0, 0);
INSERT INTO `page` (`id`, `parent_Id`, `creation_date`, `change_date`, `user_id`, `change_user_id`, `name`, `title`, `slug`, `body`, `keywords`, `description`, `status`, `is_protected`, `menu_order`) VALUES (3, 1, '2012-05-29 18:24:25', '2012-08-06 09:41:13', 83, 83, 'Benefits', 'Должностной кодекс', 'benefits', '<div class="row-fluid">\r\n<div class="span8 offset4">\r\n<p>\r\n<h3>Моя работа максимально эффективна\r\n</h3>\r\n1. Я считаю неприличным усложнять работу. Я делаю все, чтобы любую функцию сделать более технологичной и выполнимой. В ситуации неопределенности я принимаю такое решение, которое максимально упрощает работу мою и моих коллег. Я рассчитываю на то, что мои коллеги поступают аналогичным образом.<br />\r\n2. Я стараюсь сделать свою работу передаваемой, а ее результат воспроизводимым в мое отсутствие. Если такого не происходит, то это означает, что работа выполнена некачественно. Либо работа еще не закончена. В ситуации неопределенности, я принимаю такое решение, которое дает возможность без потерь использовать результат моей работы в мое отсутствие. Я рассчитываю на то, что и мои коллеги поступают аналогичным образом.<br />\r\n3. В том числе, я согласен с тем, что некачественно оформленные мной документы (договора, заявки, акты и т.д.) не должны подписываться... Я рассчитываю на то, что и мои коллеги разделяют такую же точку зрения.<br />\r\n4. Я знаю, что компания вкладывает серьезные средства в обучение, а также в приобретение и внедрение новых методик и технологий. Поэтому я изучаю и применяю переданные мне методики и приемы. Более того, пытаюсь создать собственные с тем, чтобы передать свой опыт коллегам. Я рассчитываю на то, что и мои коллеги поступают аналогичным образом.<br />\r\n5. Я смело берусь за новое и незнакомое мне дело и не боюсь показаться слабым и некомпетентным. Я рассчитываю на то, что и мои коллеги поступают аналогичным образом.<br />\r\n6. Во взаимоотношениях с бизнес-партнерами я всегда действую в пользу компании N-Systems. Я защищаю сферу интересов компании и делаю все возможное, чтобы во взаимоотношениях с клиентами не происходило необоснованное увеличение себестоимости работ по проектам. В ситуации неопределенности я принимаю такое решение, которое однозначно защищает сферу интересов N-Systems. Я рассчитываю на то, что и мои коллеги поступают аналогичным образом.<br />\r\n7. Я знаю, что фирменные стандарты, перечисленные здесь, могут быть изменены (отменены, усовершенствованы...) не чаще, чем один раз в год. При этом предложения об изменениях будут заранее предъявлены для обсуждения в письменной форме их инициатором.<br />\r\n</p>\r\n<p>\r\n<h3>Я забочусь о репутации и имидже моей компании.\r\n</h3>\r\n\r\n1. Я знаю, что любое поручение, связанное с Клиентом, делается "день в день". Если это невозможно, то я должен позвонить Клиенту и сообщить о том, что о нем помнят. Я уверен в том, что и мои коллеги поступают аналогичным образом.<br />\r\n2. Аналогично, я знаю о том, что внесение информации в базу данных компании делается в день получения информации, и не допускаю задержек с внесением. Я знаю, что задержка внесения информации в базу на один день считается опозданием, а на два дня - утаиванием. Я принимаю все возможные меры к выполнению данного стандарта и рассчитываю на то, что и мои коллеги поступают аналогичным образом.<br />\r\n3. Я никогда не скажу ничего дурного о своей компании посторонним, предварительно не обсудив проблему с руководителем. Я рассчитываю на то, что и мои коллеги поступают аналогичным образом.<br />\r\n4. Я понимаю, что любое общение с внешним миром - это реклама компании. За рекламу и PR отвечают все. Помня об этом, я стараюсь каждого фактического и потенциального Клиента превратить в бесплатного рекламного агента. В том числе, если позволяют обстоятельства, не забываю передать подготовленные для этого материалы, корпоративную визитную карточку и рассказать о фирме. Я рассчитываю на то, что и мои коллеги поступают аналогичным образом.<br />\r\n</p>\r\n<p>\r\n<h3>В основе моей деятельности - дисциплина и исполнительность.</h3>\r\n\r\n1. Когда я работаю в команде, то понимаю, что, например, 9-30 = 9-30, а не 9-45 и не 10-00. Я понимаю, что общая договоренность организует не только мое время, но и время моих коллег, а нарушение мной договоренности дезорганизует не только меня, но и коллег, которые в этом не виноваты. В случае различных накладок, я всегда звоню и предупреждаю коллег заранее. Я рассчитываю на то, что и мои коллеги поступают аналогичным образом.<br />\r\n2. Я всегда планирую свою работу и согласовываю свои планы с коллегами. И я всегда намечаю и объявляю заранее промежуточные результаты своих работ. Я всегда показываю промежуточные результаты в намеченные сроки. <br />\r\n3. Я подчиняюсь правилам дисциплины, которые существуют в компании. Если я опаздываю, не выхожу на работу, не могу прийти на запланированную встречу, то обязательно предупреждаю об этом и оставляю информацию о том, как со мной связаться в случае необходимости. Я рассчитываю на то, что мои коллеги поступают аналогичным образом. <br />\r\n4. Я знаю, что такое имитация деятельности. Это когда вместо того, что НАДО сделать, я делаю то, что хочу. Либо вместо того, что надо, делаю другую, психологически более приятную и ленивую работу.<br />\r\nНапример:<br />\r\n<ul>\r\n<li>Вместо того, чтобы общаться с Клиентом, в тысяча первый раз перетаскиваю коробку;</li>\r\n<li>Вместо разработки информационной системы рассказываю о преимуществах/недостатках других систем;</li>\r\n<li>Вместо разработки трудного проекта "общаюсь с партнерами";</li>\r\n<li>Вместо того, чтобы писать статью, форматирую ее;</li>\r\n<li>Вместо того, чтобы обзванивать Клиентов ... заполняю... и т.д. и т.п.</li>\r\n<li>Я способен отличить деятельность от ее имитации. Я не уклонюсь от действительно продуктивной работы. Я рассчитываю на то, что и мои коллеги поступают аналогичным образом.</li>\r\n</ul>\r\n5. Я знаю, что на вопрос: "Будет сделано или нет?" отвечать: "Постараюсь" - неприлично. Я никогда так не отвечаю. На такие вопросы я отвечаю либо "Да", либо "Нет". Я также знаю, что перечисленные ниже выражения запрещены к употреблению, и соответственно их не употребляю:<br />\r\n\r\n<ul>\r\n<li>"Первый раз слышу".</li>\r\n<li>"Звонил, не дозвонился".</li>\r\n<li>"Приходил, но Вас (его, ее, их...) не было".</li>\r\n<li>"Искал, но не нашел".</li>\r\n<li>"А я думал...".</li>\r\n<li>"Это виноваты коллеги (Клиенты, администрация, неправильные/отсутствующие документы, государственные органы и т.д.)".</li>\r\n<li>"Это было еще до того (до меня, тогда...)".</li>\r\n<li>"А я говорил (предупреждал, делал…)".</li>\r\n<li>"А мне никто не говорил".</li>\r\n<li>"А почему я?".</li>\r\n<li>"Не слышал".</li>\r\n<li>"Не знаю".</li>\r\n<li>"Не передавали".</li>\r\n<li>"Хотел, как лучше".</li>\r\n<li>"Я хотел, но не получилось".</li>\r\n<li>"Хотел позвонить, но не было жетона (пейджера, телефона...)".</li>\r\n<li>"Я сказал, а он (она) не сделал".</li>\r\n<li>"Меня в это время не было, кажется, болел (был в отпуске, пьяный и т.п.)".</li></ul>\r\n\r\nЯ рассчитываю на то, что и мои коллеги поступают аналогичным образом.<br />\r\n6. Прежде чем предъявить кому-либо претензию, я сначала самому себе задам два контрольных вопроса:<br />\r\nа) какова ДЕЙСТВИТЕЛЬНАЯ суть претензии-проблемы?<br />\r\nб) что Я САМ НЕ сделал для решения проблемы?<br />\r\nЕсли после ответа на эти вопросы претензии останутся, то их следует изложить в письменном виде и выслать по адресу  director@neo-systems.ru вместе с предложениями путей решения и понятным планом действий. Я знаю, что иного способа пожаловаться в компании нет. Я рассчитываю на то, что и коллеги поступают аналогичным образом.<br />\r\n7. Я понимаю, что не имею права вступать в деловые переговоры по бизнес-вопросам, не входящим в сферу моей компетенции, с кем бы то ни было (включая знакомых), не поставив предварительно в известность своего руководителя. Слово "предварительно" в настоящем стандарте ключевое! Если я получаю предложение со стороны и не имею возможности предварительно сообщить о предстоящем контакте, я сообщаю о таком предложении в тот же день, когда его получил. Я рассчитываю на то, что и мои коллеги поступают аналогичным образом.<br />\r\n8. В случае предложения мне лично комиссионных со стороны любой организации или частного лица, я сразу вежливо прекращаю соответствующие переговоры и сообщаю о полученном предложении своему руководителю. Таким образом, ответственность за дальнейшие контакты с соответствующей организацией и/или частным лицом передается мной руководству, которое и полномочно принимать соответствующие меры. Если я узнаю о том, что данный стандарт не выполнен моим подчиненным, я принимаю меры к увольнению данного подчиненного (без обоснований). Я понимаю, что такие же права в отношении меня имеет и мой руководитель.<br />\r\nЯ рассчитываю на то, что и все коллеги поступают аналогичным образом.<br />\r\n9. В случае появления в офисе (звонка по телефону) любого представителя любой государственной организации с любым вопросом, я сразу вежливо провожаю (переключаю) соответствующего представителя к своему руководителю, никаких разговоров с ним не веду и на все вопросы отвечаю: "Пожалуйста, это к моему руководству". Я рассчитываю на то, что и мои коллеги поступают аналогичным образом.<br />\r\n10. В случае обращения ко мне любого представителя любой конкурирующей организации с любым вопросом, я сразу вежливо провожаю соответствующего представителя к своему руководителю, никаких разговоров с ним не веду и на все вопросы отвечаю: "Пожалуйста, это к моему руководству". Я рассчитываю на то, что и мои коллеги поступают аналогичным образом.<br />\r\n</p>\r\n<p>\r\n<h3>Я решаю все рабочие проблемы быстро и эффективно\r\n</h3>\r\n1. Я считаю неприличньм обсуждать, замалчивать и утаивать проблемы или обсуждать их исподтишка. Все проблемы решить невозможно, но любую из них можно превратить в задачу, если конструктивно обсудить ее с руководством и с заинтересованными лицами. Итак, я работаю по принципу: проблема - обсуждение - задача - решение. Я знаю, что иной способ рассмотрения проблем - независимо от моей воли - развивается в сплетню. Поэтому я считаю неприличным по отношению к своим коллегам поступать иначе. Я рассчитываю на то, что и мои коллеги поступают аналогичным образом.<br />\r\n2. В том числе, я не стесняюсь откровенно обсудить вопросы зарплаты. Однако я знаю, что в компании для этого есть нормальная рабочая процедура, которую я использую. Если действовать по процедуре, то моя просьба будет гарантированно рассмотрена. Я понимаю, что в ответ на свою просьбу или предложение, могу получить как согласие, так и отказ. И в случае получения аргументированного отказа, обижаться считаю неприличным. Я рассчитываю на то, что и мои коллеги поступают аналогичным образом. <br />\r\n3. Самое лучшее, что я могу сделать для коллег в сложных ситуациях - это помочь, не попрекая. Самое лучшее, что я могу сделать, попав в сложную ситуацию - это попросить коллег о помощи, не попрекая за отказ и не мстя за несогласие. Я рассчитываю на то, что и мои коллеги поступают аналогичным образом.<br />\r\n4. Я знаю о трех опасностях, подстерегающих каждого человека: зависти, ревности и лени. Чтобы уберечь себя от них, я постоянно общаюсь с коллегами, работаю вместе с ними и несу ответственность в том случае, если подвожу их. Я открыт для общения и регулярно делюсь результатами. Я рассчитываю на то, что и мои коллеги поступают аналогичным образом.\r\n5. Я никогда не обижаюсь по пустякам и, тем более, никогда не ищу повода для обиды. Я знаю, что поиск обиды - это обычная интрига. Я рассчитываю на то, что и мои коллеги поступают аналогичным образом.<br/ >\r\n</p>\r\n<p>\r\nМеня полностью устраивают эти стандарты<br />\r\n<br />\r\n_____________________________________________________________<br />\r\n(ФИО, Подпись, Дата)</p>\r\n</div>\r\n</div>', 'Benefits', 'Benefits', 1, 0, 0);
INSERT INTO `page` (`id`, `parent_Id`, `creation_date`, `change_date`, `user_id`, `change_user_id`, `name`, `title`, `slug`, `body`, `keywords`, `description`, `status`, `is_protected`, `menu_order`) VALUES (4, 1, '2012-07-16 00:38:36', '2012-08-06 16:33:05', 83, 83, 'Услуги', 'Услуги по созданию, поддержке сайтов', 'services', '<div class="row-fluid">\r\n<div class="span8">\r\n<ul><h3>Общие работы по сайтам</h3>\r\n<li><a href="">Проектирование сайта</a></li>\r\n<li><a href="/pages/tehnicheskoe-zadanie">Составление технического задания на создание/модернизацию сайта</a></li>\r\n<li><a href="/pages/analysis-site">Анализ существующего сайта</a></li>\r\n<li><a href="/pages/testing">Тестирование программной части сайта</a></li>\r\n<li><a href="/pages/project-management">Управление проектом создания сайта</a></li>\r\n<li><a href="/pages/order-processing">Постановка процесса обработки заказов интернет-магазина</a></li>\r\n<li><a href="">Проектирование баз данных</a></li>\r\n<li><a href="/pages/download-site">Ускорение загрузки сайта</a></li>\r\n<li><a href="">Тестирование качества сайта</a></li>\r\n</ul><br />\r\n\r\n<ul><h3>Продвижение сайта</h3>\r\n<li><a href="">Поисковая оптимизация сайта</a></li>\r\n<li><a href="">Копирайтинг, составление специализированных текстов</a></li>\r\n<li><a href="">Контекстная реклама</a></li>\r\n<li><a href="">Раскрутка сайта</a></li>\r\n<li><a href="">Анализ и внедрение способов повышения конверсии интернет-магазина</a></li>\r\n<li><a href="">А/Б тестирование сайтов (мультивариативное тестирование)</a></li>\r\n<li><a href="">Юзабилити тестирование</a></li>\r\n<li><a href="">Анализ сайта на основе статистики посещений</a></li>\r\n</ul><br />\r\n\r\n<ul><h3>Дизайн</h3>\r\n<li><a href="">Дизайн сайта</a></li>\r\n<li><a href="">Дизайн логотипа</a></li>\r\n<li><a href="">Дизайн иконки</a></li>\r\n<li><a href="">Дизайн баннеров</a></li>\r\n<li><a href="">Дизайн интерфейсов программного обеспечения</a></li>\r\n<li><a href="">3D моделирование</a></li>\r\n</ul><br />\r\n\r\n<ul><h3>Создание сайта</h3>\r\n<li><a href="">Верстка макетов сайта</a></li>\r\n<li><a href="">Программирование сайта</a></li>\r\n<li><a href="">Установка CMS</a></li>\r\n</ul><br />\r\n\r\n<ul><h3>Создание интернет-магазина</h3>\r\n<li><a href="">Связь с 1С:Торговля</a></li>\r\n<li><a href="">Внедрение программ лояльности клиентов</a></li>\r\n<li><a href="">Постановка процесса приема и обработки заказов</a></li>\r\n</ul><br />\r\n\r\n<ul><h3>Техническая поддержка</h3>\r\n<li><a href="">Информационное наполнение сайта</a></li>\r\n<li><a href="">Техническая поддержка сайтов</a></li>\r\n<li><a href="">Услуги по регистрации доменных имен</a></li>\r\n<li><a href="">Услуги по регистрации хостинга</a></li>\r\n<li><a href="">Наполнение интернет магазинов</a></li>\r\n<li><a href="">Обучение работе с сайтом</a></li>\r\n</ul><br />\r\n\r\n<ul><h3>Разработка программного обеспечения</h3>\r\n<li><a href="">Разработка прикладного программного обеспечения</a></li>\r\n<li><a href="">Проектирование программного обеспечения</a></li>\r\n<li><a href="">Составление технического задания на создание программного обеспечения</a></li>\r\n<li><a href="">Управление проектом разработки программного обеспечения</a></li>\r\n<li><a href="">Разработка приложений для устройств Apple</a></li>\r\n</ul>\r\n</div>\r\n</div>', 'услуги Н-системс', 'Услуги Н-Системс по созданию, поддержке, раскрутке сайтов', 1, 0, 0);
INSERT INTO `page` (`id`, `parent_Id`, `creation_date`, `change_date`, `user_id`, `change_user_id`, `name`, `title`, `slug`, `body`, `keywords`, `description`, `status`, `is_protected`, `menu_order`) VALUES (5, 1, '2012-07-16 23:51:14', '2012-07-16 23:51:14', 83, 83, 'Сотрудники', 'Сотрудники компании', 'personal', 'Наши сотрудники блаблабла', 'программист тюмень, дизайнер тюмень, веб-программист', 'Сотрудники компании Н-Системс', 1, 0, 0);
INSERT INTO `page` (`id`, `parent_Id`, `creation_date`, `change_date`, `user_id`, `change_user_id`, `name`, `title`, `slug`, `body`, `keywords`, `description`, `status`, `is_protected`, `menu_order`) VALUES (6, 4, '2012-08-06 14:08:59', '2012-08-06 16:41:18', 83, 83, 'Составление технического задания', 'Составление технического задания', 'tehnicheskoe-zadanie', '<div class="row-fluid">\r\n<div class="span8">\r\n<p>К счастью, у нас в компании работают специалисты, которые ценят свое время, и не берутся за работу, без технического задания.[ВИДЕО @Я не берусь за работу без ТЗ] \r\nДа, мы не сможем заключить договор на создание сайта без составления ТЗ (как отдельного вида работы или включенного в стоимость разработки сайта). \r\n</p>\r\n<p>\r\nМы понимаем, что таким образом мы потеряем часть клиентов, но это всего лишь показатель того что эта часть клиентов либо заранее знает, что требований в итоге будет больше,чем оговаривается изначально, либо еще не готов к разработке сайта. <br />\r\nМы – за цивилизованный, современный подход к бизнесу.</p>\r\n<p>\r\nПочему? Потому что отсутствие ТЗ приводит к \r\n<ul style="list-style-type: disc; margin-left: 20px;">\r\n<li>ненужной тратой времени на выяснение деталей функционирования проекта</li>\r\n<li>бесконечными переделками частей проекта</li>\r\n<li>затягиванием срока выполнения проекта</li>\r\n<li>снижению качества проекта</li>\r\n<li>отсутствию документа, по которому вы могли бы проверить – соответствует ли результат тому, что вы заказывали.</li></ul><img src="" />[КАРТИНКА ЧТО ХОТЕЛ ЗАКАЗЧИК]</p>\r\n<p>\r\nТехническое задание является документом, на основании которого осуществляется приемка работ по созданию сайта. Кроме того, оно необходимо для разработчика сайта, чтобы не пропустить важные моменты, при создании сайта.</p>\r\n<p>Мы заключаем договор на создание сайта только после согласования технического задания. В случае сайтов-визиток, обычных корпоративных сайтов – стоимость составления техзадания компенсируется при дальнейшей разработке сайта. Для нестандартных проектов, интернет-магазинов – разработка технического задания это отдельная услуга, стоимость которой составляет около 10% от предварительной стоимости проекта.</p>\r\n<p>Дело в том, что определить сроки создания сайта и стоимость можно только имея техническое задание, в котором описаны все ключевые моменты его работы, как бы тривиальными они не казались.</p>\r\n<ul style="list-style-type: disc; margin-left: 20px;">\r\nТехническое задание обычно включает в себя следующие разделы:\r\n<li>Общее описание проекта и его назначение</li>\r\n<li>Требования в дизайну (визуальному оформлению)</li>\r\n<li>Описание функциональных компонентов сайта, их взаимодействие</li>\r\n<li>Описание способов интеграции сайта с внешними информационными системами (1С, Excel, социальные сети, платежные системы, другие сайты)</li>\r\n<li>Описание логической структуры сайта</li>\r\n<li>Описание объема и способа предоставления информации для сайта</li>\r\n<li>Описание порядка внедрения сайта (если есть существующий)</li>\r\n<li>Указание объема и состава консалтинговых услуг по запуску сайта (Постановка процесса приема заказов, работа администратора сайта)</li></ul>\r\n<br />\r\n<p>Примеры технического задания на корпоративный сайт [ПРИМЕР]<br/ >\r\nПример технического задания на нестандартный проект [ПРИМЕР]<br/ >\r\nПример технического задания на разработку прикладного программного обеспечения [ПРИМЕР]</p>\r\n\r\n<p>Если вас не устроит срок и стоимость работ, рассчитанных в техническом задании – вы можете использовать его для заказа услуг разработки сайта в других компаниях. Мы готовим ТЗ без привязки к технологиям используемым в нашей компании, поэтому вы легко закажете сайт в другой фирме.</p>\r\n<p>Порядок заказа разработки технического задания:\r\n	<ol style="list-style-type: decimal; margin-left: 20px;">\r\n<li>Заполните форму или вышлите нам на email то описание проекта, которое у вас есть. Если его нет, позвоните – согласуем встречу.</li>\r\n	<li>Мы составляем предварительную смету проекта, на ее основе рассчитваем стоимость составления техничекого задания.</li>\r\n	<li>Вышлите нам карточку предприятия с реквизитами.</li>\r\n	<li>Заключение договора на составление ТЗ и оплата аванса.</li>\r\n	<li>Выполнение работ по составлению ТЗ.</li>\r\n	<li>Согласование ТЗ и окончательный расчет.</li></ol>\r\n\r\n<p>Результат работ: Техническое задание - документ, содержащий полное описание проектируемого сайта, включая  визуальные и функциональные особенности, структуру и описание информационного наполнения.</p>\r\n<p><h4>Для типовых проектов</h4>\r\n<strong>Срок выполнения работ</strong>: 5-10 рабочих дней <br />\r\n<strong>Стоимость</strong>: 10% от предварительной стоимости сайта, но не менее 14 000 рублей.</p>\r\n<h4>Для индивидуальных проектов</h4>\r\n<strong>Срок выполнения работ</strong>: зависит от сложности и уникальности проекта<br />\r\n<strong>Стоимость</strong>: 10% от предварительной стоимости сайта, но не менее 14 000 рублей.</p>\r\n<a href="#"><button class="btn btn-primary">Заказать разработку ТЗ</button></a>\r\n</div>\r\n</div>', 'техническое задание, тз', 'Составление технического задания', 1, 0, 0);
INSERT INTO `page` (`id`, `parent_Id`, `creation_date`, `change_date`, `user_id`, `change_user_id`, `name`, `title`, `slug`, `body`, `keywords`, `description`, `status`, `is_protected`, `menu_order`) VALUES (7, 4, '2012-08-06 15:12:54', '2012-08-06 16:49:55', 83, 83, 'Анализ сайта', 'Анализ существующего сайта', 'analysis-site', '<div class="row-fluid">\r\n<div class="span8">\r\n<ol style="list-style-type: lower-alpha; margin-left: 20px;\r\n">\r\n<h3>Целей анализа сайта может быть несколько</h3>\r\n<li>если вы не можете проверить самостоятельно сайт, который вам изготовила другая фирма</li>\r\n<li>если вы планируете модернизацию сайта и хотите получить объективную оценку существующего положения.</li>\r\n<li>вы хотите оценить сайт конкурента, чтобы не допустить его ошибок.</li>\r\n</ol><br />\r\n\r\n<ul style="list-style-type: disc; margin-left: 20px;\r\n"><h3>Независимый анализ сайта включает в себя</h3>\r\n<li>Проверка скорости работы сайта в нормальном режиме и под нагрузкой [КАРТИНКА]\r\n<li>Проверка SEO-подготовки сайта – заголовки, форматирование, ключевые слова, видимость в поисковых системах\r\n<li>Проверка качества верстки, отображение сайта в разных браузерах  [КАРТИНКА]\r\n<li>Анализ информационного наполнения – качество оформления, смысловая последовательность, наличие необходимой информации\r\n<li>Базовый юзабилити-анализ – на удобство пользования сайтом (контрастность, кнопки в нужных местах, понятность) [КАРТИНКА]\r\n<li>Проверка соответствия сайта техническому заданию – последовательная проверка всех положений технического задания, с тестированием на исключительные или крайние ситуации (неверный ввод данных, отсутствие данных и пр.)\r\n<li>Проверка сканером безопасности на наличие явных уязвимостей [КАРТИНКА]\r\n<li>Рекомендации – рекомендации по оптимизации сайта и приведения его к «нормальному виду».</li></ul><br />\r\n<p>Для проведения анализа необходимо – потдверждение владения сайтом (например пароли от FTP, базы данных) и заполнение формы-заказа.</p>\r\n<p>\r\n<strong>Результат работы</strong>: документ, содержащий результаты анализа сайта по указанным выше критериям.<br />\r\n<strong>Сроки проведения анализа</strong>: 5-10 рабочих дней<br />\r\n<strong>Стоимость</strong>: в зависимости от сайта, примерно от  3 500 рулей.</p>', 'Анализ сайта', 'Анализ сайта', 1, 0, 0);
INSERT INTO `page` (`id`, `parent_Id`, `creation_date`, `change_date`, `user_id`, `change_user_id`, `name`, `title`, `slug`, `body`, `keywords`, `description`, `status`, `is_protected`, `menu_order`) VALUES (8, 4, '2012-08-06 15:26:13', '2012-08-06 16:31:58', 83, 83, 'Тестирование', 'Тестирование программной части сайта', 'testing', '<div class="row-fluid">\r\n<div class="span8">\r\n<p>Тестирование программной части сайта предназачено для проверки работы частей часта в «критических» условиях – перегрузки данными, ввода крайне больших или малых значений, ввода некорректных данных и пр. Кроме того, тестирование предполагает проверку соответствия функционирования сайта и его технического задания.</p>\r\n<p>Глубина тестирования может варьироваться от  неглубокой ручной проверки форм, до автоматизированного покрытия тестами всего кода проекта. [КАРТИНКА с результатами тестов – ок, ок, провален, ок]</p>\r\n<p><strong>Результат работы</strong>: Документ – отчет о тестировании, с указанием найденных ошибок и несоответствий техническому заданию.<br />\r\n<strong>Сроки выполнения работ</strong>: индивидуально, не менее 10 рабочих дней<br />\r\n<strong>Стоимость выполнения работ</strong>: от 20 000 до 50% стоимости соответствующего сайта.</p>\r\n</div>\r\n</div>', 'Тестирование', 'Тестирование', 1, 0, 0);
INSERT INTO `page` (`id`, `parent_Id`, `creation_date`, `change_date`, `user_id`, `change_user_id`, `name`, `title`, `slug`, `body`, `keywords`, `description`, `status`, `is_protected`, `menu_order`) VALUES (9, 4, '2012-08-06 15:35:22', '2012-08-06 16:27:53', 83, 83, 'Управление проектом создания сайта', 'Управление проектом создания сайта', 'project-management', '<div class="row-fluid">\r\n<div class="span8">\r\n<p>Мы берем на себя ответственность за управление процессом разработки сайта – это такой аутсорсинг должности «Руководитель проекта». Мы имеем опыт в управлении проектами различной сложности – от 1 дня до 1 года. Вы предоставляете коллектив разработчиков – это может быть как фирма, так и набор разрозненных фрилансеров, техническое задание – а мы обспечиваем исполнение объема работ заданными специалистами.</p>\r\n<p>Управление проектом – прозрачное для вас. Вы видите в задачнике [ССЫЛКА НА ОПИСАНИЕ ЗАДАЧНИКА] все задачи по проекту, переписку с разработчиками, прогресс выполнения, диаграмму состояния проекта [КАРТИНКИ С ПРИМЕРАМИ]</p>\r\n<p>\r\n<strong>Результат работы</strong>: разработанный сайт в срок.<br />\r\n<strong>Сроки выполнения работы</strong>: в зависмости от проекта<br />\r\n<strong>Стоимость выполнения работ</strong>: примерно 10-30% от стоимости проекта, но не менее 20 000 рублей.</p>\r\n</div>\r\n</div>', 'Управление проектом создания сайта', 'Управление проектом создания сайта', 1, 0, 0);
INSERT INTO `page` (`id`, `parent_Id`, `creation_date`, `change_date`, `user_id`, `change_user_id`, `name`, `title`, `slug`, `body`, `keywords`, `description`, `status`, `is_protected`, `menu_order`) VALUES (10, 4, '2012-08-06 15:46:27', '2012-08-06 15:56:37', 83, 83, 'Обработка заказов', 'Постановка процесса обработки заказов интернет-магазина', 'order-processing', '<div class="row-fluid">\r\n<div class="span8">\r\n<p>Мы учим вас как правильно обрабатывать заказы сделанные покупателями в вашем интернет-магазине. Это один из самых важных процессов, так как от того как принимаются и оформляются заказы – зависит удовлетворенность покупателей, а соответственно и процент повторных заказов [( ССЫЛКА Статья, почему повторные заказы важнее чем первичные)].<br />\r\nТак как прием заказов обычно осуществляется не самыми квалифицированными специалистами, к тому же может наблюдаться текучка кадров  - необходимо чтобы процесс был четко стандартизирован, расписан по шагам, вплоть до всех диалогов оператора с покупателем. Только таким образом можно легко и быстро ввести нового сотрудника в курс дел, чтобы он приступил к выполнению обязанностей.</p>\r\n<ul style="list-style-type: disc; margin-left: 20px;">\r\nВ услугу включено:\r\n<li>Составление инструкции по обработке заказа</li>\r\n<li>Составление инструкций-диалогов по переписке, чату, телефонным разговорам</li>\r\n<li>Алгоритм обработки заказа (уточнение наличия товара, уведомление покупателя, согласование времени доставки)</li>\r\n<li>Описание действий при нестандартных / внештатных ситуациях, например отказ от заказа, возврат, конфликт.</li>\r\n<li>Обучение операторов</li>\r\n<li>Испытания операторов (даем нагрузку в 20-100 заказов в день) и проверяем корректность ответов, время реакции, вежливость, точность.</li></ul>\r\n<br />\r\n<p>\r\n<strong>Результат работы</strong>: набор документов – инструкции по обработке заказов, обученные и проверенные специалисты, готовые принимать заказы.<br />\r\n<strong>Сроки выполнения работ</strong>: 5-10 рабочих дней<br />\r\n<strong>Стоимость выполнения работ</strong>: примерно от 15 000 рублей</p>\r\n</div>\r\n</div>', 'Обработка заказов', 'Обработка заказов', 1, 0, 0);
INSERT INTO `page` (`id`, `parent_Id`, `creation_date`, `change_date`, `user_id`, `change_user_id`, `name`, `title`, `slug`, `body`, `keywords`, `description`, `status`, `is_protected`, `menu_order`) VALUES (11, 4, '2012-08-06 16:20:37', '2012-08-06 16:32:08', 83, 83, 'Ускорение загрузки сайта', 'Ускорение загрузки сайта', 'download-site', '<div class="row-fluid">\r\n<div class="span8">\r\n<p>\r\nОт скорости работы сайта (времени загрузки страниц) – напрямую зависит удовлетворенность посетителей сайта и даже впечатление о его дизайне![ССЫЛКА НА СТАТЬЮ О СКОРОСТИ ЗАГРУЗКИ]<br />\r\nМы проводим комплексную оптимизацию скорости загрузки вашего сайта на основе тестирования.</p>\r\n<ul style="list-style-type: disc; margin-left: 20px;">\r\n<li>Проверяем – скорость работы хостинга, базы данных, программного кода, настройки кеширования, стрктуру программной части сайта.</li>\r\n<li>Так как факторов влияющих на скорость загрузки сайта очень много, мы приводим к оптимизированному виду следующие параметры</li>\r\n<li>Хостинг, адекватный движку сайта и создаваемой им нагрузки. [ССЫЛКА НА НАШИ ХОСТИНГИ]</li>\r\n<li>Установка соответствюущих систем кеширования – Xcache, APC, eAccelerator, nginx и пр.</li>\r\n<li>Установка встроенных модулей для системы управления сайтом</li>\r\n<li>Оптимизация изображений – сжатие, замена форматов, создание спрайтов</li>\r\n<li>Оптимизация порядка загрузки таблиц стилей и скриптов</li>\r\n<li>Настройка времени жизни объектов в кеше браузера</li>\r\n<li>Настройка кеширования БД</li></ul><br />\r\n<p><em>Не всегда, даже этими методами, возможно ускорение загрузки сайта – так как основной тормозящий фактор может быть система управления сайтом.  В таком случае мы либо указываем вам на узкое место либо, по договоренности, устраняем тормозящие места самостоятельно.</p>\r\n<p>Рекомендации: для интернет-магазинов, или сайтов каталогов с большим количеством товаров или с большим количеством посещений самым первым шагом к оптимизации скорости станет переход на хостинг на выделенном сервере (VPS, Dedicated) c правильной настройкой веб-сервера, кеширующего прокси сервера, системы кеширования переменных.</em>\r\n</p>\r\n<p>\r\n<strong>Результат выполнения работ</strong>: значительно(в 2-100 раз) увеличенная скорость загрузки страниц сайта<br />\r\n<strong>Сроки выполнения работ</strong>: от 1 до 10 рабочих дней<br />\r\n<strong>Стоимость выполнения работ</strong>: от 10 000 рублей плюс стоимость хостинга на выделенном сервере, если необходимо.</p>\r\n</div></div>', 'Ускорение загрузки сайта', 'Ускорение загрузки сайта', 1, 0, 0);
INSERT INTO `page` (`id`, `parent_Id`, `creation_date`, `change_date`, `user_id`, `change_user_id`, `name`, `title`, `slug`, `body`, `keywords`, `description`, `status`, `is_protected`, `menu_order`) VALUES (12, 1, '2012-08-25 20:56:25', '2012-08-26 00:06:58', 83, 83, 'Тестирование качества сайта', 'Тестирование качества сайта', 'testirovanie-kachestva-sayta-', 'Качество сайта – с одной стороны эфемерная характеристика, с другой стороны, в принципе, вполне измеримая величина. \r\n<p>Нельзя сказать, что можно измерить какой-то цифрой – например этот сайт качественный на 78%. Но можно проверить сайт на соответствие вполне определенному списку характеристик, и указать что именно в данном конкретном сайте не соответствует общепринятым стандартам.</p>\r\n<p>Мы проверяем ваш сайт и составляем отчет исходя из следующих характеристик:\r\n<ol>\r\n<li>Внешний вид. Не дизайн. Оценить дизайн можно, но это будет слишком субъективная характеристка. На вкус и цвет, как говорится ?.</li>\r\n<li>Наличие минимально необходимой информации и качество ее подачи</li>\r\n<li>Выполнение сайтом своей основной функции. В основном ведь задача сайта, чтобы клиент ознакомился с вашими товарами или услугами, принял решение попробовать поработать с вами и позвонил в ваш офис. Мы на время становимся вашим клиентом и проверяем – как быстро и насколько логично можно получить основную информацию о ваших товарах или услугах</li>\r\n<li>Техническая проверка – на соответствие верстки сайта, на корректное функционирование интерактивных модулей сайта – обратная связь, вопрос-ответ и прочие. Очень часто, кстати, выясняется, что сообщения отправленные через обратную связь – либо направлены на левую почту, либо их никто не читает, что в принципе одно и то же.\r\n<blockquote><em> <strong>Подсказка</strong> – проверьте свою форму обратной связи. Получили сообщение? Это большой плюс вам и разработчикам вашего сайта.</em></li>\r\n\r\n<li>Проверка скорости загрузки и оптимизированности страниц сайта. Скорость загрузки сайта, наверное, один из самых важных факторов, на основании которого клиенты принимают решение о покупке. Есть даже проведенное исследование, в котором испытуемые отметили, что им больше нравятся и красивее дизайн именно у тех сайтов которые грузятся очень быстро. Удивительно, да – грузится быстро, значит красивый? Но это факт</li>\r\n<li>Проверка содержания сайта. Насколько доступно и подробно описаны товары и услуги. Не секрет, что большая часть потенциальных покупателей уходит с сайта без покупок всего лишь из-за того, что они не получили достаточно информации о приобретаемом продукте. \r\n<blockquote><em> <strong>Ну давайте представим на миг два варианта </strong><p> «Кроватка детская, из березы, 2600 рублей» <p>и  <p>«Кроватка детская, материал – береза,<br> производитель ООО «Рога и копыта» снабжена ящиком для белья, вмещаюшим полный комплект постельного белья + подушка, регулируемый уровень одной из стенок, одна из стенок может быть демонтирована полностью. Верхние части кроватки имеют силиконовые накладки (защита от прогрызания). Размеры 150х89х90. Для сборки кроватки необходима квадратная отвертка (в комплект не включена) и так далее – да еще и 10 фотографий. <p><strong>Чувствуете разницу? </strong> Ведь у ваших клиентов нет возможности потрогать, понюхать, попробовать продукт – они опираются лишь на ваше описание и фотографии. Вы аппелируете лишь только визуальной составляющей – естественно она должна быть максимально полной и исчерпывающей. </em></li>\r\n<li>SEO-оптимизация \r\nМы проверим насколько ваш сайт готов к продвижению. Проверка включает в себя и проверку специальных скрытых тегов «ключевые слова», «описание», уникальность текстов на страницах, позицию в поисковых системах по основным ключевым запросам, анализ позиций основных конкурентов. Кроме анализа – предоставляется подробный план оптимизации.</li>\r\n\r\n<h3>Результат выполнения работ: отчет о тестировании сайта с рекомендациями</h3>\r\n\r\n<strong>Сроки выполнения работ: от 1 до 10 рабочих дней<br>\r\nСтоимость выполнения работ: от 10 000 рублей</strong>', 'Тестирование, сайта, проверка, соответствие, оптимизация, корректно, правильно, характеристики', 'Услуга "Тестирование качества сайта" - из чего состоит, что делаем, сколько стоит.', 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
CREATE TABLE IF NOT EXISTS `portfolio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL COMMENT 'Название проекта',
  `href` varchar(500) NOT NULL COMMENT 'Ссылка',
  `designer` varchar(255) DEFAULT NULL,
  `programmer` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `fullDescription` text NOT NULL COMMENT 'Полное описание',
  `release_date` date NOT NULL COMMENT 'Дата запуска',
  `businessType` bigint(20) NOT NULL COMMENT 'Отрасль',
  `siteType` varchar(20) NOT NULL COMMENT 'Тип сайта (визитка,...)',
  `currentState` varchar(20) NOT NULL COMMENT 'Текущее состояние проекта (в работе, сдан..)',
  `shortDescription` text NOT NULL COMMENT 'Краткое описание',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 AUTO_INCREMENT=157 ;

--
-- Дамп данных таблицы `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (4, 'Цветочный базар', 'http://flowersopt.ru', 'Designer', 'Programmer', 'Manager', ' Интернет-магазин цветов. Для любого случая и по любому поводу.', '2012-04-20', 7, 'ishop', 'released', ' Интернет-магазин цветов. Для любого случая и по любому поводу.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (5, 'Каталог гостиниц России', 'http://www.h72.ru', 'Designer', 'Programmer', 'Manager', 'Оригинальный сайт, содержащий огромную базу данных обо всех Российских гостиницах, с возможностью online  бронирования. ', '2012-03-01', 8, 'special', 'released', 'Оригинальный сайт, содержащий огромную базу данных обо всех Российских гостиницах, с возможностью online  бронирования. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (6, 'Радио Победа', 'http://www.radiopobeda.ru', 'Designer', 'Programmer', 'Manager', 'РАДИО ПОБЕДЫ" - радиостанция для тех, кому дорога история нашей страны, кто чувствует и осознаёт неразрывную связь с её настоящим и грядущим. В эфире "Радио Победы" звучат испытанные временем, вечные мелодии отечественных и зарубежных авторов 30-60-х годов ХХ века   ', '2010-07-01', 7, 'corp', 'released', 'РАДИО ПОБЕДЫ" - радиостанция для тех, кому дорога история нашей страны, кто чувствует и осознаёт неразрывную связь с её настоящим и грядущим');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (7, 'Хорошее здоровье', 'http://www.goodhealth.ru', 'Designer', 'Programmer', 'Manager', 'Каталог продукции Vision с описаниями. Заказ БАД и косметики с доставкой.   ', '2010-03-01', 7, 'ishop', 'released', 'Каталог продукции Vision с описаниями. Заказ БАД и косметики с доставкой.   ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (8, 'Портал Строй Информ', 'http://www.stroy72.com', 'Designer', 'Programmer', 'Manager', 'Очень интересный проект, кардинально отличающийся от аналогичных строительных порталов. Портал объединяющий компании, занимающиеся строительными материалами. Онлайн цены и остатки всех товаров.', '2009-10-01', 7, 'special', 'released', 'Очень интересный проект, кардинально отличающийся от аналогичных строительных порталов.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (9, 'УКПТО ТюменьАвтоТранс', 'http://www.tumavtotrans.ru', 'Designer', 'Programmer', 'Manager', 'Привет Конкуренты! Возникла необходимость добавить на сайт кроме автобусов еще и коммунальные машины. Теперь на сайте представлено более 120 видов автобусов и комунальных машин, а также прайсы и запчасти ', '2009-08-01', 3, 'corp', 'released', 'Привет Конкуренты! Возникла необходимость добавить на сайт кроме автобусов еще и коммунальные машины. Теперь на сайте представлено более 120 видов автобусов и комунальных машин, а также прайсы и запчасти ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (10, 'А-Мега', 'http://a-mega72.ru', '', '', '', 'Центр Строительных Материалов «А-Мега»  предлагает более 25000 наименований строительно-отделочных материалов, необходимых для комплектации строительного рынка Тюменской области, по оптимальным ценам: краски, инструменты, сантехника, товары для ванной комнаты, электро- и стройматериалы, материалы и предметы декора, освещение, ковровое покрытие и многое другое, включая товары для сада и огорода, принадлежности для автомобилей. ', '2012-04-10', 3, 'corp', 'released', 'Сайт Центр Строительных Материалов «А-Мега»  ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (12, 'Жилфонд', 'жилфонд72.рф', '', '', '', 'Сайт агенства недвижимости Жилфонд.', '2012-04-11', 10, 'corp', 'released', 'Сайт агенства недвижимости Жилфонд.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (13, 'Парфюмерный магазин', 'http://aroma-click.ru/', '', '', '', 'Добро пожаловать в царство доступной роскоши и тонких ароматов, где можно приобрести изысканные духи различных марок. Наш магазин дает Вам возможность сделать покупку не выходя из дома или не отрываясь от рабочего места. ', '2012-03-21', 7, 'ishop', 'released', 'Добро пожаловать в царство доступной роскоши и тонких ароматов, где можно приобрести изысканные духи различных марок. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (14, 'China Town', 'http://chinatown-dostavka.ru/', '', '', '', ' Доставка безумно вкусной вок лапши, риса и овощей из вок с огромным количеством мясных и овощных добавок, приправленных соусами и аккуратно упакованных в удобные и веселые коробочки. ', '2012-03-14', 11, 'card', 'released', 'Китайская еда в коробочках ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (15, 'Попрыгайка', 'http://попрыгайка.рф', '', '', '', 'Предлагает широкий выбор детсткой одежды.', '2012-02-08', 12, 'ishop', 'released', 'Магазин детской одежды');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (16, 'Медицинский магазин', 'http://medmag72.ru/', '', '', '', '  Медицинская техника и медицинские приборы для домашнего использования: Тонометры, ингаляторы, глюкометры, термометры и другие приборы.  ', '2011-01-13', 13, 'ishop', 'released', 'Магазин мед-техники');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (17, 'Эксперт колес', 'http://www.expert-koles.ru/', '', '', '', 'Интернет магазин шин и дисков', '2011-01-07', 3, 'ishop', 'released', 'Интернет магазин шин и дисков');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (18, 'Соблазн', 'http://soblazn-tmn.ru/', '', '', '', 'Расчески, бигуди, зеркала, бижутерия, косметички, маникюрные принадлежности, аксессуары для волос, материалы для наращивания ногтей, ресниц и волос Всё для вашего прекрастного образа. \r\n', '2011-01-19', 7, 'ishop', 'released', 'Расчески, бигуди, зеркала, бижутерия, косметички, маникюрные принадлежности, аксессуары для волос, материалы для наращивания ногтей, ресниц и волос Всё для вашего прекрастного образа. \r\n');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (19, 'ТИБП', 'http://www.tumtipb.ru/', '', '', '', 'Широкий спектр курсов, семинаров для профессиональной подготовки бухгалтеров. ', '2011-08-24', 7, 'corp', 'released', 'Тюменский Территориальный Институт профессиональных Бугалтеров ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (20, 'СтопПоиск', 'http://stoppoisk.ru/', '', '', '', 'Интернет-сервис услуг. Где на каждую работу найдётся свой исполнитель, а на каждого исполнителя - свой заказ. ', '2011-08-24', 8, 'special', 'released', 'Интернет-сервис услуг. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (21, 'Агенство недвижимости AST', 'http://аст72.рф', '', '', '', 'Корпоративный сайт агенства недвижимости AST ', '2011-08-23', 10, 'corp', 'released', 'Корпоративный сайт агенства недвижимости AST');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (22, 'Муравейник', 'http://муравейник72.рф', '', '', '', 'Купить, продать, сдать, снять жилье. Вся недвижимость Тюмени. ', '2011-07-12', 10, 'corp', 'released', 'Купить, продать, сдать, снять жилье. Вся недвижимость Тюмени. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (23, 'Пневмоцентр', 'http://www.pnevmoz.ru', '', '', '', 'Компания "Пневмоцентр" специализируется на оборудовании для производства и использования сжатого воздуха. В отличие от большинства конкурентов мы предлагаем не просто купить компрессор. Мы предлагаем содействие на всех стадиях построения компрессорной станции Вашего предприятия. Наши специалисты готовы дать подробнейшие консультации по любым вопросам, связанным с производством, подготовкой и рациональным использованием сжатого воздуха.', '2011-07-27', 7, 'card', 'released', ' Компания "Пневмоцентр" специализируется на оборудовании для производства и использования сжатого воздуха.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (25, 'Ресторан Потаскуй', 'http://potaskyi.1gb.ru/', '', '', '', 'Очень качественный по оформлению сайт, простой, но при этом полнофункциональный для администратора сайта.', '2009-10-22', 11, 'card', 'released', 'Очень качественный по оформлению сайт, простой, но при этом полнофункциональный для администратора сайта.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (26, 'Запсибгазпром', 'http://укзсгп.рф', '', '', '', 'Производственная деятельность общества началась с января 2007 года. Предметом деятельности организации является оказание услуг по передаче электрической энергии по сетям и оборудованию, находящимся на балансе организации, до потребителей электрической энергии. ', '2011-05-19', 3, 'card', 'released', 'Сайт управляющей компании "Запсибгазпром"');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (27, 'Интернет магазин - МаксиМ', 'http://ishop.maxim-rest.ru/', '', '', '', 'Заказ и доставка наивкуснейших блюд в любой уголок города. ', '2011-02-24', 11, 'ishop', 'released', 'Крутой интернет магазин для ресторанного холдинга - МаксиМ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (28, 'Русалочка', 'http://rusalochka-hotel.ru/', '', '', '', 'Гостиница «Русалочка»  была построена более 5 лет назад как место для спокойного семейного отдыха со всеми необходимыми для этого условиями.', '2011-07-14', 3, 'card', 'released', 'Гостиница «Русалочка»');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (29, 'Свита', 'http://свита72.рф', '', '', '', 'Ландшафтная мастерская  "СВита" с 1997 года активно работает в области ландшафтного проектирования, благоустройства и озеленения территории. Оригинальные идеи и подлинное творчество являются отличительной чертой нашей компании. И это не случайно, так как высококвалифицированные специалисты в тесном кругу создают легкие и лаконичные образы и воплощают в жизнь самые эффектные идеи. Среди выполненных заказов нет обыкновенных, будь то коттедж, садовый участок, парк - в каждом случае это высокое качество работ и неповторимый архитектурный облик.  ', '2011-07-13', 8, 'card', 'released', 'Ландшафтная мастерская  "СВита"');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (30, 'Роддом №2', 'http://roddom2tumen.ru/', '', '', '', 'Родильному дому №2 города Тюмени в 2010 году исполнилось 55 лет. За этот период времени коллективом родильного дома принято более 190 тысяч новорожденных, а это население небольшого города, или почти треть жителей нашей родной Тюмени! ', '2011-07-30', 13, 'card', 'released', 'Родильному дому №2 города Тюмени в 2010 году исполнилось 55 лет. За этот период времени коллективом родильного дома принято более 190 тысяч новорожденных, а это население небольшого города, или почти треть жителей нашей родной Тюмени! ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (31, 'ТюменьПожСервис', 'http://tps72.com/', '', '', '', 'Корпоративный сайт одной из страрейших компаний занимающихся проектированием, поставкой и монтажом систем пожарной безопасности  ', '2011-08-02', 8, 'corp', 'released', 'Корпоративный сайт одной из страрейших компаний занимающихся проектированием, поставкой и монтажом систем пожарной безопасности  ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (32, 'Западно-Сибирский Центр Безопасности', 'http://zscb72.ru/', '', '', '', ' Западно-Сибирский Центр Безопасности, подбор персонала для охраны, база данных охранников ', '2011-08-19', 3, 'card', 'released', ' Западно-Сибирский Центр Безопасности, подбор персонала для охраны, база данных охранников ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (33, 'ООО Завод металлоизделий', 'http://horda72.ru/', '', '', '', 'Молодая, динамично развивающаяся организация, основанная в 2007 году. Основным направлением деятельности является изготовление емкостного оборудования, металлоконструкций и металлоизделий общестроительного и промышленного назначения. Предприятие обладает всем необходимым оборудованием для производства всего спектра строительных и промышленных металлоконструкций. ', '2011-08-24', 9, 'card', 'released', 'Молодая, динамично развивающаяся организация, основанная в 2007 году. Основным направлением деятельности является изготовление емкостного оборудования, металлоконструкций и металлоизделий общестроительного и промышленного назначения. Предприятие обладает всем необходимым оборудованием для производства всего спектра строительных и промышленных металлоконструкций. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (34, 'ООО Управляющая компания «Запсибгазпром»', 'http://укзсгп.рф', '', '', '', 'Производственная деятельность общества началась с января 2007 года. Предметом деятельности организации является оказание услуг по передаче электрической энергии по сетям и оборудованию, находящимся на балансе организации, до потребителей электрической энергии.  ', '2011-08-31', 8, 'corp', 'released', 'Производственная деятельность общества началась с января 2007 года. Предметом деятельности организации является оказание услуг по передаче электрической энергии по сетям и оборудованию, находящимся на балансе организации, до потребителей электрической энергии.  ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (36, 'Магазин Pinocchio', 'http://pinocchio72.ru', '', '', '', 'Брендовая детская одежда из Италии позволит создать гардероб для детей от 1 до 15 лет.  И мы предлагаем Вам как изделия для повседневного ношения, так и для праздничного. ', '2011-05-10', 12, 'ishop', 'released', 'Брендовая детская одежда из Италии позволит создать гардероб для детей от 1 до 15 лет.  И мы предлагаем Вам как изделия для повседневного ношения, так и для праздничного. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (37, 'Центр систем безопасности v.2.0', 'http://csb72.ru', '', '', '', 'ООО  «Центр Систем Безопасности»  занимается оптовой и розничной продажей оборудования для систем видеонаблюдения, охранных и пожарных систем, систем контроля и управления доступом, шлагбаумы, турникеты, системы автоматического пожаротушения и много другое. А также поставка оборудования под заказ. ', '2011-04-12', 7, 'ishop', 'released', 'ООО  «Центр Систем Безопасности»  ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (38, 'Серый кардинал', 'http://серыйкардинал.рф', '', '', '', '«Серый Кардинал» с 2005 года ведет бизнес в двух направлениях: Производство бумажных товаров  Оптовая торговля канцелярскими товарами ', '2011-04-22', 7, 'ishop', 'released', '«Серый Кардинал» с 2005 года ведет бизнес в двух направлениях: Производство бумажных товаров  Оптовая торговля канцелярскими товарами ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (39, 'Престиж авто', 'http://автопрестиж72.рф', '', '', '', ' Продажа автомобилей с пробегом ', '2011-04-20', 15, 'card', 'released', ' Продажа автомобилей с пробегом ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (40, 'Вся недвижимость в Тюмени', 'http://72дом.рф', '', '', '', 'Купить, продать, сдать, снять недвижимость в Тюмени ', '2011-03-02', 10, 'corp', 'released', 'Купить, продать, сдать, снять недвижимость в Тюмени ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (41, 'Ferranordic Machines', 'Ferranordic Machines', '', '', '', 'Автоцентр «Ферронордик машины» - официальный дилер ZAZ CHANCE в г.Тюмень.', '2011-03-24', 15, 'card', 'released', 'Автоцентр «Ферронордик машины» - официальный дилер ZAZ CHANCE в г.Тюмень.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (42, 'Портал городских событий Events72', 'http://events72.ru', '', '', '', 'Портал городских событий Тюмени ', '2011-02-09', 7, 'special', 'released', 'Портал городских событий Тюмени ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (43, 'Тюмень АвтоДеталь', 'http://автодеталь.com/', '', '', '', 'Выбор качественных и доступных комплектующих, аксессуаров и запчастей к автомобилям ', '2011-01-11', 15, 'corp', 'released', 'Выбор качественных и доступных комплектующих, аксессуаров и запчастей к автомобилям ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (44, 'Интернет магазин - Сытый папа', 'http://fullpapa.ru', '', '', '', 'Компания "Сытый папа" уже пять лет работает на оптово-розничном рынке продуктов питания и предлагает своим клиентам только качественные товары,  продукты питания - по самым низким ценам. Вкусно, полезно, недорого! ', '2011-01-21', 11, 'ishop', 'released', 'Компания "Сытый папа" уже пять лет работает на оптово-розничном рынке продуктов питания и предлагает своим клиентам только качественные товары,  продукты питания - по самым низким ценам. Вкусно, полезно, недорого! ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (45, 'Эй-Джи-Эй Сургут', 'http://aga-surgut.ru', '', '', '', 'Атомасла, современная автохимия и автокосметика. ', '2010-11-11', 15, 'ishop', 'released', 'Атомасла, современная автохимия и автокосметика. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (46, 'Многофункциональный комплекс Калинка', 'http://uk-kalinka.ru', '', '', '', 'Многофункциональный комплекс «Калинка» расположен на пересечении основных транспортных магистралей – улиц Республики и Профсоюзной. Проект позиционируется как уникальное место в центральной части города, обладает удачным расположением по отношению к транспортным потокам.', '2010-12-24', 7, 'corp', 'released', 'Многофункциональный комплекс «Калинка» ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (47, 'Кофейня МаксиМ', 'http://coffee.maxim-rest.ru', '', '', '', 'Кофейня «МаксиМ» - заведение для любителей задушевных разговоров за чашкой элитного чая и деловых людей, которые экономят время за крепким espresso.', '2010-12-16', 11, 'corp', 'released', 'Кофейня «МаксиМ» - заведение для любителей задушевных разговоров за чашкой элитного чая и деловых людей, которые экономят время за крепким espresso.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (48, 'Коллегия адвокатов Евгения Хабнера', 'http://khabner.ru', '', '', '', 'Коллегия адвокатов Евгения Хабнера', '2010-12-09', 8, 'card', 'released', 'Коллегия адвокатов Евгения Хабнера');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (49, 'Пейнтбольный клуб ШТУРМ v.2.0', 'http://schturm.ru', '', '', '', ' Пейнтбольный клуб ШТУРМ ', '2010-10-08', 7, 'card', 'released', ' Пейнтбольный клуб ШТУРМ ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (50, 'Комитт v.2.0', 'http://komitt.ru/', '', '', '', 'Весь спектр услуг по металлообработке и механообработке на станках', '2010-10-07', 8, 'card', 'released', 'Весь спектр услуг по металлообработке и механообработке на станках');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (51, 'Тюмень-Маркет v.2.0 ', 'http://www.tyumen-market.ru', '', '', '', 'Интернет магазин встраиваемой бытовой техники ', '2010-10-21', 16, 'ishop', 'released', 'Интернет магазин встраиваемой бытовой техники ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (52, 'Корзина72', 'http://korzina72.ru', '', '', '', 'Торговый Интернет-Центр ', '2010-10-01', 7, 'ishop', 'released', 'Торговый Интернет-Центр ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (53, 'Тюмень Крио Банк - стартовая страница', 'http://www.tmnkb.ru', '', '', '', 'Тюмень Крио Банк - стартовая страница', '2010-09-29', 7, 'card', 'released', 'Тюмень Крио Банк - стартовая страница');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (54, 'Всероссийское общество автомобилистов', 'http://www.voa72.ru', '', '', '', 'Всероссийское общество автомобилистов', '2010-08-11', 15, 'card', 'released', 'Всероссийское общество автомобилистов');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (55, 'Город', 'http://www.72gorod.ru', '', '', '', 'Агентство недвижимости ', '2010-07-15', 10, 'corp', 'released', 'Агентство недвижимости ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (56, 'Союз-Инвест', 'http://www.', '', '', '', 'Продажа квартир', '2010-07-15', 10, 'corp', 'released', 'Продажа квартир');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (57, 'Сибирский рубщик', 'http://www.sibsrub.ru', '', '', '', 'Деревянные дома – идеальный вариант северного строительства! ', '2010-07-07', 10, 'corp', 'released', 'Деревянные дома – идеальный вариант северного строительства! ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (58, 'АлисА', 'http://www.alisa72.ru', '', '', '', 'Интернет магазин товаров для детей! ', '2010-06-02', 12, 'ishop', 'released', 'Интернет магазин товаров для детей! ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (59, 'Многопрофильный медицинский центр', 'http://www.avicenna72.ru', '', '', '', 'Многопрофильный медицинский центр', '2010-05-12', 13, 'corp', 'released', 'Многопрофильный медицинский центр');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (60, 'Полиграф Интер', 'http://www.pi-gifts.ru', '', '', '', 'Сувенирная продукция, нанесение символики, изготовление изделий из пластика и оргстекла, полиграфия', '2010-05-11', 7, 'corp', 'released', 'Сувенирная продукция, нанесение символики, изготовление изделий из пластика и оргстекла, полиграфия');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (61, 'Непоседа', 'http://', '', '', '', ' Детский развлекательный центр', '2010-05-01', 7, 'card', 'released', ' Детский развлекательный центр');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (62, 'Пятница', 'http://www.friday72.ru/', '', '', '', 'Газета "Пятница" - жизнь только начинается... ', '2010-05-05', 3, 'card', 'released', 'Газета "Пятница" - жизнь только начинается... ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (63, 'Центр по профилактике и борьбе со СПИД', 'http://aids72.ru', '', '', '', 'Государственное лечебно-профилактическое учреждение Тюменской области «Центр по профилактике и борьбе  со СПИД и инфекционными заболеваниями. ', '2010-04-09', 13, 'corp', 'released', 'Государственное лечебно-профилактическое учреждение Тюменской области «Центр по профилактике и борьбе  со СПИД и инфекционными заболеваниями. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (64, 'Электра-M, продажа электроустановочных изделий', 'http://www.electram.ru', '', '', '', 'ЭЛЕКТРОМОНТАЖНЫЕ ИЗДЕЛИЯ ДЛЯ ПРОКЛАДКИ КАБЕЛЕЙ И ПРОВОДОВ ДО 1000 ВОЛЬТ', '2011-04-05', 7, 'ishop', 'released', 'ЭЛЕКТРОМОНТАЖНЫЕ ИЗДЕЛИЯ ДЛЯ ПРОКЛАДКИ КАБЕЛЕЙ И ПРОВОДОВ ДО 1000 ВОЛЬТ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (65, 'СК Потенциал', 'http://sk-potencial.ru', '', '', '', 'Инновационная, динамично развивающаяся строительная компания, создана в 2008 году на базе многопрофильного производственно-коммерческого предприятия «Факт-93», организованного на базе структур союзного значения, имеющих значительный опыт работы в строительстве, как в Тюменской области, так и в других регионах Российской Федерации. ', '2010-04-15', 10, 'corp', 'released', 'Инновационная, динамично развивающаяся строительная компания, создана в 2008 году на базе многопрофильного производственно-коммерческого предприятия «Факт-93», организованного на базе структур союзного значения, имеющих значительный опыт работы в строительстве, как в Тюменской области, так и в других регионах Российской Федерации. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (66, 'Хорошее здоровье, интернет-магазин товаров для здоровья', 'http://www.goodhealth.ru', '', '', '', 'Каталог продукции Vision с описаниями. Заказ БАД и косметики с доставкой.   ', '2010-03-02', 13, 'ishop', 'released', 'Каталог продукции Vision с описаниями. Заказ БАД и косметики с доставкой.   ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (67, 'Объединение риелторов Тюмени', 'http://ort72.ru', '', '', '', 'Объединение риелторов Тюмени', '2010-03-09', 3, 'card', 'released', 'Объединение риелторов Тюмени');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (68, 'Avanti pizza', 'http://www.avanti-pizza.ru', '', '', '', 'Новый проект от известной сети ресторанов. Круглосуточная доставка пиццы.', '2010-03-11', 11, 'ishop', 'released', 'Новый проект от известной сети ресторанов. Круглосуточная доставка пиццы.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (69, 'Инжиниринговая компания БИК (v.2.0)', 'http://www.biktech.ru', '', '', '', 'Инжиниринговая компания ', '2010-03-17', 7, 'corp', 'released', 'Инжиниринговая компания ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (70, 'Тюмень Крио Банк', '/', '', '', '', 'Научная деятельность \r\n', '2010-03-10', 7, 'corp', 'released', 'Научная деятельность \r\n');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (71, 'БИК', 'http://www.biktech.ru', '', '', '', 'Инженерная компания ', '2012-02-08', 7, 'corp', 'released', 'Инженерная компания ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (72, 'Утяшевоагропромснаб', 'http://www.uaps72.ru', '', '', '', 'Продажа щебня и песка, услуги по выгрузке вагонов, прием опасных грузов. ', '2010-02-03', 7, 'corp', 'released', 'Продажа щебня и песка, услуги по выгрузке вагонов, прием опасных грузов. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (73, 'ЗАО Племзавод-Юбилейный', 'http://www.ishimpzu.ru', '', '', '', ' ЗАО «Племзавод-Юбилейный»  - крупное, динамично-развивающееся предприятие агропромышленного сектора России. Основные направления деятельности: —  растениеводство  – общие пахотные площади 38 000 га; получение 100 000 тонн зерна в год; —  свиноводство  – селекционный центр на 2000 свиноматок и комплекс по откорму товарного поголовья на 150 000 свиней в год; —  производство комбикормов  – 20 тонн в час; —  мясная переработка  – объем производства 10 000 тонн колбас в год;  —  оптовая и розничная торговля  – оптовый склад, мелкооптовый склад, торговое представительство в г. Тюмени.', '2010-02-11', 11, 'corp', 'released', ' ЗАО «Племзавод-Юбилейный»  - крупное, динамично-развивающееся предприятие агропромышленного сектора России. Основные направления деятельности: —  растениеводство  – общие пахотные площади 38 000 га; получение 100 000 тонн зерна в год; —  свиноводство  – селекционный центр на 2000 свиноматок и комплекс по откорму товарного поголовья на 150 000 свиней в год; —  производство комбикормов  – 20 тонн в час; —  мясная переработка  – объем производства 10 000 тонн колбас в год;  —  оптовая и розничная торговля  – оптовый склад, мелкооптовый склад, торговое представительство в г. Тюмени.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (74, 'Дизайн Клуб Центр', 'http://www.design-club.net', '', '', '', 'Элитная мебель, фурнитура, постельное белье, сантехника и свет. Сайт-каталог лучшей мебели. \r\nРод деятельности: Дизайн, продажа, установка мебели и аксессуаров бизнес-класса ', '2010-02-01', 7, 'corp', 'released', 'Элитная мебель, фурнитура, постельное белье, сантехника и свет. Сайт-каталог лучшей мебели. \r\nРод деятельности: Дизайн, продажа, установка мебели и аксессуаров бизнес-класса ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (75, 'ИНЕС - Институт экономических стратегий', 'http://www.ines-sib.ru', '', '', '', 'Институт экономических стратегий Отделения общественных наук Российской академии наук. В ИНЭС работает более 300 профессионалов в области корпоративного, государственного,  и общественного управления, в том числе более 60 докторов и кандидатов наук. За 19 лет партнерами и клиентами ИНЭС стали более 6000 российских и зарубежных организаций. ', '2010-01-26', 7, 'corp', 'released', 'Институт экономических стратегий Отделения общественных наук Российской академии наук. В ИНЭС работает более 300 профессионалов в области корпоративного, государственного,  и общественного управления, в том числе более 60 докторов и кандидатов наук. За 19 лет партнерами и клиентами ИНЭС стали более 6000 российских и зарубежных организаций. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (76, 'Автоломбард', 'http://www.siblombard.ru', '', '', '', 'Автоломбард', '2010-01-27', 15, 'corp', 'released', 'Автоломбард');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (77, 'Эверест', 'http://www.everest72.ru', '', '', '', 'Промышленный альпинизм ', '2010-01-21', 7, 'corp', 'released', 'Промышленный альпинизм ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (78, 'АвтоТрейд-Тюмень', 'http://www.car72.com', '', '', '', 'Продажа подержанных автомобилей с очень качественным сервисом и массой дополнительных услуг ', '2009-12-23', 15, 'corp', 'released', 'Продажа подержанных автомобилей с очень качественным сервисом и массой дополнительных услуг ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (79, 'Сеть ресторанов Кои-Сан', 'http://www.koe-san.ru', '', '', '', 'Бывшие рестораны "Ем-Сам" теперь называются "Кои-Сан". Множество изменений, кроме названия и в самих заведениях. ', '2010-12-08', 11, 'ishop', 'released', 'Бывшие рестораны "Ем-Сам" теперь называются "Кои-Сан". Множество изменений, кроме названия и в самих заведениях. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (80, 'Реклама в лифтах', 'http://www.lift-reklama.org', '', '', '', 'Практически единственное месте вне квартиры, где каждый гражданин бывает ежедневно и не один раз - это лифт! ', '2009-12-16', 3, 'card', 'released', 'Практически единственное месте вне квартиры, где каждый гражданин бывает ежедневно и не один раз - это лифт! ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (81, 'Dynamic Future', 'http://www.dynamicfuture.ru', '', '', '', 'Социальная система прогнозирования поведения на фондовом рынке ', '2009-12-16', 7, 'corp', 'released', 'Социальная система прогнозирования поведения на фондовом рынке ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (82, 'Neo-Clinic v.4.0', 'http://www.neo-clinic.com', '', '', '', 'Клиника эстетической и лазерной медицины NEO-Clinic оказывает медицинские услуги в сфере дерматовенерологии, врачебной косметологии и эстетической медицины, онкологии, а также лазерной, пластической, сосудистой и малоинвазивной хирургии. За это время, более 15 000 жителей Тюменской области и других регионов России выбрали для лечения NEO-Clinic. Высокопрофессиональный коллектив предлагает своим пациентам как уже зарекомендовавшие себя, так и самые современные методики сохранения красоты и здоровья. ', '2009-12-09', 13, 'corp', 'released', 'Клиника эстетической и лазерной медицины NEO-Clinic оказывает медицинские услуги в сфере дерматовенерологии, врачебной косметологии и эстетической медицины, онкологии, а также лазерной, пластической, сосудистой и малоинвазивной хирургии. За это время, более 15 000 жителей Тюменской области и других регионов России выбрали для лечения NEO-Clinic. Высокопрофессиональный коллектив предлагает своим пациентам как уже зарекомендовавшие себя, так и самые современные методики сохранения красоты и здоровья. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (83, 'Ресторан Чарка', 'http://www.charka72.ru', '', '', '', 'Русский ресторан, не громкий, не кричащий, а уютный, добрый, со спокойной, домашней атмосферой, где можно отдохнуть от суеты, насладиться теплой неспешной беседой с близкими людьми. ', '2009-12-07', 11, 'corp', 'released', 'Русский ресторан, не громкий, не кричащий, а уютный, добрый, со спокойной, домашней атмосферой, где можно отдохнуть от суеты, насладиться теплой неспешной беседой с близкими людьми. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (84, 'Евролюкс', 'http://www.hotels72.ru', '', '', '', 'Квартиры посуточно ', '2009-11-30', 10, 'corp', 'released', 'Квартиры посуточно ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (85, 'Недвижимость и строительство', 'http://www.72box.ru', '', '', '', 'Вторая версия портала о недвижимости и строительстве ', '2009-11-17', 10, 'special', 'released', 'Вторая версия портала о недвижимости и строительстве ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (86, 'ЗАО Бизнес-Перспектива, ГК ТюмБит', 'http://www.axbp.ru', '', '', '', 'Современный деловой сайт, без тетенек с графиками и без мужиков с портфелями. Если по ссылке старый сайт, значит заказчик еще его не наполнил содержванием ', '2009-11-25', 7, 'corp', 'released', 'Современный деловой сайт, без тетенек с графиками и без мужиков с портфелями. Если по ссылке старый сайт, значит заказчик еще его не наполнил содержванием ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (87, 'Портал Строй Информ', 'http://www.stroy72.com', '', '', '', 'Очень интересный проект, кардинально отличающийся от аналогичных строительных порталов. Портал объединяющий компании, занимающиеся строительными материалами. Онлайн цены и остатки всех товаров. ', '2009-11-25', 10, 'special', 'released', 'Очень интересный проект, кардинально отличающийся от аналогичных строительных порталов. Портал объединяющий компании, занимающиеся строительными материалами. Онлайн цены и остатки всех товаров. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (88, 'Боливар', 'http://www.bolivar-baby.ru', '', '', '', 'Интернет магазин товаров для детей и беременных ', '2009-10-22', 7, 'ishop', 'released', 'Интернет магазин товаров для детей и беременных ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (89, 'ШИНДАН', 'http://www.shindan.ru', '', '', '', 'Фирма занимается строительством загородных домов и евроремонтом квартир, коттеджей, офисов под-ключ в Тюменской области. ', '2009-10-08', 10, 'corp', 'released', 'Фирма занимается строительством загородных домов и евроремонтом квартир, коттеджей, офисов под-ключ в Тюменской области. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (90, 'Бартерная сеть Уральского Федерального Округа', '...', '', '', '', 'Это наш собственный проект, который мы делаем и попытаемся развить на собственные средства. Бартер сейчас довольно актуален, а мы придумали очень оригинальную идею для сайта, разработали основные алгортимы подбора цепочек бартерных сделок, сейчас занимаемся доводкой, шлифовкой и разработкой модели монетизации сайта.  Внимание инвесторов! Если вам интересна эта идея, просим вас связаться с нами по тел +7(904)493-21-81 для обсуждения участия в проекте.  ', '2009-10-05', 7, 'special', 'released', 'Это наш собственный проект, который мы делаем и попытаемся развить на собственные средства. Бартер сейчас довольно актуален, а мы придумали очень оригинальную идею для сайта, разработали основные алгортимы подбора цепочек бартерных сделок, сейчас занимаемся доводкой, шлифовкой и разработкой модели монетизации сайта.  Внимание инвесторов! Если вам интересна эта идея, просим вас связаться с нами по тел +7(904)493-21-81 для обсуждения участия в проекте.  ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (91, 'Форум молодёжи 2009', 'http://forum2009.1gb.ru/', '', '', '', 'Форум молодёжи 2009', '2009-09-29', 7, 'special', 'released', 'Форум молодёжи 2009');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (92, 'Мой Песик', '...', '', '', '', 'Интернет-магазин товаров и аксессуаров для собак и, возможно, кошек.', '2009-09-16', 7, 'ishop', 'released', 'Интернет-магазин товаров и аксессуаров для собак и, возможно, кошек.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (93, 'УКПТО ТюменьАвтоТранс', 'http://www.tumavtotrans.ru', '', '', '', 'Привет Конкуренты! Возникла необходимость добавить на сайт кроме автобусов еще и коммунальные машины. Теперь на сайте представлено более 120 видов автобусов и комунальных машин, а также прайсы и запчасти', '2009-09-15', 7, 'corp', 'released', 'Привет Конкуренты! Возникла необходимость добавить на сайт кроме автобусов еще и коммунальные машины. Теперь на сайте представлено более 120 видов автобусов и комунальных машин, а также прайсы и запчасти');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (94, 'Яхт-Клуб Рубин', 'http://www.rubin-club.ru', '', '', '', 'Очень позитивная картинка, прекрасное место для отдыха! ', '2009-07-15', 7, 'corp', 'released', 'Очень позитивная картинка, прекрасное место для отдыха! ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (95, 'Пеликан-Тюмень', 'http://www.pelican-tmn.ru', '', '', '', 'Крупный оптовый поставщик нижнего белья и колготок известной марки Pelican. Сайт каталог с 2000 товаров. На данный момент вносим информацию по соответствию размеров и цветов белья. Сайт уже можно посмотреть. Уникальная разработка : автоматическая синхронизация каталога товаров марки Pelican с сайта производителя. ', '2009-07-09', 12, 'ishop', 'released', 'Крупный оптовый поставщик нижнего белья и колготок известной марки Pelican. Сайт каталог с 2000 товаров. На данный момент вносим информацию по соответствию размеров и цветов белья. Сайт уже можно посмотреть. Уникальная разработка : автоматическая синхронизация каталога товаров марки Pelican с сайта производителя. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (96, 'Торговый дом СанТехКомплект', 'http://www.tdstk.ru', '', '', '', 'Крупный каталог более 3000 наименований сантехники, санфаянса и всего что с этим связано. Сайт уже готов сам по себе, но внесение трех тысяч наименований, с фотографиями и описаниями, к сожалению, не быстрое занятие. ', '2009-07-16', 7, 'ishop', 'released', 'Крупный каталог более 3000 наименований сантехники, санфаянса и всего что с этим связано. Сайт уже готов сам по себе, но внесение трех тысяч наименований, с фотографиями и описаниями, к сожалению, не быстрое занятие. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (97, 'Интернет магазин СПТ-Тюмень', 'http://www.vipplomba.ru', '', '', '', 'Специализация предприятия - продажа пломб, пломбираторов, пожарного оборудования и знаков. Сайт практически готов, осталось внести несколько сотен фотографий. ', '2009-07-04', 7, 'ishop', 'released', 'Специализация предприятия - продажа пломб, пломбираторов, пожарного оборудования и знаков. Сайт практически готов, осталось внести несколько сотен фотографий. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (98, 'Детективное агентство BIT', 'http://www.db-bit.ru', '', '', '', 'Детективные агентства на нашем рынке практически не представлены, агентство BIT состоящее из бывших сотрудников спецслужб оказывает целый спектр услуг для населения и юридических лиц. Особенно интересно, как нам кажется - получение данных о любой компании - вплоть до оборотов, составе учредителей, репутации и участия в судебных процессах, выданых кредитах и в целом кредитоспособности. ', '2009-07-15', 7, 'card', 'released', 'Детективные агентства на нашем рынке практически не представлены, агентство BIT состоящее из бывших сотрудников спецслужб оказывает целый спектр услуг для населения и юридических лиц. Особенно интересно, как нам кажется - получение данных о любой компании - вплоть до оборотов, составе учредителей, репутации и участия в судебных процессах, выданых кредитах и в целом кредитоспособности. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (99, 'Кофейня и караоке-клуб AVENЮ', 'http://www.avenue-cafe.ru', '', '', '', 'Очень красивый сайт. И необычный формат - днем это кофейня, а вечером - караоке-бар. ', '2009-06-11', 11, 'corp', 'released', 'Очень красивый сайт. И необычный формат - днем это кофейня, а вечером - караоке-бар. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (100, 'Интернет магазин Цветкоff', 'http://www.cvetkoff.com', '', '', '', 'Интернет магазин доставки цветов в Тюмени. ', '2009-06-30', 7, 'ishop', 'released', 'Интернет магазин доставки цветов в Тюмени. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (101, 'Ресторан Винтаж', 'http://www.vin-tage.ru', '', '', '', 'Необычно шикарный ресторан в самом центре города с демократичными ценами. ', '2009-06-24', 11, 'corp', 'released', 'Необычно шикарный ресторан в самом центре города с демократичными ценами. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (102, 'Сеть ресторанов Максим', 'http://www.maxim-rest.ru', '', '', '', 'Самая крупная и популярная сеть ресторанов в Тюмени - "Максим" с которой мы сотрудничаем уже не первый год. Это третья версия сайта, первую делали наши конкуренты (привет!) вторая уже была делом наших рук, и, спустя год - этот вариант. Легкий, простой, понятный, но при этом очень навороченный внутри.  Уникальная разработка: система управления сайтом и все модули были адаптированы к 15 существующим заведениям сети и предусмотрено дальнейшее их расширение. Гостевая книга на AJAX, фильтрация заведений по тематике или набору услуг. В итоге - управлять сайтом с 15 заведениями - также просто как и с одним. ', '2009-06-22', 11, 'corp', 'released', 'Самая крупная и популярная сеть ресторанов в Тюмени - "Максим" с которой мы сотрудничаем уже не первый год. Это третья версия сайта, первую делали наши конкуренты (привет!) вторая уже была делом наших рук, и, спустя год - этот вариант. Легкий, простой, понятный, но при этом очень навороченный внутри.  Уникальная разработка: система управления сайтом и все модули были адаптированы к 15 существующим заведениям сети и предусмотрено дальнейшее их расширение. Гостевая книга на AJAX, фильтрация заведений по тематике или набору услуг. В итоге - управлять сайтом с 15 заведениями - также просто как и с одним. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (103, 'Дизайн студия URAN 238', 'http://www.uran238.ru', '', '', '', 'Когда заказчик показал фотографии помещений для которых они сделали дизайн никто из наших сотрудников не догадался что это не фотографии а 3D модели - настолько реалистично они выглядели. А уж обмануть наметанный глаз не так-то просто. На сайте действительно есть на что посмотреть, и думаю дизайн нашего офиса мы будем заказывать именно в URAN 238. Уникальная разработка: интерактивный прайс-лист с мгновенной калькуляцией по нескольким параметрам.', '2009-06-16', 7, 'card', 'released', 'Когда заказчик показал фотографии помещений для которых они сделали дизайн никто из наших сотрудников не догадался что это не фотографии а 3D модели - настолько реалистично они выглядели. А уж обмануть наметанный глаз не так-то просто. На сайте действительно есть на что посмотреть, и думаю дизайн нашего офиса мы будем заказывать именно в URAN 238. Уникальная разработка: интерактивный прайс-лист с мгновенной калькуляцией по нескольким параметрам.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (104, 'Птицефабрика Пышминская', 'http://www.pishma.ru', '', '', '', 'Корпоративный сайт птицефабрики "Пышминская".', '2009-04-22', 11, 'corp', 'released', 'Корпоративный сайт птицефабрики "Пышминская".');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (105, 'Каталог товаров - Северный сосед', 'http://www.nord-s.ru', '', '', '', 'Большой каталог оборудования для баров, кафе, ресторанов. Каталог автоматически загружается из 1С. ', '2009-04-15', 7, 'ishop', 'released', 'Большой каталог оборудования для баров, кафе, ресторанов. Каталог автоматически загружается из 1С. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (106, 'Ресторан Потаскуй', 'http://www.potaskuy.ru', '', '', '', 'Очень качественный по оформлению сайт, простой, но при этом полнофункциональный для администратора сайта. ', '2009-02-18', 11, 'corp', 'released', 'Очень качественный по оформлению сайт, простой, но при этом полнофункциональный для администратора сайта. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (107, 'Бизнес портал Компас+', 'http://www.komp72.ru', '', '', '', 'Полностью переработанный старый портал "Компас+", добавлено множество современных функций, обновлен внешний вид. Самое главное - заказчик получил полноценную возможность управлять своим сайтом от начала и до конца. В настоящий момент сайт модернизируется и развивается силами заказчика.', '2009-02-17', 7, 'special', 'released', 'Полностью переработанный старый портал "Компас+", добавлено множество современных функций, обновлен внешний вид. Самое главное - заказчик получил полноценную возможность управлять своим сайтом от начала и до конца. В настоящий момент сайт модернизируется и развивается силами заказчика.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (108, 'Интернет магазин канцелярии Золотая Нить', 'http://www.zolnit.ru', '', '', '', 'Компания "Золотая Нить" - крупный поставщик канцелярии. Мы сделали полностью автоматизированный интернет-магазин: в два нажатия кнопки экспортируется прайс из 1С:Торговля и склад. Не менее просто закачиваются фотографии - достаточно назвать ее как артикул товара и также двумя нажатиями закачать на сайт. Выполняя этот проект мы научились новой технологии - "Сайт на компакт-диске", поэтому теперь компания "Золотая Нить" сможет раздать свой фирменный компакт диск с точной копией сайта - и все ее несколько тысяч клиентов, даже не имея доступ в интернет смогут заказывать товары по удобному каталогу.  А мы внесем новый пункт в прайс-лист "Сайт на компакт-диске". ', '2009-01-30', 7, 'ishop', 'released', 'Компания "Золотая Нить" - крупный поставщик канцелярии. Мы сделали полностью автоматизированный интернет-магазин: в два нажатия кнопки экспортируется прайс из 1С:Торговля и склад. Не менее просто закачиваются фотографии - достаточно назвать ее как артикул товара и также двумя нажатиями закачать на сайт. Выполняя этот проект мы научились новой технологии - "Сайт на компакт-диске", поэтому теперь компания "Золотая Нить" сможет раздать свой фирменный компакт диск с точной копией сайта - и все ее несколько тысяч клиентов, даже не имея доступ в интернет смогут заказывать товары по удобному каталогу.  А мы внесем новый пункт в прайс-лист "Сайт на компакт-диске". ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (109, 'Sport Мода - сеть магазинов спортивных товаров и одежды', 'http://www.sportmoda.ru', '', '', '', 'К сожалению, контент для сайта не был предоставлен. ', '2009-01-14', 7, 'card', 'released', 'К сожалению, контент для сайта не был предоставлен. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (110, 'ТюмТИПБ - институт повышения квалификации бухгалтеров', 'http://www.tumtipb.ru', '', '', '', 'Сначала они пришли к нам за небольшими доработками к существующему сайту, а через полгода мы убедили сделать их полноценный проект - который сейчас существенно экономит время и деньги. На сайте организована полноценная система документооборота, касающаяся записи на курсы и семинары и получение всех необходимых документов.  При появлении нового курса - заказчик вносит его на сайт, а посетители самостоятельно на него записываются, оплачивают, заключают договора и получают отчетные документы..Остается только подойти в обнозначенное время на сам семинар.', '2009-01-16', 7, 'corp', 'released', 'Сначала они пришли к нам за небольшими доработками к существующему сайту, а через полгода мы убедили сделать их полноценный проект - который сейчас существенно экономит время и деньги. На сайте организована полноценная система документооборота, касающаяся записи на курсы и семинары и получение всех необходимых документов.  При появлении нового курса - заказчик вносит его на сайт, а посетители самостоятельно на него записываются, оплачивают, заключают договора и получают отчетные документы..Остается только подойти в обнозначенное время на сам семинар.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (111, 'Детский сайт ГИБДД', 'http://www.svetoforchik.ru', '', '', '', 'Сайт посвящен детской безопасности дорожного движения. Видеоролики, раскраски, конкурсы и ребусы. Информация для детей и их родителей. ', '2008-12-24', 7, 'corp', 'released', 'Сайт посвящен детской безопасности дорожного движения. Видеоролики, раскраски, конкурсы и ребусы. Информация для детей и их родителей. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (112, 'Центр систем безопасности.', 'http://www.csb72.ru', '', '', '', 'Продажа оборудования для вашей безопасности ', '2008-12-05', 7, 'ishop', 'released', 'Продажа оборудования для вашей безопасности ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (113, 'Лифт-Паркинг', '/', '', '', '', 'Автоматизированные многоэтажные парковки скоро будут и в Тюмени ', '2008-12-11', 7, 'card', 'released', 'Автоматизированные многоэтажные парковки скоро будут и в Тюмени ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (114, 'Клиника мужского здоровья Neo-Andros', 'http://www.neo-andros.ru', '', '', '', 'Клиника для мужчин, предоставляющая полный спектр медицинского обследования и лечения. Специализация - лечение и профилактика зппп, кожных болезней, репродуктивных органов ', '2008-11-19', 13, 'corp', 'released', 'Клиника для мужчин, предоставляющая полный спектр медицинского обследования и лечения. Специализация - лечение и профилактика зппп, кожных болезней, репродуктивных органов ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (115, 'Издательский дом Тая-АгроМедиа', 'http://www.tayagromedia.ru/', '', '', '', 'Издательский дом «ТАЯ-АгроМедиа» (ООО ПКГ «ТАЯ») Редакция журналов «Сельский Округ сегодня» и «Агрофорум» ', '2008-11-12', 7, 'corp', 'released', 'Издательский дом «ТАЯ-АгроМедиа» (ООО ПКГ «ТАЯ») Редакция журналов «Сельский Округ сегодня» и «Агрофорум» ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (116, 'NEO-Clinic. Клиника эстетической и лазерной медицины', 'http://www.neo-clinic.com', '', '', '', '-"Нео-Клиник это рай" -"Я прихожу сюда как на праздник" Именно так отзываются клиенты NEO-Clinic о результатах которые они получают. Самые современные методики, новейшее оборудование и высококлассные доктора - именно эти слагаемые уже больше трех лет делают наших Тюменок красивее и моложе. p.s. С NEO-Clinic началась и история нашей компании :) ', '2008-11-12', 13, 'corp', 'released', '-"Нео-Клиник это рай" -"Я прихожу сюда как на праздник" Именно так отзываются клиенты NEO-Clinic о результатах которые они получают. Самые современные методики, новейшее оборудование и высококлассные доктора - именно эти слагаемые уже больше трех лет делают наших Тюменок красивее и моложе. p.s. С NEO-Clinic началась и история нашей компании :) ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (117, 'Департамент занятости населения Ямало-Ненецкого автономного округа', 'http://www.zanyanao.ru', '', '', '', 'Стильный и удобный сайт для соискателей и работодателей ', '2008-11-04', 8, 'corp', 'released', 'Стильный и удобный сайт для соискателей и работодателей ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (118, 'Портал Info City', 'http://www.tyumen-online.ru', '', '', '', 'Интересный городской портал с веб-камерами ', '2008-10-16', 7, 'special', 'released', 'Интересный городской портал с веб-камерами ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (119, 'Тепло-Сервис', 'http://www.teplo-tyumeni.ru', '', '', '', 'Перенос сайта на нашу систему управления. Редизайн сайта ', '2008-10-15', 7, 'corp', 'released', 'Перенос сайта на нашу систему управления. Редизайн сайта ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (120, 'СтройСити', '/', '', '', '', 'Каталог строительных материалов. Был изготовлен только макет сайта. ', '2008-09-09', 10, 'corp', 'released', 'Каталог строительных материалов. Был изготовлен только макет сайта. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (121, 'ЕвроТехСервис', 'http://www.ets72.ru', '', '', '', 'Официальный представитель завода TATRA. Каталог грузовиков и запчастей к ним. ', '2008-09-16', 15, 'corp', 'released', 'Официальный представитель завода TATRA. Каталог грузовиков и запчастей к ним. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (122, '	 Аккумуляторный завод "Алькор"', 'http://www.alkor-tmn.ru', '', '', '', 'Корпоративный сайт многопрофильной коммерческой фирмы, специализирущейся на производстве аккумуляторных батарей для тяжелых условий севера. ', '2008-10-08', 7, 'corp', 'released', 'Корпоративный сайт многопрофильной коммерческой фирмы, специализирущейся на производстве аккумуляторных батарей для тяжелых условий севера. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (123, 'Ваш налоговый консультант', 'http://www.vnk72.ru', '', '', '', 'Сайт-визитка компании предоставляющей услуги налогового консультирования. ', '2008-10-08', 8, 'corp', 'released', 'Сайт-визитка компании предоставляющей услуги налогового консультирования. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (124, 'Департамент Здравоохранения Тюменской области', 'http://www.dzto.ru', '', '', '', 'Официальный сайт департамента ', '2008-09-23', 13, 'corp', 'released', 'Официальный сайт департамента ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (125, 'Ритейл Технолоджис', 'http://www.retail-t.ru', '', '', '', 'На сайте впервые применена технология смены картинки на фоне сайта в зависимости от раздела.', '2008-09-20', 7, 'corp', 'released', 'На сайте впервые применена технология смены картинки на фоне сайта в зависимости от раздела.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (126, 'Доставка DVD дисков', 'http://www.vdomkino.ru', '', '', '', 'Очень простой сайт-визитка ', '2008-09-10', 7, 'card', 'released', 'Очень простой сайт-визитка ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (127, 'МПК Атлант', 'http://www.mpkatlant.com', '', '', '', 'Корпоративный сайт холдиноговой компании, объединяющей множество видов деятельности. Подробности на сайте', '2008-09-08', 7, 'corp', 'released', 'Корпоративный сайт холдиноговой компании, объединяющей множество видов деятельности. Подробности на сайте');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (128, 'Салон красоты Рандеву', 'http://www.randevu72.ru', '', '', '', 'Сайт-визитка салона красоты на ул. Республики  г Тюмени ', '2008-09-05', 13, 'card', 'released', 'Сайт-визитка салона красоты на ул. Республики  г Тюмени ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (129, 'NEO-Travel Каталог клиник со всего мира', 'http://www.neo-travel.net', '', '', '', 'NEO-Travel путешествия для оздоровления. Созданное на базе NEO-Clinic подразделение, специализирующееся на подборе туров для прохождения курсов лечения и профилактики заболеваний всех видов. На сайте собрано боле 250 клиник из 75 стран мира с подробной информацией о клиниках и методах лечения. Можно, выбрав одну из проблем - найти специализированную клинику зарубежом. ', '2008-09-03', 13, 'corp', 'released', 'NEO-Travel путешествия для оздоровления. Созданное на базе NEO-Clinic подразделение, специализирующееся на подборе туров для прохождения курсов лечения и профилактики заболеваний всех видов. На сайте собрано боле 250 клиник из 75 стран мира с подробной информацией о клиниках и методах лечения. Можно, выбрав одну из проблем - найти специализированную клинику зарубежом. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (130, 'Отель Савалан', 'http://www.savalan72.ru', '', '', '', 'Новая гостиница в г. Тюмень, расположенная на улице Московский тракт. Описание, фотогалерея, цены. ', '2008-08-26', 7, 'corp', 'released', 'Новая гостиница в г. Тюмень, расположенная на улице Московский тракт. Описание, фотогалерея, цены. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (131, 'Пейнтбольно-страйкбольный клуб Штурм', 'http://www.schturm.ru', '', '', '', 'Официальный сайт клуба "Штурм". Пейнтбол, страйкбол, база отдыха, каталог оборудования. ', '2008-08-18', 7, 'card', 'released', 'Официальный сайт клуба "Штурм". Пейнтбол, страйкбол, база отдыха, каталог оборудования. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (132, 'Портал недвижимости (Недвижимость и Строительство)', 'http://www.72box.ru', '', '', '', 'Реализован крупный и многофункциональный портал, объединяющий все предложения недвижимости, новостройки.  Свежие новости, комментарии специалистов. Специиальный доступ для компаний и риэлторских агентств для размещения информации о себе. ', '2008-06-19', 10, 'special', 'released', 'Реализован крупный и многофункциональный портал, объединяющий все предложения недвижимости, новостройки.  Свежие новости, комментарии специалистов. Специиальный доступ для компаний и риэлторских агентств для размещения информации о себе. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (133, 'Аккумуляторный дом', 'http://www.akkdom.ru', '', '', '', 'Официальный сайт самого крупного поставщика аккумуляторных батарей в г. Тюмень. Каталог продукции. ', '2008-06-17', 7, 'corp', 'released', 'Официальный сайт самого крупного поставщика аккумуляторных батарей в г. Тюмень. Каталог продукции. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (134, 'Каталог одежды для беременных Леди и Беби', 'http://www.lady-baby.ru', '', '', '', 'Корпоративный сайт компании, производящей одежду для беременных. Каталог, прайс, фотографии моделей. Информация для беременных, календарь беременности ', '2008-05-08', 12, 'corp', 'released', 'Корпоративный сайт компании, производящей одежду для беременных. Каталог, прайс, фотографии моделей. Информация для беременных, календарь беременности ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (135, 'Федерация Футбола Тюменской области', 'http://sport.72box.ru', '', '', '', 'Все Тюменские футбольные новости и события, общение. Единый сайт для всех Тюменских футболистов, ставший самой популярной площадкой в тюменском интернете. ', '2008-05-10', 7, 'card', 'released', 'Все Тюменские футбольные новости и события, общение. Единый сайт для всех Тюменских футболистов, ставший самой популярной площадкой в тюменском интернете. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (136, 'УК Тюменские Моторостроители', 'http://www.uktm.ru', '', '', '', 'Управляющая компания крупнейшего завода "Тюменские моторостроители" ', '2008-05-09', 7, 'corp', 'released', 'Управляющая компания крупнейшего завода "Тюменские моторостроители" ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (137, ' Фотостудия Чижовой Надежды', 'http://www.fotograf72.ru', '', '', '', 'Сайт известных тюменских фотографов - Надежды Чижовой и Сергея Чижова и их коллег - видеооператоров с примерами работ.', '2008-04-17', 7, 'card', 'released', 'Сайт известных тюменских фотографов - Надежды Чижовой и Сергея Чижова и их коллег - видеооператоров с примерами работ.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (138, 'ГЛПУ ТО Областной офтальмологический диспансер', 'http://www.oofd-tmn.ru', '', '', '', 'Оказывает специализированную медицинскую помощь жителям Тюмени и Тюменской области с 1949 года. На сайте описаны все услуги, медицинский персонал. Есть возможность записаться на прием. ', '2008-02-13', 13, 'corp', 'released', 'Оказывает специализированную медицинскую помощь жителям Тюмени и Тюменской области с 1949 года. На сайте описаны все услуги, медицинский персонал. Есть возможность записаться на прием. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (139, 'Автозапчасти для иномарок Ириал-Авто', 'http://www.irial-auto.ru', '', '', '', 'Группа компаний объединенных с целью полного удовлетворения потребностей в запчастях владельцев всех иностранных автомобилей. ', '2008-02-13', 3, 'corp', 'released', 'Группа компаний объединенных с целью полного удовлетворения потребностей в запчастях владельцев всех иностранных автомобилей. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (140, 'Финансовая компания Finance Capital Group', 'http://www.fcgr.ru/', '', '', '', 'Корпоративный сайт финансовой компании "Финанс Кэпитал Групп" ', '2008-01-15', 7, 'corp', 'released', 'Корпоративный сайт финансовой компании "Финанс Кэпитал Групп" ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (141, 'Каталог нефтегазопромыслового оборудование Комитт', 'http://www.komitt.ru', '', '', '', 'Каталог товаров и оборудования ', '2008-01-17', 7, 'corp', 'released', 'Каталог товаров и оборудования ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (142, 'Каталог гостиниц России - Служба гостиничного бронирования', 'http://www.h72.ru', '', '', '', 'Оригинальный сайт, содержащий огромную базу данных обо всех Российских гостиницах, с возможностью online  бронирования. ', '2007-12-26', 7, 'corp', 'released', 'Оригинальный сайт, содержащий огромную базу данных обо всех Российских гостиницах, с возможностью online  бронирования. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (143, 'Сайт средней школы №69 г. Тюмени', 'http://www.h72.ru', '', '', '', 'Официальный сайт средней школы №69 г Тюмени. Форум для одноклассников.', '2007-11-21', 7, 'corp', 'released', 'Официальный сайт средней школы №69 г Тюмени. Форум для одноклассников.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (144, 'ОАО Тюменский Рыбокомбинат', 'http://www.fishkomb.ru', '', '', '', 'Официальный сайт ОАО "Тюменский Рыбокомбинат". О предприятии, продукция, фото, раскрытие информации. ', '2007-10-10', 11, 'corp', 'released', 'Официальный сайт ОАО "Тюменский Рыбокомбинат". О предприятии, продукция, фото, раскрытие информации. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (145, 'Элемент-Сервис', 'http://www.umtsk.ru', '', '', '', 'Продажа запчастей для импортной техники ', '2007-09-19', 7, 'corp', 'released', 'Продажа запчастей для импортной техники ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (146, 'Тюменская Государственная Сельскохозяйственная Академия', 'http://www.tgsha.ru/', '', '', '', 'Готовый сайт, к сожалению не опубликован по непонятным внутренним причинам академии. ', '2007-08-16', 7, 'corp', 'released', 'Готовый сайт, к сожалению не опубликован по непонятным внутренним причинам академии. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (147, 'Сибирь-Оптика', 'http://www.sibiroptika.ru/', '', '', '', 'Корпортаивный сайт компании Сибирь-Оптика. Отключен.', '2007-07-12', 7, 'corp', 'released', 'Корпортаивный сайт компании Сибирь-Оптика. Отключен.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (148, 'Официальный сайт департамента информатизации и общественных связей ЯНАО', '/', '', '', '', 'Внутренний корпоративный сайт департамента информатизации и общественных связей Ямало-Ненецкого АО. Тесно интегрирован с уже существующими информационными системами департамента. ', '2007-06-07', 8, 'corp', 'released', 'Внутренний корпоративный сайт департамента информатизации и общественных связей Ямало-Ненецкого АО. Тесно интегрирован с уже существующими информационными системами департамента. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (149, 'Обучение вождению УПК Автомобилист', 'http://www.avtomobilist-tmn.ru', '', '', '', 'Современный сайт для одного из старейших предприятий Тюмени. ', '2007-06-02', 15, 'card', 'released', 'Современный сайт для одного из старейших предприятий Тюмени. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (150, 'ОАО Тюменский Аккуммуляторный завод', 'http://www.tyumen-battery.ru', '', '', '', 'Официальный сайт одного из самых лучших заводов в России по производству аккумуляторных батарей. Вся информация о заводе, каталог продукции. ', '2007-05-18', 7, 'corp', 'released', 'Официальный сайт одного из самых лучших заводов в России по производству аккумуляторных батарей. Вся информация о заводе, каталог продукции. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (151, 'ЭкоПраво', 'http://www.ekipr.ru', '', '', '', 'Корпоративный сайт-визитка ', '2012-05-10', 7, 'card', 'released', 'Корпоративный сайт-визитка ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (152, 'Нефтяная компания Бурнефтегаз', 'http://www.buroil.ru', '', '', '', 'Нефтяная компания ООО «Бурнефтегаз» - одна из динамично развивающихся российских нефтегазовых компаний, создана в мае 2005 года. Основными видами деятельности компании являются разведка и добыча нефти и газа, переработка углеводородов с получением широкого спектра товарной нефтегазохимической продукции. Свою деятельность компания ведет на территории Российской Федерации, основной ресурсной базой компании является Тюменская область включая автономные округа: Ханты-Мансийский автономный округ – ЮГРА, Ямало-Ненецкий автономный округ.', '2007-04-18', 7, 'corp', 'released', 'Нефтяная компания ООО «Бурнефтегаз» - одна из динамично развивающихся российских нефтегазовых компаний, создана в мае 2005 года. Основными видами деятельности компании являются разведка и добыча нефти и газа, переработка углеводородов с получением широкого спектра товарной нефтегазохимической продукции. Свою деятельность компания ведет на территории Российской Федерации, основной ресурсной базой компании является Тюменская область включая автономные округа: Ханты-Мансийский автономный округ – ЮГРА, Ямало-Ненецкий автономный округ.');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (153, ' Интернет-магазин EIT-Company', 'http://www.eit-company.ru', '', '', '', 'Очень большой (более 40 000 шт. товаров) интернет-магазин со специальным доступом для клиентов. Мощная система приема и обработки заказов, обширная отчетность. Двусторонняя синхронная связь с 1С. Уникальные разработки: многоуровневая система обработки поступившего заказа, Назначение персональных цен для клиентов. ', '2007-03-14', 7, 'ishop', 'released', 'Очень большой (более 40 000 шт. товаров) интернет-магазин со специальным доступом для клиентов. Мощная система приема и обработки заказов, обширная отчетность. Двусторонняя синхронная связь с 1С. Уникальные разработки: многоуровневая система обработки поступившего заказа, Назначение персональных цен для клиентов. ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (154, 'НЕО Холдинг', 'http://www.holdingneo.com/', '', '', '', 'Титульная страничка для перехода на проекты НЕО', '2007-02-09', 3, 'card', 'released', 'Титульная страничка для перехода на проекты НЕО');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (155, 'Мебельная компания КупеПлюс', '...', '', '', '', 'Сайт был принят, но не был опубликован по внутренним причинам компании Купе Плюс ', '2006-02-04', 7, 'corp', 'released', 'Сайт был принят, но не был опубликован по внутренним причинам компании Купе Плюс ');
INSERT INTO `portfolio` (`id`, `title`, `href`, `designer`, `programmer`, `manager`, `fullDescription`, `release_date`, `businessType`, `siteType`, `currentState`, `shortDescription`) VALUES (156, 'NEO-Clinic. Клиника эстетической и лазерной медицины v 1.0', 'http://www.neo-clinic.com', '', '', '', 'Самый первый, самый старый сайт NEO-Clinic который проработал больше года ', '2012-08-23', 13, 'corp', 'released', 'Самый первый, самый старый сайт NEO-Clinic который проработал больше года ');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(10) unsigned NOT NULL,
  `create_user_id` int(10) unsigned NOT NULL,
  `update_user_id` int(10) unsigned NOT NULL,
  `create_date` int(11) unsigned NOT NULL,
  `update_date` int(11) unsigned NOT NULL,
  `slug` varchar(150) NOT NULL,
  `publish_date` datetime NOT NULL,
  `title` varchar(150) NOT NULL,
  `quote` varchar(300) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `link` varchar(150) NOT NULL DEFAULT '',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `comment_status` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `access_type` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(150) NOT NULL DEFAULT '',
  `description` varchar(300) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `status` (`status`),
  KEY `comment_status` (`comment_status`),
  KEY `access_type` (`access_type`),
  KEY `create_user_id` (`create_user_id`),
  KEY `update_user_id` (`update_user_id`),
  KEY `blog_id` (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `post`
--


-- --------------------------------------------------------

--
-- Структура таблицы `post_to_tag`
--

DROP TABLE IF EXISTS `post_to_tag`;
CREATE TABLE IF NOT EXISTS `post_to_tag` (
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post_to_tag`
--


-- --------------------------------------------------------

--
-- Структура таблицы `recovery_password`
--

DROP TABLE IF EXISTS `recovery_password`;
CREATE TABLE IF NOT EXISTS `recovery_password` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `code` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_recoverypassword_code` (`code`),
  KEY `fk_recoverypassword_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `recovery_password`
--


-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` varchar(150) NOT NULL,
  `param_name` varchar(150) NOT NULL,
  `param_value` varchar(150) NOT NULL,
  `creation_date` datetime NOT NULL,
  `change_date` datetime NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `moduleId` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8 AUTO_INCREMENT=372 ;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (319, 'image', 'uploadDir', 'uploads/images', '2012-05-23 12:16:11', '2012-05-23 12:16:11', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (320, 'image', 'allowedExtensions', 'jpg,jpeg,png,gif', '2012-05-23 12:16:11', '2012-05-23 12:16:11', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (321, 'image', 'maxSize', '100000000', '2012-05-23 12:16:11', '2012-05-23 12:16:11', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (344, 'user', 'accountActivationSuccess', '/user/account/login', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (345, 'user', 'accountActivationFailure', '/user/account/registration', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (346, 'user', 'loginSuccess', '/yupe/backend', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (347, 'user', 'registrationSucess', '/user/account/login', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (348, 'user', 'loginAdminSuccess', '/yupe/backend', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (349, 'user', 'logoutSuccess', '/', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (350, 'user', 'notifyEmailFrom', 'test@test.ru', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (351, 'user', 'autoRecoveryPassword', '1', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (352, 'user', 'minPasswordLength', '3', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (353, 'user', 'emailAccountVerification', '1', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (354, 'user', 'showCaptcha', '1', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (355, 'user', 'minCaptchaLength', '3', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (356, 'user', 'maxCaptchaLength', '6', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (357, 'user', 'avatarsDir', '/yupe/avatars', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (358, 'user', 'avatarMaxSize', '10000', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (359, 'user', 'defaultAvatar', '', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (360, 'user', 'adminMenuOrder', '0', '2012-05-23 20:06:42', '2012-05-23 20:06:42', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (361, 'yupe', 'siteDescription', 'Юпи! - самый быстрый способ создать сайт на фреймворке Yii', '2012-05-29 16:06:25', '2012-05-29 16:06:25', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (362, 'yupe', 'siteName', 'Юпи!', '2012-05-29 16:06:25', '2012-05-29 16:06:25', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (363, 'yupe', 'siteKeyWords', 'Юпи!, yupe, yii, cms, цмс', '2012-05-29 16:06:25', '2012-05-29 16:06:25', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (364, 'yupe', 'backendLayout', 'column2', '2012-05-29 16:06:25', '2012-05-29 16:06:25', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (365, 'yupe', 'backendTheme', 'bootstrap', '2012-05-29 16:06:25', '2012-05-29 16:06:25', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (366, 'yupe', 'theme', 'nsystems', '2012-05-29 16:06:25', '2012-05-29 16:06:25', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (367, 'yupe', 'coreCacheTime', '1', '2012-05-29 16:06:25', '2012-05-29 16:06:25', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (368, 'yupe', 'editorsDir', 'application.modules.yupe.widgets.editors', '2012-05-29 16:06:25', '2012-05-29 16:06:25', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (369, 'yupe', 'uploadPath', 'webroot.uploads', '2012-05-29 16:06:25', '2012-05-29 16:06:25', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (370, 'yupe', 'editor', 'application.modules.yupe.widgets.editors.EMarkItUp.EMarkitupWidget', '2012-05-29 16:06:25', '2012-05-29 16:06:25', 83);
INSERT INTO `settings` (`id`, `module_id`, `param_name`, `param_value`, `creation_date`, `change_date`, `user_id`) VALUES (371, 'yupe', 'email', '', '2012-05-29 16:06:25', '2012-05-29 16:06:25', 83);

-- --------------------------------------------------------

--
-- Структура таблицы `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Tag_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `tag`
--


-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creation_date` datetime NOT NULL,
  `change_date` datetime NOT NULL,
  `first_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `nick_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `birth_date` date DEFAULT NULL,
  `site` varchar(100) NOT NULL DEFAULT '',
  `about` varchar(300) NOT NULL DEFAULT '',
  `location` varchar(150) NOT NULL DEFAULT '',
  `online_status` varchar(150) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL,
  `salt` char(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '2',
  `access_level` tinyint(1) NOT NULL DEFAULT '0',
  `last_visit` datetime DEFAULT NULL,
  `registration_date` datetime NOT NULL,
  `registration_ip` varchar(20) NOT NULL,
  `activation_ip` varchar(20) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `use_gravatar` tinyint(4) NOT NULL DEFAULT '0',
  `activate_key` char(32) NOT NULL,
  `email_confirm` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_nickname_unique` (`nick_name`),
  UNIQUE KEY `user_email_unique` (`email`),
  KEY `user_status_index` (`status`),
  KEY `email_confirm` (`email_confirm`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `creation_date`, `change_date`, `first_name`, `last_name`, `nick_name`, `email`, `gender`, `birth_date`, `site`, `about`, `location`, `online_status`, `password`, `salt`, `status`, `access_level`, `last_visit`, `registration_date`, `registration_ip`, `activation_ip`, `avatar`, `use_gravatar`, `activate_key`, `email_confirm`) VALUES (83, '2011-09-26 11:52:09', '2011-09-26 11:52:09', NULL, NULL, 'admin', 'admin@admin.ru', 0, NULL, '', '', '', '', 'c1f98dd950c917a214b66e98be53e52f', '4e802f29c47c20.49913008', 1, 1, '2012-08-26 00:01:53', '2011-09-26 11:52:09', '127.0.0.1', '127.0.0.1', NULL, 0, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user_to_blog`
--

DROP TABLE IF EXISTS `user_to_blog`;
CREATE TABLE IF NOT EXISTS `user_to_blog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `blog_id` int(10) unsigned NOT NULL,
  `create_date` int(10) unsigned NOT NULL,
  `update_date` int(10) unsigned NOT NULL,
  `role` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `status` smallint(5) unsigned NOT NULL DEFAULT '1',
  `note` varchar(300) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_blog_unique` (`user_id`,`blog_id`),
  KEY `user_id` (`user_id`),
  KEY `blog_id` (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `user_to_blog`
--


-- --------------------------------------------------------

--
-- Структура таблицы `vote`
--

DROP TABLE IF EXISTS `vote`;
CREATE TABLE IF NOT EXISTS `vote` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model` varchar(50) NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `value` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `model` (`model`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `vote`
--


-- --------------------------------------------------------

--
-- Структура таблицы `wiki_link`
--

DROP TABLE IF EXISTS `wiki_link`;
CREATE TABLE IF NOT EXISTS `wiki_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_from_id` int(11) NOT NULL,
  `page_to_id` int(11) DEFAULT NULL,
  `wiki_uid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_fk_link_page_from` (`page_from_id`),
  KEY `wiki_fk_link_page_to` (`page_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `wiki_link`
--


-- --------------------------------------------------------

--
-- Структура таблицы `wiki_page`
--

DROP TABLE IF EXISTS `wiki_page`;
CREATE TABLE IF NOT EXISTS `wiki_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_redirect` tinyint(1) DEFAULT '0',
  `page_uid` varchar(255) DEFAULT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  `content` text,
  `revision_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wiki_idx_page_revision_id` (`revision_id`),
  UNIQUE KEY `wiki_idx_page_page_uid` (`page_uid`,`namespace`),
  KEY `wiki_idx_page_namespace` (`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `wiki_page`
--


-- --------------------------------------------------------

--
-- Структура таблицы `wiki_page_revision`
--

DROP TABLE IF EXISTS `wiki_page_revision`;
CREATE TABLE IF NOT EXISTS `wiki_page_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `is_minor` tinyint(1) DEFAULT NULL,
  `content` text,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_fk_page_revision_page` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `wiki_page_revision`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`create_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `blog_ibfk_2` FOREIGN KEY (`update_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `dictionary_data`
--
ALTER TABLE `dictionary_data`
  ADD CONSTRAINT `dictionary_data_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `dictionary_group` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `dictionary_data_ibfk_8` FOREIGN KEY (`create_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `dictionary_data_ibfk_9` FOREIGN KEY (`update_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `dictionary_group`
--
ALTER TABLE `dictionary_group`
  ADD CONSTRAINT `dictionary_group_ibfk_3` FOREIGN KEY (`create_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `dictionary_group_ibfk_4` FOREIGN KEY (`update_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`answer_user`) REFERENCES `user` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `image_to_gallery`
--
ALTER TABLE `image_to_gallery`
  ADD CONSTRAINT `image_to_gallery_ibfk_2` FOREIGN KEY (`galleryId`) REFERENCES `gallery` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD CONSTRAINT `menu_item_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `page`
--
ALTER TABLE `page`
  ADD CONSTRAINT `page_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `page_ibfk_2` FOREIGN KEY (`change_user_id`) REFERENCES `user` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`create_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`update_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `post_ibfk_3` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `post_to_tag`
--
ALTER TABLE `post_to_tag`
  ADD CONSTRAINT `post_to_tag_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `post_to_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `recovery_password`
--
ALTER TABLE `recovery_password`
  ADD CONSTRAINT `fk_RecoveryPassword_User1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_to_blog`
--
ALTER TABLE `user_to_blog`
  ADD CONSTRAINT `user_to_blog_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_to_blog_ibfk_2` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `wiki_link`
--
ALTER TABLE `wiki_link`
  ADD CONSTRAINT `wiki_fk_link_page_from` FOREIGN KEY (`page_from_id`) REFERENCES `wiki_page` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wiki_fk_link_page_to` FOREIGN KEY (`page_to_id`) REFERENCES `wiki_page` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wiki_page_revision`
--
ALTER TABLE `wiki_page_revision`
  ADD CONSTRAINT `wiki_fk_page_revision_page` FOREIGN KEY (`page_id`) REFERENCES `wiki_page` (`id`) ON DELETE CASCADE;

SET FOREIGN_KEY_CHECKS=1;
