-- --------------------------------------------------------
-- Хост:                         localhost
-- Версия сервера:               10.5.8-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных structure
CREATE DATABASE IF NOT EXISTS `structure` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `structure`;

-- Дамп структуры для таблица structure.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fio` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `position_id` int(50) DEFAULT NULL,
  `structure_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `position_id` (`position_id`),
  KEY `structure_id` (`structure_id`),
  CONSTRAINT `position_id` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`),
  CONSTRAINT `structure_id` FOREIGN KEY (`structure_id`) REFERENCES `structure` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы structure.employees: ~74 rows (приблизительно)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
REPLACE INTO `employees` (`id`, `fio`, `email`, `phone`, `position_id`, `structure_id`) VALUES
	(4, 'Лазарев Ефим Альбертович', 'Adorameena@company.com', '888-00-61', 22, 52),
	(6, 'Наумов Орест Валентинович', 'Adowield@company.com', '888-00-78', 11, 6),
	(7, 'Гришин Адольф Максович', 'Adozan@company.com', '888-00-24', 3, 56),
	(11, 'Кулагин Евдоким Максимович', 'Agajurus@company.com', '888-00-56', 1, 6),
	(13, 'Баранов Вилен Федорович', 'Agamann@company.com', '888-00-07', 5, 40),
	(14, 'Некрасов Ермак Германович', 'Aganaya@company.com', '888-00-79', 39, 51),
	(15, 'Громов Мечислав Мэлсович', 'Agathris@company.com', '888-00-25', 34, 40),
	(19, 'Гущин Эльдар Авдеевич', 'Anararad@company.com', '888-00-26', 6, 56),
	(20, 'Исаев Тихон Христофорович', 'Anararne@company.com', '888-00-41', 4, 38),
	(21, 'Кошелев Гордей Федорович', 'Anayarad@company.com', '888-00-54', 1, 54),
	(25, 'Мясников Феликс Борисович', 'Arirgas@company.com', '888-00-76', 4, 50),
	(27, 'Яковлев Вениамин Игоревич', 'Aumath@company.com', '888-01-31', 1, 42),
	(28, 'Кошелев Василий Тимофеевич', 'Aunin@company.com', '888-00-53', 6, 54),
	(29, 'Сафонов Яков Владленович', 'Aurilsa@company.com', '888-00-97', 7, 46),
	(34, 'Григорьев Павел Вениаминович', 'Ballaswyn@company.com', '888-00-23', 8, 53),
	(36, 'Иванов Болеслав Феликсович', 'Bukelv@company.com', '888-00-37', 3, 53),
	(37, 'Князев Людвиг Тихонович', 'Bulsa@company.com', '888-00-46', 3, 53),
	(39, 'Буров Гаянэ Викторович', 'Burana@company.com', '888-00-13', 6, 43),
	(41, 'Данилов Велор Александрович', 'Buzadred@company.com', '888-00-28', 8, 52),
	(42, 'Рогов Анатолий Яковович', 'Buzanius@company.com', '888-00-88', 4, 56),
	(43, 'Суханов Лука Денисович', 'Celune@company.com', '888-01-11', 3, 39),
	(46, 'Комаров Вилли Созонович', 'Cerius@company.com', '888-00-47', 8, 48),
	(49, 'Куликов Мирон Степанович', 'Coiriel@company.com', '888-00-59', 5, 40),
	(55, 'Евдокимов Корней Михайлович', 'Dalar@company.com', '888-00-31', 1, 55),
	(58, 'Овчинников Болеслав Святославович', 'Dollador@company.com', '888-00-82', 4, 43),
	(59, 'Смирнов Гордей Яковович', 'Drelasida@company.com', '888-01-01', 5, 37),
	(62, 'Костин Владимир Алексеевич', 'Felonis@company.com', '888-00-52', 3, 55),
	(65, 'Давыдов Максим Кириллович', 'Fordremand@company.com', '888-00-27', 19, 53),
	(66, 'Субботин Гаянэ Натанович', 'Fordreris@company.com', '888-01-07', 12, 49),
	(67, 'Савельев Роберт Оскарович', 'Gadi@company.com', '888-00-94', 38, 55),
	(68, 'Фролов Эрик Оскарович', 'Gage@company.com', '888-01-21', 28, 42),
	(69, 'Дроздов Влас Богданович', 'Galsa@company.com', '888-00-29', 26, 44),
	(70, 'Миронов Рубен Степанович', 'Gavigelv@company.com', '888-00-70', 1, 42),
	(71, 'Сорокин Кондрат Геннадьевич', 'Gavinratus@company.com', '888-01-04', 4, 48),
	(72, 'Тарасов Карл Никитевич', 'Ghorad@company.com', '888-01-13', 13, 44),
	(73, 'Горбунов Тимур Богданович', 'Grilas@company.com', '888-00-22', 6, 45),
	(74, 'Галкин Руслан Мартынович', 'Hugilen@company.com', '888-00-21', 22, 41),
	(75, 'Власов Захар Якунович', 'Hulore@company.com', '888-00-15', 8, 53),
	(76, 'Абрамов Остап Дамирович', 'Hunara@company.com', '888-00-00', 11, 5),
	(77, 'Ершов Климент Дмитрьевич', 'Husida@company.com', '888-00-32', 1, 48),
	(78, 'Бобров Тарас Тимофеевич', 'Ianlore@company.com', '888-00-10', 6, 45),
	(79, 'Лазарев Геннадий Вячеславович', 'Kadwyn@company.com', '888-00-60', 9, 47),
	(80, 'Зиновьев Роман Даниилович', 'Kalas@company.com', '888-00-35', 6, 55),
	(81, 'Лихачёв Корнелий Тимурович', 'Kaswyn@company.com', '888-00-66', 40, 50),
	(82, 'Афанасьев Осип Михайлович', 'Kelebor@company.com', '888-00-06', 23, 37),
	(83, 'Рыбаков Виссарион Васильевич', 'Keledi@company.com', '888-00-91', 7, 47),
	(84, 'Цветков Наум Иринеевич', 'Kelv@company.com', '888-01-24', 4, 54),
	(85, 'Гаврилов Иннокентий Александрович', 'Kemath@company.com', '888-00-19', 28, 39),
	(86, 'Иванов Максимилиан Куприянович', 'Kiritius@company.com', '888-00-39', 13, 49),
	(87, 'Носков Алексей Алексеевич', 'Kulalune@company.com', '888-00-81', 24, 55),
	(88, 'Михеев Аркадий Пантелеймонович', 'Kulanara@company.com', '888-00-72', 23, 51),
	(89, 'Чернов Игнатий Семёнович', 'Ladwyn@company.com', '888-01-26', 8, 43),
	(90, 'Новиков Влас Валентинович', 'Lagrinn@company.com', '888-00-80', 8, 45),
	(91, 'Соловьёв Дмитрий Филиппович', 'Lailbine@company.com', '888-01-03', 36, 46),
	(92, 'Одинцов Любовь Дамирович', 'Landafym@company.com', '888-00-83', 2, 54),
	(93, 'Воронов Флор Альбертович', 'Landage@company.com', '888-00-18', 2, 38),
	(94, 'Семёнов Мирослав Фролович', 'Landalmeena@company.com', '888-00-98', 2, 45),
	(95, 'Федотов Иван Степанович', 'Mala@company.com', '888-01-18', 4, 53),
	(96, 'Жуков Егор Демьянович', 'Malalas@company.com', '888-00-33', 5, 39),
	(100, 'Третьяков Панкратий Платонович', 'Manargas@company.com', '888-01-16', 5, 37),
	(101, 'Кузнецов Моисей Русланович', 'Manaya@company.com', '888-00-55', 23, 37),
	(103, 'Буров Арнольд Федотович', 'Maririm@company.com', '888-00-12', 6, 44),
	(104, 'Кондратьев Родион Яковлевич', 'Maritus@company.com', '888-00-48', 4, 52),
	(107, 'Пахомов Лаврентий Юлианович', 'Miraris@company.com', '888-00-86', 4, 42),
	(108, 'Галкин Валентин Давидович', 'Mirawyn@company.com', '888-00-20', 1, 53),
	(113, 'Аксёнов Иван Тимурович', 'Morara@company.com', '888-00-02', 5, 41),
	(115, 'Кулаков Аристарх Богданович', 'Morlusida@company.com', '888-00-57', 1, 5),
	(117, 'Виноградов Модест Давидович', 'Nalmelas@company.com', '888-00-14', 8, 53),
	(118, 'Матвеев Егор Романович', 'Nilanrad@company.com', '888-00-68', 4, 46),
	(119, 'Лазарев Мстислав Иосифович', 'Oghmaswyn@company.com', '888-00-62', 4, 51),
	(122, 'Ларионов Аполлон Кириллович', 'Saidora@company.com', '888-00-65', 1, 42),
	(124, 'Сазонов Исак Парфеньевич', 'Sainaya@company.com', '888-00-96', 4, 49),
	(129, 'Казаков Игнатий Григорьевич', 'Thorin@company.com', '888-00-42', 8, 48),
	(135, 'Аксёнов Герасим Михаилович ', 'Zathis@company.com', '888-00-01', 10, 45);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Дамп структуры для таблица structure.positions
CREATE TABLE IF NOT EXISTS `positions` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `position` text DEFAULT NULL,
  `position_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `position` (`position`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы structure.positions: ~33 rows (приблизительно)
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
REPLACE INTO `positions` (`id`, `position`, `position_level`) VALUES
	(1, 'Специалист', 1),
	(2, 'Ведущий Инженер-Программист\r\n', 2),
	(3, 'Главный Аналитик', 4),
	(4, 'Начальник Отдела', 10),
	(5, 'Начальник Управления', 11),
	(6, 'Старший Аналитик', 3),
	(7, 'Системный Администратор AIX и СХД', 1),
	(8, 'Старший Специалист', 3),
	(9, 'Лидер Команды', 10),
	(10, 'Администратор СУБД', 1),
	(11, 'Директор', 12),
	(12, 'Ведущий Разработчик 1С', 2),
	(13, 'Ведущий Специалист', 2),
	(14, 'Администратор Управления Сервисами', 1),
	(15, 'Ведущий Инженер', 2),
	(16, 'Администратор Серверов Приложений', 1),
	(17, 'Системный Администратор Microsoft', 1),
	(18, 'Главный Инженер-Программист', 4),
	(19, 'Главный Инженер', 4),
	(20, 'Системный Администратор Платформ Виртуализации', 1),
	(22, 'DevOps Engineer', 1),
	(23, 'Middle DevOps Engineer', 2),
	(24, 'Администратор Баз Данных', 1),
	(26, 'Администратор Управления Конфигурациями', 1),
	(27, 'Ведущий Аналитик', 2),
	(28, 'Ведущий Разработчик', 2),
	(33, 'Главный Разработчик 1С', 4),
	(34, 'Менеджер ИТ Процессов', 1),
	(35, 'Менеджер по Управлению Активами ДИиТ', 1),
	(36, 'Системный Администратор Unix', 1),
	(38, 'Системный Администратор Файловых Хранилищ', 1),
	(39, 'Старший Инженер-Программист', 3),
	(40, 'Менеджер', 1);
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;

-- Дамп структуры для таблица structure.departaments
CREATE TABLE IF NOT EXISTS `departaments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы structure.departaments: ~26 rows (приблизительно)
/*!40000 ALTER TABLE `departaments` DISABLE KEYS */;
REPLACE INTO `departaments` (`id`, `name`, `parent_id`) VALUES
	(1, 'Головной', NULL),
	(2, 'Блок 1', 1),
	(3, 'Блок 2', 1),
	(4, 'Дирекция 1', 2),
	(5, 'Департамент 1', 4),
	(6, 'Департамент 2', 4),
	(37, 'Управление 1', 6),
	(38, 'Управление 2', 5),
	(39, 'Управление 3', 6),
	(40, 'Управление 4', 5),
	(41, 'Управление 6', 6),
	(42, 'Отдел 1', 37),
	(43, 'Отдел 2', 38),
	(44, 'Отдел 3', 38),
	(45, 'Отдел 4', 5),
	(46, 'Отдел 5', 39),
	(47, 'Отдел 6', 38),
	(48, 'Отдел 7', 6),
	(49, 'Отдел 9', 39),
	(50, 'Отдел 10', 40),
	(51, 'Отдел 11', 37),
	(52, 'Отдел 12', 41),
	(53, 'Отдел 13', 38),
	(54, 'Отдел 15', 41),
	(55, 'Отдел 16', 41),
	(56, 'Отдел 17', 37);
/*!40000 ALTER TABLE `departaments` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
