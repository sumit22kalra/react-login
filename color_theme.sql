-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2025 at 04:01 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `color_theme`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `org_id` int(11) DEFAULT NULL,
  `branch_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `org_id`, `branch_name`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 'TechCorp NYC', '123 Tech Street', '2024-12-09 06:58:24', '2024-12-09 06:58:24'),
(2, 1, 'TechCorp LA', '456 Silicon Ave', '2024-12-09 06:58:24', '2024-12-09 06:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`) VALUES
(1, 49, 'Visakhapatnam'),
(2, 49, 'Vijayawada'),
(3, 49, 'Guntur'),
(4, 49, 'Tirupati'),
(5, 49, 'Nellore'),
(6, 50, 'Itanagar'),
(7, 50, 'Tawang'),
(8, 50, 'Ziro'),
(9, 50, 'Naharlagun'),
(10, 51, 'Guwahati'),
(11, 51, 'Dibrugarh'),
(12, 51, 'Silchar'),
(13, 51, 'Jorhat'),
(14, 51, 'Nagaon'),
(15, 52, 'Patna'),
(16, 52, 'Gaya'),
(17, 52, 'Bhagalpur'),
(18, 52, 'Muzaffarpur'),
(19, 52, 'Purnia'),
(20, 29, 'Raipur'),
(21, 29, 'Bhilai'),
(22, 29, 'Bilaspur'),
(23, 29, 'Korba'),
(24, 29, 'Durg'),
(25, 30, 'Panaji'),
(26, 30, 'Margao'),
(27, 30, 'Vasco da Gama'),
(28, 30, 'Mapusa'),
(29, 31, 'Ahmedabad'),
(30, 31, 'Surat'),
(31, 31, 'Vadodara'),
(32, 31, 'Rajkot'),
(33, 31, 'Bhavnagar'),
(34, 32, 'Gurugram'),
(35, 32, 'Faridabad'),
(36, 32, 'Ambala'),
(37, 32, 'Hisar'),
(38, 32, 'Karnal'),
(39, 33, 'Shimla'),
(40, 33, 'Manali'),
(41, 33, 'Kullu'),
(42, 33, 'Dharamshala'),
(43, 33, 'Kangra'),
(44, 34, 'Ranchi'),
(45, 34, 'Jamshedpur'),
(46, 34, 'Dhanbad'),
(47, 34, 'Bokaro'),
(48, 34, 'Giridih'),
(49, 35, 'Bangalore'),
(50, 35, 'Mysore'),
(51, 35, 'Hubli'),
(52, 35, 'Mangalore'),
(53, 35, 'Belgaum'),
(54, 36, 'Kochi'),
(55, 36, 'Thiruvananthapuram'),
(56, 36, 'Kozhikode'),
(57, 36, 'Kottayam'),
(58, 36, 'Thrissur'),
(59, 37, 'Bhopal'),
(60, 37, 'Indore'),
(61, 37, 'Jabalpur'),
(62, 37, 'Gwalior'),
(63, 37, 'Ujjain'),
(64, 38, 'Mumbai'),
(65, 38, 'Pune'),
(66, 38, 'Nagpur'),
(67, 38, 'Nashik'),
(68, 38, 'Aurangabad'),
(69, 39, 'Imphal'),
(70, 39, 'Thoubal'),
(71, 39, 'Kakching'),
(72, 39, 'Churachandpur'),
(73, 40, 'Shillong'),
(74, 40, 'Tura'),
(75, 40, 'Jowai'),
(76, 40, 'Nongpoh'),
(77, 41, 'Aizawl'),
(78, 41, 'Lunglei'),
(79, 41, 'Siaha'),
(80, 41, 'Champhai'),
(81, 42, 'Kohima'),
(82, 42, 'Dimapur'),
(83, 42, 'Mokokchung'),
(84, 42, 'Wokha'),
(85, 43, 'Bhubaneswar'),
(86, 43, 'Cuttack'),
(87, 43, 'Rourkela'),
(88, 43, 'Berhampur'),
(89, 43, 'Sambalpur'),
(90, 44, 'Chandigarh'),
(91, 44, 'Amritsar'),
(92, 44, 'Ludhiana'),
(93, 44, 'Jalandhar'),
(94, 44, 'Patiala'),
(95, 45, 'Jaipur'),
(96, 45, 'Udaipur'),
(97, 45, 'Jodhpur'),
(98, 45, 'Kota'),
(99, 45, 'Ajmer'),
(100, 46, 'Gangtok'),
(101, 46, 'Namchi'),
(102, 46, 'Mangan'),
(103, 47, 'Chennai'),
(104, 47, 'Coimbatore'),
(105, 47, 'Madurai'),
(106, 47, 'Trichy'),
(107, 47, 'Salem'),
(108, 48, 'Hyderabad'),
(109, 48, 'Warangal'),
(110, 48, 'Khammam'),
(111, 48, 'Karimnagar'),
(112, 49, 'Agartala'),
(113, 49, 'Udaipur'),
(114, 50, 'Lucknow'),
(115, 50, 'Kanpur'),
(116, 50, 'Varanasi'),
(117, 50, 'Agra'),
(118, 50, 'Allahabad'),
(119, 51, 'Dehradun'),
(120, 51, 'Haridwar'),
(121, 51, 'Nainital'),
(122, 51, 'Rishikesh'),
(123, 52, 'Kolkata'),
(124, 52, 'Howrah'),
(125, 52, 'Durgapur'),
(126, 52, 'Asansol'),
(127, 52, 'Siliguri');

-- --------------------------------------------------------

--
-- Table structure for table `color_settings`
--

CREATE TABLE `color_settings` (
  `id` int(11) NOT NULL,
  `color_name` varchar(50) NOT NULL,
  `color_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `color_settings`
--

INSERT INTO `color_settings` (`id`, `color_name`, `color_code`) VALUES
(1, 'asdadada', '#ff1414'),
(2, 'asdadada', '#ff1414'),
(3, 'header', '#f40b0b'),
(4, 'header', '#f40b0b'),
(5, 'header_Text', '#ec1313'),
(6, 'header_Text', '#ec1313'),
(7, 'header_Text', '#ec1313'),
(8, 'header_Text', '#ec1313'),
(9, 'header_Text', '#ec1313'),
(10, 'header_Text', '#ec1313'),
(11, 'header_Text', '#ec1313'),
(12, 'header', '#0020c2'),
(13, 'header', '#0020c2');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Albania', 'AL'),
(3, 'Algeria', 'DZ'),
(4, 'Andorra', 'AD'),
(5, 'Angola', 'AO'),
(6, 'Antigua and Barbuda', 'AG'),
(7, 'Argentina', 'AR'),
(8, 'Armenia', 'AM'),
(9, 'Australia', 'AU'),
(10, 'Austria', 'AT'),
(11, 'Azerbaijan', 'AZ'),
(12, 'Bahamas', 'BS'),
(13, 'Bahrain', 'BH'),
(14, 'Bangladesh', 'BD'),
(15, 'Barbados', 'BB'),
(16, 'Belarus', 'BY'),
(17, 'Belgium', 'BE'),
(18, 'Belize', 'BZ'),
(19, 'Benin', 'BJ'),
(20, 'Bhutan', 'BT'),
(21, 'Bolivia', 'BO'),
(22, 'Bosnia and Herzegovina', 'BA'),
(23, 'Botswana', 'BW'),
(24, 'Brazil', 'BR'),
(25, 'Brunei', 'BN'),
(26, 'Bulgaria', 'BG'),
(27, 'Burkina Faso', 'BF'),
(28, 'Burundi', 'BI'),
(29, 'Cambodia', 'KH'),
(30, 'Cameroon', 'CM'),
(31, 'Canada', 'CA'),
(32, 'Cape Verde', 'CV'),
(33, 'Central African Republic', 'CF'),
(34, 'Chad', 'TD'),
(35, 'Chile', 'CL'),
(36, 'China', 'CN'),
(37, 'Colombia', 'CO'),
(38, 'Comoros', 'KM'),
(39, 'Congo (Congo-Brazzaville)', 'CG'),
(40, 'Congo (Democratic Republic)', 'CD'),
(41, 'Costa Rica', 'CR'),
(42, 'Croatia', 'HR'),
(43, 'Cuba', 'CU'),
(44, 'Cyprus', 'CY'),
(45, 'Czech Republic', 'CZ'),
(46, 'Denmark', 'DK'),
(47, 'Djibouti', 'DJ'),
(48, 'Dominica', 'DM'),
(49, 'Dominican Republic', 'DO'),
(50, 'Ecuador', 'EC'),
(51, 'Egypt', 'EG'),
(52, 'El Salvador', 'SV'),
(53, 'Equatorial Guinea', 'GQ'),
(54, 'Eritrea', 'ER'),
(55, 'Estonia', 'EE'),
(56, 'Eswatini', 'SZ'),
(57, 'Ethiopia', 'ET'),
(58, 'Fiji', 'FJ'),
(59, 'Finland', 'FI'),
(60, 'France', 'FR'),
(61, 'Gabon', 'GA'),
(62, 'Gambia', 'GM'),
(63, 'Georgia', 'GE'),
(64, 'Germany', 'DE'),
(65, 'Ghana', 'GH'),
(66, 'Greece', 'GR'),
(67, 'Grenada', 'GD'),
(68, 'Guatemala', 'GT'),
(69, 'Guinea', 'GN'),
(70, 'Guinea-Bissau', 'GW'),
(71, 'Guyana', 'GY'),
(72, 'Haiti', 'HT'),
(73, 'Honduras', 'HN'),
(74, 'Hungary', 'HU'),
(75, 'Iceland', 'IS'),
(76, 'India', 'IN'),
(77, 'Indonesia', 'ID'),
(78, 'Iran', 'IR'),
(79, 'Iraq', 'IQ'),
(80, 'Ireland', 'IE'),
(81, 'Israel', 'IL'),
(82, 'Italy', 'IT'),
(83, 'Jamaica', 'JM'),
(84, 'Japan', 'JP'),
(85, 'Jordan', 'JO'),
(86, 'Kazakhstan', 'KZ'),
(87, 'Kenya', 'KE'),
(88, 'Kiribati', 'KI'),
(89, 'Kuwait', 'KW'),
(90, 'Kyrgyzstan', 'KG'),
(91, 'Laos', 'LA'),
(92, 'Latvia', 'LV'),
(93, 'Lebanon', 'LB'),
(94, 'Lesotho', 'LS'),
(95, 'Liberia', 'LR'),
(96, 'Libya', 'LY'),
(97, 'Liechtenstein', 'LI'),
(98, 'Lithuania', 'LT'),
(99, 'Luxembourg', 'LU'),
(100, 'Madagascar', 'MG'),
(101, 'Malawi', 'MW'),
(102, 'Malaysia', 'MY'),
(103, 'Maldives', 'MV'),
(104, 'Mali', 'ML'),
(105, 'Malta', 'MT'),
(106, 'Marshall Islands', 'MH'),
(107, 'Mauritania', 'MR'),
(108, 'Mauritius', 'MU'),
(109, 'Mexico', 'MX'),
(110, 'Moldova', 'MD'),
(111, 'Monaco', 'MC'),
(112, 'Mongolia', 'MN'),
(113, 'Montenegro', 'ME'),
(114, 'Morocco', 'MA'),
(115, 'Mozambique', 'MZ'),
(116, 'Myanmar (Burma)', 'MM'),
(117, 'Namibia', 'NA'),
(118, 'Nauru', 'NR'),
(119, 'Nepal', 'NP'),
(120, 'Netherlands', 'NL'),
(121, 'New Zealand', 'NZ'),
(122, 'Nicaragua', 'NI'),
(123, 'Niger', 'NE'),
(124, 'Nigeria', 'NG'),
(125, 'North Korea', 'KP'),
(126, 'North Macedonia', 'MK'),
(127, 'Norway', 'NO'),
(128, 'Oman', 'OM'),
(129, 'Pakistan', 'PK'),
(130, 'Palau', 'PW'),
(131, 'Panama', 'PA'),
(132, 'Papua New Guinea', 'PG'),
(133, 'Paraguay', 'PY'),
(134, 'Peru', 'PE'),
(135, 'Philippines', 'PH'),
(136, 'Poland', 'PL'),
(137, 'Portugal', 'PT'),
(138, 'Qatar', 'QA'),
(139, 'Romania', 'RO'),
(140, 'Russia', 'RU'),
(141, 'Rwanda', 'RW'),
(142, 'Saint Kitts and Nevis', 'KN'),
(143, 'Saint Lucia', 'LC'),
(144, 'Saint Vincent and the Grenadines', 'VC'),
(145, 'Samoa', 'WS'),
(146, 'San Marino', 'SM'),
(147, 'Sao Tome and Principe', 'ST'),
(148, 'Saudi Arabia', 'SA'),
(149, 'Senegal', 'SN'),
(150, 'Serbia', 'RS'),
(151, 'Seychelles', 'SC'),
(152, 'Sierra Leone', 'SL'),
(153, 'Singapore', 'SG'),
(154, 'Slovakia', 'SK'),
(155, 'Slovenia', 'SI'),
(156, 'Solomon Islands', 'SB'),
(157, 'Somalia', 'SO'),
(158, 'South Africa', 'ZA'),
(159, 'South Korea', 'KR'),
(160, 'South Sudan', 'SS'),
(161, 'Spain', 'ES'),
(162, 'Sri Lanka', 'LK'),
(163, 'Sudan', 'SD'),
(164, 'Suriname', 'SR'),
(165, 'Sweden', 'SE'),
(166, 'Switzerland', 'CH'),
(167, 'Syria', 'SY'),
(168, 'Taiwan', 'TW'),
(169, 'Tajikistan', 'TJ'),
(170, 'Tanzania', 'TZ'),
(171, 'Thailand', 'TH'),
(172, 'Timor-Leste', 'TL'),
(173, 'Togo', 'TG'),
(174, 'Tonga', 'TO'),
(175, 'Trinidad and Tobago', 'TT'),
(176, 'Tunisia', 'TN'),
(177, 'Turkey', 'TR'),
(178, 'Turkmenistan', 'TM'),
(179, 'Tuvalu', 'TV'),
(180, 'Uganda', 'UG'),
(181, 'Ukraine', 'UA'),
(182, 'United Arab Emirates', 'AE'),
(183, 'United Kingdom', 'UK'),
(184, 'United States', 'US'),
(185, 'Uruguay', 'UY'),
(186, 'Uzbekistan', 'UZ'),
(187, 'Vanuatu', 'VU'),
(188, 'Vatican City', 'VA'),
(189, 'Venezuela', 'VE'),
(190, 'Vietnam', 'VN'),
(191, 'Yemen', 'YE'),
(192, 'Zambia', 'ZM'),
(193, 'Zimbabwe', 'ZW'),
(195, 'sumit Kalra', 'SK1'),
(196, 'asda', 'dadada'),
(197, 'adamdam', 'sda'),
(198, '222', '111');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `order_number` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `url`, `parent_id`, `module_id`, `is_active`, `order_number`, `created_at`) VALUES
(1, 'Dashboard', '/dashboard', 0, NULL, 1, 1, '2024-12-09 09:42:33'),
(2, 'User Management', NULL, NULL, 1, 1, 2, '2024-12-09 09:42:33'),
(3, 'Billing', NULL, NULL, 2, 1, 3, '2024-12-09 09:42:33'),
(4, 'Inventory', NULL, NULL, 3, 1, 4, '2024-12-09 09:42:33'),
(5, 'Add User', '/user/add', 2, 1, 1, 1, '2024-12-09 09:42:33'),
(6, 'List Users', '/user/list', 2, 1, 1, 2, '2024-12-09 09:42:33'),
(7, 'View Invoices', '/billing/invoices', 3, 2, 1, 1, '2024-12-09 09:42:33'),
(8, 'Payment Gateway', '/billing/payment-gateway', 3, 2, 1, 2, '2024-12-09 09:42:33'),
(9, 'Products', '/inventory/products', 4, 3, 1, 1, '2024-12-09 09:42:33'),
(10, 'Stock Levels', '/inventory/stock-levels', 4, 3, 1, 2, '2024-12-09 09:42:33'),
(11, 'Create User', '/create-user', 9, 9, 1, 1, '2024-12-09 10:17:23'),
(12, 'Review Session', '/create-user', 15, 10, 1, 1, '2024-12-09 10:17:38'),
(13, 'Cancel Session', '/create-user', 15, 10, 1, 1, '2024-12-09 10:17:48'),
(14, 'System Configuration', '/create-user', NULL, 10, 1, 1, '2024-12-09 10:18:20'),
(15, 'Session', '', 0, 10, 1, 1, '2024-12-09 10:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE `organisation` (
  `org_id` int(11) NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `subdomain` varchar(255) NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organisation`
--

INSERT INTO `organisation` (`org_id`, `org_name`, `subdomain`, `expiry_date`, `created_at`, `updated_at`) VALUES
(1, 'TechCorp', 'techcorp.com', '2025-12-31', '2024-12-09 06:58:13', '2024-12-09 06:58:13'),
(2, 'HealthSoft', 'healthsoft.com', '2026-06-30', '2024-12-09 06:58:13', '2024-12-09 06:58:13'),
(3, 'sda', 'dadadada', '2025-01-01', '2024-12-09 07:29:57', '2024-12-09 07:29:57'),
(4, 'max', 'ga-ke', '2025-03-22', '2024-12-09 07:31:28', '2024-12-09 07:31:28'),
(5, 'fortis', 'ga-tz', '2027-10-22', '2024-12-09 07:32:03', '2024-12-09 07:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `organisation_modules`
--

CREATE TABLE `organisation_modules` (
  `org_module_id` int(11) NOT NULL,
  `org_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organisation_modules`
--

INSERT INTO `organisation_modules` (`org_module_id`, `org_id`, `module_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-12-09 08:50:38', '2024-12-09 08:50:38'),
(2, 1, 4, 1, '2024-12-09 08:50:38', '2024-12-09 08:51:26'),
(3, 1, 4, 0, '2024-12-09 08:50:38', '2024-12-09 08:51:30'),
(4, 2, 5, 1, '2024-12-09 08:50:38', '2024-12-09 08:51:36'),
(5, 2, 5, 1, '2024-12-09 08:50:38', '2024-12-09 08:51:40'),
(6, 5, 10, 1, '2024-12-09 09:31:10', '2024-12-09 13:12:56'),
(7, 5, 4, 1, '2024-12-09 09:31:57', '2024-12-09 09:31:57'),
(8, 5, 5, 1, '2024-12-09 09:32:10', '2024-12-09 09:32:10'),
(9, 5, 9, 1, '2024-12-09 13:05:40', '2024-12-09 13:05:40');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `permission_id` int(11) NOT NULL,
  `org_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `permission_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`permission_id`, `org_id`, `role_id`, `module_id`, `permission_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'read', '2024-12-09 06:59:02', '2024-12-09 06:59:02'),
(2, 2, 2, 2, 'write', '2024-12-09 06:59:02', '2024-12-09 06:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `product_module`
--

CREATE TABLE `product_module` (
  `module_id` int(11) NOT NULL,
  `org_id` int(11) DEFAULT NULL,
  `module_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_module`
--

INSERT INTO `product_module` (`module_id`, `org_id`, `module_name`, `created_at`, `updated_at`, `description`) VALUES
(1, 1, 'Billing', '2024-12-09 06:58:33', '2024-12-09 06:58:33', ''),
(2, 2, 'HR Management', '2024-12-09 06:58:33', '2024-12-09 06:58:33', ''),
(3, 4, 'Default', '2024-12-09 07:33:14', '2024-12-09 07:33:14', ''),
(4, 4, 'Billing', '2024-12-09 07:33:20', '2024-12-09 07:33:20', ''),
(5, 5, 'Default', '2024-12-09 07:33:28', '2024-12-09 07:33:28', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_modules`
--

CREATE TABLE `product_modules` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_modules`
--

INSERT INTO `product_modules` (`module_id`, `module_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'User Management', 'Module for managing user registration, authentication, and roles.', '2024-12-09 08:50:26', '2024-12-09 08:50:26'),
(2, 'Billing and Payments', 'Handles invoices, subscriptions, and payment gateway integrations.', '2024-12-09 08:50:26', '2024-12-09 08:50:26'),
(3, 'Reporting and Analytics', 'Provides insights, dashboards, and custom report generation.', '2024-12-09 08:50:26', '2024-12-09 08:50:26'),
(4, 'Inventory Management', 'Manage product catalog, stock levels, and orders.', '2024-12-09 08:50:26', '2024-12-09 08:50:26'),
(5, 'Customer Support', 'Ticketing, live chat, and feedback collection system.', '2024-12-09 08:50:26', '2024-12-09 08:50:26'),
(6, 'Content Management', 'Create and manage content, blogs, media, and SEO.', '2024-12-09 08:50:26', '2024-12-09 08:50:26'),
(7, 'Notifications and Alerts', 'Email, SMS, and system alerts.', '2024-12-09 08:50:26', '2024-12-09 08:50:26'),
(8, 'Integrations', 'Integrates with third-party APIs, CRMs, and ERPs.', '2024-12-09 08:50:26', '2024-12-09 08:50:26'),
(9, 'System Configuration', 'Sub menu for Product Client - Configuration \r\nUser Create,\r\nHolidays,\r\nCPT Codes,\r\nTherapy Type,', '2024-12-09 10:14:41', '2024-12-09 10:14:41'),
(10, 'Sessions', 'Session', '2024-12-09 10:15:20', '2024-12-09 10:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_module_menu`
--

CREATE TABLE `product_module_menu` (
  `menu_id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_module_menu`
--

INSERT INTO `product_module_menu` (`menu_id`, `module_id`, `menu_name`, `menu_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dashboard', '/billing/dashboard', '2024-12-09 06:58:43', '2024-12-09 06:58:43'),
(2, 2, 'Employee List', '/hr/employees', '2024-12-09 06:58:43', '2024-12-09 06:58:43'),
(3, 4, 'Patient List', '/patient_list', '2024-12-09 07:37:43', '2024-12-09 07:37:43'),
(4, 4, 'Patient Availability', '/patientavailability', '2024-12-09 07:38:08', '2024-12-09 07:38:08'),
(5, 5, 'Patient Availability', '/patientavailability', '2024-12-09 07:38:12', '2024-12-09 07:38:12'),
(6, 5, 'Patient Availability', '/patientavailability', '2024-12-09 07:42:07', '2024-12-09 07:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `organization_id`, `created_at`) VALUES
(1, 'Admin', 4, '2024-12-10 03:57:49'),
(2, 'User', 5, '2024-12-10 03:57:49'),
(3, 'Manager', 5, '2024-12-10 03:57:49'),
(4, 'Super Admin', 5, '2024-12-10 09:31:53'),
(5, '4', 5, '2024-12-12 11:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_menu_permissions`
--

CREATE TABLE `role_menu_permissions` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `can_view` tinyint(1) DEFAULT 1,
  `can_create` tinyint(1) DEFAULT 0,
  `can_edit` tinyint(1) DEFAULT 0,
  `can_delete` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_menu_permissions`
--

INSERT INTO `role_menu_permissions` (`permission_id`, `role_id`, `menu_id`, `can_view`, `can_create`, `can_edit`, `can_delete`, `created_at`) VALUES
(1, 1, 2, 1, 1, 1, 1, '2024-12-10 03:58:27'),
(2, 1, 3, 1, 1, 1, 1, '2024-12-10 03:58:27'),
(3, 2, 2, 1, 0, 0, 0, '2024-12-10 03:58:27'),
(4, 3, 4, 1, 1, 1, 0, '2024-12-10 03:58:27'),
(5, 4, 15, 1, 1, 1, 1, '2024-12-10 09:31:53'),
(6, 5, 13, 1, 1, 1, 1, '2024-12-12 11:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`) VALUES
(1, 1, 'California'),
(2, 1, 'Texas'),
(3, 1, 'Florida'),
(4, 1, 'New York'),
(5, 1, 'Illinois'),
(6, 2, 'Ontario'),
(7, 2, 'Quebec'),
(8, 2, 'British Columbia'),
(9, 2, 'Alberta'),
(10, 2, 'Manitoba'),
(11, 3, 'Maharashtra'),
(12, 3, 'Karnataka'),
(13, 3, 'Tamil Nadu'),
(14, 3, 'Uttar Pradesh'),
(15, 3, 'West Bengal'),
(16, 4, 'England'),
(17, 4, 'Scotland'),
(18, 4, 'Wales'),
(19, 4, 'Northern Ireland'),
(20, 5, 'New South Wales'),
(21, 5, 'Queensland'),
(22, 5, 'Victoria'),
(23, 5, 'Western Australia'),
(24, 5, 'South Australia'),
(25, 76, 'Andhra Pradesh'),
(26, 76, 'Arunachal Pradesh'),
(27, 76, 'Assam'),
(28, 76, 'Bihar'),
(29, 76, 'Chhattisgarh'),
(30, 76, 'Goa'),
(31, 76, 'Gujarat'),
(32, 76, 'Haryana'),
(33, 76, 'Himachal Pradesh'),
(34, 76, 'Jharkhand'),
(35, 76, 'Karnataka'),
(36, 76, 'Kerala'),
(37, 76, 'Madhya Pradesh'),
(38, 76, 'Maharashtra'),
(39, 76, 'Manipur'),
(40, 76, 'Meghalaya'),
(41, 76, 'Mizoram'),
(42, 76, 'Nagaland'),
(43, 76, 'Odisha'),
(44, 76, 'Punjab'),
(45, 76, 'Rajasthan'),
(46, 76, 'Sikkim'),
(47, 76, 'Tamil Nadu'),
(48, 76, 'Telangana'),
(49, 76, 'Tripura'),
(50, 76, 'Uttar Pradesh'),
(51, 76, 'Uttarakhand'),
(52, 76, 'West Bengal'),
(53, 76, 'Andaman and Nicobar Islands'),
(54, 76, 'Chandigarh'),
(55, 76, 'Dadra and Nagar Haveli and Daman and Diu'),
(56, 76, 'Lakshadweep'),
(57, 76, 'Delhi'),
(58, 76, 'Puducherry');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `theme_name` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme_name`, `user_id`) VALUES
(1, 'primary', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `org_id` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `org_id`, `username`, `email`, `password_hash`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'john_doe', 'john@example.com', 'hashed_password_1', 1, '2024-12-09 06:59:10', '2024-12-09 06:59:10'),
(2, 2, 'jane_smith', 'jane@healthsoft.com', 'hashed_password_2', 2, '2024-12-09 06:59:10', '2024-12-09 06:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `theme_name` varchar(60) NOT NULL,
  `login_theme` varchar(50) NOT NULL,
  `site_url` varchar(100) NOT NULL,
  `site_logo` varchar(250) NOT NULL,
  `menu_navigation` varchar(50) NOT NULL,
  `organisation_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `first_name`, `last_name`, `profile_picture`, `created_at`, `theme_name`, `login_theme`, `site_url`, `site_logo`, `menu_navigation`, `organisation_id`, `role_id`) VALUES
(2, 'sumit', '$2y$10$u.NswAwFvmRcK8weKf6gI.FDcSgNVaEW6KyumXLPW35YXBD5Xxujm', 'sumit22kalra@gmail.com', 'Sumit kumar', 'Kalra', '', '2024-10-28 04:33:37', 'dark', 'first', 'ga-tz', 'assets/images/671f822919db86.62619853.jpg', 'layout-2', NULL, NULL),
(4, 'sumitkalra', '$2y$10$YvYlg3X3vP9OKEioCpOxfex1ajZkYGgwj7F/PQsovREOsmQ73zA9S', 'sonam22kalra@gmail.com', 'sumit', 'kalra', '', '2024-10-28 05:17:36', 'dark', 'default', 'ga-ke', 'assets/images/logo.png', 'layout-1', NULL, NULL),
(5, 'amresh', '$2y$10$YvYlg3X3vP9OKEioCpOxfex1ajZkYGgwj7F/PQsovREOsmQ73zA9S', 'sonam212kalra@gmail.com', 'Amresh', 'kumar', NULL, '2024-12-10 10:37:52', 'light', 'first', 'ga-ke', 'assets/images/671f8384d35738.47885963.jpg', 'layout-2', 5, 4),
(6, 'samaira', '$2y$10$QEHJYsnFIgln97UqStdeluCo5.fagvFQCEW9lcaiONiCNOp5BaPMC', '', NULL, NULL, NULL, '2024-12-10 10:42:38', 'light', 'first', 'ga-ke', '', '', 5, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `org_id` (`org_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `color_settings`
--
ALTER TABLE `color_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `organisation`
--
ALTER TABLE `organisation`
  ADD PRIMARY KEY (`org_id`),
  ADD UNIQUE KEY `subdomain` (`subdomain`);

--
-- Indexes for table `organisation_modules`
--
ALTER TABLE `organisation_modules`
  ADD PRIMARY KEY (`org_module_id`),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `product_module`
--
ALTER TABLE `product_module`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `org_id` (`org_id`);

--
-- Indexes for table `product_modules`
--
ALTER TABLE `product_modules`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `product_module_menu`
--
ALTER TABLE `product_module_menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `organization_id` (`organization_id`);

--
-- Indexes for table `role_menu_permissions`
--
ALTER TABLE `role_menu_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `color_settings`
--
ALTER TABLE `color_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `organisation`
--
ALTER TABLE `organisation`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `organisation_modules`
--
ALTER TABLE `organisation_modules`
  MODIFY `org_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_module`
--
ALTER TABLE `product_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_modules`
--
ALTER TABLE `product_modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_module_menu`
--
ALTER TABLE `product_module_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role_menu_permissions`
--
ALTER TABLE `role_menu_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`org_id`);

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `product_modules` (`module_id`);

--
-- Constraints for table `organisation_modules`
--
ALTER TABLE `organisation_modules`
  ADD CONSTRAINT `organisation_modules_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`org_id`),
  ADD CONSTRAINT `organisation_modules_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `product_modules` (`module_id`);

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`org_id`),
  ADD CONSTRAINT `permissions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  ADD CONSTRAINT `permissions_ibfk_3` FOREIGN KEY (`module_id`) REFERENCES `product_module` (`module_id`);

--
-- Constraints for table `product_module`
--
ALTER TABLE `product_module`
  ADD CONSTRAINT `product_module_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`org_id`);

--
-- Constraints for table `product_module_menu`
--
ALTER TABLE `product_module_menu`
  ADD CONSTRAINT `product_module_menu_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `product_module` (`module_id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organisation` (`org_id`) ON DELETE CASCADE;

--
-- Constraints for table `role_menu_permissions`
--
ALTER TABLE `role_menu_permissions`
  ADD CONSTRAINT `role_menu_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_menu_permissions_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`org_id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
