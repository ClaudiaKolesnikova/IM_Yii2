-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 08 2019 г., 15:02
-- Версия сервера: 10.1.31-MariaDB
-- Версия PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2_loc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `keywords`, `description`) VALUES
(1, 0, 'Sportswear', NULL, NULL),
(2, 0, 'Men', NULL, NULL),
(3, 0, 'Women', NULL, NULL),
(4, 1, 'Nike', NULL, NULL),
(5, 1, 'Under Armour', NULL, NULL),
(6, 1, 'Adidas', NULL, NULL),
(7, 1, 'Puma', NULL, NULL),
(8, 1, 'ASICS', NULL, NULL),
(9, 2, 'Fendi', NULL, NULL),
(10, 2, 'Guess', NULL, NULL),
(11, 2, 'Valentino', NULL, NULL),
(12, 2, 'Dior', NULL, NULL),
(13, 2, 'Versace', NULL, NULL),
(14, 2, 'Armani', NULL, NULL),
(15, 2, 'Prada', NULL, NULL),
(16, 2, 'Dolce and Gabbana', NULL, NULL),
(17, 2, 'Chanel', NULL, NULL),
(18, 2, 'Gucci', NULL, NULL),
(19, 3, 'Fendi', '', ''),
(20, 3, 'Guess', NULL, NULL),
(21, 3, 'Valentino', NULL, NULL),
(22, 3, 'Dior', NULL, NULL),
(23, 3, 'Versace', NULL, NULL),
(24, 0, 'Kids', NULL, NULL),
(25, 0, 'Fashion', NULL, NULL),
(26, 0, 'Households', NULL, NULL),
(27, 0, 'Interiors', NULL, NULL),
(28, 0, 'Clothing', NULL, NULL),
(29, 0, 'Bags', 'сумки ключевики...', 'сумки описание...'),
(30, 0, 'Shoes', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
(3, 'Products/Product2/3e4eb3.jpg', 2, 0, 'Product', '276491a65b-2', ''),
(4, 'Products/Product4/5f97a8.jpg', 4, 1, 'Product', 'e845362302-1', ''),
(6, 'Products/Product10/8df11b.jpg', 10, 1, 'Product', 'bfa0c41262-1', ''),
(7, 'Products/Product1/d0946e.jpg', 1, 1, 'Product', '99cb7ae5f3-1', ''),
(8, 'Products/Product3/1f1cfa.jpg', 3, 0, 'Product', '326e82de8e-3', ''),
(10, 'Products/Product3/9505b5.jpg', 3, 0, 'Product', '4ba1e98cb7-5', ''),
(11, 'Products/Product3/5ee119.jpg', 3, 0, 'Product', '9f39024999-6', ''),
(12, 'Products/Product3/39697d.jpg', 3, 0, 'Product', '8f8ef64184-7', ''),
(13, 'Products/Product3/8b7799.jpg', 3, 0, 'Product', 'b3eabe4d25-2', ''),
(14, 'Products/Product9/dc5c07.jpg', 9, 1, 'Product', '71181d273b-1', ''),
(15, 'Products/Product9/03d77b.jpg', 9, NULL, 'Product', 'fbd9b34819-2', ''),
(16, 'Products/Product9/d0e69e.jpg', 9, NULL, 'Product', '5767081a67-3', ''),
(17, 'Products/Product9/4dff42.jpg', 9, NULL, 'Product', '6c5e08b7b0-4', ''),
(18, 'Products/Product2/894709.jpg', 2, 1, 'Product', '9c48a342bc-1', ''),
(19, 'Products/Product2/c23a44.jpg', 2, NULL, 'Product', 'b5f1e77e43-3', ''),
(20, 'Products/Product2/e8196e.jpg', 2, NULL, 'Product', 'b2fead58c4-4', ''),
(21, 'Products/Product2/fa41ef.jpg', 2, NULL, 'Product', '9be44210ce-5', ''),
(22, 'Products/Product2/6a4583.jpg', 2, NULL, 'Product', '3bafdd3b28-6', ''),
(23, 'Products/Product2/e0d1e9.jpg', 2, NULL, 'Product', '7dc25015ec-7', ''),
(24, 'Products/Product3/00ee97.jpg', 3, 1, 'Product', '8e9e89be87-1', ''),
(25, 'Products/Product12/cb7043.jpg', 12, 1, 'Product', '1f0c4edcd8-1', ''),
(26, 'Products/Product13/31e7c6.jpg', 13, 1, 'Product', '5cef6fa360-1', ''),
(27, 'Products/Product14/203c47.jpg', 14, 1, 'Product', '34fb700393-1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1554819975),
('m140622_111540_create_image_table', 1554819991),
('m140622_111545_add_name_to_image_table', 1554819991);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(10) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `created_at`, `updated_at`, `qty`, `sum`, `status`, `name`, `email`, `phone`, `address`) VALUES
(2, '2019-04-03 17:04:24', '2019-04-09 17:04:24', 20, 1805, '1', 'Claudia', '1@mail.ru', '123', 'dfg'),
(3, '2019-04-03 17:07:36', '2019-04-03 17:07:36', 20, 1805, '0', 'Claudia', '1@mail.ru', '123', 'fvdf'),
(4, '2019-04-03 17:28:29', '2019-04-03 17:28:29', 18, 1705, '0', 'Claudia', 'fg@gg', '344', 'ddddd'),
(5, '2019-04-05 09:33:48', '2019-04-05 09:33:48', 3, 130, '0', 'Claudia', 'fg@gg4', '45216', 'ghbn'),
(6, '2019-04-08 12:06:29', '2019-04-08 12:06:29', 6, 180, '0', 'Иван', 'ivan@mail.ru', '123456789', '987654321'),
(7, '2019-04-08 12:08:59', '2019-04-08 12:08:59', 1, 55, '0', 'Petr', 'petr@mail.ru', '456', '1545'),
(8, '2019-04-08 12:09:34', '2019-04-08 12:09:34', 1, 20, '0', 'Claudia', '45@mail.ru', '4568', '789'),
(9, '2019-04-08 12:22:52', '2019-04-08 12:22:52', 1, 55, '0', 'Claudia', 'claudia1@mail.ru', '123', '854'),
(10, '2019-04-08 12:24:33', '2019-04-08 12:24:33', 1, 55, '0', 'Claudia', 'klavochka@mail.ru', '123', '854'),
(11, '2019-04-08 12:31:00', '2019-04-08 12:31:00', 5, 285, '0', 'Клавдия', 'klavochka@mail.ru', '12545', '7852'),
(12, '2019-04-08 12:34:16', '2019-04-08 12:34:16', 1, 100, '0', 'Claudia', 'klavochka@mail.ru', '7852', '852'),
(13, '2019-04-08 12:35:29', '2019-04-08 12:35:29', 1, 55, '0', 'Claudia', 'klavochka@mail.ru', '452', '452'),
(14, '2019-04-08 12:37:13', '2019-04-08 12:37:13', 1, 100, '0', 'Claudia', 'klavochka@mail.ru', '79852', 'gyujn');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `price`, `qty_item`, `sum_item`) VALUES
(1, 2, 11, 'Сумка Michael Kors Jet Set Travel Нежно-розовая', 200, 8, 1600),
(2, 2, 10, 'Сумка GUSSACI TUGUS13A060-3-10', 15, 1, 15),
(3, 2, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
(4, 2, 5, 'Блузка Kira Plastinina 17-16-17453-SM-29 S', 0, 7, 0),
(5, 2, 7, 'Кардиган ONLY ON 15102048 M Black Tan/Partridg', 0, 1, 0),
(6, 2, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(7, 2, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(8, 3, 11, 'Сумка Michael Kors Jet Set Travel Нежно-розовая', 200, 8, 1600),
(9, 3, 10, 'Сумка GUSSACI TUGUS13A060-3-10', 15, 1, 15),
(10, 3, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
(11, 3, 5, 'Блузка Kira Plastinina 17-16-17453-SM-29 S', 0, 7, 0),
(12, 3, 7, 'Кардиган ONLY ON 15102048 M Black Tan/Partridg', 0, 1, 0),
(13, 3, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(14, 3, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(15, 4, 11, 'Сумка Michael Kors Jet Set Travel Нежно-розовая', 200, 8, 1600),
(16, 4, 10, 'Сумка GUSSACI TUGUS13A060-3-10', 15, 1, 15),
(17, 4, 5, 'Блузка Kira Plastinina 17-16-17453-SM-29 S', 0, 7, 0),
(18, 4, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(19, 4, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(20, 5, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(21, 5, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 55, 2, 110),
(22, 6, 5, 'Блузка Kira Plastinina 17-16-17453-SM-29 S', 0, 1, 0),
(23, 6, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
(24, 6, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 4, 80),
(25, 7, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 55, 1, 55),
(26, 8, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(27, 9, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 55, 1, 55),
(28, 10, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 55, 1, 55),
(29, 11, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(30, 11, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 55, 1, 55),
(31, 11, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 3, 210),
(32, 12, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
(33, 13, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 55, 1, 55),
(34, 14, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `content`, `price`, `keywords`, `description`, `img`, `hit`, `new`, `sale`) VALUES
(1, 4, 'Джинсы Garcia 244/32/856 28-32 р. Серо-синие', '<p>Великолепные джинсы винтажно-голубого цвета. Настоящая находка для любителей качественного денима. Особенности: Зауженные к низу Пять карманов Высококачественный деним Высокая посадка (high fit) Выгодно подчеркивают фигуру</p>\r\n', 10, '', '', '', '0', '0', '0'),
(2, 4, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', '<p>MR520 &ndash; амбициозный восточноевропейский бренд, который предлагает качественную и стильную одежду, сделанную специально для молодых людей, следящих за своим внешним видом. Женские джинсы фасона boyfriend fit (в переводе с англ. &ndash; &quot;джинсы моего парня&quot;). Модель с зауженными штанинами. Застегивается на пуговицы. Изделие с низкой посадкой. Джинсы дополнены прорезными карманами спереди и накладными карманами сзади. Изделие декорировано эффектом потертости, вареным эффектом и необычными швами.</p>\r\n', 55, 'Джинсы ключевые слова', 'Джинсы описание', 'product2.jpg', '1', '0', '0'),
(3, 9, 'Блуза Mango 53005681-05 M Бежевая', '<p><img alt=\"\" src=\"/yii2.loc/upload/global/Logotip.jpg\" style=\"height:67px; margin-bottom:10px; margin-top:10px; width:100px\" /></p>\r\n\r\n<p>Испанский бренд модной одежды &quot;Mango&quot; родился в 1984 году в Барселоне, где и по сей день находится штаб-квартира компании. В том же городе появился и первый магазин &mdash; на улице Пасео де Грасия (Paseo de Gracia). Компания, основанная братьями Исааком и Нахманом Андиком (Isaac &amp; Nahman Andic), очень быстро набрала популярность &mdash; всего лишь годом позднее был открыт магазин в другом городе, на этот раз в Валенсии. Одежда &quot;Mango&quot; отличается высоким качеством, приемлемой ценой, современным дизайном и неповторимым стилем.</p>\r\n', 25, '', '', 'product3.jpg', '1', '1', '0'),
(4, 21, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', '<p>Tom Tailor Group &mdash; один из ведущих и быстро развивающихся Fashion холдингов германии и европы, продукция которого ориентирована на целевую аудиторию в возрасте от 0 до 60 лет. Tom Tailor известен на рынке текстиля с 1962 года и до сих пор сохраняет стандарты немецкого качества. Tom Tailor предлагает повседневную одежду и аксессуары высокого качества для женщин, мужчин и детей. Одежда от Tom Tailor поможет создать активный повседневный образ с нотками элегантности.</p>\r\n', 70, '', '', 'product4.jpg', '1', '0', '1'),
(5, 25, 'Блузка Kira Plastinina 17-16-17453-SM-29 S', NULL, 0, NULL, NULL, 'product5.jpg', '1', '0', '0'),
(6, 28, 'Кардиган Levi\'s Icy Grey Heather M', '', 100, '', '', 'product6.jpg', '1', '0', '0'),
(7, 28, 'Кардиган ONLY ON 15102048 M Black Tan/Partridg', '\r\n\r\nCasual марка молодежной женской одежды ONLY является частью датской компании Bestseller AS. Изначально Bestseller занимался производством детской одежды, а в 1995 году появилась на свет марка ONLY. Популярность этой марки возрастала быстрыми темпами и теперь ONLY владеет 770 магазинами в более чем 40 странах мира.\r\n\r\nONLY — бренд стильной молодежной одежды. Это бренд для тех, кто любит добиваться успеха и быть не таким, как все. Демократичные цены, модные модели, экологически чистые ткани делают одежду от ONLY сверхпопулярной.', 0, NULL, NULL, 'no-image.png', '1', '1', '0'),
(8, 26, 'Брюки SK House 2211-1972кор L Коричневые', '\r\n\r\nКомпания SK House — это украинский производитель модной женской одежды с безупречной репутацией и тысячами поклонников по всему СНГ. SK House изготавливает качественный и долговечный товар, созданный из высококачественных тканей. Компания использует современные методы пошива и, изучая текущие мировые тенденции и локальные требования покупателей, создает модели, которые не задерживаются на полках длительное время и быстро раскупаются во всех странах.', 99, NULL, NULL, 'no-image.png', '0', '0', '1'),
(9, 26, 'Брюки Kira Plastinina 17-07-17418-FL-58 L', '', 0, '', '', 'product1.jpg', '0', '0', '0'),
(10, 29, 'Сумка GUSSACI TUGUS13A060-3-10', '<p>Простота, инновационный стиль бренда, высококачественные требования к продукции, благодаря этому GUSSACI Italy пользуется высокой репутацией во многих странах Европы. Превосходное качество, отличный дизайн, соответствующие цены делают &quot;Гуссачи&quot; модным и популярным! Особенности: Количество основных отделений: 1. Сумка имеет прорезной карман на молнии, а также два небольших накладных кармана для хранения мобильного телефона, разных портативных гаджетов и мелочей. На лицевой стороне модели есть узкий прорезной карман на &quot;молнии&quot;. На тыльной стороне модели есть прорезной карман на &quot;молнии&quot;. Особенностью данной модели является возможность изменения ее формы при помощи дополнительной внешней застежки-молнии. Сумка имеет 2 ручки для переноса на локте или в руке. Их длина не регулируется и составляет 45 см, а высота от крайней точки ручки до сумки &mdash; 16 см. В комплект к изделию прилагается съемный плечевой ремень. Его длина может регулироваться при помощи металлической пряжки от 78 до 137.5 см. Сумка закрывается при помощи застежки-молнии. Материал подкладки: плотная ткань. Материал сумки: кожезаменитель. Цвет фурнитуры: золото. Размеры сумки: 26 х 25 х 10.5 см</p>\r\n', 15, '', '', 'product3.jpg', '0', '1', '0'),
(11, 29, 'Сумка Michael Kors Jet Set Travel Нежно-розовая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 200, NULL, NULL, 'no-image.png', '0', '0', '1'),
(12, 29, 'Сумка Michael Kors Selma Золотистая', '<p>Особенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом. Модели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.</p>\r\n', 205, '', '', 'product5.jpg', '0', '0', '0'),
(13, 29, 'Сумка Michael Kors Bedford Красная', '<p>Особенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом. Модели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.</p>\r\n', 0, '', '', 'no-image.png', '0', '0', '0'),
(14, 29, 'Сумка Michael Kors JS Travel Светло-розовая', '<p>Особенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом. Модели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.</p>\r\n', 0, '', '', 'no-image.png', '0', '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '$2y$13$qIAC14d1N16yHq8wxP56heUUDOJbr76uWbYdIrjTqCogyHjNJMhoO', 'twCwFi0MngDaLRaPFtdQnxLku66vM4QU');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
