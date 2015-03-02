-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 02, 2015 at 04:36 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mtech_prj`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_you_can_include`
--

DROP TABLE IF EXISTS `all_you_can_include`;
CREATE TABLE IF NOT EXISTS `all_you_can_include` (
  `all_you_can_menu_all_id` int(10) unsigned NOT NULL,
  `normal_menu_mnu_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `all_you_can_include`
--

TRUNCATE TABLE `all_you_can_include`;
--
-- Dumping data for table `all_you_can_include`
--

INSERT INTO `all_you_can_include` (`all_you_can_menu_all_id`, `normal_menu_mnu_id`) VALUES
(5, 8),
(5, 9),
(5, 10),
(5, 12),
(5, 15),
(6, 16),
(6, 17),
(6, 18);

-- --------------------------------------------------------

--
-- Table structure for table `all_you_can_menu`
--

DROP TABLE IF EXISTS `all_you_can_menu`;
CREATE TABLE IF NOT EXISTS `all_you_can_menu` (
  `all_id` int(10) unsigned NOT NULL,
  `all_you_can_type_id` int(10) unsigned NOT NULL,
  `all_name_local` varchar(255) NOT NULL,
  `all_name_en` varchar(255) DEFAULT NULL,
  `all_cost` float unsigned NOT NULL DEFAULT '0',
  `all_sale_price` float unsigned NOT NULL DEFAULT '0',
  `all_time_limit` int(11) DEFAULT NULL,
  `all_available` varchar(255) NOT NULL,
  `all_is_active` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `all_create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `all_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `all_order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `all_you_can_menu`
--

TRUNCATE TABLE `all_you_can_menu`;
--
-- Dumping data for table `all_you_can_menu`
--

INSERT INTO `all_you_can_menu` (`all_id`, `all_you_can_type_id`, `all_name_local`, `all_name_en`, `all_cost`, `all_sale_price`, `all_time_limit`, `all_available`, `all_is_active`, `all_create_date`, `all_update_date`, `all_order`) VALUES
(5, 2, 'For 1 Hr.', 'For 1 Hr.', 15000, 20000, 60, 'Mon,Wed,Fri', 'YES', '2014-11-25 11:27:02', '2014-11-25 04:29:54', 1),
(6, 1, 'For 1 Hr.', 'For 1 Hr.', 20000, 25000, 60, 'Mon,Wed,Fri', 'YES', '2014-11-25 18:07:54', '2014-11-25 11:08:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `all_you_can_type`
--

DROP TABLE IF EXISTS `all_you_can_type`;
CREATE TABLE IF NOT EXISTS `all_you_can_type` (
  `all_type_id` int(10) unsigned NOT NULL,
  `all_type_name_local` varchar(255) NOT NULL,
  `all_type_name_en` varchar(255) DEFAULT NULL,
  `all_type_is_active` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `all_type_create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `all_type_last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `all_type_color` varchar(10) NOT NULL,
  `all_type_order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `all_you_can_type`
--

TRUNCATE TABLE `all_you_can_type`;
--
-- Dumping data for table `all_you_can_type`
--

INSERT INTO `all_you_can_type` (`all_type_id`, `all_type_name_local`, `all_type_name_en`, `all_type_is_active`, `all_type_create_date`, `all_type_last_update`, `all_type_color`, `all_type_order`) VALUES
(1, 'All You Can Drink', 'All You Can Drink', 'YES', '2014-04-05 12:09:32', '2014-11-25 10:35:19', 'BCA9F5', 1),
(2, 'All You Can Eat', 'All You Can Eat', 'YES', '2014-05-18 22:40:40', '2014-11-25 10:35:35', 'BEF781', 2);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(10) unsigned NOT NULL,
  `province_id` int(10) unsigned NOT NULL,
  `city_eng` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city_owner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city_order` int(11) NOT NULL,
  `country_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1291 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `city`
--

TRUNCATE TABLE `city`;
--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `province_id`, `city_eng`, `city_owner`, `city_order`, `country_id`) VALUES
(5, 8, 'Chuo-Ku,Sapporo-City', '札幌市中央区', 1, 4),
(6, 8, 'Kita-Ku,Sapporo-City', '札幌市北区', 2, 4),
(7, 8, 'Higashi-Ku,Sapporo-City', '札幌市東区', 3, 4),
(8, 8, 'Shiroishi-Ku,Sapporo-City', '札幌市白石区', 4, 4),
(9, 8, 'Toyohira-Ku,Sapporo-City', '札幌市豊平区', 5, 4),
(10, 8, 'Minami-Ku,Sapporo-City', '札幌市南区', 6, 4),
(11, 8, 'Nishi-Ku,Sapporo-City', '札幌市西区', 7, 4),
(12, 8, 'Atsubetsu-Ku,Sapporo-City', '札幌市厚別区', 8, 4),
(13, 8, 'Teine-Ku,Sapporo-City', '札幌市手稲区', 9, 4),
(14, 8, 'Kiyota-Ku,Sapporo-City', '札幌市清田区', 10, 4),
(15, 9, 'Hakodate -City', '函館市', 11, 4),
(16, 8, 'Otaru -City', '小樽市', 12, 4),
(17, 8, 'Asahikawa -City', '旭川市', 13, 4),
(18, 8, 'Muroran -City', '室蘭市', 14, 4),
(19, 8, 'Kushiro -City', '釧路市', 15, 4),
(20, 9, 'Obihiro -City', '帯広市', 16, 4),
(21, 8, 'Kitami -City', '北見市', 17, 4),
(22, 8, 'Yubari -City', '夕張市', 18, 4),
(23, 8, 'Iwamizawa -City', '岩見沢市', 19, 4),
(24, 8, 'Abashiri -City', '網走市', 20, 4),
(25, 8, 'Rumoi -City', '留萌市', 21, 4),
(26, 8, 'Tomakomai -City', '苫小牧市', 22, 4),
(27, 8, 'Wakkanai -City', '稚内市', 23, 4),
(28, 8, 'Hibai -City', '美唄市', 24, 4),
(29, 8, 'Ashibetsu -City', '芦別市', 25, 4),
(30, 8, 'Ebetsu -City', '江別市', 26, 4),
(31, 8, 'Akabira -City', '赤平市', 27, 4),
(32, 8, 'Monbetsu -City', '紋別市', 28, 4),
(33, 8, 'Shibetu -City', '士別市', 29, 4),
(34, 8, 'Nayoro -City', '名寄市', 30, 4),
(35, 8, 'MIkasa -City', '三笠市', 31, 4),
(36, 8, 'Nemuro -City', '根室市', 32, 4),
(37, 8, 'Chitose -City', '千歳市', 33, 4),
(38, 8, 'Takikawa -City', '滝川市', 34, 4),
(39, 8, 'Sunagawa -City', '砂川市', 35, 4),
(40, 8, 'Utashinai -City', '歌志内市', 36, 4),
(41, 8, 'Fukagawa -City', '深川市', 37, 4),
(42, 8, 'Furano -City', '富良野市', 38, 4),
(43, 8, 'Noboribetsu -City', '登別市', 39, 4),
(44, 8, 'Eniwa -City', '恵庭市', 40, 4),
(45, 8, 'Date -City', '伊達市', 41, 4),
(46, 8, 'Kitahiroshima -City', '北広島市', 42, 4),
(47, 8, 'Ishikari -City', '石狩市', 43, 4),
(48, 8, 'Hokuto -City', '北斗市', 44, 4),
(49, 8, 'Sora -C.D.B.', '空知総合振興局', 45, 4),
(50, 8, 'Ishikari -C.D.B.', '石狩振興局', 46, 4),
(51, 8, 'Shiribeshi -C.D.B.', '後志総合振興局', 47, 4),
(52, 8, 'Iburi -C.D.B.', '胆振総合振興局', 48, 4),
(53, 8, 'Hidaka -C.D.B.', '日高振興局', 49, 4),
(54, 8, 'Oshima -C.D.B.', '渡島総合振興局', 50, 4),
(55, 8, 'Hiyama -C.D.B.', '檜山振興局', 51, 4),
(56, 8, 'Kamikawa -C.D.B.', '上川総合振興局', 52, 4),
(57, 8, 'Rumoi -C.D.B.', '留萌振興局', 53, 4),
(58, 8, 'Souya -C.D.B.', '宗谷総合振興局', 54, 4),
(59, 8, 'Ohotsuku -C.D.B.', 'オホーツク総合振興局', 55, 4),
(60, 8, 'Tokachi -C.D.B.', '十勝総合振興局', 56, 4),
(61, 8, 'Kushiro -C.D.B.', '釧路総合振興局', 57, 4),
(62, 8, 'Nemuro -C.D.B.', '根室振興局', 58, 4),
(63, 9, 'Aomori -City', '青森市', 5, 4),
(64, 9, 'Hirosaki -City', '弘前市', 5, 4),
(65, 9, 'Hachinohe -City', '八戸市', 5, 4),
(66, 9, 'Kuroishi -City', '黒石市', 5, 4),
(67, 9, 'Gosyogawara -City', '五所川原市', 5, 4),
(68, 9, 'Towada -City', '十和田市', 6, 4),
(69, 9, 'Misawa -City', '三沢市', 7, 4),
(70, 9, 'Mutsu -City', 'むつ市', 8, 4),
(71, 9, 'Tsugaru -City', 'つがる市', 9, 4),
(72, 9, 'Hirakawa -City', '平川市', 10, 4),
(73, 9, 'Higashitsugaru-Gun', '東津軽郡', 11, 4),
(74, 9, 'Nishitsugaru-Gun', '西津軽郡', 12, 4),
(75, 9, 'Nakatsugaru-Gun', '中津軽郡', 13, 4),
(76, 9, 'Minamitsugaru-Gun', '南津軽郡', 14, 4),
(77, 9, 'Kitatsugaru-Guni', '北津軽郡', 15, 4),
(78, 9, 'Kamikita-Gun', '上北郡', 16, 4),
(79, 9, 'Shimokita-Gun', '下北郡', 17, 4),
(80, 9, 'Sannohe-Gun', '三戸郡', 18, 4),
(81, 10, 'Morioka -City', '盛岡市', 5, 4),
(82, 10, 'Miyako -City', '宮古市', 5, 4),
(83, 10, 'Ofunato -City', '大船渡市', 5, 4),
(84, 10, 'Hanamaki -City', '花巻市', 5, 4),
(85, 10, 'Kitagami -City', '北上市', 5, 4),
(86, 10, 'Kuji -City', '久慈市', 6, 4),
(87, 10, 'Tono -City', '遠野市', 7, 4),
(88, 10, 'Ichinoseki -City', '一関市', 8, 4),
(89, 10, 'Rikuzentakata -City', '陸前高田市', 9, 4),
(90, 10, 'Kamaishi -City', '釜石市', 10, 4),
(91, 10, 'Ninohe -City', '二戸市', 11, 4),
(92, 10, 'Hachimantai -City', '八幡平市', 12, 4),
(93, 10, 'Oshu -City', '奥州市', 13, 4),
(94, 10, 'Iwate -Gun', '岩手郡', 14, 4),
(95, 10, 'Shiwa -Gun', '紫波郡', 15, 4),
(96, 10, 'Waga -Gun', '和賀郡', 16, 4),
(97, 10, 'Isawa -Gun', '胆沢郡', 17, 4),
(98, 10, 'Nishiiwa -Gun', '西磐井郡', 18, 4),
(99, 10, 'Kesen -Gun', '気仙郡', 19, 4),
(100, 10, 'Kamihei -Gun', '上閉伊郡', 20, 4),
(101, 10, 'Shimohei -Gun', '下閉伊郡', 21, 4),
(102, 10, 'Kunohe -Gun', '九戸郡', 22, 4),
(103, 10, 'Ninohe -Gun', '二戸郡', 23, 4),
(104, 11, 'Sendai -City,Aoba -Ku', '仙台市青葉区', 5, 4),
(105, 11, 'Sendai -City,Miyagino -Ku', '仙台市宮城野区', 5, 4),
(106, 11, 'Sendai -City,Wakabayashi -Ku', '仙台市若林区', 5, 4),
(107, 11, 'Sendai -City,Taihaku -Ku', '仙台市太白区', 5, 4),
(108, 11, 'Sendai -City,Izumi -Ku', '仙台市泉区', 5, 4),
(109, 11, 'Ishinomaki -City', '石巻市', 6, 4),
(110, 11, 'Shiogaama -City', '塩竈市', 7, 4),
(111, 11, 'Kesennuma -City', '気仙沼市', 8, 4),
(112, 11, 'Shiroishi -City', '白石市', 9, 4),
(113, 11, 'Natori -City', '名取市', 10, 4),
(114, 11, 'Kakuda -City', '角田市', 11, 4),
(115, 11, 'Tagajo -City', '多賀城市', 12, 4),
(116, 11, 'Iwanuma -City', '岩沼市', 13, 4),
(117, 11, 'Tomeshi -City', '登米市', 14, 4),
(118, 11, 'Kurihara -City', '栗原市', 15, 4),
(119, 11, 'Higashimatsushima -City', '東松島市', 16, 4),
(120, 11, 'Osaki -City', '大崎市', 17, 4),
(121, 11, 'Katta -Gun', '刈田郡', 18, 4),
(122, 11, 'Shibata -Gun', '柴田郡', 19, 4),
(123, 11, 'Iku -Gun', '伊具郡', 20, 4),
(124, 11, 'Watari -Gun', '亘理郡', 21, 4),
(125, 11, 'Miyazaki -Gun', '宮城郡', 22, 4),
(126, 11, 'Kurokawa -Gun', '黒川郡', 23, 4),
(127, 11, 'Kami -Gun', '加美郡', 24, 4),
(128, 11, 'Tohda -Gun', '遠田郡', 25, 4),
(129, 11, 'Oshika -Gun', '牡鹿郡', 26, 4),
(130, 11, 'Motoyoshi -Gun', '本吉郡', 27, 4),
(131, 12, 'Akita -City', '秋田市', 5, 4),
(132, 12, 'Noshiro -City', '能代市', 5, 4),
(133, 12, 'Yokote -City', '横手市', 5, 4),
(134, 12, 'Odate -City', '大館市', 5, 4),
(135, 12, 'Ogashi -City', '男鹿市', 5, 4),
(136, 12, 'Yuzawa -City', '湯沢市', 6, 4),
(137, 12, 'Kazuno -City', '鹿角市', 7, 4),
(138, 12, 'Yurihonjo -City', '由利本荘市', 8, 4),
(139, 12, 'Katagami -City', '潟上市', 9, 4),
(140, 12, 'Daisen -City', '大仙市', 10, 4),
(141, 12, 'Kitaakita -City', '北秋田市', 11, 4),
(142, 12, 'Nikaho -City', 'にかほ市', 12, 4),
(143, 12, 'Senboku -City', '仙北市', 13, 4),
(144, 12, 'Kazuno -Gun', '鹿角郡', 14, 4),
(145, 12, 'Kitaakita -Gun', '北秋田郡', 15, 4),
(146, 12, 'Yamamoto -Gun', '山本郡', 16, 4),
(147, 12, 'Minamiakita -Gun', '南秋田郡', 17, 4),
(148, 12, 'Senboku -Gun', '仙北郡', 18, 4),
(149, 12, 'Ogachi -Gun', '雄勝郡', 19, 4),
(150, 13, 'Yamagata -City', '山形市', 5, 4),
(151, 13, 'Yoneawa -City', '米沢市', 5, 4),
(152, 13, 'Tsuruoka -City', '鶴岡市', 5, 4),
(153, 13, 'Sakata -City', '酒田市', 5, 4),
(154, 13, 'Shinjo -City', '新庄市', 5, 4),
(155, 13, 'Sagae -City', '寒河江市', 6, 4),
(156, 13, 'Kaminoyama -City', '上山市', 7, 4),
(157, 13, 'Murayama -City', '村山市', 8, 4),
(158, 13, 'Nagai -City', '長井市', 9, 4),
(159, 13, 'Tendou -City', '天童市', 10, 4),
(160, 13, 'Higashine -City', '東根市', 11, 4),
(161, 13, 'Obanazawa -City', '尾花沢市', 12, 4),
(162, 13, 'Nanyou -City', '南陽市', 13, 4),
(163, 13, 'Higashimurayama -Gun', '東村山郡', 14, 4),
(164, 13, 'Nishimurayama -Gun', '西村山郡', 15, 4),
(165, 13, 'Kitamurayama -Gun', '北村山郡', 16, 4),
(166, 13, 'Mogami -Gun', '最上郡', 17, 4),
(167, 13, 'Higashiookitama -Gun', '東置賜郡', 18, 4),
(168, 13, 'Nishiookitama -Gun', '西置賜郡', 19, 4),
(169, 13, 'Higashitagawa -Gun', '東田川郡', 20, 4),
(170, 13, 'Akumi -Gun', '飽海郡', 21, 4),
(171, 14, 'Fukushima -City', '福島市', 5, 4),
(172, 14, 'Aiduwakamatsu -City', '会津若松市', 5, 4),
(173, 14, 'Koriyama -City', '郡山市', 5, 4),
(174, 14, 'Iwaki -City', 'いわき市', 5, 4),
(175, 14, 'Shirakawa -City', '白河市', 5, 4),
(176, 14, 'Sukagawa -City', '須賀川市', 6, 4),
(177, 14, 'Kitakata -City', '喜多方市', 7, 4),
(178, 14, 'Souma -City', '相馬市', 8, 4),
(179, 14, 'Nihonmatsu -City', '二本松市', 9, 4),
(180, 14, 'Tamura -City', '田村市', 10, 4),
(181, 14, 'Minamisouma -City', '南相馬市', 11, 4),
(182, 14, 'Tateshi -City', '', 12, 4),
(183, 14, 'Motomiya -City', '本宮市', 13, 4),
(184, 14, 'Date -Gun', '伊達郡', 14, 4),
(185, 14, 'Adachi -Gun', '安達郡', 15, 4),
(186, 14, 'Iwase -Gun', '岩瀬郡', 16, 4),
(187, 14, 'Minamiaidu -Gun', '南会津郡', 17, 4),
(188, 14, 'Yama -Gun', '耶麻郡', 18, 4),
(189, 14, 'Kawanuma -Gun', '河沼郡', 19, 4),
(190, 14, 'Oonuma -Gun', '大沼郡', 20, 4),
(191, 14, 'Nishikawara -Gun', '西白河郡', 21, 4),
(192, 14, 'Higashishirakawa -Gun', '東白川郡', 22, 4),
(193, 14, 'Ishikawa -Gun', '石川郡', 23, 4),
(194, 14, 'Tamura -Gun', '田村郡', 24, 4),
(195, 14, 'Futaba -Gun', '双葉郡', 25, 4),
(196, 14, 'Souma -Gun', '相馬郡', 26, 4),
(197, 15, 'Mito -City', '水戸市', 5, 4),
(198, 15, 'Hitachi -City', '日立市', 5, 4),
(199, 15, 'Tsuchiura -City', '土浦市', 5, 4),
(200, 15, 'Koga -City', '古河市', 5, 4),
(201, 15, 'Ishioka -City', '石岡市', 5, 4),
(202, 15, 'Yuki -City', '結城市', 6, 4),
(203, 15, 'Ryugasaki -City', '龍ケ崎市', 7, 4),
(204, 15, 'Shimotsuma -City', '下妻市', 8, 4),
(205, 15, 'Jousou -City', '常総市', 9, 4),
(206, 15, 'Hitachioota -City', '常陸太田市', 10, 4),
(207, 15, 'Takahagi -City', '高萩市', 11, 4),
(208, 15, 'Kitaibaraki -City', '北茨城市', 12, 4),
(209, 15, 'Kasama -City', '笠間市', 13, 4),
(210, 15, 'Toride -City', '取手市', 14, 4),
(211, 15, 'Ushiku -City', '牛久市', 15, 4),
(212, 15, 'TSukuba -City', 'つくば市', 16, 4),
(213, 15, 'Hitachinaka -City', 'ひたちなか市', 17, 4),
(214, 15, 'Kashimashi -City', '鹿嶋市', 18, 4),
(215, 15, 'Itako -City', '潮来市', 19, 4),
(216, 15, 'Moriya -City', '守谷市', 20, 4),
(217, 15, 'Hitachioomiya -City', '常陸大宮市', 21, 4),
(218, 15, 'Naka -City', '那珂市', 22, 4),
(219, 15, 'Chikusei -City', '筑西市', 23, 4),
(220, 15, 'Bando -City', '坂東市', 24, 4),
(221, 15, 'Inashiki -City', '稲敷市', 25, 4),
(222, 15, 'Kasumigaura -City', 'かすみがうら市', 26, 4),
(223, 15, 'Sakuragawa -City', '桜川市', 27, 4),
(224, 15, 'Kamisu -City', '神栖市', 28, 4),
(225, 15, 'Namegata -City', '行方市', 29, 4),
(226, 15, 'Hokota -City', '鉾田市', 30, 4),
(227, 15, 'Tsukubamirai -City', 'つくばみらい市', 31, 4),
(228, 15, 'Omitama -City', '小美玉市', 32, 4),
(229, 15, 'Higashiibaraki -Gun', '東茨城郡', 33, 4),
(230, 15, 'Naka -Gun', '那珂郡', 34, 4),
(231, 15, 'Kuji -Gun', '久慈郡', 35, 4),
(232, 15, 'Inashiki -Gun', '稲敷郡', 36, 4),
(233, 15, 'Yuuki -Gun', '結城郡', 37, 4),
(234, 15, 'Sashima -Gun', '猿島郡', 38, 4),
(235, 15, 'Kitasouma -Gun', '北相馬郡', 39, 4),
(236, 16, 'Utsunomiya City', '宇都宮市', 5, 4),
(237, 16, 'Ashikaga City', '足利市', 5, 4),
(238, 16, 'Tochigi City', '栃木市', 5, 4),
(239, 16, 'Sano City', '佐野市', 5, 4),
(240, 16, 'Kanuma City', '鹿沼市', 5, 4),
(241, 16, 'Nikko City', '日光市', 6, 4),
(242, 16, 'Oyama City', '小山市', 7, 4),
(243, 16, 'Mooka City', '真岡市', 8, 4),
(244, 16, 'Ootawara City', '大田原市', 9, 4),
(245, 16, 'Yaita City', '矢板市', 10, 4),
(246, 16, 'Nasushiobara City', '那須塩原市', 11, 4),
(247, 16, 'Sakura City', 'さくら市', 12, 4),
(248, 16, 'Nasukarasuyama City', '那須烏山市', 13, 4),
(249, 16, 'Shimotsuke City', '下野市', 14, 4),
(250, 16, 'Kawachi -Gun', '河内郡', 15, 4),
(251, 16, 'Haga -Gun', '芳賀郡', 16, 4),
(252, 16, 'Shimotsuga -Gun', '下都賀郡', 17, 4),
(253, 16, 'Shioya -Gun', '塩谷郡', 18, 4),
(254, 16, 'Nasu -Gun', '那須郡', 19, 4),
(255, 17, 'Maebashi -City', '前橋市', 5, 4),
(256, 17, 'Takasaki -City', '高崎市', 5, 4),
(257, 17, 'Kiryu -City', '桐生市', 5, 4),
(258, 17, 'Isesaki -City', '伊勢崎市', 5, 4),
(259, 17, 'Oota -City', '太田市', 5, 4),
(260, 17, 'Numata -City', '沼田市', 6, 4),
(261, 17, 'Tatebayashi -City', '館林市', 7, 4),
(262, 17, 'Shibukawa -City', '渋川市', 8, 4),
(263, 17, 'Fujioka -City', '藤岡市', 9, 4),
(264, 17, 'Tomioka -City', '富岡市', 10, 4),
(265, 17, 'Annaka -City', '安中市', 11, 4),
(266, 17, 'Midori -City', 'みどり市', 12, 4),
(267, 17, 'Kitagunma -Gun', '北群馬郡', 13, 4),
(268, 17, 'Tano -Gun', '多野郡', 14, 4),
(269, 17, 'Kanra -Gun', '甘楽郡', 15, 4),
(270, 17, 'Agatsuma -Gun', '吾妻郡', 16, 4),
(271, 17, 'Tone -Gun', '利根郡', 17, 4),
(272, 17, 'Sawa -Gun', '佐波郡', 18, 4),
(273, 17, 'Oura -Gun', '邑楽郡', 19, 4),
(274, 18, 'Saitama -City,Nishi -Ku', 'さいたま市西区', 5, 4),
(275, 18, 'Saitama -City,Kita -Ku', 'さいたま市北区', 5, 4),
(276, 18, 'Saitama -City,Omiya -Ku', 'さいたま市大宮区', 5, 4),
(277, 18, 'Saitama -City,Minuma -Ku', 'さいたま市見沼区', 5, 4),
(278, 18, 'Saitama -City,Chuou -Ku', 'さいたま市中央区', 5, 4),
(279, 18, 'Saitama -City,Sakura -Ku', 'さいたま市桜区', 6, 4),
(280, 18, 'Saitama -City,Urawa -Ku', 'さいたま市浦和区', 7, 4),
(281, 18, 'Saitama -City,Minami -Ku', 'さいたま市南区', 8, 4),
(282, 18, 'Saitama -City,Midori -Ku', 'さいたま市緑区', 9, 4),
(283, 18, 'Saitama -City,Iwatsuki -Ku', 'さいたま市岩槻区', 10, 4),
(284, 18, 'Kawagoe -City', '川越市', 11, 4),
(285, 18, 'Kumagaya -City', '熊谷市', 12, 4),
(286, 18, 'Kawaguchi -City', '川口市', 13, 4),
(287, 18, 'Gyoda -City', '行田市', 14, 4),
(288, 18, 'Chichibu -City', '秩父市', 15, 4),
(289, 18, 'Tokorozawa -City', '所沢市', 16, 4),
(290, 18, 'Hannou -City', '飯能市', 17, 4),
(291, 18, 'Kazo -City', '加須市', 18, 4),
(292, 18, 'Honjou -City', '本庄市', 19, 4),
(293, 18, 'Higashimatsuyama -City', '東松山市', 20, 4),
(294, 18, 'Kasukabe -City', '春日部市', 21, 4),
(295, 18, 'Sayama -City', '狭山市', 22, 4),
(296, 18, 'Hanyu -City', '羽生市', 23, 4),
(297, 18, 'Kounosu -City', '鴻巣市', 24, 4),
(298, 18, 'Fukaya -City', '深谷市', 25, 4),
(299, 18, 'Ageo -City', '上尾市', 26, 4),
(300, 18, 'Souka -City', '草加市', 27, 4),
(301, 18, 'Koshigaya -City', '越谷市', 28, 4),
(302, 18, 'Warabi -City', '蕨市', 29, 4),
(303, 18, 'Toda -City', '戸田市', 30, 4),
(304, 18, 'Iruma -City', '入間市', 31, 4),
(305, 18, 'Asaka -City', '朝霞市', 32, 4),
(306, 18, 'Shiki -City', '志木市', 33, 4),
(307, 18, 'Wako -City', '和光市', 34, 4),
(308, 18, 'NIiza -City', '新座市', 35, 4),
(309, 18, 'Okegawa -City', '桶川市', 36, 4),
(310, 18, 'Kuki -City', '久喜市', 37, 4),
(311, 18, 'Kitamoto -City', '北本市', 38, 4),
(312, 18, 'Yashio -City', '八潮市', 39, 4),
(313, 18, 'Fujimi -City', '富士見市', 40, 4),
(314, 18, 'Misato -City', '三郷市', 41, 4),
(315, 18, 'Hasuda -City', '蓮田市', 42, 4),
(316, 18, 'Sakado -City', '坂戸市', 43, 4),
(317, 18, 'Satte -City', '幸手市', 44, 4),
(318, 18, 'Tsurugashima -City', '鶴ヶ島市', 45, 4),
(319, 18, 'Hidaka -City', '日高市', 46, 4),
(320, 18, 'Yoshikawa -City', '吉川市', 47, 4),
(321, 18, 'Fujimino -City', 'ふじみ野市', 48, 4),
(322, 18, 'Kitaadachi -Gun', '北足立郡', 49, 4),
(323, 18, 'Iruma -Gun', '入間郡', 50, 4),
(324, 18, 'Hiki -Gun', '比企郡', 51, 4),
(325, 18, 'Chichibu -Gun', '秩父郡', 52, 4),
(326, 18, 'Kodama -Gun', '児玉郡', 53, 4),
(327, 18, 'Oosato -Gun', '大里郡', 54, 4),
(328, 18, 'Minamisaitama -Gun', '南埼玉郡', 55, 4),
(329, 18, 'Kitakatsushika -Gun', '北葛飾郡', 56, 4),
(330, 19, 'Chiba -City,Chuou -Ku', '千葉市中央区', 5, 4),
(331, 19, 'Chiba -City,Hanamigawa -Ku', '千葉市花見川区', 5, 4),
(332, 19, 'Chiba -City,Inage -Ku', '千葉市稲毛区', 5, 4),
(333, 19, 'Chiba -City,Wakaba -Ku', '千葉市若葉区', 5, 4),
(334, 19, 'Chiba -City,Midori -Ku', '千葉市緑区', 5, 4),
(335, 19, 'Chiba -City,Mihama -Ku', '千葉市美浜区', 6, 4),
(336, 19, 'Choshi -City', '銚子市', 7, 4),
(337, 19, 'Ichikawa -City', '市川市', 8, 4),
(338, 19, 'Funabashi -City', '船橋市', 9, 4),
(339, 19, 'Tateyama -City', '館山市', 10, 4),
(340, 19, 'Kisarazu -City', '木更津市', 11, 4),
(341, 19, 'Matsudo -City', '松戸市', 12, 4),
(342, 19, 'Noda -City', '野田市', 13, 4),
(343, 19, 'Mobara -City', '茂原市', 14, 4),
(344, 19, 'Narita -City', '成田市', 15, 4),
(345, 19, 'Sakura -City', '佐倉市', 16, 4),
(346, 19, 'Togane -City', '東金市', 17, 4),
(347, 19, 'Asahi -City', '旭市', 18, 4),
(348, 19, 'Narashino -City', '習志野市', 19, 4),
(349, 19, 'Kashiwa -City', '柏市', 20, 4),
(350, 19, 'Katsuura -City', '勝浦市', 21, 4),
(351, 19, 'Ichihara -City', '市原市', 22, 4),
(352, 19, 'Nagareyama -City', '流山市', 23, 4),
(353, 19, 'Yachiyo -City', '八千代市', 24, 4),
(354, 19, 'Abiko -City', '我孫子市', 25, 4),
(355, 19, 'Kamogawa -City', '鴨川市', 26, 4),
(356, 19, 'Kamagaya -City', '鎌ケ谷市', 27, 4),
(357, 19, 'Kimitsu -City', '君津市', 28, 4),
(358, 19, 'Futtsu -City', '富津市', 29, 4),
(359, 19, 'Urayasu -City', '浦安市', 30, 4),
(360, 19, 'Yotsukaido -City', '四街道市', 31, 4),
(361, 19, 'Sodegaura -City', '袖ケ浦市', 32, 4),
(362, 19, 'Yachimata -City', '八街市', 33, 4),
(363, 19, 'Inzai -City', '印西市', 34, 4),
(364, 19, 'Shiroi -City', '白井市', 35, 4),
(365, 19, 'Tomisato -City', '富里市', 36, 4),
(366, 19, 'Minamibouso -City', '南房総市', 37, 4),
(367, 19, 'Sousa -City', '匝瑳市', 38, 4),
(368, 19, 'Katori -City', '香取市', 39, 4),
(369, 19, 'Sanmu -City', '山武市', 40, 4),
(370, 19, 'Isumi -City', 'いすみ市', 41, 4),
(371, 19, 'Inba -Gun', '印旛郡', 42, 4),
(372, 19, 'Katori -Gun', '香取郡', 43, 4),
(373, 19, 'Sanbu -Gun', '山武郡', 44, 4),
(374, 19, 'Chosei -Gun', '長生郡', 45, 4),
(375, 19, 'Izumi -Gun', '夷隅郡', 46, 4),
(376, 19, 'Awa -Gun', '安房郡', 47, 4),
(377, 20, 'Chiyoda -Ku', '千代田区', 5, 4),
(378, 20, 'Chuo -Ku', '中央区', 5, 4),
(379, 20, 'Minato -Ku', '港区', 5, 4),
(380, 20, 'Shinjuku -Ku', '新宿区', 5, 4),
(381, 20, 'Bunkyo -Ku', '文京区', 5, 4),
(382, 20, 'Taito -Ku', '台東区', 6, 4),
(383, 20, 'Sumida -Ku', '墨田区', 7, 4),
(384, 20, 'Koutou -Ku', '江東区', 8, 4),
(385, 20, 'Shinagawa -Ku', '品川区', 9, 4),
(386, 20, 'Meguro -Ku', '目黒区', 10, 4),
(387, 20, 'Ota -Ku', '大田区', 11, 4),
(388, 20, 'Setagaya -Ku', '世田谷区', 12, 4),
(389, 20, 'Shibuya -Ku', '渋谷区', 13, 4),
(390, 20, 'Nakano -Ku', '中野区', 14, 4),
(391, 20, 'Suginami -Ku', '杉並区', 15, 4),
(392, 20, 'Toshima -Ku', '豊島区', 16, 4),
(393, 20, 'Kita -Ku', '北区', 17, 4),
(394, 20, 'Arakawa -Ku', '荒川区', 18, 4),
(395, 20, 'Itabashi -Ku', '板橋区', 19, 4),
(396, 20, 'Nerima -Ku', '練馬区', 20, 4),
(397, 20, 'Adachi -Ku', '足立区', 21, 4),
(398, 20, 'Katsushika -Ku', '葛飾区', 22, 4),
(399, 20, 'Edogawa -Ku', '江戸川区', 23, 4),
(400, 20, 'Hachiouji -City', '八王子市', 24, 4),
(401, 20, 'Tachikawa -City', '立川市', 25, 4),
(402, 20, 'Musashino -City', '武蔵野市', 26, 4),
(403, 20, 'Mitaka -City', '三鷹市', 27, 4),
(404, 20, 'Oume -City', '青梅市', 28, 4),
(405, 20, 'Fuchu -City', '府中市', 29, 4),
(406, 20, 'Akishima -City', '昭島市', 30, 4),
(407, 20, 'Chofu -City', '調布市', 31, 4),
(408, 20, 'Machida -City', '町田市', 32, 4),
(409, 20, 'Koganei -City', '小金井市', 33, 4),
(410, 20, 'Kodaira -City', '小平市', 34, 4),
(411, 20, 'Hino -City', '日野市', 35, 4),
(412, 20, 'Higashimurayama -City', '東村山市', 36, 4),
(413, 20, 'Kokubunji -City', '国分寺市', 37, 4),
(414, 20, 'Kunitachi -City', '国立市', 38, 4),
(415, 20, 'Fussa -City', '福生市', 39, 4),
(416, 20, 'Komae -City', '狛江市', 40, 4),
(417, 20, 'Higashiyamato -City', '東大和市', 41, 4),
(418, 20, 'Kiyose -City', '清瀬市', 42, 4),
(419, 20, 'Higashikurume -City', '東久留米市', 43, 4),
(420, 20, 'Higashimurayama -City', '武蔵村山市', 44, 4),
(421, 20, 'Tama -City', '多摩市', 45, 4),
(422, 20, 'Inagi -City', '稲城市', 46, 4),
(423, 20, 'Hamura -City', '羽村市', 47, 4),
(424, 20, 'Akiruno -City', 'あきる野市', 48, 4),
(425, 20, 'Nishitokyo -City', '西東京市', 49, 4),
(426, 20, 'Nishitama -Gun', '西多摩郡', 50, 4),
(427, 20, 'Oshima -B.O.', '大島支庁', 51, 4),
(428, 20, 'Miyake -B.O.', '三宅支庁', 52, 4),
(429, 20, 'Hachijo -B.O.', '八丈支庁', 53, 4),
(430, 20, 'Ogasawara -B.O.', '小笠原支庁', 54, 4),
(431, 21, 'Yokohama -City,Tsurumi -ku', '横浜市鶴見区', 5, 4),
(432, 21, 'Yokohama -City,Kanagawa -ku', '横浜市神奈川区', 5, 4),
(433, 21, 'Yokohama -City,Nishi -ku', '横浜市西区', 5, 4),
(434, 21, 'Yokohama -City,Naka -ku', '横浜市中区', 5, 4),
(435, 21, 'Yokohama -City,Minami -ku', '横浜市南区', 5, 4),
(436, 21, 'Yokohama -City,Hodogaya -ku', '横浜市保土ケ谷区', 6, 4),
(437, 21, 'Yokohama -City,Isogo -ku', '横浜市磯子区', 7, 4),
(438, 21, 'Yokohama -City,Kanazawa -ku', '横浜市金沢区', 8, 4),
(439, 21, 'Yokohama -City,Kouhoku -ku', '横浜市港北区', 9, 4),
(440, 21, 'Yokohama -City,Totsuka -ku', '横浜市戸塚区', 10, 4),
(441, 21, 'Yokohama -City,Kounan -ku', '横浜市港南区', 11, 4),
(442, 21, 'Yokohama -City,Asahi -ku', '横浜市旭区', 12, 4),
(443, 21, 'Yokohama -City,Midori -ku', '横浜市緑区', 13, 4),
(444, 21, 'Yokohama -City,Seya -ku', '横浜市瀬谷区', 14, 4),
(445, 21, 'Yokohama -City,Sakae -ku', '横浜市栄区', 15, 4),
(446, 21, 'Yokohama -City,Izumi -ku', '横浜市泉区', 16, 4),
(447, 21, 'Yokohama -City,Aoba -ku', '横浜市青葉区', 17, 4),
(448, 21, 'Yokohama -City,Tsuduki -ku', '横浜市都筑区', 18, 4),
(449, 21, 'Kawasaki -City,Kawasaki -ku', '川崎市川崎区', 19, 4),
(450, 21, 'Kawasaki -City,Saiwai -ku', '川崎市幸区', 20, 4),
(451, 21, 'Kawasaki -City,Nakahara -ku', '川崎市中原区', 21, 4),
(452, 21, 'Kawasaki -City,Takatsu -ku', '川崎市高津区', 22, 4),
(453, 21, 'Kawasaki -City,Tama -ku', '川崎市多摩区', 23, 4),
(454, 21, 'Kawasaki -City,Miyamae -ku', '川崎市宮前区', 24, 4),
(455, 21, 'Kawasaki -City,Asao -ku', '川崎市麻生区', 25, 4),
(456, 21, 'Sagamihara -City,Midori -ku', '相模原市緑区', 26, 4),
(457, 21, 'Sagamihara -City,Chuou -ku', '相模原市中央区', 27, 4),
(458, 21, 'Sagamihara -City,Minami -ku', '相模原市南区', 28, 4),
(459, 21, 'Yokosuka -City', '横須賀市', 29, 4),
(460, 21, 'Hiratsuka -City', '平塚市', 30, 4),
(461, 21, 'Kamakura -City', '鎌倉市', 31, 4),
(462, 21, 'Fujisawa -City', '藤沢市', 32, 4),
(463, 21, 'Odawara -City', '小田原市', 33, 4),
(464, 21, 'Chigasaki -City', '茅ヶ崎市', 34, 4),
(465, 21, 'Zushi -City', '逗子市', 35, 4),
(466, 21, 'Miura -City', '三浦市', 36, 4),
(467, 21, 'Hadano -City', '秦野市', 37, 4),
(468, 21, 'Atsugi -City', '厚木市', 38, 4),
(469, 21, 'Yamato -City', '大和市', 39, 4),
(470, 21, 'Isehara -City', '伊勢原市', 40, 4),
(471, 21, 'Ebina -City', '海老名市', 41, 4),
(472, 21, 'Zama -City', '座間市', 42, 4),
(473, 21, 'Minamiashigara -City', '南足柄市', 43, 4),
(474, 21, 'Ayase -City', '綾瀬市', 44, 4),
(475, 21, 'Miura -Gun', '三浦郡', 45, 4),
(476, 21, 'Naka -Gun', '中郡', 46, 4),
(477, 21, 'Ashigarakami -Gun', '足柄上郡', 47, 4),
(478, 21, 'Ashigarashimo -Gun', '足柄下郡', 48, 4),
(479, 21, 'Aikou -Gun', '愛甲郡', 49, 4),
(480, 22, 'Niigata -City,Kita -Ku', '新潟市北区', 5, 4),
(481, 22, 'Niigata -City,Higashi -Ku', '新潟市東区', 5, 4),
(482, 22, 'Niigata -City,Chuou -Ku', '新潟市中央区', 5, 4),
(483, 22, 'Niigata -City,Kounan -Ku', '新潟市江南区', 5, 4),
(484, 22, 'Niigata -City,Akiha -Ku', '新潟市秋葉区', 5, 4),
(485, 22, 'Niigata -City,Minami -Ku', '新潟市南区', 6, 4),
(486, 22, 'Niigata -City,Nishi -Ku', '新潟市西区', 7, 4),
(487, 22, 'Niigata -City,Nishikan -Ku', '新潟市西蒲区', 8, 4),
(488, 22, 'Nagaoka -City', '長岡市', 9, 4),
(489, 22, 'Sanjo -City', '三条市', 10, 4),
(490, 22, 'Kashiwazaki -City', '柏崎市', 11, 4),
(491, 22, 'Shibata -City', '新発田市', 12, 4),
(492, 22, 'Ojiya -City', '小千谷市', 13, 4),
(493, 22, 'Kamo -City', '加茂市', 14, 4),
(494, 22, 'Tookamachi -City', '十日町市', 15, 4),
(495, 22, 'Mitsuke -City', '見附市', 16, 4),
(496, 22, 'Murakami -City', '村上市', 17, 4),
(497, 22, 'Tsubame -City', '燕市', 18, 4),
(498, 22, 'Itoigawa -City', '糸魚川市', 19, 4),
(499, 22, 'Myokou -City', '妙高市', 20, 4),
(500, 22, 'Gosen -City', '五泉市', 21, 4),
(501, 22, 'Joetsu -City', '上越市', 22, 4),
(502, 22, 'Agano -City', '阿賀野市', 23, 4),
(503, 22, 'Sado -City', '佐渡市', 24, 4),
(504, 22, 'Uonuma -City', '魚沼市', 25, 4),
(505, 22, 'Minamiuonuma -City', '南魚沼市', 26, 4),
(506, 22, 'Tainai -City', '胎内市', 27, 4),
(507, 22, 'Kitakanbara -Gun', '北蒲原郡', 28, 4),
(508, 22, 'Nishikanbara -Gun', '西蒲原郡', 29, 4),
(509, 22, 'Minamikanbara -Gun', '南蒲原郡', 30, 4),
(510, 22, 'Higashikanbara -Gun', '東蒲原郡', 31, 4),
(511, 22, 'Santou -Gun', '三島郡', 32, 4),
(512, 22, 'Minamiuonuma -Gun', '南魚沼郡', 33, 4),
(513, 22, 'Nakauonuma -Gun', '中魚沼郡', 34, 4),
(514, 22, 'Kariwa -Gun', '刈羽郡', 35, 4),
(515, 22, 'Iwafune -Gun', '岩船郡', 36, 4),
(516, 23, 'Toyama -City', '富山市', 5, 4),
(517, 23, 'Takaoka -City', '高岡市', 5, 4),
(518, 23, 'Uozu -City', '魚津市', 5, 4),
(519, 23, 'Himi -City', '氷見市', 5, 4),
(520, 23, 'Namerikawa -City', '滑川市', 5, 4),
(521, 23, 'Kurobe -City', '黒部市', 6, 4),
(522, 23, 'Tonami -City', '砺波市', 7, 4),
(523, 23, 'Oyabe -City', '小矢部市', 8, 4),
(524, 23, 'Nanto -City', '南砺市', 9, 4),
(525, 23, 'Imizu -City', '射水市', 10, 4),
(526, 23, 'Nakaniikawa -Gun', '中新川郡', 11, 4),
(527, 23, 'Shimoniikawa -Gun', '下新川郡', 12, 4),
(528, 24, 'Kanazawa -City', '金沢市', 5, 4),
(529, 24, 'Nanao -City', '七尾市', 5, 4),
(530, 24, 'Komatsu -City', '小松市', 5, 4),
(531, 24, 'Wajima -City', '輪島市', 5, 4),
(532, 24, 'Suzu -City', '珠洲市', 5, 4),
(533, 24, 'Kaga -City', '加賀市', 6, 4),
(534, 24, 'Hakui -City', '羽咋市', 7, 4),
(535, 24, 'Kahoku -City', 'かほく市', 8, 4),
(536, 24, 'Hakusan -City', '白山市', 9, 4),
(537, 24, 'Nomi -City', '能美市', 10, 4),
(538, 24, 'Nonoichi -City', '野々市市', 11, 4),
(539, 24, 'Nomi -Gun', '能美郡', 12, 4),
(540, 24, 'Kahoku -Gun', '河北郡', 13, 4),
(541, 24, 'Hakui -Gun', '羽咋郡', 14, 4),
(542, 24, 'Kashima -Gun', '鹿島郡', 15, 4),
(543, 24, 'Housu -Gun', '鳳珠郡', 16, 4),
(544, 25, 'Fukui -City', '福井市', 5, 4),
(545, 25, 'Tsuruga -City', '敦賀市', 5, 4),
(546, 25, 'Obama -City', '小浜市', 5, 4),
(547, 25, 'Oono -City', '大野市', 5, 4),
(548, 25, 'Katsuyama -City', '勝山市', 5, 4),
(549, 25, 'Sabae -City', '鯖江市', 6, 4),
(550, 25, 'Awara -City', 'あわら市', 7, 4),
(551, 25, 'Echizen -City', '越前市', 8, 4),
(552, 25, 'Sakai -City', '坂井市', 9, 4),
(553, 25, 'Yoshida -Gun', '吉田郡', 10, 4),
(554, 25, 'Imadate -Gun', '今立郡', 11, 4),
(555, 25, 'Nanjo -Gun', '南条郡', 12, 4),
(556, 25, 'Nyu -Gun', '丹生郡', 13, 4),
(557, 25, 'Mikata -Gun', '三方郡', 14, 4),
(558, 25, 'Ooi -Gun', '大飯郡', 15, 4),
(559, 25, 'Mikatakaminaka -Gun', '三方上中郡', 16, 4),
(560, 26, 'Koufu -City', '甲府市', 5, 4),
(561, 26, 'Fujiyoshida -City', '富士吉田市', 5, 4),
(562, 26, 'Tsuru -City', '都留市', 5, 4),
(563, 26, 'Yamanashi -City', '山梨市', 5, 4),
(564, 26, 'Otsuki -City', '大月市', 5, 4),
(565, 26, 'Nirasaki -City', '韮崎市', 6, 4),
(566, 26, 'Minamiarupusu -City', '南アルプス市', 7, 4),
(567, 26, 'Hokuto -City', '北杜市', 8, 4),
(568, 26, 'Kai -City', '甲斐市', 9, 4),
(569, 26, 'Fuefuki -City', '笛吹市', 10, 4),
(570, 26, 'Uenohara -City', '上野原市', 11, 4),
(571, 26, 'Kosyu -City', '甲州市', 12, 4),
(572, 26, 'Chuou -City', '中央市', 13, 4),
(573, 26, 'Nishiyatsushiro -Gun', '西八代郡', 14, 4),
(574, 26, 'Minamikoma -Gun', '南巨摩郡', 15, 4),
(575, 26, 'Nakakoma -Gun', '中巨摩郡', 16, 4),
(576, 26, 'Minamitsuru -Gun', '南都留郡', 17, 4),
(577, 26, 'Kitatsuru -Gun', '北都留郡', 18, 4),
(578, 27, 'Nagano -City', '長野市', 5, 4),
(579, 27, 'Matsumoto -City', '松本市', 5, 4),
(580, 27, 'Ueda -City', '上田市', 5, 4),
(581, 27, 'Okaya -City', '岡谷市', 5, 4),
(582, 27, 'Iida -City', '飯田市', 5, 4),
(583, 27, 'Suwa -City', '諏訪市', 6, 4),
(584, 27, 'Suzaka -City', '須坂市', 7, 4),
(585, 27, 'Komoro -City', '小諸市', 8, 4),
(586, 27, 'Ina -City', '伊那市', 9, 4),
(587, 27, 'Komagane -City', '駒ヶ根市', 10, 4),
(588, 27, 'Nakano -City', '中野市', 11, 4),
(589, 27, 'Omachi -City', '大町市', 12, 4),
(590, 27, 'Iiyama -City', '飯山市', 13, 4),
(591, 27, 'Chino -City', '茅野市', 14, 4),
(592, 27, 'Shiojiri -City', '塩尻市', 15, 4),
(593, 27, 'Saku -City', '佐久市', 16, 4),
(594, 27, 'Chikuma -City', '千曲市', 17, 4),
(595, 27, 'Toumi -City', '東御市', 18, 4),
(596, 27, 'Azumino -City', '安曇野市', 19, 4),
(597, 27, 'Minamisaku -Gun', '南佐久郡', 20, 4),
(598, 27, 'Kitasaku -Gun', '北佐久郡', 21, 4),
(599, 27, 'Chiisagata -Gun', '小県郡', 22, 4),
(600, 27, 'Suwa -Gun', '諏訪郡', 23, 4),
(601, 27, 'Kamiina -Gun', '上伊那郡', 24, 4),
(602, 27, 'Shimoina -Gun', '下伊那郡', 25, 4),
(603, 27, 'Kiso -Gun', '木曽郡', 26, 4),
(604, 27, 'Higashichikuma -Gun', '東筑摩郡', 27, 4),
(605, 27, 'Kitaazumi -Gun', '北安曇郡', 28, 4),
(606, 27, 'Hanishina -Gun', '埴科郡', 29, 4),
(607, 27, 'Kamitakai -Gun', '上高井郡', 30, 4),
(608, 27, 'Shimotakai -Gun', '下高井郡', 31, 4),
(609, 27, 'Kamiminochi -Gun', '上水内郡', 32, 4),
(610, 27, 'Shimominochi -Gun', '下水内郡', 33, 4),
(611, 28, 'Gifu -City', '岐阜市', 5, 4),
(612, 28, 'Ogaki -City', '大垣市', 5, 4),
(613, 28, 'Tkayama -City', '高山市', 5, 4),
(614, 28, 'Tajimi -City', '多治見市', 5, 4),
(615, 28, 'Seki -City', '関市', 5, 4),
(616, 28, 'Nakatsgawa -City', '中津川市', 6, 4),
(617, 28, 'Mino -City', '美濃市', 7, 4),
(618, 28, 'Mizunami -City', '瑞浪市', 8, 4),
(619, 28, 'Hashima -City', '羽島市', 9, 4),
(620, 28, 'Ena -City', '恵那市', 10, 4),
(621, 28, 'Minokamo -City', '美濃加茂市', 11, 4),
(622, 28, 'Toki -City', '土岐市', 12, 4),
(623, 28, 'Kakamigahara -City', '各務原市', 13, 4),
(624, 28, 'Kani -City', '可児市', 14, 4),
(625, 28, 'Yamagata -City', '山県市', 15, 4),
(626, 28, 'Mizuho -City', '瑞穂市', 16, 4),
(627, 28, 'Hida -City', '飛騨市', 17, 4),
(628, 28, 'Motosu -City', '本巣市', 18, 4),
(629, 28, 'Gujo -City', '郡上市', 19, 4),
(630, 28, 'Gero -City', '下呂市', 20, 4),
(631, 28, 'Kaizu -City', '海津市', 21, 4),
(632, 28, 'Hashima -Gun', '羽島郡', 22, 4),
(633, 28, 'Yourou -Gun', '養老郡', 23, 4),
(634, 28, 'Fuwa -Gun', '不破郡', 24, 4),
(635, 28, 'Anbachi -Gun', '安八郡', 25, 4),
(636, 28, 'Ibi -Gun', '揖斐郡', 26, 4),
(637, 28, 'Motosu -Gun', '本巣郡', 27, 4),
(638, 28, 'Kamo -Gun', '加茂郡', 28, 4),
(639, 28, 'Kani -Gun', '可児郡', 29, 4),
(640, 28, 'Oono -Gun', '大野郡', 30, 4),
(641, 29, 'Shizuoka -City,Aoi -Ku', '静岡市葵区', 5, 4),
(642, 29, 'Shizuoka -City,Suruga -Ku', '静岡市駿河区', 5, 4),
(643, 29, 'Shizuoka -City,Shimizu -Ku', '静岡市清水区', 5, 4),
(644, 29, 'Hamamatsu -City,Naka -Ku', '浜松市中区', 5, 4),
(645, 29, 'Hamamatsu -City,Higashi -Ku', '浜松市東区', 5, 4),
(646, 29, 'Hamamatsu -City,Nishi -Ku', '浜松市西区', 6, 4),
(647, 29, 'Hamamatsu -City,Minami -Ku', '浜松市南区', 7, 4),
(648, 29, 'Hamamatsu -City,Kita -Ku', '浜松市北区', 8, 4),
(649, 29, 'Hamamatsu -City,Hamakita -Ku', '浜松市浜北区', 9, 4),
(650, 29, 'Hamamatsu -City,Tenryu -Ku', '浜松市天竜区', 10, 4),
(651, 29, 'Numazu -City', '沼津市', 11, 4),
(652, 29, 'Atami -City', '熱海市', 12, 4),
(653, 29, 'Mishima -City', '三島市', 13, 4),
(654, 29, 'Fujinomiya -City', '富士宮市', 14, 4),
(655, 29, 'Ito -City', '伊東市', 15, 4),
(656, 29, 'Shimada -City', '島田市', 16, 4),
(657, 29, 'Fuji -City', '富士市', 17, 4),
(658, 29, 'Iwata -City', '磐田市', 18, 4),
(659, 29, 'Yaizu -City', '焼津市', 19, 4),
(660, 29, 'Kakegawa -City', '掛川市', 20, 4),
(661, 29, 'Fujieda -City', '藤枝市', 21, 4),
(662, 29, 'Gotenba -City', '御殿場市', 22, 4),
(663, 29, 'Fukuroi -City', '袋井市', 23, 4),
(664, 29, 'Shimoda -City', '下田市', 24, 4),
(665, 29, 'Susono -City', '裾野市', 25, 4),
(666, 29, 'Kosai -City', '湖西市', 26, 4),
(667, 29, 'Izu -City', '伊豆市', 27, 4),
(668, 29, 'Omaezaki -City', '御前崎市', 28, 4),
(669, 29, 'Kikugawa -City', '菊川市', 29, 4),
(670, 29, 'Izunokuni -City', '伊豆の国市', 30, 4),
(671, 29, 'Makinohara -City', '牧之原市', 31, 4),
(672, 29, 'Kamo -Gun', '賀茂郡', 32, 4),
(673, 29, 'Tagata -Gun', '田方郡', 33, 4),
(674, 29, 'Suntou -Gun', '駿東郡', 34, 4),
(675, 29, 'Haibara -Gun', '榛原郡', 35, 4),
(676, 29, 'Shuuchi -Gun', '周智郡', 36, 4),
(677, 30, 'Nagoya -City,Chikusa -Ku', '名古屋市千種区', 5, 4),
(678, 30, 'Nagoya -City,Higashi -Ku', '名古屋市東区', 5, 4),
(679, 30, 'Nagoya -City,Kita -Ku', '名古屋市北区', 5, 4),
(680, 30, 'Nagoya -City,Nishi -Ku', '名古屋市西区', 5, 4),
(681, 30, 'Nagoya -City,Nakamura -Ku', '名古屋市中村区', 5, 4),
(682, 30, 'Nagoya -City,Naka -Ku', '名古屋市中区', 6, 4),
(683, 30, 'Nagoya -City,Showa -Ku', '名古屋市昭和区', 7, 4),
(684, 30, 'Nagoya -City,Mizuho -Ku', '名古屋市瑞穂区', 8, 4),
(685, 30, 'Nagoya -City,Atsuta -Ku', '名古屋市熱田区', 9, 4),
(686, 30, 'Nagoya -City,Nakagawa -Ku', '名古屋市中川区', 10, 4),
(687, 30, 'Nagoya -City,Minato -Ku', '名古屋市港区', 11, 4),
(688, 30, 'Nagoya -City,Minami -Ku', '名古屋市南区', 12, 4),
(689, 30, 'Nagoya -City,Moriyama -Ku', '名古屋市守山区', 13, 4),
(690, 30, 'Nagoya -City,Midori -Ku', '名古屋市緑区', 14, 4),
(691, 30, 'Nagoya -City,Meitou -Ku', '名古屋市名東区', 15, 4),
(692, 30, 'Nagoya -City,Tenbaku -Ku', '名古屋市天白区', 16, 4),
(693, 30, 'Toyohashi -City', '豊橋市', 17, 4),
(694, 30, 'Okazaki -City', '岡崎市', 18, 4),
(695, 30, 'Ichinomiya -City', '一宮市', 19, 4),
(696, 30, 'Seto -City', '瀬戸市', 20, 4),
(697, 30, 'Handa -City', '半田市', 21, 4),
(698, 30, 'Kasugai -City', '春日井市', 22, 4),
(699, 30, 'Toyokawa -City', '豊川市', 23, 4),
(700, 30, 'Tsushima -City', '津島市', 24, 4),
(701, 30, 'Hekinan -City', '碧南市', 25, 4),
(702, 30, 'Kariya -City', '刈谷市', 26, 4),
(703, 30, 'Toyota -City', '豊田市', 27, 4),
(704, 30, 'Anjou -City', '安城市', 28, 4),
(705, 30, 'Nishio -City', '西尾市', 29, 4),
(706, 30, 'Gamagoori -City', '蒲郡市', 30, 4),
(707, 30, 'Inuyama -City', '犬山市', 31, 4),
(708, 30, 'Tokoname -City', '常滑市', 32, 4),
(709, 30, 'Kounan -City', '江南市', 33, 4),
(710, 30, 'Komaki -City', '小牧市', 34, 4),
(711, 30, 'Inazawa -City', '稲沢市', 35, 4),
(712, 30, 'Shinshiro -City', '新城市', 36, 4),
(713, 30, 'Tokai -City', '東海市', 37, 4),
(714, 30, 'Oobu -City', '大府市', 38, 4),
(715, 30, 'Chita -City', '知多市', 39, 4),
(716, 30, 'Chiryu -City', '知立市', 40, 4),
(717, 30, 'Owariasahi -City', '尾張旭市', 41, 4),
(718, 30, 'Takahama -City', '高浜市', 42, 4),
(719, 30, 'Iwakura -City', '岩倉市', 43, 4),
(720, 30, 'Toyoake -City', '豊明市', 44, 4),
(721, 30, 'Nisshin -City', '日進市', 45, 4),
(722, 30, 'Tahara -City', '田原市', 46, 4),
(723, 30, 'Aisai -City', '愛西市', 47, 4),
(724, 30, 'Kiyosu -City', '清須市', 48, 4),
(725, 30, 'Kitanagoya -City', '北名古屋市', 49, 4),
(726, 30, 'Yatomi -City', '弥富市', 50, 4),
(727, 30, 'Miyoshi -City', 'みよし市', 51, 4),
(728, 30, 'Ama -City', 'あま市', 52, 4),
(729, 30, 'Nagakute -City', '長久手市', 53, 4),
(730, 30, 'Aichi -Gun', '愛知郡', 54, 4),
(731, 30, 'Nishikasugai -Gun', '西春日井郡', 55, 4),
(732, 30, 'Niwa -Gun', '丹羽郡', 56, 4),
(733, 30, 'Ama -Gun', '海部郡', 57, 4),
(734, 30, 'Chita -Gun', '知多郡', 58, 4),
(735, 30, 'Nukata -Gun', '額田郡', 59, 4),
(736, 30, 'Kitashira -Gun', '北設楽郡', 60, 4),
(737, 31, 'Tsu -City', '津市', 5, 4),
(738, 31, 'Yokkaichi -City', '四日市市', 5, 4),
(739, 31, 'Ise -City', '伊勢市', 5, 4),
(740, 31, 'Matsusaka -City', '松阪市', 5, 4),
(741, 31, 'Kuwana -City', '桑名市', 5, 4),
(742, 31, 'Suzuka -City', '鈴鹿市', 6, 4),
(743, 31, 'Nabari -City', '名張市', 7, 4),
(744, 31, 'Owase -City', '尾鷲市', 8, 4),
(745, 31, 'Kameyama -City', '亀山市', 9, 4),
(746, 31, 'Toba -City', '鳥羽市', 10, 4),
(747, 31, 'Kumano -City', '熊野市', 11, 4),
(748, 31, 'Inabe -City', 'いなべ市', 12, 4),
(749, 31, 'Shima -City', '志摩市', 13, 4),
(750, 31, 'Iga -City', '伊賀市', 14, 4),
(751, 31, 'Kuwana -Gun', '桑名郡', 15, 4),
(752, 31, 'Inabe -Gun', '員弁郡', 16, 4),
(753, 31, 'Mie -Gun', '三重郡', 17, 4),
(754, 31, 'Taki -Gun', '多気郡', 18, 4),
(755, 31, 'Watarai -Gun', '度会郡', 19, 4),
(756, 31, 'Kitamuro -Gun', '北牟婁郡', 20, 4),
(757, 31, 'Minamimuro -Gun', '南牟婁郡', 21, 4),
(758, 32, 'Otsu -City', '大津市', 5, 4),
(759, 32, 'Hikone -City', '彦根市', 5, 4),
(760, 32, 'Nagahama -City', '長浜市', 5, 4),
(761, 32, 'Oumihachiman -City', '近江八幡市', 5, 4),
(762, 32, 'Kusatsu -City', '草津市', 5, 4),
(763, 32, 'Moriyama -City', '守山市', 6, 4),
(764, 32, 'Ritto -City', '栗東市', 7, 4),
(765, 32, 'Kouka -City', '甲賀市', 8, 4),
(766, 32, 'Yasu -City', '野洲市', 9, 4),
(767, 32, 'Konan -City', '湖南市', 10, 4),
(768, 32, 'Takashima -City', '高島市', 11, 4),
(769, 32, 'Higashioumi -City', '東近江市', 12, 4),
(770, 32, 'Maibara -City', '米原市', 13, 4),
(771, 32, 'Gamou -Gun', '蒲生郡', 14, 4),
(772, 32, 'Echi -Gun', 'Echi -Gun', 15, 4),
(773, 32, 'Inukami -Gun', '犬上郡', 16, 4),
(774, 33, 'Kyoto -City,Kita -Ku', '京都市北区', 5, 4),
(775, 33, 'Kyoto -City,Kamigyo -Ku', '京都市上京区', 5, 4),
(776, 33, 'Kyoto -City,Sakyo -Ku', '京都市左京区', 5, 4),
(777, 33, 'Kyoto -City,Nakagyo -Ku', '京都市中京区', 5, 4),
(778, 33, 'Kyoto -City,Higashiyama -Ku', '京都市東山区', 5, 4),
(779, 33, 'Kyoto -City,Shimogyo -Ku', '京都市下京区', 6, 4),
(780, 33, 'Kyoto -City,Minami -Ku', '京都市南区', 7, 4),
(781, 33, 'Kyoto -City,Ukyo -Ku', '京都市右京区', 8, 4),
(782, 33, 'Kyoto -City,Fushimi -Ku', '京都市伏見区', 9, 4),
(783, 33, 'Kyoto -City,Yamashina -Ku', '京都市山科区', 10, 4),
(784, 33, 'Kyoto -City,Nishikyo -Ku', '京都市西京区', 11, 4),
(785, 33, 'Fukuchiyama -City', '福知山市', 12, 4),
(786, 33, 'Maizuru -City', '舞鶴市', 13, 4),
(787, 33, 'Ayabe -City', '綾部市', 14, 4),
(788, 33, 'Uji -City', '宇治市', 15, 4),
(789, 33, 'Miyazu -City', '宮津市', 16, 4),
(790, 33, 'Kameoka -City', '亀岡市', 17, 4),
(791, 33, 'Jouyou -City', '城陽市', 18, 4),
(792, 33, 'Mukou -City', '向日市', 19, 4),
(793, 33, 'Nagaokakyo -City', '長岡京市', 20, 4),
(794, 33, 'Yawata -City', '八幡市', 21, 4),
(795, 33, 'Kyotanabe -City', '京田辺市', 22, 4),
(796, 33, 'Kyotango -City', '京丹後市', 23, 4),
(797, 33, 'Nantan -City', '南丹市', 24, 4),
(798, 33, 'Kizugawa -City', '木津川市', 25, 4),
(799, 33, 'Otokuni -Gun', '乙訓郡', 26, 4),
(800, 33, 'Kuse -Gun', '久世郡', 27, 4),
(801, 33, 'Tsuzuki -Gun', '綴喜郡', 28, 4),
(802, 33, 'Souraku -Gun', '相楽郡', 29, 4),
(803, 33, 'Funai -Gun', '船井郡', 30, 4),
(804, 33, 'Yosa -Gun', '与謝郡', 31, 4),
(805, 34, 'Osaka -City,Miyakojima -Ku', '大阪市都島区', 5, 4),
(806, 34, 'Osaka -City,Fukushima -Ku', '大阪市福島区', 5, 4),
(807, 34, 'Osaka -City,Konohana -Ku', '大阪市此花区', 5, 4),
(808, 34, 'Osaka -City,Nishi -Ku', '大阪市西区', 5, 4),
(809, 34, 'Osaka -City,Minato -Ku', '大阪市港区', 5, 4),
(810, 34, 'Osaka -City,Taisho -Ku', '大阪市大正区', 6, 4),
(811, 34, 'Osaka -City,Tennouji -Ku', '大阪市天王寺区', 7, 4),
(812, 34, 'Osaka -City,Naniwa -Ku', '大阪市浪速区', 8, 4),
(813, 34, 'Osaka -City,Nishiyodogawa -Ku', '大阪市西淀川区', 9, 4),
(814, 34, 'Osaka -City,Higashiyodogawa -Ku', '大阪市東淀川区', 10, 4),
(815, 34, 'Osaka -City,Higashinari -Ku', '大阪市東成区', 11, 4),
(816, 34, 'Osaka -City,Ikuno -Ku', '大阪市生野区', 12, 4),
(817, 34, 'Osaka -City,Asahi -Ku', '大阪市旭区', 13, 4),
(818, 34, 'Osaka -City,Jotou -Ku', '大阪市城東区', 14, 4),
(819, 34, 'Osaka -City,Abeno -Ku', '大阪市阿倍野区', 15, 4),
(820, 34, 'Osaka -City,Sumiyoshi -Ku', '大阪市住吉区', 16, 4),
(821, 34, 'Osaka -City,Higashisumiyoshi -Ku', '大阪市東住吉区', 17, 4),
(822, 34, 'Osaka -City,Nishinari -Ku', '大阪市西成区', 18, 4),
(823, 34, 'Osaka -City,Yodogawa -Ku', '大阪市淀川区', 19, 4),
(824, 34, 'Osaka -City,Tsurumi -Ku', '大阪市鶴見区', 20, 4),
(825, 34, 'Osaka -City,Suminoe -Ku', '大阪市住之江区', 21, 4),
(826, 34, 'Osaka -City,Hirano -Ku', '大阪市平野区', 22, 4),
(827, 34, 'Osaka -City,Kita -Ku', '大阪市北区', 23, 4),
(828, 34, 'Osaka -City,Chuou -Ku', '大阪市中央区', 24, 4),
(829, 34, 'Sakai -City,Sakai -Ku', '堺市堺区', 25, 4),
(830, 34, 'Sakai -City,Naka -Ku', '堺市中区', 26, 4),
(831, 34, 'Sakai -City,Higashi -Ku', '堺市東区', 27, 4),
(832, 34, 'Sakai -City,Nishi -Ku', '堺市西区', 28, 4),
(833, 34, 'Sakai -City,Minami -Ku', '堺市南区', 29, 4),
(834, 34, 'Sakai -City,Kita -Ku', '堺市北区', 30, 4),
(835, 34, 'Sakai -City,Mihara -Ku', '堺市美原区', 31, 4),
(836, 34, 'Kishiwada -City', '岸和田市', 32, 4),
(837, 34, 'Toyonaka -City', '豊中市', 33, 4),
(838, 34, 'Ikeda -City', '池田市', 34, 4),
(839, 34, 'Suita -City', '吹田市', 35, 4),
(840, 34, 'Izumiootsu -City', '泉大津市', 36, 4),
(841, 34, 'Takatsuki -City', '高槻市', 37, 4),
(842, 34, 'Kaizuka -City', '貝塚市', 38, 4),
(843, 34, 'Moriguchi -City', '守口市', 39, 4),
(844, 34, 'Hirakata -City', '枚方市', 40, 4),
(845, 34, 'Ibaraki -City', '茨木市', 41, 4),
(846, 34, 'Yao -City', '八尾市', 42, 4),
(847, 34, 'Izumisano -City', '泉佐野市', 43, 4),
(848, 34, 'Tondabayashi -City', '富田林市', 44, 4),
(849, 34, 'Neyagawa -City', '寝屋川市', 45, 4),
(850, 34, 'Kawachinagano -City', '河内長野市', 46, 4),
(851, 34, 'Matsubara -City', '松原市', 47, 4),
(852, 34, 'Daito -City', '大東市', 48, 4),
(853, 34, 'Izumi -City', '和泉市', 49, 4),
(854, 34, 'Minoo -City', '箕面市', 50, 4),
(855, 34, 'Kashiwara -City', '柏原市', 51, 4),
(856, 34, 'Habikino -City', '羽曳野市', 52, 4),
(857, 34, 'Kadoma -City', '門真市', 53, 4),
(858, 34, 'Settsu -City', '摂津市', 54, 4),
(859, 34, 'Takaishi -City', '高石市', 55, 4),
(860, 34, 'Fujiidera -City', '藤井寺市', 56, 4),
(861, 34, 'Higashiosaka -City', '東大阪市', 57, 4),
(862, 34, 'Sennan -City', '泉南市', 58, 4),
(863, 34, 'Shijonawate -City', '四條畷市', 59, 4),
(864, 34, 'Katano -City', '交野市', 60, 4),
(865, 34, 'Osakasayama -City', '大阪狭山市', 61, 4),
(866, 34, 'Hannan -City', '阪南市', 62, 4),
(867, 34, 'Mishima -Gun', 'Mishima -Gun', 63, 4),
(868, 34, 'Toyono -Gun', '豊能郡', 64, 4),
(869, 34, 'Senboku -Gun', '泉北郡', 65, 4),
(870, 34, 'Sennan -Gun', '泉南郡', 66, 4),
(871, 34, 'Minamikawachi -Gun', '南河内郡', 67, 4),
(872, 35, 'Kobe -City,Higashinada -Ku', '神戸市東灘区', 5, 4),
(873, 35, 'Kobe -City,Nada -Ku', '神戸市灘区', 5, 4),
(874, 35, 'Kobe -City,Hyogo -Ku', '神戸市兵庫区', 5, 4),
(875, 35, 'Kobe -City,Nagata -Ku', '神戸市長田区', 5, 4),
(876, 35, 'Kobe -City,Suma -Ku', '神戸市須磨区', 5, 4),
(877, 35, 'Kobe -City,Tarumi -Ku', '神戸市垂水区', 6, 4),
(878, 35, 'Kobe -City,Kita -Ku', '神戸市北区', 7, 4),
(879, 35, 'Kobe -City,Chuou -Ku', '神戸市中央区', 8, 4),
(880, 35, 'Kobe -City,Nishi -Ku', '神戸市西区', 9, 4),
(881, 35, 'Himeji -City', '姫路市', 10, 4),
(882, 35, 'Amagasaki -City', '尼崎市', 11, 4),
(883, 35, 'Akashi -City', '明石市', 12, 4),
(884, 35, 'Nishinomiya -City', '西宮市', 13, 4),
(885, 35, 'Sumoto -City', '洲本市', 14, 4),
(886, 35, 'Ashiya -City', '芦屋市', 15, 4),
(887, 35, 'Itami -City', '伊丹市', 16, 4),
(888, 35, 'Aioi -City', '相生市', 17, 4),
(889, 35, 'Toyooka -City', '豊岡市', 18, 4),
(890, 35, 'Kakogawa -City', '加古川市', 19, 4),
(891, 35, 'Akou -City', '赤穂市', 20, 4),
(892, 35, 'Nishiwaki -City', '西脇市', 21, 4),
(893, 35, 'Takarazuka -City', '宝塚市', 22, 4),
(894, 35, 'Miki -City', '三木市', 23, 4),
(895, 35, 'Takasago -City', '高砂市', 24, 4),
(896, 35, 'Kawanishi -City', '川西市', 25, 4),
(897, 35, 'Ono -City', '小野市', 26, 4),
(898, 35, 'Sanda -City', '三田市', 27, 4),
(899, 35, 'Kasai -City', '加西市', 28, 4),
(900, 35, 'Sasayama -City', '篠山市', 29, 4),
(901, 35, 'Yabu -City', '養父市', 30, 4),
(902, 35, 'Tanba -City', '丹波市', 31, 4),
(903, 35, 'Minamiawaji -City', '南あわじ市', 32, 4),
(904, 35, 'Asago -City', '朝来市', 33, 4),
(905, 35, 'Awaji -City', '淡路市', 34, 4),
(906, 35, 'Shisou -City', '宍粟市', 35, 4),
(907, 35, 'Katou -City', '加東市', 36, 4),
(908, 35, 'Tatsuno -City', 'たつの市', 37, 4),
(909, 35, 'Kawabe -Gun', '川辺郡', 38, 4),
(910, 35, 'Taka -Gun', '多可郡', 39, 4),
(911, 35, 'Kako -Gun', '加古郡', 40, 4),
(912, 35, 'Kanzaki -Gun', '神崎郡', 41, 4),
(913, 35, 'Ibo -Gun', '揖保郡', 42, 4),
(914, 35, 'Akou -Gun', '赤穂郡', 43, 4),
(915, 35, 'Sayou -Gun', '佐用郡', 44, 4),
(916, 35, 'Mikata -Gun', '美方郡', 45, 4),
(917, 36, 'Nara -City', '奈良市', 5, 4),
(918, 36, 'Yamatotakada -City', '大和高田市', 5, 4),
(919, 36, 'Yamatokooriyama -City', '大和郡山市', 5, 4),
(920, 36, 'Tenri -City', '天理市', 5, 4),
(921, 36, 'Kashihara -City', '橿原市', 5, 4),
(922, 36, 'Sakurai -City', '桜井市', 6, 4),
(923, 36, 'Gojo -City', '五條市', 7, 4),
(924, 36, 'Gose -City', '御所市', 8, 4),
(925, 36, 'Ikoma -City', '生駒市', 9, 4),
(926, 36, 'Kashiba -City', '香芝市', 10, 4),
(927, 36, 'Katsuragi -City', '葛城市', 11, 4),
(928, 36, 'Uda -City', '宇陀市', 12, 4),
(929, 36, 'Yamabe -Gun', '山辺郡', 13, 4),
(930, 36, 'Ikoma -Gun', '生駒郡', 14, 4),
(931, 36, 'Shiki -Gun', '磯城郡', 15, 4),
(932, 36, 'Uda -Gun', '宇陀郡', 16, 4),
(933, 36, 'Takaichi -Gun', '高市郡', 17, 4),
(934, 36, 'Kitakatsuragi -Gun', '北葛城郡', 18, 4),
(935, 36, 'Yoshino -Gun', '吉野郡', 19, 4),
(936, 37, 'Wakayama -City', '和歌山市', 5, 4),
(937, 37, 'Kainan -City', '海南市', 5, 4),
(938, 37, 'Hashimoto -City', '橋本市', 5, 4),
(939, 37, 'Arida -City', '有田市', 5, 4),
(940, 37, 'Gobou -City', '御坊市', 5, 4),
(941, 37, 'Tanabe -City', '田辺市', 6, 4),
(942, 37, 'Shingu -City', '新宮市', 7, 4),
(943, 37, 'Kinokawa -City', '紀の川市', 8, 4),
(944, 37, 'Iwade -City', '岩出市', 9, 4),
(945, 37, 'Kaisou -Gun', '海草郡', 10, 4),
(946, 37, 'Ito -Gun', '伊都郡', 11, 4),
(947, 37, 'Arida -Gun', '有田郡', 12, 4),
(948, 37, 'Hidaka -Gun', '日高郡', 13, 4),
(949, 37, 'Nishimuro -Gun', '西牟婁郡', 14, 4),
(950, 37, 'Higashimuro -Gun', '東牟婁郡', 15, 4),
(951, 38, 'Tottori -City', '鳥取市', 5, 4),
(952, 38, 'Yonago -City', '米子市', 5, 4),
(953, 38, 'Kurayoshi -City', '倉吉市', 5, 4),
(954, 38, 'Sakaiminato -City', '境港市', 5, 4),
(955, 38, 'Iwami -Gun', '岩美郡', 5, 4),
(956, 38, 'Yazu -Gun', '八頭郡', 6, 4),
(957, 38, 'Touhaku -Gun', '東伯郡', 7, 4),
(958, 38, 'Saihaku -Gun', '西伯郡', 8, 4),
(959, 38, 'Hino -Gun', '日野郡', 9, 4),
(960, 39, 'Matsue -City', '松江市', 5, 4),
(961, 39, 'Hamada -City', '浜田市', 5, 4),
(962, 39, 'Izumo -City', '出雲市', 5, 4),
(963, 39, 'Masuda -City', '益田市', 5, 4),
(964, 39, 'Oda -City', '大田市', 5, 4),
(965, 39, 'Yasugi -City', '安来市', 6, 4),
(966, 39, 'Goutsu -City', '江津市', 7, 4),
(967, 39, 'Unnan -City', '雲南市', 8, 4),
(968, 39, 'Nita -Gun', '仁多郡', 9, 4),
(969, 39, 'Iishi -Gun', '飯石郡', 10, 4),
(970, 39, 'Oochi -Gun', '邑智郡', 11, 4),
(971, 39, 'Kanoashi -Gun', '鹿足郡', 12, 4),
(972, 39, 'Oki -Gun', '隠岐郡', 13, 4),
(973, 40, 'Okayama -City,Kita -Ku', '岡山市北区', 5, 4),
(974, 40, 'Okayama -City,Naka -Ku', '岡山市中区', 5, 4),
(975, 40, 'Okayama -City,Higashi -Ku', '岡山市東区', 5, 4),
(976, 40, 'Okayama -City,Minami -Ku', '岡山市南区', 5, 4),
(977, 40, 'Kurashiki -City', '倉敷市', 5, 4),
(978, 40, 'Tsuyama -City', '津山市', 6, 4),
(979, 40, 'Tamano -City', '玉野市', 7, 4),
(980, 40, 'Kasaoka -City', '笠岡市', 8, 4),
(981, 40, 'Ibara -City', '井原市', 9, 4),
(982, 40, 'Souja -City', '総社市', 10, 4),
(983, 40, 'Takahashi -City', '高梁市', 11, 4),
(984, 40, 'Niimi -City', '新見市', 12, 4),
(985, 40, 'Bizen -City', '備前市', 13, 4),
(986, 40, 'Setouchi -City', '瀬戸内市', 14, 4),
(987, 40, 'Akaiwa -City', '赤磐市', 15, 4),
(988, 40, 'Maniwa -City', '真庭市', 16, 4),
(989, 40, 'Mimasaka -City', '美作市', 17, 4),
(990, 40, 'Asakuchi -City', '浅口市', 18, 4),
(991, 40, 'Wake -Gun', '和気郡', 19, 4),
(992, 40, 'Tsukubo -Gun', '都窪郡', 20, 4),
(993, 40, 'Asakuchi -Gun', '浅口郡', 21, 4),
(994, 40, 'Oda -Gun', '小田郡', 22, 4),
(995, 40, 'Maniwa -Gun', '真庭郡', 23, 4),
(996, 40, 'Tomata -Gun', '苫田郡', 24, 4),
(997, 40, 'Katsuta -Gun', '勝田郡', 25, 4),
(998, 40, 'Aida -Gun', '英田郡', 26, 4),
(999, 40, 'Kume -Gun', '久米郡', 27, 4),
(1000, 40, 'Kaga -Gun', '加賀郡', 28, 4),
(1001, 41, 'Hiroshima -City,Naka -Ku', '広島市中区', 5, 4),
(1002, 41, 'Hiroshima -City,Higashi -Ku', '広島市東区', 5, 4),
(1003, 41, 'Hiroshima -City,Minami -Ku', '広島市南区', 5, 4),
(1004, 41, 'Hiroshima -City,Nishi -Ku', '広島市西区', 5, 4),
(1005, 41, 'Hiroshima -City,Asaminami -Ku', '倉敷市', 5, 4),
(1006, 41, 'Hiroshima -City,Asakita -Ku', '津山市', 6, 4),
(1007, 41, 'Hiroshima -City,Aki -Ku', '玉野市', 7, 4),
(1008, 41, 'Hiroshima -City,Saeki -Ku', '笠岡市', 8, 4),
(1009, 41, 'Kure -City', '呉市', 9, 4),
(1010, 41, 'Takehara -City', '竹原市', 10, 4),
(1011, 41, 'Mihara -City', '三原市', 11, 4),
(1012, 41, 'Onomichi -City', '尾道市', 12, 4),
(1013, 41, 'Fukuyama -City', '福山市', 13, 4),
(1014, 41, 'Fuchu -City', '府中市', 14, 4),
(1015, 41, 'Miyoshi -City', '三次市', 15, 4),
(1016, 41, 'Shobara -City', '庄原市', 16, 4),
(1017, 41, 'Otake -City', '大竹市', 17, 4),
(1018, 41, 'Higashihiroshima -City', '東広島市', 18, 4),
(1019, 41, 'Hatsukaichi -City', '廿日市市', 19, 4),
(1020, 41, 'Akitakata -City', '安芸高田市', 20, 4),
(1021, 41, 'Edajima -City', '江田島市', 21, 4),
(1022, 41, 'Aki -Gun', '安芸郡', 22, 4),
(1023, 41, 'Yamagata -Gun', '山県郡', 23, 4),
(1024, 41, 'Toyota -Gun', '豊田郡', 24, 4),
(1025, 41, 'Sera -Gun', '世羅郡', 25, 4),
(1026, 41, 'Jinseki -Gun', '神石郡', 26, 4),
(1027, 42, 'Shimonoseki -City', '下関市', 5, 4),
(1028, 42, 'Ube -City', '宇部市', 5, 4),
(1029, 42, 'Yamaguchi -City', '山口市', 5, 4),
(1030, 42, 'Hagi -City', '萩市', 5, 4),
(1031, 42, 'Hofu -City', '防府市', 5, 4),
(1032, 42, 'Kudamatsu -City', '下松市', 6, 4),
(1033, 42, 'Iwakuni -City', '岩国市', 7, 4),
(1034, 42, 'Hikari -City', '光市', 8, 4),
(1035, 42, 'Nagato -City', '長門市', 9, 4),
(1036, 42, 'Yanai -City', '柳井市', 10, 4),
(1037, 42, 'Mine -City', '美祢市', 11, 4),
(1038, 42, 'Shunan -City', '周南市', 12, 4),
(1039, 42, 'Sanyoonoda -City', '山陽小野田市', 13, 4),
(1040, 42, 'Oshima -Gun', '大島郡', 14, 4),
(1041, 42, 'Kuga -Gun', '玖珂郡', 15, 4),
(1042, 42, 'Kumage -Gun', '熊毛郡', 16, 4),
(1043, 42, 'Abu -Gun', '阿武郡', 17, 4),
(1044, 43, 'Tokushima -City', '徳島市', 5, 4),
(1045, 43, 'Naruto -City', '鳴門市', 5, 4),
(1046, 43, 'Komatsushima -City', '小松島市', 5, 4),
(1047, 43, 'Anan -City', '阿南市', 5, 4),
(1048, 43, 'Yoshinogawa -City', '吉野川市', 5, 4),
(1049, 43, 'Awa -City', '阿波市', 6, 4),
(1050, 43, 'Mima -City', '美馬市', 7, 4),
(1051, 43, 'Miyoshi -City', '三好市', 8, 4),
(1052, 43, 'Katsuura -Gun', '勝浦郡', 9, 4),
(1053, 43, 'Myodo -Gun', '名東郡', 10, 4),
(1054, 43, 'Myozai -Gun', '名西郡', 11, 4),
(1055, 43, 'Naka -Gun', '那賀郡', 12, 4),
(1056, 43, 'Kaifu -Gun', '海部郡', 13, 4),
(1057, 43, 'Itano -Gun', '板野郡', 14, 4),
(1058, 43, 'Mima -Gun', '美馬郡', 15, 4),
(1059, 43, 'Miyoshi -Gun', '三好郡', 16, 4),
(1060, 44, 'Takamatsu -City', '高松市', 5, 4),
(1061, 44, 'Marugame -City', '丸亀市', 5, 4),
(1062, 44, 'Sakaide -City', '坂出市', 5, 4),
(1063, 44, 'Zentuji -City', '善通寺市', 5, 4),
(1064, 44, 'Kanonji -City', '観音寺市', 5, 4),
(1065, 44, 'Sanuki -City', 'さぬき市', 6, 4),
(1066, 44, 'Higashikagawa -City', '東かがわ市', 7, 4),
(1067, 44, 'Mitoyoshi -City', '三豊市', 8, 4),
(1068, 44, 'Shozu -Gun', '小豆郡', 9, 4),
(1069, 44, 'Kita -Gun', '木田郡', 10, 4),
(1070, 44, 'Kagawa -Gun', '香川郡', 11, 4),
(1071, 44, 'Ayauta -Gun', '綾歌郡', 12, 4),
(1072, 44, 'Nakatado -Gun', '仲多度郡', 13, 4),
(1073, 45, 'Matsuyama -City', '松山市', 5, 4),
(1074, 45, 'Imabari -City', '今治市', 5, 4),
(1075, 45, 'Uwajima -City', '宇和島市', 5, 4),
(1076, 45, 'Yawatahama -City', '八幡浜市', 5, 4),
(1077, 45, 'Niihama -City', '新居浜市', 5, 4),
(1078, 45, 'Saijo -City', '西条市', 6, 4),
(1079, 45, 'Oozu -City', '大洲市', 7, 4),
(1080, 45, 'Iyo -City', '伊予市', 8, 4),
(1081, 45, 'Shikokuchuou -City', '四国中央市', 9, 4),
(1082, 45, 'Seiyo -City', '西予市', 10, 4),
(1083, 45, 'Touon -City', '東温市', 11, 4),
(1084, 45, 'Ochi -Gun', '越智郡', 12, 4),
(1085, 45, 'Kamiukena -Gun', '上浮穴郡', 13, 4),
(1086, 45, 'Iyo -Gun', '伊予郡', 14, 4),
(1087, 45, 'Kita -Gun', '喜多郡', 15, 4),
(1088, 45, 'Nishiuwa -Gun', '西宇和郡', 16, 4),
(1089, 45, 'Kitauwa -Gun', '北宇和郡', 17, 4),
(1090, 45, 'Minamiuwa -Gun', '南宇和郡', 18, 4),
(1091, 46, 'Kochi -City', '高知市', 5, 4),
(1092, 46, 'Muroto -City', '室戸市', 5, 4),
(1093, 46, 'Aki -City', '安芸市', 5, 4),
(1094, 46, 'Nankoku -City', '南国市', 5, 4),
(1095, 46, 'Tosa -City', '土佐市', 5, 4),
(1096, 46, 'Susaki -City', '須崎市', 6, 4),
(1097, 46, 'Sukumo -City', '宿毛市', 7, 4),
(1098, 46, 'Tosashimizu -City', '土佐清水市', 8, 4),
(1099, 46, 'Shimanto -City', '四万十市', 9, 4),
(1100, 46, 'Konan -City', '香南市', 10, 4),
(1101, 46, 'Kami -City', '香美市', 11, 4),
(1102, 46, 'Aki -Gun', '安芸郡', 12, 4),
(1103, 46, 'Nagaoka -Gun', '長岡郡', 13, 4),
(1104, 46, 'Tosa -Gun', '土佐郡', 14, 4),
(1105, 46, 'Agawa -Gun', '吾川郡', 15, 4),
(1106, 46, 'Takaoka -Gun', '高岡郡', 16, 4),
(1107, 46, 'Hata -Gun', '幡多郡', 17, 4),
(1108, 47, 'Kitakyusyu -City,Moji -Ku', '北九州市門司区', 5, 4),
(1109, 47, 'Kitakyusyu -City,Wakamatsu -Ku', '北九州市若松区', 5, 4),
(1110, 47, 'Kitakyusyu -City,Tobata -Ku', '北九州市戸畑区', 5, 4),
(1111, 47, 'Kitakyusyu -City,Kokurakita -Ku', '北九州市小倉北区', 5, 4),
(1112, 47, 'Kitakyusyu -City,Kokuraminami -Ku', '北九州市小倉南区', 5, 4),
(1113, 47, 'Kitakyusyu -City,Yahatahigashi -Ku', '北九州市八幡東区', 6, 4),
(1114, 47, 'Kitakyusyu -City,Yahatanishi -Ku', '北九州市八幡西区', 7, 4),
(1115, 47, 'Fukuoka -City,Higashi -Ku', '福岡市東区', 8, 4),
(1116, 47, 'Fukuoka -City,Hakata -Ku', '福岡市博多区', 9, 4),
(1117, 47, 'Fukuoka -City,Chuou -Ku', '福岡市中央区', 10, 4),
(1118, 47, 'Fukuoka -City,Minami -Ku', '福岡市南区', 11, 4),
(1119, 47, 'Fukuoka -City,Nishi -Ku', '福岡市西区', 12, 4),
(1120, 47, 'Fukuoka -City,Jonan -Ku', '福岡市城南区', 13, 4),
(1121, 47, 'Fukuoka -City,Sawara -Ku', '福岡市早良区', 14, 4),
(1122, 47, 'Omuta -City', '大牟田市', 15, 4),
(1123, 47, 'Kurume -City', '久留米市', 16, 4),
(1124, 47, 'Onogata -City', '直方市', 17, 4),
(1125, 47, 'Iizuka -City', '飯塚市', 18, 4),
(1126, 47, 'Tagawa -City', '田川市', 19, 4),
(1127, 47, 'Yanagawa -City', '柳川市', 20, 4),
(1128, 47, 'Yame -City', '八女市', 21, 4),
(1129, 47, 'Chikugo -City', '筑後市', 22, 4),
(1130, 47, 'Okawa -City', '大川市', 23, 4),
(1131, 47, 'Yukuha -City', '行橋市', 24, 4),
(1132, 47, 'Buzen -City', '豊前市', 25, 4),
(1133, 47, 'Nakama -City', '中間市', 26, 4),
(1134, 47, 'Ogoori -City', '小郡市', 27, 4),
(1135, 47, 'Chikushino -City', '筑紫野市', 28, 4),
(1136, 47, 'Kasuga -City', '春日市', 29, 4),
(1137, 47, 'Onojou -City', '大野城市', 30, 4),
(1138, 47, 'Munakata -City', '宗像市', 31, 4),
(1139, 47, 'Dazaifu -City', '太宰府市', 32, 4),
(1140, 47, 'Koga -City', '古賀市', 33, 4),
(1141, 47, 'Fukutsu -City', '福津市', 34, 4),
(1142, 47, 'Ukiha -City', 'うきは市', 35, 4),
(1143, 47, 'Miyakawa -City', '宮若市', 36, 4),
(1144, 47, 'Kama -City', '嘉麻市', 37, 4),
(1145, 47, 'Asakura -City', '朝倉市', 38, 4),
(1146, 47, 'Miyama -City', 'みやま市', 39, 4),
(1147, 47, 'Itoshima -City', '糸島市', 40, 4),
(1148, 47, 'Chikushi -Gun', '筑紫郡', 41, 4),
(1149, 47, 'Kasuya -Gun', '糟屋郡', 42, 4),
(1150, 47, 'Onga -Gun', '遠賀郡', 43, 4),
(1151, 47, 'Kurate -Gun', '鞍手郡', 44, 4),
(1152, 47, 'Kaho -Gun', '嘉穂郡', 45, 4),
(1153, 47, 'Asakura -Gun', '朝倉郡', 46, 4),
(1154, 47, 'Mii -Gun', '三井郡', 47, 4),
(1155, 47, 'Mizuma -Gun', '三潴郡', 48, 4),
(1156, 47, 'Yame -Gun', '八女郡', 49, 4),
(1157, 47, 'Tagawa -Gun', '田川郡', 50, 4),
(1158, 47, 'Miyako -Gun', '京都郡', 51, 4),
(1159, 47, 'Chikujo -Gun', '築上郡', 52, 4),
(1160, 48, 'Saga -City', '佐賀市', 5, 4),
(1161, 48, 'Karatsu -City', '唐津市', 5, 4),
(1162, 48, 'Tosu -City', '鳥栖市', 5, 4),
(1163, 48, 'Taku -City', '多久市', 5, 4),
(1164, 48, 'Imari -City', '伊万里市', 5, 4),
(1165, 48, 'Takeo -City', '武雄市', 6, 4),
(1166, 48, 'Kashima -City', '鹿島市', 7, 4),
(1167, 48, 'Ogi -City', '小城市', 8, 4),
(1168, 48, 'Ureshino -City', '嬉野市', 9, 4),
(1169, 48, 'Kanzaki -City', '神埼市', 10, 4),
(1170, 48, 'Kanzaki -Gun', '神埼郡', 11, 4),
(1171, 48, 'Miyaki -Gun', '三養基郡', 12, 4),
(1172, 48, 'Higashimatsuura -Gun', '東松浦郡', 13, 4),
(1173, 48, 'Nishimatsuura -Gun', '西松浦郡', 14, 4),
(1174, 48, 'Kishima -Gun', '杵島郡', 15, 4),
(1175, 48, 'Fujitsu -Gun', '藤津郡', 16, 4),
(1176, 49, 'Nagasaki -City', '長崎市', 5, 4),
(1177, 49, 'Sasebo -City', '佐世保市', 5, 4),
(1178, 49, 'Shimabara -City', '島原市', 5, 4),
(1179, 49, 'Isahaya -City', '諫早市', 5, 4),
(1180, 49, 'Omura -City', '大村市', 5, 4),
(1181, 49, 'Hirado -City', '平戸市', 6, 4),
(1182, 49, 'Matsuura -City', '松浦市', 7, 4),
(1183, 49, 'Tsushima -City', '対馬市', 8, 4),
(1184, 49, 'Iki -City', '壱岐市', 9, 4),
(1185, 49, 'Goto -City', '五島市', 10, 4),
(1186, 49, 'Saikai -City', '西海市', 11, 4),
(1187, 49, 'Unzen -City', '雲仙市', 12, 4),
(1188, 49, 'Minamishimabara -City', '南島原市', 13, 4),
(1189, 49, 'Nishisonogi -Gun', '西彼杵郡', 14, 4),
(1190, 49, 'Higashisonogi -Gun', '東彼杵郡', 15, 4),
(1191, 49, 'Kitamatsuura -Gun', '北松浦郡', 16, 4),
(1192, 49, 'Minamimatsuura -Gun', '南松浦郡', 17, 4),
(1193, 50, 'Kumamoto -City', '熊本市', 5, 4),
(1194, 50, 'Yatsushiro -City', '八代市', 5, 4),
(1195, 50, 'Hitoyoshi -City', '人吉市', 5, 4),
(1196, 50, 'Arao -City', '荒尾市', 5, 4),
(1197, 50, 'Minamata -City', '水俣市', 5, 4),
(1198, 50, 'Tamana -City', '玉名市', 6, 4),
(1199, 50, 'Yamaga -City', '山鹿市', 7, 4),
(1200, 50, 'Kikuchi -City', '菊池市', 8, 4),
(1201, 50, 'Uto -City', '宇土市', 9, 4),
(1202, 50, 'Kamiamakusa -City', '上天草市', 10, 4),
(1203, 50, 'Uki -City', '宇城市', 11, 4),
(1204, 50, 'Aso -City', '阿蘇市', 12, 4);
INSERT INTO `city` (`city_id`, `province_id`, `city_eng`, `city_owner`, `city_order`, `country_id`) VALUES
(1205, 50, 'Amakusa -City', '天草市', 13, 4),
(1206, 50, 'Koushi -City', '合志市', 14, 4),
(1207, 50, 'Shimomakishi -Gun', '下益城郡', 15, 4),
(1208, 50, 'Tamana -Gun', '玉名郡', 16, 4),
(1209, 50, 'Kikuchi -Gun', '菊池郡', 17, 4),
(1210, 50, 'Aso -Gun', '阿蘇郡', 18, 4),
(1211, 50, 'Kamimashiki -Gun', '上益城郡', 19, 4),
(1212, 50, 'Yatsushiro -Gun', '八代郡', 20, 4),
(1213, 50, 'Ashikita -Gun', '葦北郡', 21, 4),
(1214, 50, 'Kuma -Gun', '球磨郡', 22, 4),
(1215, 50, 'Asakusa -Gun', '天草郡', 23, 4),
(1216, 51, 'Oita -City', '大分市', 5, 4),
(1217, 51, 'Beppu -City', '別府市', 5, 4),
(1218, 51, 'nakatsu -City', '中津市', 5, 4),
(1219, 51, 'Hita -City', '日田市', 5, 4),
(1220, 51, 'Saiki -City', '佐伯市', 5, 4),
(1221, 51, 'Usuki -City', '臼杵市', 6, 4),
(1222, 51, 'Tsukumi -City', '津久見市', 7, 4),
(1223, 51, 'Taketa -City', '竹田市', 8, 4),
(1224, 51, 'Fungotakada -City', '豊後高田市', 9, 4),
(1225, 51, 'Kitsuki -City', '杵築市', 10, 4),
(1226, 51, 'Usa -City', '宇佐市', 11, 4),
(1227, 51, 'Bungoono -City', '豊後大野市', 12, 4),
(1228, 51, 'Yufu -City', '由布市', 13, 4),
(1229, 51, 'Kunisaki -City', '国東市', 14, 4),
(1230, 51, 'Higashikunisaki -Gun', '東国東郡', 15, 4),
(1231, 51, 'Hayami -Gun', '速見郡', 16, 4),
(1232, 51, 'Kusu -Gun', '玖珠郡', 17, 4),
(1233, 52, 'Miyazaki -City', '宮崎市', 5, 4),
(1234, 52, 'Miyakonojo -City', '都城市', 5, 4),
(1235, 52, 'Nobeoka -City', '延岡市', 5, 4),
(1236, 52, 'Nichinan -City', '日南市', 5, 4),
(1237, 52, 'Kobayashi -City', '小林市', 5, 4),
(1238, 52, 'Hyuga -City', '日向市', 6, 4),
(1239, 52, 'Kushima -City', '串間市', 7, 4),
(1240, 52, 'Saito -City', '西都市', 8, 4),
(1241, 52, 'Ebino -City', 'えびの市', 9, 4),
(1242, 52, 'Kitamorokata -Gun', '北諸県郡', 10, 4),
(1243, 52, 'Nishimorokata -Gun', '西諸県郡', 11, 4),
(1244, 52, 'Higashimorokata -Gun', '東諸県郡', 12, 4),
(1245, 52, 'Koyu -Gun', '児湯郡', 13, 4),
(1246, 52, 'Higashiusuki -Gun', '東臼杵郡', 14, 4),
(1247, 52, 'Nishiusuki -Gun', '西臼杵郡', 15, 4),
(1248, 53, 'Kagoshima -City', '鹿児島市', 5, 4),
(1249, 53, 'Kanoya -City', '鹿屋市', 5, 4),
(1250, 53, 'Makurazaki -City', '枕崎市', 5, 4),
(1251, 53, 'Akune -City', '阿久根市', 5, 4),
(1252, 53, 'Izumi -City', '出水市', 5, 4),
(1253, 53, 'Ibusuki -City', '指宿市', 6, 4),
(1254, 53, 'Nishinoomote -City', '西之表市', 7, 4),
(1255, 53, 'Tarumizu -City', '垂水市', 8, 4),
(1256, 53, 'Satsumasendai -City', '薩摩川内市', 9, 4),
(1257, 53, 'Hioki -City', '日置市', 10, 4),
(1258, 53, 'Soo -City', '曽於市', 11, 4),
(1259, 53, 'Kirishima -City', '霧島市', 12, 4),
(1260, 53, 'Ichikikushikino -City', 'いちき串木野市', 13, 4),
(1261, 53, 'Minamisatsuma -City', '南さつま市', 14, 4),
(1262, 53, 'Shibushi -City', '志布志市', 15, 4),
(1263, 53, 'Amami -City', '奄美市', 16, 4),
(1264, 53, 'Minamikyusyu -City', '南九州市', 17, 4),
(1265, 53, 'Isa -City', '伊佐市', 18, 4),
(1266, 53, 'Aira -City', '姶良市', 19, 4),
(1267, 53, 'Kagoshima -Gun', '鹿児島郡', 20, 4),
(1268, 53, 'Satsuma -Gun', '薩摩郡', 21, 4),
(1269, 53, 'Izumi -Gun', '出水郡', 22, 4),
(1270, 53, 'Aira -Gun', '姶良郡', 23, 4),
(1271, 53, 'Soo -Gun', '曽於郡', 24, 4),
(1272, 53, 'Kimotsuki -Gun', '肝属郡', 25, 4),
(1273, 53, 'Kumage -Gun', '熊毛郡', 26, 4),
(1274, 53, 'Oshima -Gun', '大島郡', 27, 4),
(1275, 54, 'Naha -City', '那覇市', 5, 4),
(1276, 54, 'Ginowan -City', '宜野湾市', 5, 4),
(1277, 54, 'Ishigaki -City', '石垣市', 5, 4),
(1278, 54, 'Urasoe -City', '浦添市', 5, 4),
(1279, 54, 'Nago -City', '名護市', 5, 4),
(1280, 54, 'Itoman -City', '糸満市', 6, 4),
(1281, 54, 'Okinawa -City', '沖縄市', 7, 4),
(1282, 54, 'Tomigusuku -City', '豊見城市', 8, 4),
(1283, 54, 'Uruma -City', 'うるま市', 9, 4),
(1284, 54, 'Miyakojima -City', '宮古島市', 10, 4),
(1285, 54, 'Nanjo -City', '南城市', 11, 4),
(1286, 54, 'Kunigami -Gun', '国頭郡', 12, 4),
(1287, 54, 'Nakagami -Gun', '中頭郡', 13, 4),
(1288, 54, 'Shimajiri -Gun', '島尻郡', 14, 4),
(1289, 54, 'Miyako -Gun', '宮古郡', 15, 4),
(1290, 54, 'Yaeyama -Gun', '八重山郡', 16, 4);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(10) unsigned NOT NULL,
  `country_eng` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country_owner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country_nickname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country_timezone` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `country`
--

TRUNCATE TABLE `country`;
--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_eng`, `country_owner`, `country_nickname`, `country_timezone`) VALUES
(1, 'Thailand', 'ราชอาณาจักรไทย', 'th', '+7'),
(3, 'Hong Kong', 'Hong Kong', '', ''),
(4, 'Japan', '日本', 'jpn', ''),
(6, 'Norway', 'Norway', '', ''),
(7, 'Denmark', 'Denmark', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(10) unsigned NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_type` varchar(3) DEFAULT NULL,
  `customer_list_id` int(10) unsigned DEFAULT NULL,
  `customer_create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `customer`
--

TRUNCATE TABLE `customer`;
--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_type`, `customer_list_id`, `customer_create_date`) VALUES
(1, 'Sumitimo', NULL, NULL, '2014-03-19 15:30:41'),
(2, 'Sakura', NULL, NULL, '2014-03-21 15:30:56'),
(3, 'Chinosuke', NULL, NULL, '2014-03-24 15:31:18'),
(4, 'Naruto', NULL, NULL, '2014-03-24 15:31:26'),
(5, 'Josuke', NULL, NULL, '2014-03-24 15:31:41'),
(69, 'Customer1', NULL, NULL, '2014-04-29 01:29:00'),
(71, 'Customer', NULL, NULL, '2014-04-29 03:47:38'),
(73, 'New Customer', NULL, NULL, '2014-04-29 11:33:10'),
(81, 'dow', NULL, NULL, '2014-05-06 14:19:19'),
(84, 'win', NULL, NULL, '2014-05-11 02:44:05'),
(88, 'C1', 'NEW', NULL, '2014-10-08 18:19:12'),
(89, 'C', 'NEW', NULL, '2015-01-06 15:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `customer_list`
--

DROP TABLE IF EXISTS `customer_list`;
CREATE TABLE IF NOT EXISTS `customer_list` (
  `customer_list_id` int(10) unsigned NOT NULL,
  `customer_list_name` varchar(255) NOT NULL,
  `customer_list_phone` varchar(45) NOT NULL,
  `customer_list_addr` varchar(255) DEFAULT NULL,
  `customer_list_email` varchar(100) NOT NULL,
  `customer_list_picture` varchar(255) DEFAULT NULL,
  `customer_list_create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customer_list_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `customer_list`
--

TRUNCATE TABLE `customer_list`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_memo`
--

DROP TABLE IF EXISTS `customer_memo`;
CREATE TABLE IF NOT EXISTS `customer_memo` (
  `cus_memo_id` int(10) unsigned NOT NULL,
  `customer_list_customer_list_id` int(10) unsigned NOT NULL,
  `cus_memo_note` text,
  `cus_memo_is_active` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `cus_memo_create_date` datetime DEFAULT '0000-00-00 00:00:00',
  `cus_memo_close_date` datetime DEFAULT '0000-00-00 00:00:00',
  `cus_memo_close_staff` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `customer_memo`
--

TRUNCATE TABLE `customer_memo`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
CREATE TABLE IF NOT EXISTS `customer_order` (
  `order_id` int(10) unsigned NOT NULL,
  `take_seat_id` int(10) unsigned NOT NULL,
  `order_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_close_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_status` enum('Open','Close','Hold') NOT NULL DEFAULT 'Open',
  `staff_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `customer_order`
--

TRUNCATE TABLE `customer_order`;
--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `take_seat_id`, `order_date`, `order_close_date`, `order_status`, `staff_id`) VALUES
(1, 65, '2014-11-02 09:31:00', '2014-11-02 10:00:00', 'Close', 4),
(2, 83, '2015-01-06 22:28:03', '0000-00-00 00:00:00', 'Open', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order_detail`
--

DROP TABLE IF EXISTS `customer_order_detail`;
CREATE TABLE IF NOT EXISTS `customer_order_detail` (
  `order_detail_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `menu_id` int(10) unsigned NOT NULL,
  `order_quantity` int(10) unsigned NOT NULL,
  `order_paid_type` enum('Normal','Share') NOT NULL DEFAULT 'Normal',
  `order_type` enum('Normal','All','Special') NOT NULL,
  `order_status` enum('Order','Cook','Serve','Finish') NOT NULL DEFAULT 'Order',
  `order_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_finish` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `staff_id` int(10) unsigned NOT NULL,
  `order_parent` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `customer_order_detail`
--

TRUNCATE TABLE `customer_order_detail`;
--
-- Dumping data for table `customer_order_detail`
--

INSERT INTO `customer_order_detail` (`order_detail_id`, `order_id`, `menu_id`, `order_quantity`, `order_paid_type`, `order_type`, `order_status`, `order_date`, `order_finish`, `staff_id`, `order_parent`) VALUES
(407, 1, 1, 1, 'Normal', 'Normal', 'Finish', '2014-10-15 01:48:08', '0000-00-00 00:00:00', 4, NULL),
(408, 1, 2, 1, 'Normal', 'Normal', 'Finish', '2014-10-15 01:48:08', '0000-00-00 00:00:00', 4, NULL),
(409, 1, 1, 2, 'Normal', 'All', 'Finish', '2014-10-15 01:48:37', '0000-00-00 00:00:00', 4, NULL),
(410, 1, 1, 1, 'Normal', 'Normal', 'Finish', '2014-10-15 01:48:37', '0000-00-00 00:00:00', 4, 409),
(411, 1, 2, 1, 'Normal', 'Normal', 'Finish', '2014-11-02 03:32:36', '0000-00-00 00:00:00', 4, NULL),
(412, 1, 2, 1, 'Normal', 'Normal', 'Finish', '2014-11-02 03:33:02', '0000-00-00 00:00:00', 4, NULL),
(413, 0, 4, 2, 'Normal', 'All', 'Order', '2014-11-25 12:05:42', '0000-00-00 00:00:00', 1, NULL),
(414, 1, 1, 1, 'Normal', 'Normal', 'Finish', '2014-11-02 03:33:02', '0000-00-00 00:00:00', 4, 413),
(415, 1, 2, 1, 'Normal', 'Normal', 'Finish', '2014-11-02 03:34:19', '0000-00-00 00:00:00', 4, 413),
(416, 0, 1, 1, 'Normal', 'All', 'Order', '2014-11-25 12:05:42', '0000-00-00 00:00:00', 1, NULL),
(417, 0, 5, 1, 'Normal', 'Normal', 'Order', '2014-11-25 12:05:42', '0000-00-00 00:00:00', 1, NULL),
(418, 2, 5, 1, 'Normal', 'Normal', 'Order', '2015-01-06 22:28:03', '0000-00-00 00:00:00', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order_sub`
--

DROP TABLE IF EXISTS `customer_order_sub`;
CREATE TABLE IF NOT EXISTS `customer_order_sub` (
  `order_sub_id` int(10) unsigned NOT NULL,
  `order_detail_id` int(10) NOT NULL,
  `queue` int(10) NOT NULL,
  `sub_id` int(10) NOT NULL,
  `sub_mnu_ch_id` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `customer_order_sub`
--

TRUNCATE TABLE `customer_order_sub`;
--
-- Dumping data for table `customer_order_sub`
--

INSERT INTO `customer_order_sub` (`order_sub_id`, `order_detail_id`, `queue`, `sub_id`, `sub_mnu_ch_id`) VALUES
(210, 408, 1, 1, '19'),
(211, 411, 1, 1, '19'),
(212, 412, 1, 1, '19'),
(213, 415, 1, 1, '19'),
(214, 417, 1, 3, '41'),
(215, 417, 1, 4, '45'),
(216, 418, 1, 3, '41');

-- --------------------------------------------------------

--
-- Table structure for table `docs_download`
--

DROP TABLE IF EXISTS `docs_download`;
CREATE TABLE IF NOT EXISTS `docs_download` (
  `docs_download_id` int(10) unsigned NOT NULL,
  `docs_download_title` varchar(255) DEFAULT NULL,
  `docs_download_desc` text,
  `docs_download_file` varchar(255) DEFAULT NULL,
  `docs_download_create_date` timestamp NULL DEFAULT NULL,
  `docs_download_expire_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `docs_download`
--

TRUNCATE TABLE `docs_download`;
-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `member_id` int(10) unsigned NOT NULL,
  `member_firstname` varchar(100) NOT NULL,
  `member_middlename` varchar(100) DEFAULT NULL,
  `member_lastname` varchar(100) NOT NULL,
  `member_birthday` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member_pic_profile` varchar(255) DEFAULT NULL,
  `member_company_name` varchar(250) DEFAULT NULL,
  `member_name_onwebsite` varchar(255) DEFAULT NULL,
  `member_name_oncheque` varchar(255) NOT NULL,
  `member_contact_person` varchar(150) NOT NULL,
  `member_company_email` varchar(150) NOT NULL,
  `member_company_address` text NOT NULL,
  `member_home_phone` varchar(45) DEFAULT NULL,
  `member_business_phone` varchar(45) NOT NULL,
  `member_fax_number` varchar(45) DEFAULT NULL,
  `member_language` varchar(45) DEFAULT NULL,
  `member_receive_email` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `member_email_format` enum('HTML','PLAIN') NOT NULL DEFAULT 'HTML',
  `member_sms_phone` varchar(45) DEFAULT NULL,
  `member_receive_sms` enum('Yes','No') DEFAULT 'Yes',
  `member_skype_account` varchar(100) DEFAULT NULL,
  `member_create_date` timestamp NULL DEFAULT NULL,
  `member_update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `member_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `member_default_language` varchar(3) DEFAULT 'EN',
  `shop_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Location'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Keep all  member profile of our system.';

--
-- Truncate table before insert `member`
--

TRUNCATE TABLE `member`;
--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_firstname`, `member_middlename`, `member_lastname`, `member_birthday`, `member_pic_profile`, `member_company_name`, `member_name_onwebsite`, `member_name_oncheque`, `member_contact_person`, `member_company_email`, `member_company_address`, `member_home_phone`, `member_business_phone`, `member_fax_number`, `member_language`, `member_receive_email`, `member_email_format`, `member_sms_phone`, `member_receive_sms`, `member_skype_account`, `member_create_date`, `member_update_date`, `member_status`, `member_default_language`, `shop_id`) VALUES
(1, 'K.K. Mida-Medalist International', NULL, '(Japan)', '2015-02-21 17:00:00', NULL, 'K.K. Mida-Medalist International', NULL, '', '', '', '', NULL, '', NULL, NULL, 'Yes', 'HTML', NULL, 'Yes', NULL, NULL, '2015-02-22 09:10:27', 'Active', 'EN', 0),
(2, 'Worrakris', NULL, 'Boonchan', '1980-10-11 11:01:00', 'picture_150314112251343.jpg', 'M-Tech Dreams Company Limited', 'Worrakris', 'Worrakris Boonchan', 'Worrakris Boonchan', 'worrakris@gmail.com', '', NULL, '+668 1 722 9599', NULL, NULL, 'Yes', 'HTML', NULL, 'Yes', NULL, '2014-06-08 08:40:14', '2015-02-25 07:34:45', 'Active', 'EN', 2);

-- --------------------------------------------------------

--
-- Table structure for table `member_relationship`
--

DROP TABLE IF EXISTS `member_relationship`;
CREATE TABLE IF NOT EXISTS `member_relationship` (
  `member_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `member_relationship`
--

TRUNCATE TABLE `member_relationship`;
--
-- Dumping data for table `member_relationship`
--

INSERT INTO `member_relationship` (`member_id`, `parent_id`, `create_date`, `update_date`) VALUES
(2, 1, '2015-02-15 17:00:00', '2015-02-15 17:00:00'),
(3, 2, '2015-02-22 17:00:00', '2015-02-22 17:00:00'),
(4, 2, '2015-02-22 17:00:00', '2015-02-22 17:00:00'),
(5, 3, '2015-02-22 17:00:00', '2015-02-22 17:00:00'),
(6, 4, '2015-02-22 17:00:00', '2015-02-22 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `member_rental`
--

DROP TABLE IF EXISTS `member_rental`;
CREATE TABLE IF NOT EXISTS `member_rental` (
  `rental_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `products_id` int(10) unsigned NOT NULL,
  `product_reg_code` varchar(45) NOT NULL,
  `rental_expire_date` timestamp NULL DEFAULT NULL,
  `rental_create_date` timestamp NULL DEFAULT NULL,
  `rental_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rental_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `member_rental`
--

TRUNCATE TABLE `member_rental`;
--
-- Dumping data for table `member_rental`
--

INSERT INTO `member_rental` (`rental_id`, `member_id`, `products_id`, `product_reg_code`, `rental_expire_date`, `rental_create_date`, `rental_update_date`, `rental_status`) VALUES
(1, 2, 1, '123456', '2015-03-30 17:00:00', '2015-02-23 08:16:25', '2015-02-23 08:16:25', 'Active'),
(2, 2, 2, '123456789', '2015-03-30 17:00:00', '2015-02-23 08:16:25', '2015-02-23 08:16:25', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `menu_category`
--

DROP TABLE IF EXISTS `menu_category`;
CREATE TABLE IF NOT EXISTS `menu_category` (
  `menu_cat_id` int(10) unsigned NOT NULL,
  `menu_cat_parent` int(10) unsigned DEFAULT '0',
  `menu_cat_name_local` varchar(255) DEFAULT NULL,
  `menu_cat_name_en` varchar(255) DEFAULT NULL,
  `menu_cat_is_active` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `dept_id` int(10) unsigned NOT NULL,
  `menu_cat_create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `menu_cat_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `menu_cat_order` int(11) NOT NULL,
  `menu_cat_color` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `menu_category`
--

TRUNCATE TABLE `menu_category`;
--
-- Dumping data for table `menu_category`
--

INSERT INTO `menu_category` (`menu_cat_id`, `menu_cat_parent`, `menu_cat_name_local`, `menu_cat_name_en`, `menu_cat_is_active`, `dept_id`, `menu_cat_create_date`, `menu_cat_update_date`, `menu_cat_order`, `menu_cat_color`) VALUES
(1, 0, 'Food', 'Food', 'YES', 0, '2014-03-15 11:45:12', '2014-11-25 10:34:21', 1, 'E1F5A9'),
(2, 0, 'Drink', 'Drink', 'YES', 0, '2014-03-15 11:45:30', '2014-11-25 10:34:36', 2, 'FAAC58'),
(3, 0, 'Appetizer', 'Appetizer', 'YES', 0, '2014-03-23 09:14:26', '2014-11-25 10:34:52', 3, '00BFFF');

-- --------------------------------------------------------

--
-- Table structure for table `monthly_payment`
--

DROP TABLE IF EXISTS `monthly_payment`;
CREATE TABLE IF NOT EXISTS `monthly_payment` (
  `monthly_payment_id` int(10) unsigned NOT NULL,
  `monthly_payment_year_month` varchar(8) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `payment_method_id` int(10) unsigned NOT NULL,
  `monthly_payment_price` float NOT NULL DEFAULT '0',
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `monthly_payment_status` enum('Paid','Not Paid','Fail','Completed') NOT NULL DEFAULT 'Not Paid',
  `monthly_payment_paid_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `monthly_payment`
--

TRUNCATE TABLE `monthly_payment`;
-- --------------------------------------------------------

--
-- Table structure for table `monthly_point`
--

DROP TABLE IF EXISTS `monthly_point`;
CREATE TABLE IF NOT EXISTS `monthly_point` (
  `m_comm_id` int(10) unsigned NOT NULL,
  `m_comm_year_month` varchar(8) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `m_comm_EP` int(11) NOT NULL DEFAULT '0',
  `m_comm_own_cpv` int(11) NOT NULL DEFAULT '0',
  `m_comm_son_cpv` int(11) NOT NULL DEFAULT '0',
  `m_comm_grand_son_cpv` int(11) NOT NULL DEFAULT '0',
  `m_comm_total_cpv` int(11) NOT NULL DEFAULT '0',
  `m_comm_earn_per_point` float DEFAULT NULL,
  `m_comm_currency_unit` varchar(45) DEFAULT NULL,
  `m_comm_status` enum('NotRecv','Recv','Fail') DEFAULT 'NotRecv',
  `received_method_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `monthly_point`
--

TRUNCATE TABLE `monthly_point`;
-- --------------------------------------------------------

--
-- Table structure for table `monthly_rental`
--

DROP TABLE IF EXISTS `monthly_rental`;
CREATE TABLE IF NOT EXISTS `monthly_rental` (
  `monthly_rental_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `shop_product_id` int(10) unsigned NOT NULL,
  `rental_year_month` varchar(8) NOT NULL,
  `monthly_price` float NOT NULL DEFAULT '0',
  `monthly_EP` int(11) NOT NULL,
  `monthly_son_CPV` int(11) NOT NULL,
  `monthly_grand_son_CPV` int(11) NOT NULL,
  `monthly_create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `monthly_rental`
--

TRUNCATE TABLE `monthly_rental`;
-- --------------------------------------------------------

--
-- Table structure for table `monthly_rental_not_use`
--

DROP TABLE IF EXISTS `monthly_rental_not_use`;
CREATE TABLE IF NOT EXISTS `monthly_rental_not_use` (
  `monthly_rental_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `shop_product_id` int(10) unsigned NOT NULL,
  `rental_year_month` varchar(8) NOT NULL,
  `monthly_price` float NOT NULL DEFAULT '0',
  `monthly_EP` int(11) NOT NULL,
  `monthly_son_CPV` int(11) NOT NULL,
  `monthly_grand_son_CPV` int(11) NOT NULL,
  `monthly_create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `monthly_rental_not_use`
--

TRUNCATE TABLE `monthly_rental_not_use`;
-- --------------------------------------------------------

--
-- Table structure for table `normal_menu`
--

DROP TABLE IF EXISTS `normal_menu`;
CREATE TABLE IF NOT EXISTS `normal_menu` (
  `mnu_id` int(10) unsigned NOT NULL,
  `mnu_name_local` varchar(255) NOT NULL,
  `mnu_name_en` varchar(255) DEFAULT NULL,
  `mnu_cost` float unsigned NOT NULL DEFAULT '0',
  `mnu_sale_price` float unsigned NOT NULL DEFAULT '0',
  `mnu_picture` varchar(1024) DEFAULT NULL,
  `mnu_is_recommend` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `mnu_is_active` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `mnu_order` int(11) NOT NULL,
  `menu_cat_id` int(10) unsigned NOT NULL,
  `mnu_update_date` datetime NOT NULL,
  `mnu_create_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `normal_menu`
--

TRUNCATE TABLE `normal_menu`;
--
-- Dumping data for table `normal_menu`
--

INSERT INTO `normal_menu` (`mnu_id`, `mnu_name_local`, `mnu_name_en`, `mnu_cost`, `mnu_sale_price`, `mnu_picture`, `mnu_is_recommend`, `mnu_is_active`, `mnu_order`, `menu_cat_id`, `mnu_update_date`, `mnu_create_date`) VALUES
(5, ' Kurobuta Steak', ' Kurobuta Steak', 1500, 1700, 'picture_251114104059986.jpg', 'YES', 'YES', 1, 1, '2014-11-25 10:40:59', '2014-11-25 10:40:59'),
(7, 'Korokke Soba', 'Korokke Soba', 450, 500, 'picture_251114110830408.jpg', 'NO', 'YES', 2, 1, '2014-11-25 11:08:30', '2014-11-25 11:08:30'),
(8, 'Fried Tofu Udon', 'Fried Tofu Udon', 1200, 1500, 'picture_251114111053457.jpg', 'NO', 'YES', 3, 1, '2014-11-25 11:10:53', '2014-11-25 11:10:53'),
(9, 'Meat and Potato Stew', 'Meat and Potato Stew', 900, 1200, 'picture_251114111246439.jpg', 'YES', 'YES', 5, 1, '2014-11-25 11:12:46', '2014-11-25 11:12:46'),
(10, 'Deep Fried Breaded Pork Cutlet', 'Deep Fried Breaded Pork Cutlet', 700, 800, 'picture_251114111401337.jpg', 'YES', 'YES', 4, 1, '2014-11-25 11:14:01', '2014-11-25 11:14:01'),
(11, 'Yakisoba', 'Yakisoba', 1300, 1500, 'picture_251114111544103.jpg', 'YES', 'YES', 7, 1, '2014-11-25 11:15:44', '2014-11-25 11:15:44'),
(12, 'Wagyu Yakiniku Don', 'Wagyu Yakiniku Don', 1800, 2000, 'picture_251114111946341.jpg', 'YES', 'YES', 6, 1, '2014-11-25 11:19:46', '2014-11-25 11:19:46'),
(13, 'Hokkaido Ramen', 'Hokkaido Ramen', 1200, 1600, 'picture_251114112058272.jpg', 'YES', 'YES', 8, 1, '2014-11-25 11:20:58', '2014-11-25 11:20:58'),
(14, 'Sakeharasu & Yasai Tajin Nabe', 'Sakeharasu & Yasai Tajin Nabe', 1500, 1700, 'picture_251114112214217.jpg', 'YES', 'YES', 9, 1, '2014-11-25 11:22:14', '2014-11-25 11:22:14'),
(15, 'Agodashi Kushi Oden', 'Agodashi Kushi Oden', 1100, 1500, 'picture_251114112407467.jpg', 'YES', 'YES', 10, 1, '2014-11-25 11:24:07', '2014-11-25 11:24:07'),
(16, 'Sapporo', 'Sapporo', 1000, 1300, 'picture_150514081608999.jpg', 'YES', 'YES', 1, 2, '2014-11-25 00:00:00', '2014-11-25 00:00:00'),
(17, 'Singha', 'Singha', 1200, 1500, 'picture_150514083246881.jpg', 'YES', 'YES', 2, 2, '2014-11-25 00:00:00', '2014-11-25 00:00:00'),
(18, 'Asahi', 'Asahi', 1200, 1500, 'picture_150514081745177.png', 'YES', 'YES', 3, 2, '2014-11-25 00:00:00', '2014-11-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `out_of_order_menu`
--

DROP TABLE IF EXISTS `out_of_order_menu`;
CREATE TABLE IF NOT EXISTS `out_of_order_menu` (
  `out_id` int(10) unsigned NOT NULL,
  `menu_id` int(10) unsigned NOT NULL,
  `record_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `out_of_order_menu`
--

TRUNCATE TABLE `out_of_order_menu`;
-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE IF NOT EXISTS `payment_method` (
  `payment_method_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `payment_method_type` enum('Bank Account','Credit Card') NOT NULL,
  `account_owner` varchar(255) NOT NULL,
  `account_bank_name` varchar(200) DEFAULT NULL,
  `account_bank_branch` varchar(200) DEFAULT NULL,
  `account_number` varchar(200) NOT NULL,
  `account_expiration` varchar(45) NOT NULL DEFAULT '00/00',
  `account_status` enum('Wait','Approved','Not Approved','Disable') NOT NULL DEFAULT 'Wait',
  `account_is_default` enum('Yes','No') NOT NULL DEFAULT 'No',
  `account_create_date` timestamp NULL DEFAULT NULL,
  `account_update_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `payment_method`
--

TRUNCATE TABLE `payment_method`;
--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_method_id`, `member_id`, `payment_method_type`, `account_owner`, `account_bank_name`, `account_bank_branch`, `account_number`, `account_expiration`, `account_status`, `account_is_default`, `account_create_date`, `account_update_date`) VALUES
(1, 0, '', '', '', '', '', '', '', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 0, '', '', '', '', '', '', '', 'No', '2014-04-14 23:25:06', '2014-04-14 23:25:06'),
(3, 0, '', '', '', '', '', '', '', 'No', '2014-04-14 23:25:14', '2014-04-14 23:25:14'),
(4, 0, '', '', '', '', '', '', '', 'No', '2014-04-14 23:25:17', '2014-04-14 23:25:17'),
(5, 0, '', '', '', '', '', '', '', 'No', '2014-04-14 23:25:42', '2014-04-14 23:25:42'),
(6, 0, '', '', '', '', '', '', '', 'No', '2014-04-14 23:26:37', '2014-04-14 23:26:37'),
(7, 0, '', '', '', '', '', '', '', 'No', '2014-04-14 23:28:28', '2014-04-14 23:28:28'),
(8, 0, '', '', '', '', '', '', '', 'No', '2014-04-14 23:29:27', '2014-04-14 23:29:27'),
(9, 0, '', '', '', '', '', '', '', 'No', '2014-04-14 23:32:40', '2014-04-14 23:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `pos_notification`
--

DROP TABLE IF EXISTS `pos_notification`;
CREATE TABLE IF NOT EXISTS `pos_notification` (
  `noti_id` int(11) NOT NULL,
  `noti_sender_id` int(11) NOT NULL,
  `noti_receiver_id` int(11) NOT NULL,
  `noti_module` enum('ORDERLIST') NOT NULL,
  `noti_reference_id` int(11) NOT NULL,
  `noti_title` varchar(255) NOT NULL,
  `noti_create_date` datetime NOT NULL,
  `noti_update_date` datetime NOT NULL,
  `noti_status` enum('WAITING','FINISHED') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `pos_notification`
--

TRUNCATE TABLE `pos_notification`;
-- --------------------------------------------------------

--
-- Table structure for table `pos_staff`
--

DROP TABLE IF EXISTS `pos_staff`;
CREATE TABLE IF NOT EXISTS `pos_staff` (
  `staff_id` int(11) unsigned NOT NULL,
  `shop_profile_shop_id` int(11) unsigned NOT NULL,
  `staff_firstname` varchar(100) NOT NULL,
  `staff_lastname` varchar(100) NOT NULL,
  `staff_nickname` varchar(45) DEFAULT NULL,
  `staff_picture` varchar(255) DEFAULT NULL,
  `staff_gender` enum('MALE','FEMALE') DEFAULT NULL,
  `staff_phone` varchar(60) NOT NULL,
  `staff_email` varchar(100) NOT NULL,
  `staff_address` text,
  `staff_birthdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `staff_color` varchar(45) NOT NULL,
  `staff_display_menu` varchar(4) DEFAULT NULL,
  `staff_create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `staff_update_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `staff_plan_id` int(11) NOT NULL,
  `staff_premission` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `pos_staff`
--

TRUNCATE TABLE `pos_staff`;
--
-- Dumping data for table `pos_staff`
--

INSERT INTO `pos_staff` (`staff_id`, `shop_profile_shop_id`, `staff_firstname`, `staff_lastname`, `staff_nickname`, `staff_picture`, `staff_gender`, `staff_phone`, `staff_email`, `staff_address`, `staff_birthdate`, `staff_color`, `staff_display_menu`, `staff_create_date`, `staff_update_date`, `staff_plan_id`, `staff_premission`) VALUES
(1, 1, 'John', 'Serve', 'Win', 'picture_150314112251343.jpg', 'FEMALE', '0123123', 'win@fdsfl.com', '122', '2014-03-28 00:00:00', '22b8dd', 'GRID', '2014-03-15 11:20:40', '2014-06-01 20:22:55', 12, '1111111'),
(2, 1, 'Ane', 'Cook', 'Ane Cook', 'picture_230414090653311.jpg', 'FEMALE', '', '', '', '1970-01-01 00:00:00', '68fdff', 'GRID', '2014-04-23 21:06:53', '2014-05-31 12:49:49', 15, '1100000'),
(3, 1, 'Kai', 'Account', 'Kai Account', 'picture_110514063333780.jpg', 'MALE', '', '', '', '1970-01-01 00:00:00', '303498', 'LIST', '2014-05-11 06:33:33', '2014-05-11 06:59:59', 12, '0000001'),
(4, 1, 'Methee', 'Treewichian', 'Koo', 'picture_220914034210235.jpg', 'MALE', '0833018092', 'methee.treewichian@gmail.com', '223/223', '1985-08-24 00:00:00', '32cb00', 'GRID', '2014-09-22 03:42:10', '2014-10-27 17:17:08', 16, '1111111'),
(5, 1, 'Worrakris', 'Boonchan', 'A.R.M', 'picture_201114105840926.jpg', 'MALE', '+66817229599', 'worrakris@gmail.com', '111/135 GrandKittiya Village, Samutsakhon Thailand 74110', '1980-10-11 00:00:00', 'cbcefb', NULL, '2014-11-20 10:58:40', '2014-11-20 10:58:40', 12, '1111100');

-- --------------------------------------------------------

--
-- Table structure for table `pos_staff_check_in`
--

DROP TABLE IF EXISTS `pos_staff_check_in`;
CREATE TABLE IF NOT EXISTS `pos_staff_check_in` (
  `chk_id` int(11) NOT NULL,
  `chk_staff_id` int(11) NOT NULL,
  `chk_admin_id` int(11) NOT NULL,
  `chk_time_in` datetime NOT NULL,
  `chk_time_out` datetime NOT NULL,
  `chk_approve` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `chk_approve_time` datetime NOT NULL,
  `chk_status` enum('WAITING','ALERT','FINISHED') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Truncate table before insert `pos_staff_check_in`
--

TRUNCATE TABLE `pos_staff_check_in`;
--
-- Dumping data for table `pos_staff_check_in`
--

INSERT INTO `pos_staff_check_in` (`chk_id`, `chk_staff_id`, `chk_admin_id`, `chk_time_in`, `chk_time_out`, `chk_approve`, `chk_approve_time`, `chk_status`) VALUES
(1, 1, 0, '2014-11-04 00:35:38', '0000-00-00 00:00:00', 'YES', '2014-11-04 00:35:59', 'ALERT'),
(2, 1, 0, '2014-11-19 18:10:23', '0000-00-00 00:00:00', 'YES', '2014-11-19 18:12:21', 'FINISHED'),
(3, 1, 0, '2014-11-20 10:24:02', '0000-00-00 00:00:00', 'YES', '2014-11-20 10:25:15', 'FINISHED'),
(4, 5, 0, '2014-11-20 10:59:47', '0000-00-00 00:00:00', 'YES', '2014-11-20 11:00:23', 'FINISHED'),
(5, 1, 0, '2014-11-25 09:12:04', '0000-00-00 00:00:00', 'YES', '2014-11-25 09:12:17', 'FINISHED'),
(6, 1, 0, '2015-01-06 22:26:07', '0000-00-00 00:00:00', 'YES', '2015-01-06 22:26:44', 'FINISHED');

-- --------------------------------------------------------

--
-- Table structure for table `pos_staff_section`
--

DROP TABLE IF EXISTS `pos_staff_section`;
CREATE TABLE IF NOT EXISTS `pos_staff_section` (
  `pos_staff_staff_id` int(11) NOT NULL,
  `working_section_dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `pos_staff_section`
--

TRUNCATE TABLE `pos_staff_section`;
-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int(10) unsigned NOT NULL,
  `product_name_local` varchar(255) DEFAULT NULL,
  `product_name_en` varchar(255) DEFAULT NULL,
  `product_description` text,
  `product_price` float DEFAULT NULL,
  `product_EP` int(11) DEFAULT NULL,
  `product_son_CPV` int(11) DEFAULT NULL,
  `product_grand_son_CPV` int(11) DEFAULT NULL,
  `product_create_date` timestamp NULL DEFAULT NULL,
  `product_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_status` enum('Active','Inactive') DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `products`
--

TRUNCATE TABLE `products`;
--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `product_name_local`, `product_name_en`, `product_description`, `product_price`, `product_EP`, `product_son_CPV`, `product_grand_son_CPV`, `product_create_date`, `product_update_date`, `product_status`) VALUES
(1, 'Dartsboard LOCAL', 'Dartsboard EN', 'Dartsboard DESC', 1500, 150, 100, 50, '2015-02-23 08:06:29', '2015-02-23 08:06:29', 'Active'),
(2, 'POS System LOCAL', 'POS System EN', 'POS System DESC', 2000, 200, 150, 100, '2015-02-23 08:06:29', '2015-02-25 10:37:43', 'Active'),
(3, 'Slot Machine LOCAL', 'Slot Machine EN', NULL, 2500, 250, 200, 150, '2015-02-26 07:16:10', '2015-02-26 07:16:10', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
CREATE TABLE IF NOT EXISTS `province` (
  `province_id` int(10) unsigned NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `province_eng` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `province_owner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `province_order` int(11) NOT NULL,
  `status` enum('delete','show') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'show'
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci PACK_KEYS=1;

--
-- Truncate table before insert `province`
--

TRUNCATE TABLE `province`;
--
-- Dumping data for table `province`
--

INSERT INTO `province` (`province_id`, `country_id`, `province_eng`, `province_owner`, `province_order`, `status`) VALUES
(8, 4, 'Hokkaido', '北海道', 1, 'show'),
(9, 4, 'Aomori', '青森県', 2, 'show'),
(10, 4, 'Iwate', '岩手県', 3, 'show'),
(11, 4, 'Miyagi', '宮城県', 4, 'show'),
(12, 4, 'Akita', '秋田県', 5, 'show'),
(13, 4, 'Yamagata', '山形県', 6, 'show'),
(14, 4, 'Fukushima', '福島県', 7, 'show'),
(15, 4, 'Ibaraki', '茨城県', 8, 'show'),
(16, 4, 'Tochigi', '栃木県', 9, 'show'),
(17, 4, 'Gunma', '群馬県', 10, 'show'),
(18, 4, 'Saitama', '埼玉県', 11, 'show'),
(19, 4, 'Chiba', '千葉県', 12, 'show'),
(20, 4, 'Tokyo', '東京都', 13, 'show'),
(21, 4, 'Kanagawa', '神奈川県', 14, 'show'),
(22, 4, 'Niigata', '新潟県', 15, 'show'),
(23, 4, 'Toyama', '富山県', 16, 'show'),
(24, 4, 'Ishikawa', '石川県', 17, 'show'),
(25, 4, 'Fukui', '福井県', 18, 'show'),
(26, 4, 'Yamanashi', '山梨県', 19, 'show'),
(27, 4, 'Nagano', '長野県', 20, 'show'),
(28, 4, 'Gifu', '岐阜県', 21, 'show'),
(29, 4, 'Shizuoka', '静岡県', 22, 'show'),
(30, 4, 'Aichi', '愛知県', 23, 'show'),
(31, 4, 'Mie', '三重県', 24, 'show'),
(32, 4, 'Shiga', '滋賀県', 25, 'show'),
(33, 4, 'Kyoto', '京都府', 26, 'show'),
(34, 4, 'Osaka', '大阪府', 27, 'show'),
(35, 4, 'Hyogo', '兵庫県', 28, 'show'),
(36, 4, 'Nara', '奈良県', 29, 'show'),
(37, 4, 'Wakayama', '和歌山県', 30, 'show'),
(38, 4, 'Tottori', '鳥取県', 31, 'show'),
(39, 4, 'Shimane', '島根県', 32, 'show'),
(40, 4, 'Okayama', '岡山県', 33, 'show'),
(41, 4, 'Hiroshima', '広島県', 34, 'show'),
(42, 4, 'Yamaguchi', '山口県', 35, 'show'),
(43, 4, 'Tokushima', '徳島県', 36, 'show'),
(44, 4, 'Kagawa', '香川県', 37, 'show'),
(45, 4, 'Ehime', '愛媛県', 38, 'show'),
(46, 4, 'Kochi', '高知県', 39, 'show'),
(47, 4, 'Fukuoka', '福岡県', 40, 'show'),
(48, 4, 'Saga', '佐賀県', 41, 'show'),
(49, 4, 'Nagasaki', '長崎県', 42, 'show'),
(50, 4, 'Kumamoto', '熊本県', 43, 'show'),
(51, 4, 'Oita', '大分県', 44, 'show'),
(52, 4, 'Miyazaki', '宮崎県', 45, 'show'),
(53, 4, 'Kagoshima', '鹿児島県', 46, 'show'),
(54, 4, 'Okinawa', '沖縄県', 47, 'show');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
CREATE TABLE IF NOT EXISTS `receipt` (
  `receipt_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `staff_id` int(11) NOT NULL,
  `issue_date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `table_name` varchar(255) DEFAULT NULL,
  `tax_is_include` enum('Yes','No') DEFAULT NULL,
  `discount_id` int(11) NOT NULL,
  `receipt_note` text,
  `payment_method_id` int(11) DEFAULT NULL,
  `sub_total` float DEFAULT NULL,
  `receipt_tax` float DEFAULT NULL,
  `grand_total` float DEFAULT NULL,
  `cash` float NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `shop_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `receipt`
--

TRUNCATE TABLE `receipt`;
--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`receipt_id`, `customer_id`, `staff_id`, `issue_date_time`, `table_name`, `tax_is_include`, `discount_id`, `receipt_note`, `payment_method_id`, `sub_total`, `receipt_tax`, `grand_total`, `cash`, `order_id`, `shop_id`) VALUES
(1, 1, 1, '2014-04-29 06:09:26', 'Table VIP', 'Yes', 0, '0', 0, 660, 33, 660, 0, 44, 1),
(2, 3, 1, '2014-04-29 10:21:45', 'Table 1', 'Yes', 20, '0', 0, 1840, 92, 1840, 0, 48, 1),
(3, 1, 1, '2014-04-29 10:46:48', 'Table 1', 'Yes', 0, '0', 0, 1120, 56, 1120, 2000, 49, 1),
(4, 1, 1, '2014-05-11 06:03:56', 'Table 1', 'Yes', 0, '0', 0, 400, 20, 400, 0, 60, 1),
(5, 1, 1, '2014-05-11 11:16:52', 'Table 1', 'Yes', 0, '0', 0, 1000, 50, 1000, 0, 64, 1),
(6, 1, 4, '2014-09-27 22:49:15', 'Table 1', 'Yes', 0, '0', 0, 0, 0, 0, 300, 0, 1),
(7, 1, 4, '2014-10-09 01:21:24', 'Table VIP', 'Yes', 10, '0', 0, 260, 13, 260, 260, 66, 1),
(8, 1, 1, '2014-10-09 09:11:54', 'Table VIP', 'Yes', 10, '0', 0, 260, 13, 260, 500, 67, 1);

-- --------------------------------------------------------

--
-- Table structure for table `receipt_detail`
--

DROP TABLE IF EXISTS `receipt_detail`;
CREATE TABLE IF NOT EXISTS `receipt_detail` (
  `receipt_detail_id` int(11) NOT NULL,
  `receipt_id` int(10) unsigned NOT NULL,
  `detail_name` varchar(255) DEFAULT NULL,
  `detail_qty` int(11) DEFAULT NULL,
  `detail_price_per_unit` float DEFAULT NULL,
  `detaul_type` enum('Normal','Share') NOT NULL DEFAULT 'Normal'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `receipt_detail`
--

TRUNCATE TABLE `receipt_detail`;
--
-- Dumping data for table `receipt_detail`
--

INSERT INTO `receipt_detail` (`receipt_detail_id`, `receipt_id`, `detail_name`, `detail_qty`, `detail_price_per_unit`, `detaul_type`) VALUES
(1, 1, 'ขนมจีน', 2, 200, 'Normal'),
(2, 1, 'ขนมจีน', 0, 200, 'Normal'),
(3, 1, 'ข้าวผัดปู', 1, 60, 'Normal'),
(4, 1, 'โอริโอ้คัพเค้ก', 1, 200, 'Normal'),
(5, 2, 'ขนมจีน', 1, 200, 'Normal'),
(6, 2, 'ข้าวผัดปู', 2, 60, 'Normal'),
(7, 2, 'โอริโอ้คัพเค้ก', 3, 200, 'Normal'),
(8, 2, 'โอริโอ้คัพเค้ก', 3, 200, 'Normal'),
(9, 2, 'ขนมจีน', 1, 200, 'Normal'),
(10, 2, 'ข้าวผัดปู', 2, 60, 'Normal'),
(11, 3, 'ขนมจีน', 1, 200, 'Normal'),
(12, 3, 'โอริโอ้คัพเค้ก', 2, 200, 'Normal'),
(13, 3, 'ขนมจีน', 2, 200, 'Normal'),
(14, 3, 'ข้าวผัดปู', 2, 60, 'Normal'),
(15, 4, 'ขนมจีน', 1, 200, 'Normal'),
(16, 4, 'โอริโอ้คัพเค้ก', 1, 200, 'Normal'),
(17, 5, 'ขนมจีน', 1, 200, 'Normal'),
(18, 5, 'ขนมจีน', 1, 200, 'Normal'),
(19, 5, 'ขนมจีน', 2, 200, 'Normal'),
(20, 5, 'ขนมจีน', 1, 200, 'Normal'),
(21, 7, 'ขนมจีน', 1, 200, 'Normal'),
(22, 7, 'ข้าวผัดปู', 1, 60, 'Normal'),
(23, 8, 'ขนมจีน', 1, 200, 'Normal'),
(24, 8, 'ข้าวผัดปู', 1, 60, 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `received_method`
--

DROP TABLE IF EXISTS `received_method`;
CREATE TABLE IF NOT EXISTS `received_method` (
  `received_method_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `received_method_type` enum('Transfer','Cheque') NOT NULL,
  `received_name` varchar(255) NOT NULL,
  `received_bank_name` varchar(255) DEFAULT NULL,
  `received_bank_branch` varchar(200) DEFAULT NULL,
  `received_account_number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `received_method`
--

TRUNCATE TABLE `received_method`;
-- --------------------------------------------------------

--
-- Table structure for table `responsible_table`
--

DROP TABLE IF EXISTS `responsible_table`;
CREATE TABLE IF NOT EXISTS `responsible_table` (
  `pos_staff_staff_id` int(11) NOT NULL,
  `restaurant_table_table_id` int(10) unsigned NOT NULL,
  `responsible_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `responsible_table`
--

TRUNCATE TABLE `responsible_table`;
-- --------------------------------------------------------

--
-- Table structure for table `restaurant_table`
--

DROP TABLE IF EXISTS `restaurant_table`;
CREATE TABLE IF NOT EXISTS `restaurant_table` (
  `table_id` int(10) unsigned NOT NULL,
  `shop_id` int(10) unsigned NOT NULL,
  `table_name` varchar(150) NOT NULL,
  `table_seat` int(10) unsigned NOT NULL DEFAULT '0',
  `table_description` varchar(255) DEFAULT NULL,
  `table_type` enum('Permanent','Temp') NOT NULL DEFAULT 'Permanent',
  `table_create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `table_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `table_is_active` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `staff_id` int(11) NOT NULL,
  `table_order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `restaurant_table`
--

TRUNCATE TABLE `restaurant_table`;
--
-- Dumping data for table `restaurant_table`
--

INSERT INTO `restaurant_table` (`table_id`, `shop_id`, `table_name`, `table_seat`, `table_description`, `table_type`, `table_create_date`, `table_update_date`, `table_is_active`, `staff_id`, `table_order`) VALUES
(34, 0, 'Table1', 2, '', 'Permanent', '2014-10-12 00:47:00', '2014-10-11 17:47:00', 'YES', 0, 1),
(35, 0, 'Table2', 2, '', 'Permanent', '2014-10-12 00:47:09', '2014-11-25 05:08:21', 'YES', 0, 2),
(36, 0, 'Table3', 4, '', 'Permanent', '2014-10-12 00:47:21', '2014-11-25 05:08:28', 'YES', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `session_order`
--

DROP TABLE IF EXISTS `session_order`;
CREATE TABLE IF NOT EXISTS `session_order` (
  `ses_id` int(11) NOT NULL,
  `ses_data` text NOT NULL,
  `ses_date` datetime NOT NULL,
  `ses_staff_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `session_order`
--

TRUNCATE TABLE `session_order`;
--
-- Dumping data for table `session_order`
--

INSERT INTO `session_order` (`ses_id`, `ses_data`, `ses_date`, `ses_staff_id`) VALUES
(87, '{"order_current":false,"customers_tmp":false,"orders_tmp":false}', '2014-05-11 11:43:23', 2),
(88, '{"order_current":false,"customers_tmp":false,"orders_tmp":false}', '2014-05-11 11:43:26', 1),
(89, '{"order_current":false,"customers_tmp":false,"orders_tmp":false}', '2014-05-11 11:44:07', 1),
(90, '{"order_current":false,"customers_tmp":false,"orders_tmp":false}', '2014-05-31 19:45:21', 1),
(91, '{"order_current":false,"customers_tmp":false,"orders_tmp":false}', '2014-05-31 21:29:41', 1),
(92, '{"order_current":false,"customers_tmp":false,"orders_tmp":false}', '2014-05-31 21:30:28', 1),
(93, '{"order_current":false,"customers_tmp":false,"orders_tmp":false}', '2014-05-31 22:10:17', 1),
(94, '{"order_current":false,"customers_tmp":false,"orders_tmp":false}', '2014-06-01 04:09:58', 1),
(95, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-05 11:07:12', 1),
(96, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-18 02:00:53', 1),
(97, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-18 02:02:35', 2),
(98, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-18 02:04:25', 3),
(99, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-18 02:26:55', 2),
(100, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-18 02:34:28', 2),
(101, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-18 02:34:45', 2),
(102, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-18 03:03:59', 2),
(103, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-18 03:12:17', 2),
(104, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-19 02:28:31', 2),
(105, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-19 02:28:52', 2),
(106, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-19 02:30:30', 2),
(107, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-19 02:37:16', 2),
(108, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-19 02:37:39', 2),
(109, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-19 22:05:38', 2),
(110, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-19 22:05:44', 2),
(111, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-19 22:05:53', 2),
(112, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-19 22:08:10', 2),
(113, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-19 22:39:06', 2),
(114, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-19 22:39:23', 2),
(115, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-20 00:10:35', 2),
(116, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-20 00:11:44', 1),
(117, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-20 08:36:35', 1),
(118, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-20 08:52:18', 1),
(119, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-20 08:52:45', 3),
(120, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-21 19:19:52', 2),
(121, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-22 03:10:00', 2),
(122, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-09-22 03:43:06', 2),
(123, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-09-22 03:47:10', 4),
(124, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-09-22 03:49:08', 4),
(125, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-09-25 00:32:47', 4),
(126, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-09-27 00:42:16', 4),
(127, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-09-27 00:45:56', 4),
(128, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-09-27 00:53:45', 4),
(129, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-09-27 00:55:02', 4),
(130, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-09-27 00:57:02', 4),
(131, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-09-27 01:07:19', 4),
(132, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-09-27 01:07:44', 4),
(133, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-09-27 01:08:44', 4),
(134, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-09-27 01:20:53', 4),
(135, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-09-27 01:21:20', 4),
(136, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-09-27 22:01:12', 4),
(137, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-09-28 16:40:40', 4),
(138, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-03 00:17:56', 2),
(139, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}},"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.1":{"num":"2"}}}', '2014-10-03 01:51:13', 4),
(140, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}},"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.1":{"num":"2"}}}', '2014-10-03 02:06:38', 4),
(141, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}},"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.1":{"num":"2"}}}', '2014-10-03 13:39:49', 4),
(142, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}},"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.1":{"num":"2"}}}', '2014-10-03 13:39:56', 4),
(143, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}},"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.1":{"num":"0"}}}', '2014-10-04 14:47:26', 4),
(144, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}},"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.1":{"num":"0"}}}', '2014-10-04 15:42:42', 4),
(145, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}},"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-04 15:52:56', 4),
(146, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 00:19:39', 2),
(147, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 00:24:10', 2),
(148, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 00:26:58', 2),
(149, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 00:32:32', 2),
(150, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 00:33:21', 2),
(151, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 00:53:24', 2),
(152, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 00:56:41', 2),
(153, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 00:57:55', 2),
(154, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 00:58:45', 2),
(155, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 00:59:01', 2),
(156, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:00:28', 2),
(157, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:04:05', 2),
(158, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:04:12', 2),
(159, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:04:40', 2),
(160, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:04:48', 2),
(161, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:05:34', 2),
(162, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:05:38', 2),
(163, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:05:44', 2),
(164, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:07:24', 2),
(165, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:08:06', 2),
(166, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:08:53', 2),
(167, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:09:20', 2),
(168, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:11:03', 2),
(169, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:31:32', 2),
(170, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:35:23', 2),
(171, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:36:02', 2),
(172, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:36:32', 2),
(173, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:37:11', 2),
(174, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:37:41', 2),
(175, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:39:10', 2),
(176, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:39:38', 2),
(177, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:55:23', 2),
(178, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:55:58', 2),
(179, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:56:05', 2),
(180, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-07 01:56:10', 2),
(181, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}},"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-07 01:56:43', 4),
(182, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}},"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":{"nor.14":{"new.1":{"nor_num":{"2":"1"},"all_num":{"1":"1"},"spe_num":{"5":"1"}},"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-07 02:28:19', 4),
(183, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}},"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":{"nor.14":{"new.1":{"nor_num":{"2":"1"},"all_num":{"1":"1"},"spe_num":{"5":"1"}},"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-07 02:29:00', 4),
(184, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}},"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":{"nor.14":{"new.1":{"nor_num":{"2":"1"},"all_num":{"1":"1"},"spe_num":{"5":"1"}},"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-07 02:29:23', 4),
(185, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"}}}', '2014-10-08 12:58:46', 2),
(186, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":false,"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.2":{"num":"2"},"nor.1":{"num":"1"}}}', '2014-10-09 00:12:37', 2),
(187, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":{"nor.14":{"new.1":{"nor_num":false,"all_num":{"1":"2"},"spe_num":{"5":"2"}},"mnid_in_buffet":{"spe":{"1":"5"},"all":{"1":"1","2":"1"}}}},"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.2":{"num":"2"},"nor.1":{"num":"1"}}}', '2014-10-09 01:14:05', 2),
(188, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-09 01:26:16', 4),
(189, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-09 08:25:25', 4),
(190, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":{"nor.14":{"new.1":{"nor_num":false,"all_num":{"1":"2"},"spe_num":{"5":"2"}},"mnid_in_buffet":{"spe":{"1":"5"},"all":{"1":"1","2":"1"}}}},"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.2":{"num":"2"},"nor.1":{"num":"1"}}}', '2014-10-12 00:48:20', 2),
(191, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-10-12 18:46:24', 1),
(192, '{"order_current":false,"customers_tmp":false,"orders_tmp":false,"shairs_num_tmp":false}', '2014-10-12 18:46:37', 1),
(193, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-25 19:01:24', 4),
(194, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-25 19:29:06', 4),
(195, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 01:29:37', 4),
(196, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 01:52:18', 4),
(197, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":{"nor.14":{"new.1":{"nor_num":false,"all_num":{"1":"2"},"spe_num":{"5":"2"}},"mnid_in_buffet":{"spe":{"1":"5"},"all":{"1":"1","2":"1"}}}},"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.2":{"num":"2"},"nor.1":{"num":"1"}}}', '2014-10-26 16:17:48', 2),
(198, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":{"nor.14":{"new.1":{"nor_num":false,"all_num":{"1":"2"},"spe_num":{"5":"2"}},"mnid_in_buffet":{"spe":{"1":"5"},"all":{"1":"1","2":"1"}}}},"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.2":{"num":"2"},"nor.1":{"num":"1"}}}', '2014-10-26 16:19:48', 2),
(199, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 16:20:39', 4),
(200, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 16:35:09', 4),
(201, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 16:54:31', 4),
(202, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 16:58:15', 4),
(203, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 17:05:06', 4),
(204, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 17:05:20', 4),
(205, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 18:40:56', 4),
(206, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 18:44:33', 4),
(207, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 19:00:56', 4),
(208, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 19:05:10', 4),
(209, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 19:51:49', 4),
(210, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 20:37:33', 4),
(211, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 22:06:08', 4),
(212, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 22:26:03', 4),
(213, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 22:52:15', 4),
(214, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-26 22:54:36', 4),
(215, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-27 00:39:38', 4),
(216, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-27 01:28:25', 4),
(217, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-27 18:52:50', 4),
(218, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}}},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-10-27 18:53:01', 4),
(219, '{"order_current":false,"customers_tmp":{"nor.14":{"new.1":{"customer_name":"C1"}}},"orders_tmp":{"nor.14":{"new.1":{"nor_num":false,"all_num":{"1":"2"},"spe_num":{"5":"2"}},"mnid_in_buffet":{"spe":{"1":"5"},"all":{"1":"1","2":"1"}}}},"shairs_num_tmp":{"nor.14":{"num":"2"},"nor.2":{"num":"2"},"nor.1":{"num":"1"}}}', '2014-10-29 02:56:15', 2),
(220, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":null},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-02 04:07:09', 4),
(221, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":null},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-02 05:42:59', 4),
(222, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":null},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-02 18:47:26', 1),
(223, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":null},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-02 18:52:00', 1),
(224, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":null},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-03 12:14:44', 1),
(225, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":null},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-03 12:15:09', 1),
(226, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":null},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-03 12:16:50', 1),
(227, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":null},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-03 12:17:51', 1),
(228, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":null},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-03 12:23:18', 1),
(229, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":null},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-03 12:30:01', 1),
(230, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":null},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-03 12:35:58', 1),
(231, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":null},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-03 12:36:40', 1),
(232, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":null},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-03 12:36:50', 1),
(233, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":null},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-03 12:40:56', 1),
(234, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":null},"orders_tmp":[],"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-03 14:46:14', 1),
(235, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":{"new.1":[]}},"orders_tmp":{"nor.35":{"new.1":{"nor_num":{"1":"1"},"all_num":false,"spe_num":false}}},"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-04 00:27:04', 1),
(236, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":{"new.1":[]}},"orders_tmp":{"nor.35":{"new.1":{"nor_num":{"1":"1"},"all_num":false,"spe_num":false}}},"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-04 00:29:10', 1),
(237, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":{"new.1":[]}},"orders_tmp":{"nor.35":{"new.1":{"nor_num":{"1":"1"},"all_num":false,"spe_num":false}}},"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-19 16:40:59', 1),
(238, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":{"new.1":[]}},"orders_tmp":{"nor.35":{"new.1":{"nor_num":{"1":"1"},"all_num":false,"spe_num":false}}},"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-19 17:22:33', 1),
(239, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":{"new.1":[]}},"orders_tmp":{"nor.35":{"new.1":{"nor_num":{"1":"1"},"all_num":false,"spe_num":false}}},"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-19 18:08:56', 1),
(240, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":{"new.1":[]}},"orders_tmp":{"nor.35":{"new.1":{"nor_num":{"1":"1"},"all_num":false,"spe_num":false}}},"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"}}}', '2014-11-19 18:09:13', 1),
(241, '{"order_current":{"nor.14":{"sit_time":"01:19","real_price":582,"mnid_in_buffet":{"all":{"1":"1","2":"1"},"spe":{"1":"5"}}},"nor.35":{"mnid_in_buffet":{"all":{"1":"4","2":"4"}},"new.1":{"all_can_num":{"4":2,"1":1},"all_can_detail_id":{"4":413,"1":416}}}},"customers_tmp":{"nor.14":[],"nor.1":{"new.1":{"customer_name":"C1"}},"nor.2":{"new.1":{"customer_name":"C1"}},"tmp.24":{"new.1":{"customer_name":"C1"}},"nor.35":{"new.1":[]}},"orders_tmp":{"nor.35":{"new.1":{"nor_num":{"1":"1"},"all_num":false,"spe_num":false}}},"shairs_num_tmp":{"nor.14":{"num":"0"},"nor.1":{"num":"0"},"nor.2":{"num":"0"},"nor.35":{"num":"2"}}}', '2014-11-20 10:58:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_address`
--

DROP TABLE IF EXISTS `shipping_address`;
CREATE TABLE IF NOT EXISTS `shipping_address` (
  `shipping_id` int(10) unsigned NOT NULL,
  `shipping_contact_person` varchar(200) NOT NULL,
  `shipping_address1` varchar(250) NOT NULL,
  `shipping_address2` varchar(250) DEFAULT NULL,
  `shipping_city` varchar(100) NOT NULL,
  `shipping_province` varchar(200) NOT NULL,
  `shipping_email` varchar(255) NOT NULL,
  `shipping_contact_phone` varchar(45) NOT NULL,
  `shipping_fax` varchar(45) DEFAULT NULL,
  `member_id` int(10) unsigned DEFAULT NULL,
  `shipping_create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_update_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `shipping_address`
--

TRUNCATE TABLE `shipping_address`;
-- --------------------------------------------------------

--
-- Table structure for table `shop_products`
--

DROP TABLE IF EXISTS `shop_products`;
CREATE TABLE IF NOT EXISTS `shop_products` (
  `shop_product_id` int(10) unsigned NOT NULL,
  `shop_id` int(11) NOT NULL,
  `products_id` int(10) unsigned NOT NULL,
  `shop_product_serial_key` varchar(100) NOT NULL,
  `rental_status` enum('Wait','Active','Cancel','Expire','Hold') NOT NULL DEFAULT 'Wait',
  `create_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `expire_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `shop_products`
--

TRUNCATE TABLE `shop_products`;
--
-- Dumping data for table `shop_products`
--

INSERT INTO `shop_products` (`shop_product_id`, `shop_id`, `products_id`, `shop_product_serial_key`, `rental_status`, `create_date`, `update_date`, `expire_date`) VALUES
(1, 1, 1, '123456789', 'Active', '2015-02-23 17:00:00', '2015-02-23 17:00:00', '2015-03-30 17:00:00'),
(2, 1, 2, '123456789', 'Active', '2015-02-23 17:00:00', '2015-02-23 17:00:00', '2015-03-30 17:00:00'),
(3, 1, 3, '123456789', 'Active', '2015-02-23 17:00:00', '2015-02-23 17:00:00', '2015-03-30 17:00:00'),
(4, 2, 1, '12345678', 'Active', '2015-02-23 17:00:00', '2015-02-23 17:00:00', '0000-00-00 00:00:00'),
(5, 2, 2, '123456789', 'Wait', '2015-02-23 17:00:00', '2015-02-23 17:00:00', '0000-00-00 00:00:00'),
(6, 1, 1, '2345678946', 'Wait', '2015-02-23 17:00:00', '2015-02-23 17:00:00', '2015-03-27 17:00:00'),
(7, 2, 1, '123456789', 'Wait', '2015-02-23 17:00:00', '2015-02-23 17:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `shop_profile`
--

DROP TABLE IF EXISTS `shop_profile`;
CREATE TABLE IF NOT EXISTS `shop_profile` (
  `shop_id` int(10) unsigned NOT NULL COMMENT 'Location ID',
  `shop_name` varchar(250) NOT NULL COMMENT 'Location Name',
  `shop_logo` varchar(250) NOT NULL DEFAULT 'default_logo.png' COMMENT 'Logo',
  `shop_address` text COMMENT 'Address',
  `city_id` int(10) unsigned DEFAULT NULL COMMENT 'City',
  `province_id` int(10) unsigned DEFAULT NULL COMMENT 'Province',
  `country_id` int(10) unsigned DEFAULT NULL COMMENT 'Country',
  `shop_tel` varchar(100) DEFAULT NULL COMMENT 'Telephone',
  `shop_fax` varchar(100) DEFAULT NULL COMMENT 'Fax.',
  `shop_email` varchar(250) NOT NULL COMMENT 'E-Mail',
  `shop_website` varchar(250) DEFAULT NULL COMMENT 'Website',
  `shop_description` text COMMENT 'About Us',
  `shop_default_map` enum('Image','Google Map') NOT NULL DEFAULT 'Google Map' COMMENT 'Default Map',
  `shop_map` varchar(250) DEFAULT NULL COMMENT 'Map',
  `shop_google_map` varchar(250) DEFAULT NULL COMMENT 'Google Map',
  `shop_cfg_opentime` time DEFAULT NULL COMMENT 'Open Time',
  `shop_cfg_closetime` time DEFAULT NULL COMMENT 'Close Time',
  `shop_opt_capacity` text COMMENT 'Capacity',
  `shop_opt_creditcard` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Have Credit Card?',
  `shop_opt_creditcard_desc` varchar(500) DEFAULT NULL COMMENT 'Credit Card Description',
  `shop_opt_access` text COMMENT 'How to access?',
  `shop_opt_parking` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Have parking lot?',
  `shop_opt_private` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Have private room?',
  `shop_opt_reservation` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Can make a reservation?',
  `shop_opt_smoking` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Have smoking area?',
  `shop_cfg_timezone` varchar(3) NOT NULL DEFAULT '+0' COMMENT 'Timezone',
  `shop_cfg_default_language` varchar(3) NOT NULL DEFAULT 'en' COMMENT 'Default Language',
  `shop_cfg_datetime_format` varchar(50) NOT NULL DEFAULT 'm/d/Y h:i:s A' COMMENT 'Date/Time Format',
  `shop_cfg_currency` varchar(10) NOT NULL DEFAULT '&yen;' COMMENT 'Currency Sign',
  `shop_cfg_daily_closebook` enum('Manual','Set') NOT NULL DEFAULT 'Set' COMMENT 'Daily closed book time',
  `shop_cfg_daily_close_book_time` time DEFAULT NULL COMMENT 'Closed book time',
  `shop_create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Create Date',
  `shop_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update on',
  `shop_status` enum('Active','Inactive','Delete') NOT NULL DEFAULT 'Inactive' COMMENT 'Location Status',
  `creator_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `shop_profile`
--

TRUNCATE TABLE `shop_profile`;
--
-- Dumping data for table `shop_profile`
--

INSERT INTO `shop_profile` (`shop_id`, `shop_name`, `shop_logo`, `shop_address`, `city_id`, `province_id`, `country_id`, `shop_tel`, `shop_fax`, `shop_email`, `shop_website`, `shop_description`, `shop_default_map`, `shop_map`, `shop_google_map`, `shop_cfg_opentime`, `shop_cfg_closetime`, `shop_opt_capacity`, `shop_opt_creditcard`, `shop_opt_creditcard_desc`, `shop_opt_access`, `shop_opt_parking`, `shop_opt_private`, `shop_opt_reservation`, `shop_opt_smoking`, `shop_cfg_timezone`, `shop_cfg_default_language`, `shop_cfg_datetime_format`, `shop_cfg_currency`, `shop_cfg_daily_closebook`, `shop_cfg_daily_close_book_time`, `shop_create_date`, `shop_update_date`, `shop_status`, `creator_id`) VALUES
(1, 'Shop01', 'default_logo.png', '111/135 ', 5, 3, 4, '0898778767', '029873898', 'worrakris@gmail.com', NULL, NULL, 'Google Map', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, '+0', 'en', 'm/d/Y h:i:s A', '&yen;', 'Set', NULL, '0000-00-00 00:00:00', '2015-02-23 14:45:18', 'Active', 2),
(2, 'Shop02', 'default_logo.png', '111/135 ', 5, 3, 4, '0898778767', '029873898', 'worrakris@gmail.com', NULL, NULL, 'Google Map', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, '+0', 'en', 'm/d/Y h:i:s A', '&yen;', 'Set', NULL, '0000-00-00 00:00:00', '2015-02-23 14:45:18', 'Active', 2);

-- --------------------------------------------------------

--
-- Table structure for table `shop_profile_old`
--

DROP TABLE IF EXISTS `shop_profile_old`;
CREATE TABLE IF NOT EXISTS `shop_profile_old` (
  `shop_id` int(10) unsigned NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `shop_pic` text NOT NULL,
  `shop_address` text NOT NULL,
  `shop_phone` varchar(255) NOT NULL,
  `shop_fax` varchar(255) NOT NULL,
  `shop_email` varchar(255) NOT NULL,
  `shop_url` varchar(255) NOT NULL,
  `shop_open` int(2) NOT NULL,
  `shop_openhr` int(2) NOT NULL,
  `shop_holiday` varchar(100) NOT NULL,
  `shop_hta` text NOT NULL,
  `shop_cc` enum('true','false') NOT NULL DEFAULT 'false',
  `shop_cc_detail` text NOT NULL,
  `shop_capacity` varchar(100) NOT NULL,
  `shop_avgbudget` varchar(100) NOT NULL,
  `shop_parking` varchar(100) NOT NULL,
  `shop_privateroom` varchar(10) NOT NULL,
  `shop_amusement` enum('true','false') NOT NULL DEFAULT 'false',
  `shop_about` text NOT NULL,
  `shop_map_pic` varchar(255) DEFAULT NULL,
  `shop_timezone` varchar(10) NOT NULL,
  `shop_lat` varchar(50) DEFAULT NULL,
  `shop_lng` varchar(50) DEFAULT NULL,
  `shop_currentmap` enum('Picture','Google','None') NOT NULL DEFAULT 'None',
  `province_id` int(11) unsigned NOT NULL,
  `city_id` int(11) unsigned NOT NULL,
  `country_id` int(11) unsigned NOT NULL,
  `shop_type` varchar(100) NOT NULL,
  `shop_canreservation` enum('true','false') NOT NULL DEFAULT 'false',
  `shop_officialleague` enum('true','false') NOT NULL DEFAULT 'false',
  `shop_smokingarea` enum('true','false') NOT NULL DEFAULT 'false',
  `shop_create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shop_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `shop_profile_old`
--

TRUNCATE TABLE `shop_profile_old`;
--
-- Dumping data for table `shop_profile_old`
--

INSERT INTO `shop_profile_old` (`shop_id`, `shop_name`, `shop_pic`, `shop_address`, `shop_phone`, `shop_fax`, `shop_email`, `shop_url`, `shop_open`, `shop_openhr`, `shop_holiday`, `shop_hta`, `shop_cc`, `shop_cc_detail`, `shop_capacity`, `shop_avgbudget`, `shop_parking`, `shop_privateroom`, `shop_amusement`, `shop_about`, `shop_map_pic`, `shop_timezone`, `shop_lat`, `shop_lng`, `shop_currentmap`, `province_id`, `city_id`, `country_id`, `shop_type`, `shop_canreservation`, `shop_officialleague`, `shop_smokingarea`, `shop_create_date`, `shop_update_date`) VALUES
(1, 'ER restaurant', '', '111/2 Suanling, Kratumbean\r\nSamutsakhon 334574', '+66 4338457', '+66 345834587', 'er@er.com', 'http://www.erres.com', 8, 8, '', '', 'false', '', '', '', '', '', 'false', '', NULL, '', NULL, NULL, 'None', 0, 0, 0, '', 'false', 'false', 'false', '0000-00-00 00:00:00', '2014-11-01 20:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `special_menu`
--

DROP TABLE IF EXISTS `special_menu`;
CREATE TABLE IF NOT EXISTS `special_menu` (
  `special_menu_id` int(10) unsigned NOT NULL,
  `special_menu_name_local` varchar(255) NOT NULL,
  `special_menu_name_en` varchar(255) DEFAULT NULL,
  `special_menu_cost` float NOT NULL DEFAULT '0',
  `special_menu_sale_price` float NOT NULL DEFAULT '0',
  `special_menu_available` varchar(10) NOT NULL DEFAULT '1111111',
  `special_menu_available_time_start` varchar(10) NOT NULL,
  `special_menu_available_time_end` varchar(10) NOT NULL,
  `special_menu_is_active` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `special_menu_create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `special_menu_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `special_menu_order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `special_menu`
--

TRUNCATE TABLE `special_menu`;
--
-- Dumping data for table `special_menu`
--

INSERT INTO `special_menu` (`special_menu_id`, `special_menu_name_local`, `special_menu_name_en`, `special_menu_cost`, `special_menu_sale_price`, `special_menu_available`, `special_menu_available_time_start`, `special_menu_available_time_end`, `special_menu_is_active`, `special_menu_create_date`, `special_menu_update_date`, `special_menu_order`) VALUES
(6, 'Dinning Set', 'Dinning Set', 2000, 2500, 'Tue,Thu,Sa', '11:00 AM', '12:00 PM', 'YES', '2014-11-25 12:02:01', '2014-11-25 05:02:01', 1),
(7, 'Udon Set', 'Udon Set', 2300, 2700, 'Mon,Tue,We', '12:00 PM', '02:00 PM', 'YES', '2014-11-25 12:04:03', '2014-11-25 05:04:03', 2);

-- --------------------------------------------------------

--
-- Table structure for table `special_menu_include`
--

DROP TABLE IF EXISTS `special_menu_include`;
CREATE TABLE IF NOT EXISTS `special_menu_include` (
  `special_menu_id` int(10) unsigned NOT NULL,
  `normal_menu_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `special_menu_include`
--

TRUNCATE TABLE `special_menu_include`;
--
-- Dumping data for table `special_menu_include`
--

INSERT INTO `special_menu_include` (`special_menu_id`, `normal_menu_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(4, 2),
(5, 1),
(6, 5),
(6, 16),
(7, 8),
(7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

DROP TABLE IF EXISTS `sub_menu`;
CREATE TABLE IF NOT EXISTS `sub_menu` (
  `sub_id` int(10) unsigned NOT NULL,
  `sub_name_local` varchar(255) NOT NULL,
  `sub_name_en` varchar(255) DEFAULT NULL,
  `sub_add_cost` float unsigned NOT NULL DEFAULT '0',
  `sub_add_sale_price` float unsigned NOT NULL DEFAULT '0',
  `sub_max_choose` int(10) unsigned NOT NULL DEFAULT '0',
  `sub_create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sub_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sub_order` int(11) NOT NULL,
  `normal_menu_mnu_id` int(10) unsigned NOT NULL,
  `sub_is_active` enum('YES','NO') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `sub_menu`
--

TRUNCATE TABLE `sub_menu`;
--
-- Dumping data for table `sub_menu`
--

INSERT INTO `sub_menu` (`sub_id`, `sub_name_local`, `sub_name_en`, `sub_add_cost`, `sub_add_sale_price`, `sub_max_choose`, `sub_create_date`, `sub_update_date`, `sub_order`, `normal_menu_mnu_id`, `sub_is_active`) VALUES
(3, 'How it''s DONE', 'How it''s DONE', 0, 0, 1, '2014-11-25 10:50:09', '2014-11-25 03:51:08', 1, 5, 'YES'),
(4, 'Side Dishes', 'Side Dishes', 0, 0, 1, '2014-11-25 10:55:00', '2014-11-25 03:55:25', 1, 5, 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu_choice`
--

DROP TABLE IF EXISTS `sub_menu_choice`;
CREATE TABLE IF NOT EXISTS `sub_menu_choice` (
  `sub_mnu_ch_id` int(10) unsigned NOT NULL,
  `sub_mnu_ch_name_local` varchar(255) DEFAULT NULL,
  `sub_mnu_ch_en` varchar(255) DEFAULT NULL,
  `sub_id` int(10) unsigned NOT NULL,
  `sub_menu_ch_default` enum('YES','NO') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `sub_menu_choice`
--

TRUNCATE TABLE `sub_menu_choice`;
--
-- Dumping data for table `sub_menu_choice`
--

INSERT INTO `sub_menu_choice` (`sub_mnu_ch_id`, `sub_mnu_ch_name_local`, `sub_mnu_ch_en`, `sub_id`, `sub_menu_ch_default`) VALUES
(40, 'Rare', 'Rare', 3, 'NO'),
(41, 'Medium Rare', 'Medium Rare', 3, 'YES'),
(42, 'Medium Well', 'Medium Well', 3, 'NO'),
(43, 'Well Done', 'Well Done', 3, 'NO'),
(44, 'Salad', 'Salad', 4, 'YES'),
(45, 'Fried Potato', 'Fried Potato', 4, 'NO'),
(46, 'Mash Potato', 'Mash Potato', 4, 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `take_a_seat`
--

DROP TABLE IF EXISTS `take_a_seat`;
CREATE TABLE IF NOT EXISTS `take_a_seat` (
  `take_seat_id` int(10) unsigned NOT NULL,
  `table_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `take_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `take_table_status` enum('Open','Close') NOT NULL DEFAULT 'Open'
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `take_a_seat`
--

TRUNCATE TABLE `take_a_seat`;
--
-- Dumping data for table `take_a_seat`
--

INSERT INTO `take_a_seat` (`take_seat_id`, `table_id`, `customer_id`, `take_datetime`, `take_table_status`) VALUES
(63, 1, 3, '2014-04-29 10:44:36', 'Open'),
(64, 1, 71, '2014-04-29 10:47:38', 'Open'),
(65, 35, 72, '2014-04-29 12:22:38', 'Open'),
(66, 1, 73, '2014-04-29 18:33:10', 'Open'),
(67, 1, 74, '2014-04-29 19:34:39', 'Open'),
(68, 1, 75, '2014-05-06 19:46:35', 'Open'),
(69, 1, 76, '2014-05-06 20:45:09', 'Open'),
(70, 1, 77, '2014-05-06 21:01:23', 'Open'),
(71, 1, 78, '2014-05-06 21:07:57', 'Open'),
(72, 1, 79, '2014-05-06 21:07:57', 'Open'),
(73, 1, 80, '2014-05-06 21:19:19', 'Open'),
(74, 1, 81, '2014-05-06 21:19:19', 'Open'),
(75, 1, 82, '2014-05-11 06:39:33', 'Open'),
(76, 1, 83, '2014-05-11 07:09:53', 'Open'),
(77, 1, 84, '2014-05-11 09:44:05', 'Open'),
(78, 1, 85, '2014-05-11 09:54:32', 'Open'),
(79, 1, 86, '2014-05-11 11:48:12', 'Open'),
(80, 1, 87, '2014-05-11 11:56:35', 'Open'),
(81, 14, 88, '2014-10-09 01:19:12', 'Open'),
(82, 14, 89, '2014-10-09 09:45:05', 'Open'),
(83, 34, 89, '2015-01-06 22:28:03', 'Open');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admins`
--

DROP TABLE IF EXISTS `tbl_admins`;
CREATE TABLE IF NOT EXISTS `tbl_admins` (
  `adm_id` int(11) NOT NULL,
  `adm_username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adm_password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adm_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adm_login` datetime DEFAULT NULL,
  `adm_level` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adm_status` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adm_createdon` datetime DEFAULT NULL,
  `adm_modifiedon` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Truncate table before insert `tbl_admins`
--

TRUNCATE TABLE `tbl_admins`;
--
-- Dumping data for table `tbl_admins`
--

INSERT INTO `tbl_admins` (`adm_id`, `adm_username`, `adm_password`, `adm_title`, `adm_login`, `adm_level`, `adm_status`, `adm_createdon`, `adm_modifiedon`) VALUES
(2, 'admin', 'b59c67bf196a4758191e42f76670ceba', NULL, NULL, '0', '0', NULL, NULL),
(20, 'IA_Admin', 'b59c67bf196a4758191e42f76670ceba', NULL, NULL, '1', '1', '2013-01-24 18:56:10', '2013-01-25 05:07:10'),
(18, 'AG_Admin', 'b59c67bf196a4758191e42f76670ceba', NULL, NULL, '2', '1', '2013-01-24 18:55:36', '2013-01-25 05:07:16'),
(19, 'DA_Admin', 'b59c67bf196a4758191e42f76670ceba', NULL, NULL, '3', '1', '2013-01-24 18:55:55', '2013-01-25 05:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_app_code`
--

DROP TABLE IF EXISTS `tbl_app_code`;
CREATE TABLE IF NOT EXISTS `tbl_app_code` (
  `app_code` varchar(5) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `product_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_app_code`
--

TRUNCATE TABLE `tbl_app_code`;
--
-- Dumping data for table `tbl_app_code`
--

INSERT INTO `tbl_app_code` (`app_code`, `app_name`, `product_id`) VALUES
('POS', 'M-Restaurant', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bn_banner`
--

DROP TABLE IF EXISTS `tbl_bn_banner`;
CREATE TABLE IF NOT EXISTS `tbl_bn_banner` (
  `banner_id` int(10) unsigned NOT NULL,
  `banner_caption_en` varchar(250) NOT NULL,
  `banner_caption_local` varchar(250) NOT NULL,
  `banner_detail_en` text,
  `banner_detail_local` text,
  `banner_image` varchar(250) NOT NULL,
  `banner_link` varchar(250) DEFAULT NULL,
  `banner_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `banner_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_bn_banner`
--

TRUNCATE TABLE `tbl_bn_banner`;
--
-- Dumping data for table `tbl_bn_banner`
--

INSERT INTO `tbl_bn_banner` (`banner_id`, `banner_caption_en`, `banner_caption_local`, `banner_detail_en`, `banner_detail_local`, `banner_image`, `banner_link`, `banner_update_date`, `banner_status`) VALUES
(1, 'Testing Banner #1', 'ทดสอบการแสดงแบนเนอร์ #1', 'This detail show for testing banner function because we need to show the information on the image.', 'ข้อความนี้แสดงขึ้นเพื่อใช้ในการทดสอบการแสดงผล Banner ซึ่งจะถูกจัดวางไว้ด้านบนของรูปภาพ', 'banner.jpg', 'http://www.medalistworld.com', '2014-12-14 09:27:40', 'Active'),
(2, 'Testing Banner #2', 'ทดสอบการแสดงแบนเนอร์ #2', 'This detail show for testing banner function because we need to show the information on the image.', 'ข้อความนี้แสดงขึ้นเพื่อใช้ในการทดสอบการแสดงผล Banner ซึ่งจะถูกจัดวางไว้ด้านบนของรูปภาพ', 'banner.jpg', 'http://www.medalistworld.com', '2014-12-14 09:28:01', 'Active'),
(3, 'Testing Banner #3', 'ทดสอบการแสดงแบนเนอร์ #3', 'This detail show for testing banner function because we need to show the information on the image.', 'ข้อความนี้แสดงขึ้นเพื่อใช้ในการทดสอบการแสดงผล Banner ซึ่งจะถูกจัดวางไว้ด้านบนของรูปภาพ', 'banner.jpg', 'http://www.medalistworld.com', '2014-12-14 09:28:11', 'Active'),
(4, 'Testing Banner #4', 'ทดสอบการแสดงแบนเนอร์ #4', 'This detail show for testing banner function because we need to show the information on the image.', 'ข้อความนี้แสดงขึ้นเพื่อใช้ในการทดสอบการแสดงผล Banner ซึ่งจะถูกจัดวางไว้ด้านบนของรูปภาพ', 'banner.jpg', 'http://www.medalistworld.com', '2014-12-14 09:28:19', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bn_news`
--

DROP TABLE IF EXISTS `tbl_bn_news`;
CREATE TABLE IF NOT EXISTS `tbl_bn_news` (
  `news_id` int(10) unsigned NOT NULL,
  `news_title_local` varchar(250) NOT NULL,
  `news_title_en` varchar(250) NOT NULL,
  `news_content_local` text NOT NULL,
  `news_content_en` text NOT NULL,
  `news_picture` varchar(250) NOT NULL,
  `news_create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `news_expire_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `news_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `news_status` enum('Active','Inactive','Deleted') NOT NULL DEFAULT 'Active',
  `news_creator` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_bn_news`
--

TRUNCATE TABLE `tbl_bn_news`;
--
-- Dumping data for table `tbl_bn_news`
--

INSERT INTO `tbl_bn_news` (`news_id`, `news_title_local`, `news_title_en`, `news_content_local`, `news_content_en`, `news_picture`, `news_create_date`, `news_expire_date`, `news_update_date`, `news_status`, `news_creator`) VALUES
(1, 'ข่าวประกาศที่ 1', 'First News Announcement', 'ทดสอบการแสดงข้อมูลของข่าว โดยใน่เนื้อหานเป็จสาหกดาไร สาาหก สหากม ส วหาา รำาด ทฟห าาหกาเด สสกพเนำนม วกาเกาดเท สกดทมเ าสพา าหส ากส า', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_new.png', '2014-06-01 06:19:00', '2015-07-30 17:00:00', '2014-12-15 15:50:30', 'Active', 1),
(2, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_new.png', '2014-06-02 06:19:00', '2015-06-29 17:00:00', '2014-11-20 05:10:19', 'Active', 1),
(3, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_new.png', '2014-06-03 06:19:00', '2015-05-30 17:00:00', '2014-11-20 05:10:35', 'Active', 1),
(4, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_new.png', '2014-06-04 06:19:00', '2015-07-30 17:00:00', '2014-11-20 05:10:39', 'Active', 1),
(5, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_new.png', '2014-06-24 06:19:00', '2015-03-27 17:00:00', '2014-12-15 15:54:05', 'Active', 1),
(6, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_new.png', '2014-06-20 06:19:00', '2014-07-30 17:00:00', '2014-06-30 06:28:17', 'Active', 1),
(7, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_new.png', '2014-06-21 06:19:00', '2014-07-30 17:00:00', '2014-06-30 06:28:17', 'Active', 1),
(8, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_new.png', '2014-06-22 06:19:00', '2014-07-30 17:00:00', '2014-06-30 06:28:17', 'Active', 1),
(9, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_new.png', '2014-06-23 06:19:00', '2014-07-30 17:00:00', '2014-06-30 06:28:17', 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bn_promotions`
--

DROP TABLE IF EXISTS `tbl_bn_promotions`;
CREATE TABLE IF NOT EXISTS `tbl_bn_promotions` (
  `promotion_id` int(10) unsigned NOT NULL,
  `promotion_title_local` varchar(250) NOT NULL,
  `promotion_title_en` varchar(250) NOT NULL,
  `promotion_content_local` text NOT NULL,
  `promotion_content_en` text NOT NULL,
  `promotion_picture` varchar(250) NOT NULL,
  `promotion_create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `promotion_start_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `promotion_expire_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `promotion_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `promotion_status` enum('Active','Inactive','Expired','Deleted') NOT NULL DEFAULT 'Active',
  `promotion_creator` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_bn_promotions`
--

TRUNCATE TABLE `tbl_bn_promotions`;
--
-- Dumping data for table `tbl_bn_promotions`
--

INSERT INTO `tbl_bn_promotions` (`promotion_id`, `promotion_title_local`, `promotion_title_en`, `promotion_content_local`, `promotion_content_en`, `promotion_picture`, `promotion_create_date`, `promotion_start_date`, `promotion_expire_date`, `promotion_update_date`, `promotion_status`, `promotion_creator`) VALUES
(1, 'ทำการทดสอบการแสดงในส่วนของ Promotion ในหน้าแรก', 'Testing for showing promotion in the first page', 'ทดสอบการแสดง Promotion', 'Promotion show testing', 'pic_promotion.png', '2014-05-31 17:00:00', '2014-06-04 17:00:00', '2015-06-30 16:59:59', '2014-12-17 05:47:39', 'Active', 1),
(2, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_promotion.png', '2014-05-31 17:00:00', '2014-06-04 17:00:00', '2015-06-30 16:59:59', '2014-06-30 09:05:46', 'Active', 1),
(3, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_promotion.png', '2014-05-31 17:00:00', '2014-06-04 17:00:00', '2015-06-30 16:59:59', '2014-06-30 09:05:46', 'Active', 1),
(4, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_promotion.png', '2014-05-31 17:00:00', '2014-06-04 17:00:00', '2015-06-30 16:59:59', '2014-06-30 09:05:46', 'Active', 1),
(5, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_promotion.png', '2014-05-31 17:00:00', '2014-06-04 17:00:00', '2015-06-30 16:59:59', '2014-06-30 09:05:46', 'Active', 1),
(6, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_promotion.png', '2014-05-31 17:00:00', '2014-06-04 17:00:00', '2015-06-30 16:59:59', '2014-06-30 09:05:46', 'Active', 1),
(7, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_promotion.png', '2014-05-31 17:00:00', '2014-06-04 17:00:00', '2015-06-30 16:59:59', '2014-06-30 09:05:46', 'Active', 1),
(8, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_promotion.png', '2014-05-31 17:00:00', '2014-06-04 17:00:00', '2015-06-30 16:59:59', '2014-06-30 09:05:46', 'Active', 1),
(9, '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', '2013 TOYOTA, COROLLA ALTIS 1.8 E โฉม altis หน้าแบน ปี08-13', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'Multi-item Slider or miSlider is an open-source jQuery slider plugin specifically designed for displaying multiple images or slides of content. The slider can be configured to display one slide at a time, as many slides as possible or anything in between.', 'pic_promotion.png', '2014-05-31 17:00:00', '2014-06-04 17:00:00', '2015-06-30 16:59:59', '2014-06-30 09:05:46', 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bn_subscription`
--

DROP TABLE IF EXISTS `tbl_bn_subscription`;
CREATE TABLE IF NOT EXISTS `tbl_bn_subscription` (
  `scb_email` varchar(250) NOT NULL,
  `scb_name` varchar(250) NOT NULL,
  `scb_status` enum('Active','Cancel') NOT NULL DEFAULT 'Active',
  `scb_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_bn_subscription`
--

TRUNCATE TABLE `tbl_bn_subscription`;
--
-- Dumping data for table `tbl_bn_subscription`
--

INSERT INTO `tbl_bn_subscription` (`scb_email`, `scb_name`, `scb_status`, `scb_update`) VALUES
('fasdfasdfasdf@ddd.dd.dd', 'asfasdf', 'Active', '2014-12-25 03:36:08'),
('fsdf@s.s', 'sdf', 'Active', '0000-00-00 00:00:00'),
('sdfasdf@s.m', 'sadfsadf', 'Active', '0000-00-00 00:00:00'),
('worrakris@gmail.com', 'Worrakris Boonchan', 'Active', '2014-12-24 09:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_daily_work_hour`
--

DROP TABLE IF EXISTS `tbl_daily_work_hour`;
CREATE TABLE IF NOT EXISTS `tbl_daily_work_hour` (
  `work_id` varchar(16) NOT NULL,
  `staff_id` int(10) unsigned NOT NULL,
  `s_plan_id` int(10) unsigned NOT NULL,
  `check_in_date` datetime NOT NULL,
  `start_break_date` datetime NOT NULL,
  `stop_break_date` datetime NOT NULL,
  `check_out_date` datetime NOT NULL,
  `day_type` enum('Normal','Holiday') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_daily_work_hour`
--

TRUNCATE TABLE `tbl_daily_work_hour`;
--
-- Dumping data for table `tbl_daily_work_hour`
--

INSERT INTO `tbl_daily_work_hour` (`work_id`, `staff_id`, `s_plan_id`, `check_in_date`, `start_break_date`, `stop_break_date`, `check_out_date`, `day_type`) VALUES
('2014060600000001', 1, 9, '2014-06-06 08:50:00', '2014-06-01 10:23:57', '2014-06-01 10:53:58', '2014-06-01 21:43:42', 'Normal'),
('2014060600000002', 2, 10, '2014-06-01 08:00:00', '2014-06-01 10:23:57', '2014-06-01 10:53:58', '2014-06-01 21:43:42', 'Normal'),
('2014060700000001', 1, 9, '2014-07-01 08:00:00', '2014-07-01 10:23:57', '2014-07-01 10:53:58', '2014-07-01 21:43:42', 'Holiday'),
('2014060900000001', 1, 10, '2014-07-01 07:00:00', '2014-07-01 11:00:57', '2014-07-01 12:23:57', '2014-07-01 18:03:42', 'Normal'),
('2014092200000002', 2, 15, '2014-09-22 02:55:11', '2014-09-22 03:26:48', '2014-09-22 03:26:51', '2014-09-22 03:09:55', 'Normal'),
('2014092200000004', 4, 12, '2014-09-22 03:43:22', '2014-09-27 21:54:10', '2014-09-27 21:54:12', '2014-09-22 03:47:03', 'Normal'),
('2014092500000004', 4, 12, '2014-09-25 00:32:59', '2014-09-27 00:54:56', '2014-09-27 00:54:59', '2014-09-25 00:34:36', 'Normal'),
('2014092700000004', 4, 12, '2014-09-27 00:39:49', '2014-09-27 00:44:47', '2014-09-27 00:44:49', '2014-09-27 00:42:11', 'Normal'),
('2014092800000004', 4, 12, '2014-09-28 14:05:17', '2014-09-28 16:55:12', '2014-09-28 16:42:11', '2014-09-28 16:54:08', 'Normal'),
('2014100900000002', 2, 15, '2014-10-09 00:12:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-10-09 01:14:02', 'Normal'),
('2014101200000001', 1, 12, '2014-10-12 00:48:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-10-12 18:46:18', 'Normal'),
('2014101200000002', 2, 15, '2014-10-12 00:16:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-10-12 00:48:18', 'Normal'),
('2014102600000004', 4, 12, '2014-10-26 22:52:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Normal'),
('2014102700000004', 4, 16, '2014-10-27 00:45:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-10-27 18:52:58', 'Normal'),
('2014102900000002', 2, 15, '2014-10-29 02:55:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-10-29 02:56:11', 'Normal'),
('2014102900000004', 4, 16, '2014-10-29 02:56:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Normal'),
('2014103100000004', 4, 16, '2014-10-31 03:05:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Normal'),
('2014110100000004', 4, 16, '2014-11-01 12:18:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Normal'),
('2014110200000004', 4, 16, '2014-11-02 01:34:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-11-02 05:42:55', 'Normal'),
('2014110300000001', 1, 12, '2014-11-03 14:45:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Normal'),
('2014110400000001', 1, 12, '2014-11-04 00:35:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Normal'),
('2014111900000001', 1, 12, '2014-11-19 18:10:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Normal'),
('2014112000000001', 1, 12, '2014-11-20 10:24:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Normal'),
('2014112000000005', 5, 12, '2014-11-20 10:59:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Normal'),
('2014112500000001', 1, 12, '2014-11-25 09:12:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Normal'),
('2015010600000001', 1, 12, '2015-01-06 22:26:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discount`
--

DROP TABLE IF EXISTS `tbl_discount`;
CREATE TABLE IF NOT EXISTS `tbl_discount` (
  `discount_id` int(10) unsigned NOT NULL,
  `discount_title` varchar(250) NOT NULL,
  `discount_amount` float NOT NULL DEFAULT '0',
  `discount_type` enum('Currency','Percent') NOT NULL DEFAULT 'Percent',
  `discount_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_discount`
--

TRUNCATE TABLE `tbl_discount`;
-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

DROP TABLE IF EXISTS `tbl_event`;
CREATE TABLE IF NOT EXISTS `tbl_event` (
  `event_id` int(10) unsigned NOT NULL,
  `eveny_title` varchar(250) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_event`
--

TRUNCATE TABLE `tbl_event`;
-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

DROP TABLE IF EXISTS `tbl_item`;
CREATE TABLE IF NOT EXISTS `tbl_item` (
  `item_id` int(10) unsigned NOT NULL,
  `supplier_id` int(10) unsigned NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` float NOT NULL,
  `item_unit` varchar(100) NOT NULL,
  `item_category` enum('Food','Drink','Other') NOT NULL,
  `item_note` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_item`
--

TRUNCATE TABLE `tbl_item`;
--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`item_id`, `supplier_id`, `item_name`, `item_price`, `item_unit`, `item_category`, `item_note`) VALUES
(1, 1, ' ผักบุ้ง', 20, 'กำ', 'Food', ''),
(2, 1, 'คะน้า', 30, 'กำ', 'Food', ''),
(3, 1, 'ssd-harddisk', 3000, 'piece', 'Other', ''),
(4, 2, 'ปลาวาฬ', 2000, 'ตัว', 'Food', ''),
(5, 2, 'ปลาตี้', 10, 'ซอง', 'Food', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_list`
--

DROP TABLE IF EXISTS `tbl_order_list`;
CREATE TABLE IF NOT EXISTS `tbl_order_list` (
  `po_id` int(10) unsigned NOT NULL,
  `shop_id` int(10) unsigned NOT NULL,
  `supplier_id` int(10) unsigned NOT NULL,
  `supplier_info` text NOT NULL,
  `delivery_date` datetime NOT NULL,
  `po_note` text NOT NULL,
  `create_date` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `last_user_update` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_order_list`
--

TRUNCATE TABLE `tbl_order_list`;
-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_list_item`
--

DROP TABLE IF EXISTS `tbl_order_list_item`;
CREATE TABLE IF NOT EXISTS `tbl_order_list_item` (
  `order_item_id` int(11) unsigned NOT NULL,
  `po_id` int(11) unsigned NOT NULL,
  `item_id` int(11) unsigned NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` float NOT NULL,
  `item_qty` int(11) unsigned NOT NULL,
  `item_unit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_order_list_item`
--

TRUNCATE TABLE `tbl_order_list_item`;
-- --------------------------------------------------------

--
-- Table structure for table `tbl_other_payment`
--

DROP TABLE IF EXISTS `tbl_other_payment`;
CREATE TABLE IF NOT EXISTS `tbl_other_payment` (
  `other_id` int(10) unsigned NOT NULL,
  `plan_id` int(10) unsigned NOT NULL,
  `other_title` varchar(255) NOT NULL,
  `other_pay` float NOT NULL DEFAULT '0',
  `other_last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_other_payment`
--

TRUNCATE TABLE `tbl_other_payment`;
--
-- Dumping data for table `tbl_other_payment`
--

INSERT INTO `tbl_other_payment` (`other_id`, `plan_id`, `other_title`, `other_pay`, `other_last_update`) VALUES
(1, 1, 'Bus', 200, '2014-05-31 11:33:26'),
(2, 2, 'Bus', 200, '2014-05-31 12:10:48'),
(3, 3, 'boat', 300, '2014-05-31 12:12:19'),
(4, 3, 'Air', 1000, '2014-05-31 12:12:19'),
(5, 4, 'boat', 300, '2014-05-31 12:12:37'),
(6, 4, 'Air', 1000, '2014-05-31 12:12:37'),
(7, 5, 'bus', 100, '2014-05-31 12:15:41'),
(8, 5, 'boat', 200, '2014-05-31 12:15:41'),
(9, 6, 'bus', 100, '2014-05-31 12:16:34'),
(10, 6, 'boat', 200, '2014-05-31 12:16:34'),
(11, 7, 'bus', 100, '2014-05-31 12:17:02'),
(12, 7, 'boat', 200, '2014-05-31 12:17:02'),
(13, 8, 'bus', 100, '2014-05-31 12:22:14'),
(14, 8, 'boat', 200, '2014-05-31 12:22:14'),
(15, 8, 'tset', 355, '2014-05-31 12:22:14'),
(16, 9, 'bus', 100, '2014-06-02 16:45:21'),
(17, 9, 'boat', 200, '2014-06-02 16:45:21'),
(18, 9, 'tset', 355, '2014-06-02 16:45:21'),
(19, 10, 'Air', 200, '2014-06-03 00:10:11'),
(20, 11, 'bus', 100, '2014-06-03 01:21:53'),
(21, 11, 'boat', 200, '2014-06-03 01:21:53'),
(22, 11, 'tset', 355, '2014-06-03 01:21:53'),
(23, 12, 'bus', 100, '2014-06-03 01:22:08'),
(24, 12, 'boat', 200, '2014-06-03 01:22:08'),
(25, 12, 'tset', 355, '2014-06-03 01:22:08'),
(26, 13, 'Air', 200, '2014-06-03 01:22:57'),
(27, 14, 'Air', 200, '2014-06-08 12:14:10'),
(28, 15, 'Air', 200, '2014-06-08 12:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otp`
--

DROP TABLE IF EXISTS `tbl_otp`;
CREATE TABLE IF NOT EXISTS `tbl_otp` (
  `ref_no` int(11) NOT NULL COMMENT 'Ref. No.',
  `otp` varchar(6) NOT NULL COMMENT 'OTP',
  `username` varchar(100) NOT NULL COMMENT 'Username',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Create Date',
  `expire_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Expired Date'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_otp`
--

TRUNCATE TABLE `tbl_otp`;
--
-- Dumping data for table `tbl_otp`
--

INSERT INTO `tbl_otp` (`ref_no`, `otp`, `username`, `create_date`, `expire_date`) VALUES
(1, '710968', 'dfsdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '276159', 'dfsdf', '2015-01-25 11:00:00', '0000-00-00 00:00:00'),
(3, '360824', 'asdasd', '2015-01-25 09:54:09', '2015-01-26 09:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_overtime`
--

DROP TABLE IF EXISTS `tbl_overtime`;
CREATE TABLE IF NOT EXISTS `tbl_overtime` (
  `ot_id` int(10) unsigned NOT NULL,
  `plan_id` int(10) unsigned NOT NULL,
  `ot_type` enum('time_limit','time_exceed') NOT NULL,
  `ot_from` varchar(10) DEFAULT NULL,
  `ot_to` varchar(10) DEFAULT NULL,
  `ot_exceed` varchar(5) DEFAULT NULL,
  `ot_pay` float NOT NULL DEFAULT '0',
  `ot_last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_overtime`
--

TRUNCATE TABLE `tbl_overtime`;
--
-- Dumping data for table `tbl_overtime`
--

INSERT INTO `tbl_overtime` (`ot_id`, `plan_id`, `ot_type`, `ot_from`, `ot_to`, `ot_exceed`, `ot_pay`, `ot_last_update`) VALUES
(1, 1, 'time_limit', '12:00 AM', '12:00 PM', NULL, 100, '2014-05-31 11:33:26'),
(2, 1, 'time_exceed', '12:00 AM', '12:00 PM', '2', 300, '2014-05-31 11:33:26'),
(3, 2, 'time_limit', '12:00 AM', '12:00 PM', NULL, 100, '2014-05-31 12:10:48'),
(4, 2, 'time_exceed', NULL, NULL, '2', 300, '2014-05-31 12:10:48'),
(5, 3, 'time_limit', '12:00 AM', '12:00 PM', NULL, 100, '2014-05-31 12:12:19'),
(6, 3, 'time_exceed', NULL, NULL, '2', 300, '2014-05-31 12:12:19'),
(7, 5, 'time_limit', '12:00 AM', '12:00 PM', NULL, 400, '2014-05-31 12:15:41'),
(8, 5, 'time_exceed', NULL, NULL, '2', 200, '2014-05-31 12:15:41'),
(9, 6, 'time_limit', '12:00 AM', '12:00 PM', NULL, 400, '2014-05-31 12:16:34'),
(10, 6, 'time_exceed', NULL, NULL, '2', 200, '2014-05-31 12:16:34'),
(11, 7, 'time_limit', '12:00 AM', '12:00 PM', NULL, 400, '2014-05-31 12:17:02'),
(12, 7, 'time_exceed', NULL, NULL, '2', 200, '2014-05-31 12:17:02'),
(13, 8, 'time_limit', '12:00 AM', '12:00 PM', NULL, 400, '2014-05-31 12:22:14'),
(14, 8, 'time_limit', '12:00 AM', '12:00 PM', NULL, 255, '2014-05-31 12:22:14'),
(15, 9, 'time_limit', '07:00 PM', '09:00 PM', NULL, 100, '2014-06-02 16:45:21'),
(16, 9, 'time_exceed', NULL, NULL, '1', 100, '2014-06-02 16:45:21'),
(17, 10, 'time_exceed', NULL, NULL, '2', 200, '2014-06-03 00:10:11'),
(18, 11, 'time_limit', '07:00 PM', '09:00 PM', NULL, 100, '2014-06-03 01:21:53'),
(19, 11, 'time_exceed', NULL, NULL, '1', 100, '2014-06-03 01:21:53'),
(20, 12, 'time_limit', '07:00 PM', '09:00 PM', NULL, 100, '2014-06-03 01:22:08'),
(21, 12, 'time_exceed', NULL, NULL, '1', 100, '2014-06-03 01:22:08'),
(22, 13, 'time_exceed', NULL, NULL, '2', 200, '2014-06-03 01:22:57'),
(23, 14, 'time_exceed', NULL, NULL, '2', 200, '2014-06-08 12:14:10'),
(24, 15, 'time_exceed', NULL, NULL, '2', 200, '2014-06-08 12:17:16'),
(25, 16, 'time_limit', '08:00 AM', '04:00 PM', NULL, 300, '2014-10-27 17:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_received_order_item`
--

DROP TABLE IF EXISTS `tbl_received_order_item`;
CREATE TABLE IF NOT EXISTS `tbl_received_order_item` (
  `received_item_id` int(10) unsigned NOT NULL,
  `po_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` float NOT NULL,
  `item_qty` int(10) unsigned NOT NULL,
  `item_unit` varchar(100) NOT NULL,
  `received_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_received_order_item`
--

TRUNCATE TABLE `tbl_received_order_item`;
-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservation`
--

DROP TABLE IF EXISTS `tbl_reservation`;
CREATE TABLE IF NOT EXISTS `tbl_reservation` (
  `reserve_id` int(10) unsigned NOT NULL,
  `reserve_date` date NOT NULL DEFAULT '0000-00-00',
  `reserve_start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reserve_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reserve_people` int(11) NOT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `customer_name` varchar(250) NOT NULL,
  `customer_note` text NOT NULL,
  `event_id` int(10) unsigned NOT NULL,
  `reserve_status` enum('Active','Cancel','Finish') NOT NULL DEFAULT 'Active',
  `reserve_create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reserve_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_reservation`
--

TRUNCATE TABLE `tbl_reservation`;
--
-- Dumping data for table `tbl_reservation`
--

INSERT INTO `tbl_reservation` (`reserve_id`, `reserve_date`, `reserve_start_time`, `reserve_end_time`, `reserve_people`, `customer_id`, `customer_name`, `customer_note`, `event_id`, `reserve_status`, `reserve_create_date`, `reserve_update_date`) VALUES
(1, '2014-11-04', '2014-11-04 03:37:00', '2014-11-04 12:38:00', 2, 0, '', 'Take Note', 0, 'Active', '2014-11-01 12:38:46', '2014-11-01 05:38:46'),
(2, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0', '0', 0, 'Active', '2014-11-01 12:38:55', '2014-11-01 05:38:55'),
(3, '2014-11-01', '2014-11-01 15:00:00', '2014-11-01 15:30:00', 2, 0, 'TOM', 'GOODDAY', 2, 'Active', '2014-11-01 14:49:12', '2014-11-01 07:49:12'),
(4, '2014-11-02', '2014-11-02 16:03:00', '2014-11-02 16:04:00', 1, 0, 'Sumi', '', 0, 'Active', '2014-11-01 17:07:25', '2014-11-01 10:07:25'),
(5, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0', '0', 0, 'Active', '2014-11-01 17:07:30', '2014-11-01 10:07:30'),
(6, '2014-11-05', '2014-11-05 18:01:00', '2014-11-05 18:01:00', 0, 1, 'Sumitimo', '', 0, 'Active', '2014-11-01 18:09:01', '2014-11-01 11:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reserve_table`
--

DROP TABLE IF EXISTS `tbl_reserve_table`;
CREATE TABLE IF NOT EXISTS `tbl_reserve_table` (
  `reserve_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_reserve_table`
--

TRUNCATE TABLE `tbl_reserve_table`;
--
-- Dumping data for table `tbl_reserve_table`
--

INSERT INTO `tbl_reserve_table` (`reserve_id`, `table_id`) VALUES
(1, 35),
(2, 35),
(3, 34),
(4, 35),
(5, 35),
(6, 34),
(6, 35);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_plan`
--

DROP TABLE IF EXISTS `tbl_salary_plan`;
CREATE TABLE IF NOT EXISTS `tbl_salary_plan` (
  `plan_id` int(10) unsigned NOT NULL,
  `shop_id` int(10) unsigned NOT NULL,
  `plan_name` varchar(200) NOT NULL,
  `plan_type` enum('Daily','Weekly','Monthly') NOT NULL,
  `plan_close_day` int(11) DEFAULT NULL,
  `plan_pay_day` int(11) DEFAULT NULL,
  `plan_close_date` smallint(2) NOT NULL,
  `plan_pay_date` smallint(2) NOT NULL,
  `plan_pay_based_salary` float NOT NULL,
  `plan_pay_weekday` float NOT NULL DEFAULT '0',
  `plan_pay_holiday` float NOT NULL DEFAULT '0',
  `plan_workday` varchar(10) NOT NULL DEFAULT '1111100',
  `plan_create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `plan_update_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `plan_last_update_user` int(10) unsigned NOT NULL,
  `plan_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_salary_plan`
--

TRUNCATE TABLE `tbl_salary_plan`;
--
-- Dumping data for table `tbl_salary_plan`
--

INSERT INTO `tbl_salary_plan` (`plan_id`, `shop_id`, `plan_name`, `plan_type`, `plan_close_day`, `plan_pay_day`, `plan_close_date`, `plan_pay_date`, `plan_pay_based_salary`, `plan_pay_weekday`, `plan_pay_holiday`, `plan_workday`, `plan_create_date`, `plan_update_date`, `plan_last_update_user`, `plan_status`) VALUES
(1, 0, 'Plan A', 'Weekly', 2, 1, 0, 0, 0, 100, 200, '1101000', '2014-05-31 11:33:26', '2014-05-31 11:33:26', 2, 'Inactive'),
(2, 0, 'Plan A', 'Weekly', 2, 1, 0, 0, 0, 100, 200, '1111000', '2014-05-31 12:10:48', '2014-05-31 12:10:48', 2, 'Inactive'),
(3, 0, 'Plan A', 'Weekly', 2, 1, 0, 0, 0, 100, 200, '1111000', '2014-05-31 12:12:19', '2014-05-31 12:12:19', 2, 'Inactive'),
(5, 0, 'Plan A', 'Monthly', 1, 4, 0, 0, 500, 0, 600, '0000111', '2014-05-31 12:15:41', '2014-05-31 12:15:41', 2, 'Inactive'),
(6, 0, 'Plan A', 'Monthly', 1, 4, 5, 6, 500, 0, 600, '0000111', '2014-05-31 12:16:34', '2014-05-31 12:16:34', 2, 'Inactive'),
(7, 0, 'Plan A', 'Weekly', 5, 7, 5, 6, 500, 0, 600, '0000111', '2014-05-31 12:17:02', '2014-05-31 12:17:02', 2, 'Inactive'),
(8, 0, 'Plan A', 'Weekly', 2, 2, 5, 6, 500, 500, 600, '1100111', '2014-05-31 12:22:14', '2014-05-31 12:22:14', 2, 'Inactive'),
(9, 0, 'Plan A', 'Weekly', 2, 2, 5, 6, 500, 500, 600, '1100111', '2014-06-02 16:45:21', '2014-06-02 16:45:21', 2, 'Inactive'),
(10, 0, 'Plan B', '', 1, 1, 0, 0, 0, 200, 300, '1111100', '2014-06-03 00:10:11', '2014-06-03 00:10:11', 2, 'Inactive'),
(11, 0, 'Plan A', 'Weekly', 2, 2, 5, 6, 500, 500, 600, '1110000', '2014-06-03 01:21:53', '2014-06-03 01:21:53', 2, 'Inactive'),
(12, 0, 'Plan A', 'Weekly', 2, 2, 5, 6, 500, 500, 600, '0001111', '2014-06-03 01:22:08', '2014-06-03 01:22:08', 2, 'Active'),
(13, 0, 'Plan B', '', 1, 1, 1, 1, 0, 200, 300, '1111000', '2014-06-03 01:22:57', '2014-06-03 01:22:57', 2, 'Inactive'),
(14, 0, 'Plan B', '', 1, 1, 1, 1, 0, 200, 300, '1111000', '2014-06-08 12:14:10', '2014-06-08 12:14:10', 2, 'Inactive'),
(15, 0, 'Plan B', 'Daily', 1, 1, 1, 1, 0, 200, 300, '1111000', '2014-06-08 12:17:16', '2014-06-08 12:17:16', 2, 'Active'),
(16, 0, 'Plan C', 'Monthly', 1, 30, 0, 0, 300, 0, 500, '1111111', '2014-10-27 17:16:55', '2014-10-27 17:16:55', 2, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff_plan`
--

DROP TABLE IF EXISTS `tbl_staff_plan`;
CREATE TABLE IF NOT EXISTS `tbl_staff_plan` (
  `s_plan_id` int(10) unsigned NOT NULL,
  `staff_id` int(10) unsigned NOT NULL,
  `plan_id` int(10) unsigned NOT NULL,
  `s_plan_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_staff_plan`
--

TRUNCATE TABLE `tbl_staff_plan`;
-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff_timecard`
--

DROP TABLE IF EXISTS `tbl_staff_timecard`;
CREATE TABLE IF NOT EXISTS `tbl_staff_timecard` (
  `timecard_id` int(10) unsigned NOT NULL,
  `staff_id` int(11) NOT NULL,
  `timecard_status` enum('Check-In','ST-Break','EN-Break','Check-Out') NOT NULL,
  `timecard_time` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_staff_timecard`
--

TRUNCATE TABLE `tbl_staff_timecard`;
--
-- Dumping data for table `tbl_staff_timecard`
--

INSERT INTO `tbl_staff_timecard` (`timecard_id`, `staff_id`, `timecard_status`, `timecard_time`) VALUES
(2, 1, 'Check-In', '2014-11-04 00:35:40'),
(3, 1, 'Check-In', '2014-11-19 18:10:24'),
(4, 1, 'Check-In', '2014-11-20 10:24:03'),
(5, 5, 'Check-In', '2014-11-20 10:59:48'),
(6, 1, 'Check-In', '2014-11-25 09:12:06'),
(7, 1, 'Check-In', '2015-01-06 22:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier_profile`
--

DROP TABLE IF EXISTS `tbl_supplier_profile`;
CREATE TABLE IF NOT EXISTS `tbl_supplier_profile` (
  `supplier_id` int(10) unsigned NOT NULL,
  `shop_id` int(10) unsigned NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `supplier_address` text NOT NULL,
  `supplier_email` varchar(200) NOT NULL,
  `supplier_tel` varchar(200) NOT NULL,
  `supplier_mobile` varchar(200) NOT NULL,
  `supplier_contact_person` varchar(200) NOT NULL,
  `supplier_send_type` enum('Email','Print') NOT NULL DEFAULT 'Print',
  `supplier_note` text NOT NULL,
  `create_date` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `last_update_user` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_supplier_profile`
--

TRUNCATE TABLE `tbl_supplier_profile`;
--
-- Dumping data for table `tbl_supplier_profile`
--

INSERT INTO `tbl_supplier_profile` (`supplier_id`, `shop_id`, `supplier_name`, `supplier_address`, `supplier_email`, `supplier_tel`, `supplier_mobile`, `supplier_contact_person`, `supplier_send_type`, `supplier_note`, `create_date`, `last_update`, `last_update_user`) VALUES
(1, 1, 'ป้าเง็ก-ผักสด', '122/33', 'ngek@hi5.com', '0374623', '083845734', 'ngek', 'Email', 'test', '2014-06-08 14:00:05', '2014-06-08 14:00:05', 0),
(2, 1, 'ลุงเล็ก', 'test', 'lunglek@test.com', '0486357437', '04587477', 'lek', 'Email', '', '2014-06-08 14:04:11', '2014-06-08 14:04:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_account`
--

DROP TABLE IF EXISTS `tbl_user_account`;
CREATE TABLE IF NOT EXISTS `tbl_user_account` (
  `username` varchar(100) NOT NULL,
  `passkey` varchar(50) NOT NULL,
  `user_id` int(10) unsigned NOT NULL COMMENT 'System User ID',
  `user_type` enum('Member','Staff') NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_user_account`
--

TRUNCATE TABLE `tbl_user_account`;
--
-- Dumping data for table `tbl_user_account`
--

INSERT INTO `tbl_user_account` (`username`, `passkey`, `user_id`, `user_type`, `create_date`, `update_date`, `user_status`) VALUES
('ane', '698d51a19d8a121ce581499d7b701668', 2, 'Staff', '2014-04-23 14:06:53', '2014-05-31 05:49:49', 'Active'),
('jone', '698d51a19d8a121ce581499d7b701668', 1, 'Staff', '2014-03-15 04:20:40', '2014-06-01 13:22:55', 'Active'),
('kai', '698d51a19d8a121ce581499d7b701668', 3, 'Staff', '2014-05-10 23:33:33', '2014-05-10 23:59:59', 'Active'),
('methee', 'b59c67bf196a4758191e42f76670ceba', 4, 'Staff', '2014-09-21 20:42:10', '2014-10-27 10:17:08', 'Active'),
('worrakris', 'e10adc3949ba59abbe56e057f20f883e', 2, 'Member', '2014-11-20 03:58:40', '2015-02-22 09:12:29', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_log`
--

DROP TABLE IF EXISTS `tbl_user_log`;
CREATE TABLE IF NOT EXISTS `tbl_user_log` (
  `log_id` int(10) unsigned zerofill NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `log_product_id` int(10) unsigned NOT NULL,
  `log_transaction` varchar(255) NOT NULL,
  `log_username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `tbl_user_log`
--

TRUNCATE TABLE `tbl_user_log`;
-- --------------------------------------------------------

--
-- Table structure for table `working_section`
--

DROP TABLE IF EXISTS `working_section`;
CREATE TABLE IF NOT EXISTS `working_section` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(45) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `working_section`
--

TRUNCATE TABLE `working_section`;
--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_you_can_include`
--
ALTER TABLE `all_you_can_include`
  ADD PRIMARY KEY (`all_you_can_menu_all_id`,`normal_menu_mnu_id`);

--
-- Indexes for table `all_you_can_menu`
--
ALTER TABLE `all_you_can_menu`
  ADD PRIMARY KEY (`all_id`);

--
-- Indexes for table `all_you_can_type`
--
ALTER TABLE `all_you_can_type`
  ADD PRIMARY KEY (`all_type_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`), ADD KEY `city_eng` (`city_eng`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_list`
--
ALTER TABLE `customer_list`
  ADD PRIMARY KEY (`customer_list_id`);

--
-- Indexes for table `customer_memo`
--
ALTER TABLE `customer_memo`
  ADD PRIMARY KEY (`cus_memo_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `customer_order_detail`
--
ALTER TABLE `customer_order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `customer_order_sub`
--
ALTER TABLE `customer_order_sub`
  ADD PRIMARY KEY (`order_sub_id`);

--
-- Indexes for table `docs_download`
--
ALTER TABLE `docs_download`
  ADD PRIMARY KEY (`docs_download_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `member_relationship`
--
ALTER TABLE `member_relationship`
  ADD PRIMARY KEY (`member_id`,`parent_id`);

--
-- Indexes for table `member_rental`
--
ALTER TABLE `member_rental`
  ADD PRIMARY KEY (`rental_id`);

--
-- Indexes for table `menu_category`
--
ALTER TABLE `menu_category`
  ADD PRIMARY KEY (`menu_cat_id`);

--
-- Indexes for table `monthly_payment`
--
ALTER TABLE `monthly_payment`
  ADD PRIMARY KEY (`monthly_payment_id`), ADD UNIQUE KEY `monthly_payment_year_month_UNIQUE` (`monthly_payment_year_month`), ADD UNIQUE KEY `member_id_UNIQUE` (`member_id`);

--
-- Indexes for table `monthly_point`
--
ALTER TABLE `monthly_point`
  ADD PRIMARY KEY (`m_comm_id`), ADD UNIQUE KEY `m_comm_year_month_UNIQUE` (`m_comm_year_month`), ADD UNIQUE KEY `member_id_UNIQUE` (`member_id`);

--
-- Indexes for table `monthly_rental`
--
ALTER TABLE `monthly_rental`
  ADD PRIMARY KEY (`monthly_rental_id`), ADD UNIQUE KEY `shop_product_id_UNIQUE` (`shop_product_id`), ADD UNIQUE KEY `year_month_UNIQUE` (`rental_year_month`);

--
-- Indexes for table `monthly_rental_not_use`
--
ALTER TABLE `monthly_rental_not_use`
  ADD PRIMARY KEY (`monthly_rental_id`), ADD UNIQUE KEY `shop_product_id_UNIQUE` (`shop_product_id`), ADD UNIQUE KEY `year_month_UNIQUE` (`rental_year_month`);

--
-- Indexes for table `normal_menu`
--
ALTER TABLE `normal_menu`
  ADD PRIMARY KEY (`mnu_id`);

--
-- Indexes for table `out_of_order_menu`
--
ALTER TABLE `out_of_order_menu`
  ADD PRIMARY KEY (`out_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `pos_notification`
--
ALTER TABLE `pos_notification`
  ADD PRIMARY KEY (`noti_id`);

--
-- Indexes for table `pos_staff`
--
ALTER TABLE `pos_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `pos_staff_check_in`
--
ALTER TABLE `pos_staff_check_in`
  ADD PRIMARY KEY (`chk_id`);

--
-- Indexes for table `pos_staff_section`
--
ALTER TABLE `pos_staff_section`
  ADD PRIMARY KEY (`pos_staff_staff_id`,`working_section_dept_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`province_id`), ADD UNIQUE KEY `province_eng` (`province_eng`), ADD UNIQUE KEY `province_owner` (`province_owner`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`receipt_id`,`order_id`);

--
-- Indexes for table `receipt_detail`
--
ALTER TABLE `receipt_detail`
  ADD PRIMARY KEY (`receipt_detail_id`,`receipt_id`);

--
-- Indexes for table `received_method`
--
ALTER TABLE `received_method`
  ADD PRIMARY KEY (`received_method_id`);

--
-- Indexes for table `responsible_table`
--
ALTER TABLE `responsible_table`
  ADD PRIMARY KEY (`pos_staff_staff_id`,`restaurant_table_table_id`);

--
-- Indexes for table `restaurant_table`
--
ALTER TABLE `restaurant_table`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `session_order`
--
ALTER TABLE `session_order`
  ADD PRIMARY KEY (`ses_id`);

--
-- Indexes for table `shipping_address`
--
ALTER TABLE `shipping_address`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`shop_product_id`);

--
-- Indexes for table `shop_profile`
--
ALTER TABLE `shop_profile`
  ADD PRIMARY KEY (`shop_id`) COMMENT 'Location ID';

--
-- Indexes for table `shop_profile_old`
--
ALTER TABLE `shop_profile_old`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `special_menu`
--
ALTER TABLE `special_menu`
  ADD PRIMARY KEY (`special_menu_id`);

--
-- Indexes for table `special_menu_include`
--
ALTER TABLE `special_menu_include`
  ADD PRIMARY KEY (`special_menu_id`,`normal_menu_id`);

--
-- Indexes for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `sub_menu_choice`
--
ALTER TABLE `sub_menu_choice`
  ADD PRIMARY KEY (`sub_mnu_ch_id`);

--
-- Indexes for table `take_a_seat`
--
ALTER TABLE `take_a_seat`
  ADD PRIMARY KEY (`take_seat_id`), ADD UNIQUE KEY `restaurant_table_table_id` (`table_id`,`customer_id`);

--
-- Indexes for table `tbl_admins`
--
ALTER TABLE `tbl_admins`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `tbl_app_code`
--
ALTER TABLE `tbl_app_code`
  ADD PRIMARY KEY (`app_code`);

--
-- Indexes for table `tbl_bn_banner`
--
ALTER TABLE `tbl_bn_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `tbl_bn_news`
--
ALTER TABLE `tbl_bn_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_bn_promotions`
--
ALTER TABLE `tbl_bn_promotions`
  ADD PRIMARY KEY (`promotion_id`);

--
-- Indexes for table `tbl_bn_subscription`
--
ALTER TABLE `tbl_bn_subscription`
  ADD PRIMARY KEY (`scb_email`);

--
-- Indexes for table `tbl_daily_work_hour`
--
ALTER TABLE `tbl_daily_work_hour`
  ADD PRIMARY KEY (`work_id`);

--
-- Indexes for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tbl_order_list`
--
ALTER TABLE `tbl_order_list`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `tbl_order_list_item`
--
ALTER TABLE `tbl_order_list_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `tbl_other_payment`
--
ALTER TABLE `tbl_other_payment`
  ADD PRIMARY KEY (`other_id`);

--
-- Indexes for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  ADD PRIMARY KEY (`ref_no`);

--
-- Indexes for table `tbl_overtime`
--
ALTER TABLE `tbl_overtime`
  ADD PRIMARY KEY (`ot_id`);

--
-- Indexes for table `tbl_received_order_item`
--
ALTER TABLE `tbl_received_order_item`
  ADD PRIMARY KEY (`received_item_id`);

--
-- Indexes for table `tbl_reservation`
--
ALTER TABLE `tbl_reservation`
  ADD PRIMARY KEY (`reserve_id`);

--
-- Indexes for table `tbl_reserve_table`
--
ALTER TABLE `tbl_reserve_table`
  ADD PRIMARY KEY (`reserve_id`,`table_id`);

--
-- Indexes for table `tbl_salary_plan`
--
ALTER TABLE `tbl_salary_plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `tbl_staff_plan`
--
ALTER TABLE `tbl_staff_plan`
  ADD PRIMARY KEY (`s_plan_id`);

--
-- Indexes for table `tbl_staff_timecard`
--
ALTER TABLE `tbl_staff_timecard`
  ADD PRIMARY KEY (`timecard_id`);

--
-- Indexes for table `tbl_supplier_profile`
--
ALTER TABLE `tbl_supplier_profile`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `tbl_user_account`
--
ALTER TABLE `tbl_user_account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_user_log`
--
ALTER TABLE `tbl_user_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `working_section`
--
ALTER TABLE `working_section`
  ADD PRIMARY KEY (`dept_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_you_can_menu`
--
ALTER TABLE `all_you_can_menu`
  MODIFY `all_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `all_you_can_type`
--
ALTER TABLE `all_you_can_type`
  MODIFY `all_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1291;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `customer_list`
--
ALTER TABLE `customer_list`
  MODIFY `customer_list_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_memo`
--
ALTER TABLE `customer_memo`
  MODIFY `cus_memo_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer_order_detail`
--
ALTER TABLE `customer_order_detail`
  MODIFY `order_detail_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=419;
--
-- AUTO_INCREMENT for table `customer_order_sub`
--
ALTER TABLE `customer_order_sub`
  MODIFY `order_sub_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=217;
--
-- AUTO_INCREMENT for table `docs_download`
--
ALTER TABLE `docs_download`
  MODIFY `docs_download_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `member_rental`
--
ALTER TABLE `member_rental`
  MODIFY `rental_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu_category`
--
ALTER TABLE `menu_category`
  MODIFY `menu_cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `monthly_payment`
--
ALTER TABLE `monthly_payment`
  MODIFY `monthly_payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `monthly_point`
--
ALTER TABLE `monthly_point`
  MODIFY `m_comm_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `monthly_rental`
--
ALTER TABLE `monthly_rental`
  MODIFY `monthly_rental_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `monthly_rental_not_use`
--
ALTER TABLE `monthly_rental_not_use`
  MODIFY `monthly_rental_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `normal_menu`
--
ALTER TABLE `normal_menu`
  MODIFY `mnu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `out_of_order_menu`
--
ALTER TABLE `out_of_order_menu`
  MODIFY `out_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_method_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pos_notification`
--
ALTER TABLE `pos_notification`
  MODIFY `noti_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pos_staff`
--
ALTER TABLE `pos_staff`
  MODIFY `staff_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pos_staff_check_in`
--
ALTER TABLE `pos_staff_check_in`
  MODIFY `chk_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `province_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `receipt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `receipt_detail`
--
ALTER TABLE `receipt_detail`
  MODIFY `receipt_detail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `restaurant_table`
--
ALTER TABLE `restaurant_table`
  MODIFY `table_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `session_order`
--
ALTER TABLE `session_order`
  MODIFY `ses_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=242;
--
-- AUTO_INCREMENT for table `shipping_address`
--
ALTER TABLE `shipping_address`
  MODIFY `shipping_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shop_products`
--
ALTER TABLE `shop_products`
  MODIFY `shop_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `shop_profile`
--
ALTER TABLE `shop_profile`
  MODIFY `shop_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Location ID',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `shop_profile_old`
--
ALTER TABLE `shop_profile_old`
  MODIFY `shop_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `special_menu`
--
ALTER TABLE `special_menu`
  MODIFY `special_menu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `sub_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sub_menu_choice`
--
ALTER TABLE `sub_menu_choice`
  MODIFY `sub_mnu_ch_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `take_a_seat`
--
ALTER TABLE `take_a_seat`
  MODIFY `take_seat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `tbl_admins`
--
ALTER TABLE `tbl_admins`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_bn_banner`
--
ALTER TABLE `tbl_bn_banner`
  MODIFY `banner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_bn_news`
--
ALTER TABLE `tbl_bn_news`
  MODIFY `news_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_bn_promotions`
--
ALTER TABLE `tbl_bn_promotions`
  MODIFY `promotion_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_order_list`
--
ALTER TABLE `tbl_order_list`
  MODIFY `po_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_order_list_item`
--
ALTER TABLE `tbl_order_list_item`
  MODIFY `order_item_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_other_payment`
--
ALTER TABLE `tbl_other_payment`
  MODIFY `other_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  MODIFY `ref_no` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Ref. No.',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_overtime`
--
ALTER TABLE `tbl_overtime`
  MODIFY `ot_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_received_order_item`
--
ALTER TABLE `tbl_received_order_item`
  MODIFY `received_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_reservation`
--
ALTER TABLE `tbl_reservation`
  MODIFY `reserve_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_salary_plan`
--
ALTER TABLE `tbl_salary_plan`
  MODIFY `plan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_staff_plan`
--
ALTER TABLE `tbl_staff_plan`
  MODIFY `s_plan_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_staff_timecard`
--
ALTER TABLE `tbl_staff_timecard`
  MODIFY `timecard_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_supplier_profile`
--
ALTER TABLE `tbl_supplier_profile`
  MODIFY `supplier_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `working_section`
--
ALTER TABLE `working_section`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
