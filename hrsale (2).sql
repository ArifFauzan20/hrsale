-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 13, 2023 at 09:06 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrsale`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_advance_salary`
--

CREATE TABLE `ci_advance_salary` (
  `advance_salary_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `salary_type` varchar(100) DEFAULT NULL,
  `month_year` varchar(255) NOT NULL,
  `advance_amount` decimal(65,2) NOT NULL,
  `one_time_deduct` varchar(50) NOT NULL,
  `monthly_installment` decimal(65,2) NOT NULL,
  `total_paid` decimal(65,2) NOT NULL,
  `reason` text NOT NULL,
  `status` int DEFAULT NULL,
  `is_deducted_from_salary` int DEFAULT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_announcements`
--

CREATE TABLE `ci_announcements` (
  `announcement_id` int NOT NULL,
  `company_id` int NOT NULL,
  `department_id` varchar(255) NOT NULL,
  `title` varchar(200) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `published_by` int NOT NULL,
  `summary` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_assets`
--

CREATE TABLE `ci_assets` (
  `assets_id` int NOT NULL,
  `assets_category_id` int NOT NULL,
  `brand_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `company_asset_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `purchase_date` varchar(255) NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `warranty_end_date` varchar(255) NOT NULL,
  `asset_note` text NOT NULL,
  `asset_image` varchar(255) NOT NULL,
  `is_working` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_awards`
--

CREATE TABLE `ci_awards` (
  `award_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `award_type_id` int NOT NULL,
  `associated_goals` text,
  `gift_item` varchar(200) NOT NULL,
  `cash_price` decimal(65,2) NOT NULL,
  `award_photo` varchar(255) NOT NULL,
  `award_month_year` varchar(200) NOT NULL,
  `award_information` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_company_membership`
--

CREATE TABLE `ci_company_membership` (
  `company_membership_id` int NOT NULL,
  `company_id` int NOT NULL,
  `membership_id` int NOT NULL,
  `subscription_type` varchar(25) NOT NULL,
  `update_at` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_company_membership`
--

INSERT INTO `ci_company_membership` (`company_membership_id`, `company_id`, `membership_id`, `subscription_type`, `update_at`, `created_at`) VALUES
(1, 2, 6, '2', '2021-05-17 04:07:01', '2021-05-17 04:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `ci_complaints`
--

CREATE TABLE `ci_complaints` (
  `complaint_id` int NOT NULL,
  `company_id` int NOT NULL,
  `complaint_from` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `complaint_date` varchar(255) NOT NULL,
  `complaint_against` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_contract_options`
--

CREATE TABLE `ci_contract_options` (
  `contract_option_id` int NOT NULL,
  `user_id` int NOT NULL,
  `salay_type` varchar(200) DEFAULT NULL,
  `contract_tax_option` int NOT NULL,
  `is_fixed` int NOT NULL,
  `option_title` varchar(200) DEFAULT NULL,
  `contract_amount` decimal(65,2) DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_countries`
--

CREATE TABLE `ci_countries` (
  `country_id` int NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_countries`
--

INSERT INTO `ci_countries` (`country_id`, `country_code`, `country_name`) VALUES
(1, '+93', 'Afghanistan'),
(2, '+355', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `ci_currencies`
--

CREATE TABLE `ci_currencies` (
  `currency_id` int NOT NULL,
  `country_name` varchar(150) NOT NULL,
  `currency_name` varchar(20) NOT NULL,
  `currency_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_currencies`
--

INSERT INTO `ci_currencies` (`currency_id`, `country_name`, `currency_name`, `currency_code`) VALUES
(1, 'Afghanistan', 'Afghan afghani', 'AFN'),
(2, 'Albania', 'Albanian lek', 'ALL'),
(3, 'Algeria', 'Algerian dinar', 'DZD'),
(6, 'Angola', 'Angolan kwanza', 'AOA'),
(10, 'Argentina', 'Argentine peso', 'ARS'),
(11, 'Armenia', 'Armenian dram', 'AMD'),
(12, 'Aruba', 'Aruban florin', 'AWG'),
(13, 'Australia', 'Australian dollar', 'AUD'),
(15, 'Azerbaijan', 'Azerbaijani manat', 'AZN'),
(16, 'Bahamas', 'Bahamian dollar', 'BSD'),
(17, 'Bahrain', 'Bahraini dinar', 'BHD'),
(18, 'Bangladesh', 'Bangladeshi taka', 'BDT'),
(19, 'Barbados', 'Barbadian dollar', 'BBD'),
(20, 'Belarus', 'Belarusian ruble', 'BYR'),
(22, 'Belize', 'Belize dollar', 'BZD'),
(24, 'Bermuda', 'Bermudian dollar', 'BMD'),
(25, 'Bhutan', 'Bhutanese ngultrum', 'BTN'),
(26, 'Bolivia', 'Bolivian boliviano', 'BOB'),
(27, 'Bosnia and Herzegovina', 'Bosnia and Herzegovi', 'BAM'),
(30, 'Brazil', 'Brazilian real', 'BRL'),
(33, 'Bulgaria', 'Bulgarian lev', 'BGN'),
(35, 'Burundi', 'Burundian franc', 'BIF'),
(36, 'Cambodia', 'Cambodian riel', 'KHR'),
(38, 'Canada', 'Canadian dollar', 'CAD'),
(39, 'Cape Verde', 'Cape Verdean escudo', 'CVE'),
(40, 'Cayman Islands', 'Cayman Islands dolla', 'KYD'),
(43, 'Chile', 'Chilean peso', 'CLP'),
(44, 'China', 'Chinese yuan', 'CNY'),
(47, 'Colombia', 'Colombian peso', 'COP'),
(48, 'Comoros', 'Comorian franc', 'KMF'),
(49, 'Congo', 'Congolese franc', 'CDF'),
(52, 'Costa Rica', 'Costa Rican', 'CRC'),
(54, 'Croatia (Hrvatska)', 'Croatian kuna', 'HRK'),
(55, 'Cuba', 'Cuban convertible pe', 'CUC'),
(57, 'Czech Republic', 'Czech koruna', 'CZK'),
(58, 'Denmark', 'Danish krone', 'DKK'),
(59, 'Djibouti', 'Djiboutian franc', 'DJF'),
(60, 'Dominica', 'East Caribbean dolla', 'XCD'),
(61, 'Dominican Republic', 'Dominican peso', 'DOP'),
(64, 'Egypt', 'Egyptian pound', 'EGP'),
(67, 'Eritrea', 'Eritrean nakfa', 'ERN'),
(69, 'Ethiopia', 'Ethiopian birr', 'ETB'),
(71, 'Falkland Islands', 'Falkland Islands pou', 'FKP'),
(73, 'Fiji Islands', 'Fiji Dollars', 'FJD'),
(79, 'Gabon', 'Central African CFA ', 'XAF'),
(80, 'Gambia The', 'Gambian dalasi', 'GMD'),
(81, 'Georgia', 'Georgian lari', 'GEL'),
(83, 'Ghana', 'Ghana cedi', 'GHS'),
(84, 'Gibraltar', 'Gibraltar pound', 'GIP'),
(90, 'Guatemala', 'Guatemalan quetzal', 'GTQ'),
(92, 'Guinea', 'Guinean franc', 'GNF'),
(94, 'Guyana', 'Guyanese dollar', 'GYD'),
(95, 'Haiti', 'Haitian gourde', 'HTG'),
(97, 'Honduras', 'Honduran lempira', 'HNL'),
(98, 'Hong Kong S.A.R.', 'Hong Kong dollar', 'HKD'),
(99, 'Hungary', 'Hungarian forint', 'HUF'),
(100, 'Iceland', 'Icelandic króna\n', 'ISK'),
(101, 'India', 'Indian rupee', 'INR'),
(102, 'Indonesia', 'Indonesian rupiah', 'IDR'),
(103, 'Iran', 'Iranian rial', 'IRR'),
(104, 'Iraq', 'Iraqi dinar', 'IQD'),
(106, 'Israel', 'Israeli new shekel', 'ILS'),
(108, 'Jamaica', 'Jamaican dollar', 'JMD'),
(109, 'Japan', 'Japanese yen', 'JPY'),
(111, 'Jordan', 'Jordanian dinar', 'JOD'),
(112, 'Kazakhstan', 'Kazakhstani tenge', 'KZT'),
(113, 'Kenya', 'Kenyan shilling', 'KES'),
(115, 'Korea North', 'North Korean won', 'KPW'),
(116, 'Korea South', 'Korea (South) Won', 'KRW'),
(117, 'Kuwait', 'Kuwaiti dinar', 'KWD'),
(118, 'Kyrgyzstan', 'Kyrgyzstani som', 'KGS'),
(119, 'Laos', 'Lao kip', 'LAK'),
(121, 'Lebanon', 'Lebanese pound', 'LBP'),
(122, 'Lesotho', 'Lesotho loti', 'LSL'),
(123, 'Liberia', 'Liberian dollar', 'LRD'),
(124, 'Libya', 'Libyan dinar', 'LYD'),
(128, 'Macau S.A.R.', 'Macanese pataca', 'MOP'),
(129, 'Macedonia', 'Macedonian denar', 'MKD'),
(130, 'Madagascar', 'Malagasy ariary', 'MGA'),
(131, 'Malawi', 'Malawian kwacha', 'MWK'),
(132, 'Malaysia', 'Malaysian ringgit', 'MYR'),
(133, 'Maldives', 'Maldivian rufiyaa', 'MVR'),
(134, 'Mali', 'West African CFA fra', 'XOF'),
(136, 'Man (Isle of)', 'Manx pound', 'IMP'),
(139, 'Mauritania', 'Mauritanian ouguiya', 'MRO'),
(140, 'Mauritius', 'Mauritian rupee', 'MUR'),
(142, 'Mexico', 'Mexican peso', 'MXN'),
(144, 'Moldova', 'Moldovan leu', 'MDL'),
(146, 'Mongolia', 'Mongolian tögrög', 'MNT'),
(148, 'Morocco', 'Moroccan dirham', 'MAD'),
(149, 'Mozambique', 'Mozambican metical', 'MZN'),
(150, 'Myanmar', 'Burmese kyat', 'MMK'),
(151, 'Namibia', 'Namibian dollar', 'NAD'),
(153, 'Nepal', 'Nepalese rupee', 'NPR'),
(154, 'Netherlands Antilles', 'Dutch Guilder', 'ANG'),
(157, 'New Zealand', 'New Zealand dollar', 'NZD'),
(158, 'Nicaragua', 'Nicaraguan córdoba', 'NIO'),
(160, 'Nigeria', 'Nigerian naira', 'NGN'),
(164, 'Norway', 'Norwegian krone', 'NOK'),
(165, 'Oman', 'Omani rial', 'OMR'),
(166, 'Pakistan', 'Pakistani rupee', 'PKR'),
(169, 'Panama', 'Panamanian balboa', 'PAB'),
(170, 'Papua new Guinea', 'Papua New Guinean ki', 'PGK'),
(171, 'Paraguay', 'Paraguayan guaraní\n', 'PYG'),
(172, 'Peru', 'Peruvian nuevo sol', 'PEN'),
(173, 'Philippines', 'Philippine peso', 'PHP'),
(175, 'Poland', 'Polish złoty\n', 'PLN'),
(178, 'Qatar', 'Qatari riyal', 'QAR'),
(180, 'Romania', 'Romanian leu', 'RON'),
(181, 'Russia', 'Russian ruble', 'RUB'),
(182, 'Rwanda', 'Rwandan franc', 'RWF'),
(183, 'Saint Helena', 'Saint Helena pound', 'SHP'),
(188, 'Samoa', 'Samoan tālā\n', 'WST'),
(191, 'Saudi Arabia', 'Saudi riyal', 'SAR'),
(193, 'Serbia', 'Serbian dinar', 'RSD'),
(194, 'Seychelles', 'Seychellois rupee', 'SCR'),
(195, 'Sierra Leone', 'Sierra Leonean leone', 'SLL'),
(196, 'Singapore', 'Singapore dollar\n', 'SGD'),
(200, 'Solomon Islands', 'Solomon Islands doll', 'SBD'),
(201, 'Somalia', 'Somali shilling', 'SOS'),
(202, 'South Africa', 'South African rand', 'ZAR'),
(204, 'South Sudan', 'South Sudanese pound', 'SSP'),
(205, 'Spain', 'Euro', 'EUR'),
(206, 'Sri Lanka', 'Sri Lankan rupee', 'LKR'),
(207, 'Sudan', 'Sudanese pound', 'SDG'),
(208, 'Suriname', 'Surinamese dollar', 'SRD'),
(210, 'Swaziland', 'Swazi lilangeni', 'SZL'),
(211, 'Sweden', 'Swedish krona', 'SEK'),
(212, 'Switzerland', 'Swiss franc', 'CHF'),
(213, 'Syria', 'Syrian pound', 'SYP'),
(214, 'Taiwan', 'New Taiwan dollar', 'TWD'),
(215, 'Tajikistan', 'Tajikistani somoni', 'TJS'),
(216, 'Tanzania', 'Tanzanian shilling', 'TZS'),
(217, 'Thailand', 'Thai baht', 'THB'),
(220, 'Tonga', 'Tongan paʻanga\n', 'TOP'),
(221, 'Trinidad And Tobago', 'Trinidad and Tobago ', 'TTD'),
(222, 'Tunisia', 'Tunisian dinar', 'TND'),
(223, 'Turkey', 'Turkish lira', 'TRY'),
(224, 'Turkmenistan', 'Turkmenistan manat', 'TMT'),
(227, 'Uganda', 'Ugandan shilling', 'UGX'),
(228, 'Ukraine', 'Ukrainian hryvnia', 'UAH'),
(229, 'United Arab Emirates', 'United Arab Emirates', 'AED'),
(230, 'United Kingdom', 'British pound', 'GBP'),
(231, 'United States', 'United States Dollar', 'USD'),
(233, 'Uruguay', 'Uruguayan peso', 'UYU'),
(234, 'Uzbekistan', 'Uzbekistani som', 'UZS'),
(235, 'Vanuatu', 'Vanuatu vatu', 'VUV'),
(237, 'Venezuela', 'Venezuelan bolívar\n', 'VEF'),
(238, 'Vietnam', 'Vietnamese dong\n', 'VND'),
(241, 'Wallis And Futuna Islands', 'CFP franc', 'XPF'),
(243, 'Yemen', 'Yemeni rial', 'YER'),
(244, 'Yugoslavia', 'Yugoslav dinar', 'YUM'),
(245, 'Zambia', 'Zambian kwacha', 'ZMW'),
(246, 'Zimbabwe', 'Botswana pula', 'BWP');

-- --------------------------------------------------------

--
-- Table structure for table `ci_database_backup`
--

CREATE TABLE `ci_database_backup` (
  `backup_id` int NOT NULL,
  `backup_file` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_departments`
--

CREATE TABLE `ci_departments` (
  `department_id` int NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `company_id` int NOT NULL,
  `department_head` int DEFAULT '0',
  `added_by` int NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_departments`
--

INSERT INTO `ci_departments` (`department_id`, `department_name`, `company_id`, `department_head`, `added_by`, `created_at`) VALUES
(16, 'Liutenant', 2, 21, 2, '05-01-2023 01:26:44');

-- --------------------------------------------------------

--
-- Table structure for table `ci_designations`
--

CREATE TABLE `ci_designations` (
  `designation_id` int NOT NULL,
  `department_id` int NOT NULL,
  `company_id` int NOT NULL,
  `designation_name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_designations`
--

INSERT INTO `ci_designations` (`designation_id`, `department_id`, `company_id`, `designation_name`, `description`, `created_at`) VALUES
(15, 16, 2, 'Sergeant', '', '05-01-2023 01:43:30'),
(16, 16, 2, 'Staff Sergent', '', '05-01-2023 04:33:11'),
(17, 19, 2, 'ds1', '', '10-01-2023 08:33:08');

-- --------------------------------------------------------

--
-- Table structure for table `ci_email_template`
--

CREATE TABLE `ci_email_template` (
  `template_id` int NOT NULL,
  `template_code` varchar(255) NOT NULL,
  `template_type` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_email_template`
--

INSERT INTO `ci_email_template` (`template_id`, `template_code`, `template_type`, `name`, `subject`, `message`, `status`) VALUES
(1, 'code1', 'super_admin', 'Forgot Password', 'Forgot Password', '&lt;p&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Hi There,&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;There was recently a request for password for your {site_name} account.&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;To reset password, visit the following link&lt;/span&gt;&amp;nbsp;&lt;a href=\"{site_url}erp/verified-password?v={user_id}\" title=\"Reset Password\" target=\"_blank\"&gt;&lt;strong&gt;&lt;span style=\"forced-color-adjust:none;color:#6699cc;\"&gt;Reset Password&lt;/span&gt;&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;If this was a mistake, just ignore this email and nothing will happen.&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;----&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Thank You,&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;{site_name}&lt;/span&gt;&lt;/p&gt;', 1),
(2, 'code1', 'super_admin', 'Password Changed Successfully', 'Password Changed Successfully', '&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Hi There,&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Congratulations! Your password has been updated successfully.&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Your Username is: {username}&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Your new password is: {password}&lt;/span&gt;&lt;br /&gt;&lt;/p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;----&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Thank You,&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;{site_name}&lt;/span&gt;', 1),
(5, 'code1', 'super_admin', 'Add New Employee|Client|SuperAdmin User', 'Warm Welcome', '&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;&lt;span style=\"forced-color-adjust:none;box-sizing:border-box;\"&gt;&lt;/span&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Hi There,&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Welcome to {site_name}. We have listed your sign-in details below, please make sure you keep them safe.&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Your Username is: {user_username}&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Your Password is: {user_password}&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;&lt;a href=\"{site_url}erp/login\" title=\"Login Here\" target=\"_blank\"&gt;Login Here&lt;/a&gt;&lt;/p&gt;&lt;p class=\"mt-4\" style=\"margin-bottom:0px;box-sizing:border-box;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;margin-top:1.5rem !important;\"&gt;----&lt;br style=\"box-sizing:border-box;\" /&gt;Thank You&lt;br style=\"box-sizing:border-box;\" /&gt;{site_name}&lt;/p&gt;', 1),
(8, 'code1', 'super_admin', 'Contact Us | From Frontend', 'Contact Us', '&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;&lt;span style=\"forced-color-adjust:none;box-sizing:border-box;\"&gt;Hi There,&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;This email was sent through your support contact form on {site_name}.&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;&lt;/span&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Sender: {full_name}&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;Subject: {subject}&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;Email: {email}&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Message:&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;{message}&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;You can reply directly to this email to respond to {full_name}&lt;/p&gt;&lt;p class=\"mt-4\" style=\"margin-bottom:0px;box-sizing:border-box;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;margin-top:1.5rem !important;\"&gt;----&lt;br style=\"box-sizing:border-box;\" /&gt;Thank You&lt;br style=\"box-sizing:border-box;\" /&gt;{&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;site_name&lt;/span&gt;}&lt;/p&gt;', 1),
(9, 'code1', 'super_admin', 'New Project Assigned', 'New Project Assigned', '&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Hi There,&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;New project has been assigned to you.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Project Name: {project_name}&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Project Due Date: {project_due_date}&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;----&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Thank You,&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;{site_name}&lt;/span&gt;&lt;/p&gt;', 1),
(10, 'code1', 'super_admin', 'New Task Assigned', 'New Task Assigned', '&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Hi There,&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;New task has been assigned to you.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Task Name: {task_name}&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Task Due Date: {task_due_date}&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;----&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Thank You,&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;{site_name}&lt;/span&gt;&lt;/p&gt;', 1),
(11, 'code1', 'super_admin', 'New Award', 'Award Received', '&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Hi There,&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;You have been awarded with &lt;span style=\"text-decoration:underline;\"&gt;{award_name}&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;You can view this award by logging into the portal.&lt;/span&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;----&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Thank You,&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;{site_name}&lt;/span&gt;&lt;/p&gt;', 1),
(12, 'code1', 'super_admin', 'New Ticket Inquiry', 'New Inquiry [#{ticket_code}]', '&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Hi There,&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;You have received a new inquiry&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Inquiry code: &lt;span style=\"text-decoration:underline;\"&gt;&lt;strong&gt;#{ticket_code}&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;You can view this &lt;/span&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;inquiry&amp;nbsp;&lt;/span&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;by logging into the portal.&lt;/span&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;----&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Thank You,&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;{site_name}&lt;/span&gt;&lt;/p&gt;', 1),
(13, 'code1', 'super_admin', 'New Leave Requested | For Company', 'New Leave Request', '&lt;p style=\"box-sizing:border-box;margin-bottom:1rem;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Hi There,&lt;/span&gt;&lt;/p&gt;&lt;p style=\"box-sizing:border-box;margin-bottom:1rem;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;&lt;span style=\"text-decoration:underline;\"&gt;&lt;strong&gt;{employee_name}&lt;/strong&gt;&lt;/span&gt; wants a leave &lt;strong&gt;&lt;span style=\"text-decoration:underline;\"&gt;{leave_type}&lt;/span&gt;&lt;/strong&gt; from you. You can view the leave details by logging into the portal.&lt;/span&gt;&lt;/p&gt;&lt;p style=\"box-sizing:border-box;margin-bottom:1rem;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;----&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Thank You,&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;{site_name}&lt;/span&gt;&lt;/p&gt;', 1),
(14, 'code1', 'super_admin', 'Leave Approved | For Employee', 'Your Leave Approved', '&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Hi There,&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Congratulations! Your leave &lt;strong&gt;&lt;span style=\"text-decoration:underline;\"&gt;{leave_type}&lt;/span&gt;&lt;/strong&gt; request from {start_date} to {end_date} has been approved by your company management.&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, Helvetica Neue, Arial, Noto Sans, sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Remarks:&lt;/span&gt;&lt;/span&gt;&lt;br style=\"font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-stroke-width:0px;text-decoration-thickness:initial;text-decoration-style:initial;text-decoration-color:initial;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-stroke-width:0px;text-decoration-thickness:initial;text-decoration-style:initial;text-decoration-color:initial;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;{remarks}&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;You can view the leave details by logging into the portal.&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;----&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Thank You,&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;{site_name}&lt;/span&gt;&lt;/p&gt;', 1),
(15, 'code1', 'super_admin', 'Leave Rejected | For Employee', 'Your Leave Rejected', '&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Hi There,&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Unfortunately! Your leave&amp;nbsp;&lt;strong&gt;&lt;span style=\"text-decoration-line:underline;\"&gt;{leave_type}&lt;/span&gt;&lt;/strong&gt;&amp;nbsp;request from {start_date} to {end_date} has been rejected by your company management.&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, Helvetica Neue, Arial, Noto Sans, sans-serif;\"&gt;&lt;span style=\"font-size:14px;\"&gt;Reject Reason:&lt;/span&gt;&lt;/span&gt;&lt;br style=\"font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-stroke-width:0px;text-decoration-thickness:initial;text-decoration-style:initial;text-decoration-color:initial;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-stroke-width:0px;text-decoration-thickness:initial;text-decoration-style:initial;text-decoration-color:initial;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;{remarks}&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;You can view the leave details by logging into the portal.&lt;/span&gt;&lt;/p&gt;&lt;p style=\"margin-bottom:1rem;box-sizing:border-box;color:#4e5155;font-family:Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif;font-size:14.304px;background-color:#ffffff;\"&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;----&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Thank You,&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;{site_name}&lt;/span&gt;&lt;/p&gt;', 1),
(16, 'code1', 'super_admin', 'New Job Posted | For Employee', 'New Job Posted', '&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Hi There,&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;We would like to announce a new vacancy for a &lt;strong&gt;&lt;span style=\"text-decoration:underline;\"&gt;{job_title}&lt;/span&gt;&lt;/strong&gt;.&lt;/span&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Suitable applicants can send submit their resumes before &lt;span style=\"text-decoration:underline;\"&gt;&lt;strong&gt;{closing_date}&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;You can view a complete job description by logging into the portal.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;----&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Thank You,&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;{site_name}&lt;/span&gt;&lt;/p&gt;', 1),
(17, 'code1', 'super_admin', 'Payslip Created | For Employee', 'Salary Slip for {month_year}', '&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;Hi There,&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;New Payslip is created for {month_year}&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;You can view this payslip by logging into the portal.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;background-color:#ffffff;\"&gt;if you have any question, do not hesitate to contact your HR Department.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;----&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;Thank You,&lt;/span&gt;&lt;br style=\"color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;box-sizing:border-box;\" /&gt;&lt;span style=\"forced-color-adjust:none;color:#8094ae;font-family:Roboto, sans-serif, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif;font-size:14px;\"&gt;{company_name}&lt;/span&gt;&lt;/p&gt;', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_employee_contacts`
--

CREATE TABLE `ci_employee_contacts` (
  `contact_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `is_primary` int DEFAULT NULL,
  `is_dependent` int DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `work_phone` varchar(255) DEFAULT NULL,
  `work_phone_extension` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `home_phone` varchar(255) DEFAULT NULL,
  `work_email` varchar(255) DEFAULT NULL,
  `personal_email` varchar(255) DEFAULT NULL,
  `address_1` mediumtext,
  `address_2` mediumtext,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_employee_exit`
--

CREATE TABLE `ci_employee_exit` (
  `exit_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `exit_date` varchar(255) NOT NULL,
  `exit_type_id` int NOT NULL,
  `exit_interview` int NOT NULL,
  `is_inactivate_account` int NOT NULL,
  `reason` mediumtext NOT NULL,
  `added_by` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_employee_exit`
--

INSERT INTO `ci_employee_exit` (`exit_id`, `company_id`, `employee_id`, `exit_date`, `exit_type_id`, `exit_interview`, `is_inactivate_account`, `reason`, `added_by`, `created_at`) VALUES
(1, 2, 4, '2023-01-03', 168, 1, 0, 'test1', 2, '03-01-2023 01:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `ci_erp_company_settings`
--

CREATE TABLE `ci_erp_company_settings` (
  `setting_id` int NOT NULL,
  `company_id` int NOT NULL,
  `default_currency` varchar(255) NOT NULL DEFAULT 'USD',
  `default_currency_symbol` varchar(100) NOT NULL DEFAULT 'USD',
  `notification_position` varchar(255) DEFAULT NULL,
  `notification_close_btn` varchar(255) DEFAULT NULL,
  `notification_bar` varchar(255) DEFAULT NULL,
  `date_format_xi` varchar(255) DEFAULT NULL,
  `default_language` varchar(200) NOT NULL DEFAULT 'en',
  `system_timezone` varchar(200) NOT NULL DEFAULT 'Asia/Bishkek',
  `paypal_email` varchar(100) DEFAULT NULL,
  `paypal_sandbox` varchar(10) DEFAULT NULL,
  `paypal_active` varchar(10) DEFAULT NULL,
  `stripe_secret_key` varchar(200) DEFAULT NULL,
  `stripe_publishable_key` varchar(200) DEFAULT NULL,
  `stripe_active` varchar(10) DEFAULT NULL,
  `invoice_terms_condition` text,
  `setup_modules` text NOT NULL,
  `header_background` varchar(100) NOT NULL DEFAULT 'bg-dark',
  `calendar_locale` varchar(100) NOT NULL DEFAULT 'en',
  `datepicker_locale` varchar(100) NOT NULL DEFAULT 'en',
  `login_page` int NOT NULL,
  `login_page_text` text,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_erp_company_settings`
--

INSERT INTO `ci_erp_company_settings` (`setting_id`, `company_id`, `default_currency`, `default_currency_symbol`, `notification_position`, `notification_close_btn`, `notification_bar`, `date_format_xi`, `default_language`, `system_timezone`, `paypal_email`, `paypal_sandbox`, `paypal_active`, `stripe_secret_key`, `stripe_publishable_key`, `stripe_active`, `invoice_terms_condition`, `setup_modules`, `header_background`, `calendar_locale`, `datepicker_locale`, `login_page`, `login_page_text`, `updated_at`) VALUES
(1, 2, 'GBP', 'GBP', 'toast-top-center', '0', 'true', 'Y-m-d', 'en', 'America/New_York', 'paypal@example.com', 'yes', 'yes', 'stripe_secret_key', 'stripe_publishable_key', 'yes', 'lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', 'a:9:{s:11:\"recruitment\";s:1:\"1\";s:6:\"travel\";s:1:\"1\";s:8:\"fmanager\";s:1:\"1\";s:8:\"orgchart\";s:1:\"1\";s:6:\"events\";s:1:\"1\";s:11:\"performance\";s:1:\"1\";s:5:\"award\";s:1:\"1\";s:8:\"training\";s:1:\"1\";s:9:\"inventory\";s:1:\"1\";}', 'bg-dark', 'en', 'en', 2, 'HRSALE provides you with a powerful and cost-effective HR platform to ensure you get the best from your employees and managers. HRSALE is a timely solution to upgrade and modernize your HR team to make it more efficient and consolidate your employee information into one intuitive HR system.', '15-05-2021 08:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `ci_erp_constants`
--

CREATE TABLE `ci_erp_constants` (
  `constants_id` int NOT NULL,
  `company_id` int NOT NULL,
  `type` varchar(100) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `field_one` varchar(200) DEFAULT NULL,
  `field_two` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_erp_constants`
--

INSERT INTO `ci_erp_constants` (`constants_id`, `company_id`, `type`, `category_name`, `field_one`, `field_two`, `created_at`) VALUES
(3, 81, 'company_type', 'Corporation', 'Null', 'Null', '09-05-2021 06:36:23'),
(4, 81, 'company_type', 'Exempt Organization', 'Null', 'Null', '09-05-2021 06:36:23'),
(5, 81, 'company_type', 'Partnership', 'Null', 'Null', '09-05-2021 06:36:23'),
(6, 81, 'company_type', 'Private Foundation', 'Null', 'Null', '09-05-2021 06:36:23'),
(7, 81, 'company_type', 'Limited Liability Company', 'Null', 'Null', '09-05-2021 06:36:23'),
(16, 81, 'religion', 'Agnosticism', 'Null', 'Null', '09-05-2021 06:36:23'),
(17, 81, 'religion', 'Atheism', 'Null', 'Null', '09-05-2021 06:36:23'),
(18, 81, 'religion', 'Baha\'i', 'Null', 'Null', '09-05-2021 06:36:23'),
(19, 81, 'religion', 'Buddhism', 'Null', 'Null', '09-05-2021 06:36:23'),
(20, 81, 'religion', 'Christianity', 'Null', 'Null', '09-05-2021 06:36:23'),
(21, 81, 'religion', 'Humanism', 'Null', 'Null', '09-05-2021 06:36:23'),
(22, 81, 'religion', 'Hinduism', 'Null', 'Null', '09-05-2021 06:36:23'),
(23, 81, 'religion', 'Islam', 'Null', 'Null', '09-05-2021 06:36:23'),
(24, 81, 'religion', 'Jainism', 'Null', 'Null', '09-05-2021 06:36:23'),
(25, 81, 'religion', 'Judaism', 'Null', 'Null', '09-05-2021 06:36:23'),
(26, 81, 'religion', 'Sikhism', 'Null', 'Null', '09-05-2021 06:36:23'),
(27, 81, 'religion', 'Zoroastrianism', 'Null', 'Null', '09-05-2021 06:36:23'),
(93, 81, 'payment_method', 'Cash', '', '', '09-05-2021 06:36:23'),
(94, 81, 'payment_method', 'Paypal', '', '', '09-05-2021 06:36:23'),
(95, 81, 'payment_method', 'Bank', '', '', '09-05-2021 06:36:23'),
(98, 81, 'payment_method', 'Stripe', '', '', '09-05-2021 06:36:23'),
(99, 81, 'payment_method', 'Paystack', '', '', '09-05-2021 06:36:23'),
(100, 81, 'payment_method', 'Cheque', '', '', '09-05-2021 06:36:23'),
(101, 2, 'competencies', 'Leadership', 'Null', 'Null', '15-05-2021 05:37:16'),
(102, 2, 'competencies', 'Professional Impact', 'Null', 'Null', '15-05-2021 05:37:59'),
(103, 2, 'competencies', 'Oral Communication', 'Null', 'Null', '15-05-2021 05:38:48'),
(104, 2, 'competencies', 'Self Management', 'Null', 'Null', '15-05-2021 05:39:03'),
(105, 2, 'competencies', 'Team Work', 'Null', 'Null', '15-05-2021 05:39:45'),
(106, 2, 'competencies2', 'Allocating Resources', 'Null', 'Null', '15-05-2021 05:40:05'),
(107, 2, 'competencies2', 'Organizational Design', 'Null', 'Null', '15-05-2021 05:40:24'),
(108, 2, 'competencies2', 'Organizational Savvy', 'Null', 'Null', '15-05-2021 05:40:28'),
(109, 2, 'competencies2', 'Business Process', 'Null', 'Null', '15-05-2021 05:40:40'),
(110, 2, 'competencies2', 'Project Management', 'Null', 'Null', '15-05-2021 05:40:49'),
(111, 2, 'tax_type', 'Capital Gains', '10', 'percentage', '15-05-2021 02:14:32'),
(112, 2, 'tax_type', 'Value-Added Tax', '5', 'percentage', '15-05-2021 02:15:08'),
(113, 2, 'tax_type', 'Excise Taxes', '12', 'fixed', '15-05-2021 02:15:37'),
(114, 2, 'tax_type', 'Wealth Taxes', '8', 'percentage', '15-05-2021 02:16:02'),
(115, 2, 'tax_type', 'No Tax', '0', 'fixed', '15-05-2021 02:16:28'),
(116, 2, 'leave_type', 'Annual', '10', '1', '15-05-2021 03:23:35'),
(117, 2, 'leave_type', 'Sick', '5', '1', '15-05-2021 03:23:45'),
(118, 2, 'leave_type', 'Hospitalisation', '2', '1', '15-05-2021 03:23:56'),
(119, 2, 'leave_type', 'Maternity', '7', '1', '15-05-2021 03:24:09'),
(120, 2, 'leave_type', 'Paternity', '7', '1', '15-05-2021 03:24:19'),
(121, 2, 'leave_type', 'LOP', '10', '1', '15-05-2021 03:24:26'),
(122, 2, 'leave_type', 'Bereavement', '10', '1', '15-05-2021 03:27:02'),
(123, 2, 'leave_type', 'Compensatory', '5', '1', '15-05-2021 03:27:18'),
(124, 2, 'leave_type', 'Sabbatical', '7', '1', '15-05-2021 03:27:32'),
(125, 2, 'training_type', 'Technical', 'Null', 'Null', '15-05-2021 03:35:04'),
(126, 2, 'training_type', 'Advanced research skills', 'Null', 'Null', '15-05-2021 03:35:16'),
(127, 2, 'training_type', 'Strong communication skills', 'Null', 'Null', '15-05-2021 03:35:25'),
(128, 2, 'training_type', 'Adaptability skills', 'Null', 'Null', '15-05-2021 03:35:33'),
(129, 2, 'training_type', 'Social media', 'Null', 'Null', '15-05-2021 03:35:47'),
(130, 2, 'training_type', 'Enthusiasm for Learning', 'Null', 'Null', '15-05-2021 03:36:01'),
(131, 2, 'training_type', 'Soft Skills', 'Null', 'Null', '15-05-2021 03:36:09'),
(132, 2, 'training_type', 'Professional Training', 'Null', 'Null', '15-05-2021 03:36:16'),
(133, 2, 'training_type', 'Team Training', 'Null', 'Null', '15-05-2021 03:36:23'),
(134, 2, 'goal_type', 'Revamp Employee experience', 'Null', 'Null', '15-05-2021 03:42:46'),
(135, 2, 'goal_type', 'Talent Retention', 'Null', 'Null', '15-05-2021 03:42:55'),
(136, 2, 'goal_type', 'Talent Acquisition', 'Null', 'Null', '15-05-2021 03:43:09'),
(137, 2, 'goal_type', 'Strengthen the Feedback Structure', 'Null', 'Null', '15-05-2021 04:16:26'),
(138, 2, 'goal_type', 'Boost Company culture', 'Null', 'Null', '15-05-2021 04:17:47'),
(139, 2, 'warning_type', 'Written Notice', 'Null', 'Null', '15-05-2021 04:33:13'),
(140, 2, 'warning_type', 'Letter of Written Reprimand', 'Null', 'Null', '15-05-2021 04:33:25'),
(141, 2, 'warning_type', 'Letter of Suspension', 'Null', 'Null', '15-05-2021 04:33:33'),
(142, 2, 'warning_type', 'Disciplinary Demotion', 'Null', 'Null', '15-05-2021 04:33:40'),
(143, 2, 'warning_type', 'Letter of Discharge', 'Null', 'Null', '15-05-2021 04:34:06'),
(144, 2, 'warning_type', 'Reassignment', 'Null', 'Null', '15-05-2021 04:34:13'),
(145, 2, 'warning_type', 'Non-discrimination', 'Null', 'Null', '15-05-2021 04:34:19'),
(146, 2, 'warning_type', 'Confidentiality', 'Null', 'Null', '15-05-2021 04:34:26'),
(147, 2, 'expense_type', 'Fuel Expense', 'Null', 'Null', '15-05-2021 06:04:48'),
(148, 2, 'expense_type', 'Advertising', 'Null', 'Null', '15-05-2021 06:05:11'),
(149, 2, 'expense_type', 'Salaries Expense', 'Null', 'Null', '15-05-2021 06:05:30'),
(150, 2, 'expense_type', 'Warranty Expense', 'Null', 'Null', '15-05-2021 06:05:58'),
(151, 2, 'expense_type', 'Other Expense', 'Null', 'Null', '15-05-2021 06:06:14'),
(152, 2, 'expense_type', 'Insurance', 'Null', 'Null', '15-05-2021 06:06:27'),
(153, 2, 'expense_type', 'Miscellaneous', 'Null', 'Null', '15-05-2021 06:06:51'),
(154, 2, 'expense_type', 'Payroll Tax', 'Null', 'Null', '15-05-2021 06:07:25'),
(155, 2, 'expense_type', 'Utilities', 'Null', 'Null', '15-05-2021 06:08:00'),
(156, 2, 'income_type', 'Capital Stock', 'Null', 'Null', '15-05-2021 06:09:03'),
(157, 2, 'income_type', 'Cash Over', 'Null', 'Null', '15-05-2021 06:09:15'),
(158, 2, 'income_type', 'Common Stock', 'Null', 'Null', '15-05-2021 06:09:28'),
(159, 2, 'income_type', 'Insurance Payable', 'Null', 'Null', '15-05-2021 06:11:42'),
(160, 2, 'income_type', 'Interest Income', 'Null', 'Null', '15-05-2021 06:11:53'),
(161, 2, 'expense_type', 'Interest Expense', 'Null', 'Null', '15-05-2021 06:12:12'),
(162, 2, 'income_type', 'Investment Income', 'Null', 'Null', '15-05-2021 06:12:55'),
(163, 2, 'income_type', 'Retained Earnings', 'Null', 'Null', '15-05-2021 06:13:39'),
(164, 2, 'income_type', 'Sales', 'Null', 'Null', '15-05-2021 06:14:27'),
(165, 2, 'income_type', 'Other Income', 'Null', 'Null', '15-05-2021 06:15:47'),
(167, 2, 'goal_type', 'TRAINING CRYSTAL REPORT', 'Null', 'Null', '22-12-2022 09:56:34'),
(168, 2, 'exit_type', 'test 1', 'Null', 'Null', '03-01-2023 01:13:14'),
(170, 2, 'warning_type', 'contoh', 'Null', 'Null', '04-01-2023 11:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `ci_erp_settings`
--

CREATE TABLE `ci_erp_settings` (
  `setting_id` int NOT NULL,
  `application_name` varchar(255) NOT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `trading_name` varchar(100) DEFAULT NULL,
  `registration_no` varchar(100) DEFAULT NULL,
  `government_tax` varchar(100) DEFAULT NULL,
  `company_type_id` int NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `country` int NOT NULL DEFAULT '0',
  `address_1` text,
  `address_2` text,
  `city` varchar(200) DEFAULT NULL,
  `zipcode` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `default_currency` varchar(255) NOT NULL DEFAULT 'USD',
  `is_ssl_available` varchar(11) NOT NULL DEFAULT 'on',
  `currency_converter` mediumtext,
  `notification_position` varchar(255) NOT NULL,
  `notification_close_btn` varchar(255) NOT NULL,
  `notification_bar` varchar(255) NOT NULL,
  `date_format_xi` varchar(255) NOT NULL,
  `enable_email_notification` varchar(255) NOT NULL,
  `email_type` varchar(100) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `favicon` varchar(200) NOT NULL,
  `frontend_logo` varchar(200) NOT NULL,
  `other_logo` varchar(255) DEFAULT NULL,
  `animation_effect` varchar(255) NOT NULL,
  `animation_effect_modal` varchar(255) NOT NULL,
  `animation_effect_topmenu` varchar(255) NOT NULL,
  `default_language` varchar(200) NOT NULL DEFAULT 'en',
  `system_timezone` varchar(200) NOT NULL DEFAULT 'Asia/Bishkek',
  `paypal_email` varchar(100) NOT NULL,
  `paypal_sandbox` varchar(10) NOT NULL,
  `paypal_active` varchar(10) NOT NULL,
  `stripe_secret_key` varchar(200) NOT NULL,
  `stripe_publishable_key` varchar(200) NOT NULL,
  `stripe_active` varchar(10) NOT NULL,
  `online_payment_account` int NOT NULL,
  `invoice_terms_condition` text,
  `enable_sms_notification` int NOT NULL,
  `sms_from` varchar(200) NOT NULL,
  `sms_service_plan_id` text,
  `sms_bearer_token` text,
  `auth_background` varchar(255) DEFAULT NULL,
  `hr_version` varchar(200) NOT NULL,
  `hr_release_date` varchar(100) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_erp_settings`
--

INSERT INTO `ci_erp_settings` (`setting_id`, `application_name`, `company_name`, `trading_name`, `registration_no`, `government_tax`, `company_type_id`, `email`, `contact_number`, `country`, `address_1`, `address_2`, `city`, `zipcode`, `state`, `default_currency`, `is_ssl_available`, `currency_converter`, `notification_position`, `notification_close_btn`, `notification_bar`, `date_format_xi`, `enable_email_notification`, `email_type`, `logo`, `favicon`, `frontend_logo`, `other_logo`, `animation_effect`, `animation_effect_modal`, `animation_effect_topmenu`, `default_language`, `system_timezone`, `paypal_email`, `paypal_sandbox`, `paypal_active`, `stripe_secret_key`, `stripe_publishable_key`, `stripe_active`, `online_payment_account`, `invoice_terms_condition`, `enable_sms_notification`, `sms_from`, `sms_service_plan_id`, `sms_bearer_token`, `auth_background`, `hr_version`, `hr_release_date`, `updated_at`) VALUES
(1, 'HRSALE', 'HRSALE', 'LG-859636', 'RG-741526333', 'Tx-8593214014', 3, 'info@timehrm.com', '+21258-9636', 119, '9856 Mandani Road', 'Columbia YH POL', 'Missouri', '45896', 'Missouri', 'USD', '0', 'a:160:{s:3:\"USD\";s:1:\"1\";s:3:\"AED\";s:4:\"3.67\";s:3:\"AFN\";s:5:\"78.37\";s:3:\"ALL\";s:6:\"101.16\";s:3:\"AMD\";s:6:\"522.46\";s:3:\"ANG\";s:4:\"1.79\";s:3:\"AOA\";s:5:\"649.6\";s:3:\"ARS\";s:5:\"93.96\";s:3:\"AUD\";s:4:\"1.29\";s:3:\"AWG\";s:4:\"1.79\";s:3:\"AZN\";s:3:\"1.7\";s:3:\"BAM\";s:4:\"1.61\";s:3:\"BBD\";s:1:\"2\";s:3:\"BDT\";s:5:\"84.85\";s:3:\"BGN\";s:4:\"1.61\";s:3:\"BHD\";s:5:\"0.376\";s:3:\"BIF\";s:7:\"1957.01\";s:3:\"BMD\";s:1:\"1\";s:3:\"BND\";s:4:\"1.33\";s:3:\"BOB\";s:4:\"6.87\";s:3:\"BRL\";s:4:\"5.29\";s:3:\"BSD\";s:1:\"1\";s:3:\"BTN\";s:5:\"73.36\";s:3:\"BWP\";s:4:\"10.8\";s:3:\"BYN\";s:4:\"2.53\";s:3:\"BZD\";s:1:\"2\";s:3:\"CAD\";s:4:\"1.21\";s:3:\"CDF\";s:7:\"1988.03\";s:3:\"CHF\";s:5:\"0.903\";s:3:\"CLP\";s:5:\"707.8\";s:3:\"CNY\";s:4:\"6.44\";s:3:\"COP\";s:7:\"3711.94\";s:3:\"CRC\";s:6:\"612.38\";s:3:\"CUC\";s:1:\"1\";s:3:\"CUP\";s:5:\"25.75\";s:3:\"CVE\";s:5:\"90.86\";s:3:\"CZK\";s:5:\"21.02\";s:3:\"DJF\";s:6:\"177.72\";s:3:\"DKK\";s:4:\"6.15\";s:3:\"DOP\";s:5:\"57.01\";s:3:\"DZD\";s:6:\"133.47\";s:3:\"EGP\";s:5:\"15.64\";s:3:\"ERN\";s:2:\"15\";s:3:\"ETB\";s:5:\"42.71\";s:3:\"EUR\";s:5:\"0.824\";s:3:\"FJD\";s:4:\"2.04\";s:3:\"FKP\";s:4:\"0.71\";s:3:\"FOK\";s:4:\"6.15\";s:3:\"GBP\";s:4:\"0.71\";s:3:\"GEL\";s:4:\"3.42\";s:3:\"GGP\";s:4:\"0.71\";s:3:\"GHS\";s:4:\"5.76\";s:3:\"GIP\";s:4:\"0.71\";s:3:\"GMD\";s:5:\"51.95\";s:3:\"GNF\";s:7:\"9856.45\";s:3:\"GTQ\";s:4:\"7.69\";s:3:\"GYD\";s:6:\"213.16\";s:3:\"HKD\";s:4:\"7.77\";s:3:\"HNL\";s:2:\"24\";s:3:\"HRK\";s:4:\"6.21\";s:3:\"HTG\";s:5:\"87.66\";s:3:\"HUF\";s:6:\"293.53\";s:3:\"IDR\";s:8:\"14265.53\";s:3:\"ILS\";s:4:\"3.28\";s:3:\"IMP\";s:4:\"0.71\";s:3:\"INR\";s:5:\"73.36\";s:3:\"IQD\";s:7:\"1458.51\";s:3:\"IRR\";s:8:\"42064.89\";s:3:\"ISK\";s:6:\"124.36\";s:3:\"JMD\";s:6:\"150.88\";s:3:\"JOD\";s:5:\"0.709\";s:3:\"JPY\";s:6:\"109.38\";s:3:\"KES\";s:6:\"107.18\";s:3:\"KGS\";s:5:\"84.68\";s:3:\"KHR\";s:7:\"4066.72\";s:3:\"KID\";s:4:\"1.29\";s:3:\"KMF\";s:5:\"405.4\";s:3:\"KRW\";s:7:\"1128.24\";s:3:\"KWD\";s:3:\"0.3\";s:3:\"KYD\";s:5:\"0.833\";s:3:\"KZT\";s:6:\"427.47\";s:3:\"LAK\";s:7:\"9409.64\";s:3:\"LBP\";s:6:\"1507.5\";s:3:\"LKR\";s:6:\"196.68\";s:3:\"LRD\";s:6:\"171.74\";s:3:\"LSL\";s:4:\"14.1\";s:3:\"LYD\";s:4:\"4.46\";s:3:\"MAD\";s:4:\"8.85\";s:3:\"MDL\";s:5:\"17.75\";s:3:\"MGA\";s:7:\"3755.12\";s:3:\"MKD\";s:5:\"50.76\";s:3:\"MMK\";s:7:\"1558.16\";s:3:\"MNT\";s:7:\"2846.09\";s:3:\"MOP\";s:1:\"8\";s:3:\"MRU\";s:5:\"35.84\";s:3:\"MUR\";s:4:\"40.4\";s:3:\"MVR\";s:5:\"15.33\";s:3:\"MWK\";s:6:\"796.85\";s:3:\"MXN\";s:5:\"19.87\";s:3:\"MYR\";s:4:\"4.12\";s:3:\"MZN\";s:5:\"58.75\";s:3:\"NAD\";s:4:\"14.1\";s:3:\"NGN\";s:6:\"422.32\";s:3:\"NIO\";s:5:\"35.03\";s:3:\"NOK\";s:4:\"8.26\";s:3:\"NPR\";s:6:\"117.38\";s:3:\"NZD\";s:4:\"1.38\";s:3:\"OMR\";s:5:\"0.384\";s:3:\"PAB\";s:1:\"1\";s:3:\"PEN\";s:4:\"3.67\";s:3:\"PGK\";s:4:\"3.51\";s:3:\"PHP\";s:4:\"47.8\";s:3:\"PKR\";s:6:\"151.64\";s:3:\"PLN\";s:4:\"3.73\";s:3:\"PYG\";s:7:\"6556.73\";s:3:\"QAR\";s:4:\"3.64\";s:3:\"RON\";s:4:\"4.06\";s:3:\"RSD\";s:5:\"97.23\";s:3:\"RUB\";s:5:\"73.95\";s:3:\"RWF\";s:6:\"999.71\";s:3:\"SAR\";s:4:\"3.75\";s:3:\"SBD\";s:4:\"7.86\";s:3:\"SCR\";s:5:\"15.44\";s:3:\"SDG\";s:6:\"398.45\";s:3:\"SEK\";s:4:\"8.36\";s:3:\"SGD\";s:4:\"1.33\";s:3:\"SHP\";s:4:\"0.71\";s:3:\"SLL\";s:8:\"10261.51\";s:3:\"SOS\";s:6:\"578.45\";s:3:\"SRD\";s:5:\"14.15\";s:3:\"SSP\";s:6:\"177.64\";s:3:\"STN\";s:5:\"20.19\";s:3:\"SYP\";s:7:\"1286.59\";s:3:\"SZL\";s:4:\"14.1\";s:3:\"THB\";s:5:\"31.37\";s:3:\"TJS\";s:5:\"11.31\";s:3:\"TMT\";s:3:\"3.5\";s:3:\"TND\";s:4:\"2.72\";s:3:\"TOP\";s:4:\"2.23\";s:3:\"TRY\";s:4:\"8.46\";s:3:\"TTD\";s:3:\"6.8\";s:3:\"TVD\";s:4:\"1.29\";s:3:\"TWD\";s:5:\"27.93\";s:3:\"TZS\";s:7:\"2314.62\";s:3:\"UAH\";s:5:\"27.62\";s:3:\"UGX\";s:7:\"3529.82\";s:3:\"UYU\";s:5:\"44.13\";s:3:\"UZS\";s:8:\"10454.23\";s:3:\"VES\";s:10:\"2959224.82\";s:3:\"VND\";s:8:\"23123.31\";s:3:\"VUV\";s:6:\"107.04\";s:3:\"WST\";s:4:\"2.51\";s:3:\"XAF\";s:6:\"540.53\";s:3:\"XCD\";s:3:\"2.7\";s:3:\"XDR\";s:5:\"0.695\";s:3:\"XOF\";s:6:\"540.53\";s:3:\"XPF\";s:5:\"98.33\";s:3:\"YER\";s:6:\"249.75\";s:3:\"ZAR\";s:4:\"14.1\";s:3:\"ZMW\";s:5:\"22.42\";}', 'toast-top-center', '0', 'true', 'Y-m-d', '0', 'codeigniter', 'hrsale-logo-white.png', 'favicon_1520722747.png', 'logo.png', 'signin_logo_1553391482.png', 'fadeInDown', 'tada', 'tada', 'en', 'Asia/Bishkek', 'your.paypal.email@domain.com', 'yes', 'no', 'sk_test_51IrqtWJck1huBCXGjafHHFZzzK28jEJq7dsRRzegUH9uQ5X7nYMhPwcSueFUlixy1M86E4o3LhZU1jsSYgCAclNW00BXVEUbwX', 'pk_test_51IrqtWJck1huBCXGe7b6UalwItsUyRcMaqRgiWINpavr859Rcd3XYLnlm3pI9rVV3cVkaLKSIQMgTxupa6774r3b00PkCajPhD', 'yes', 2, 'lorem ipsum dolor sit', 0, '', NULL, NULL, '4910284', '1.0.0', '2021-05-09', '09-05-2021 06:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `ci_erp_users`
--

CREATE TABLE `ci_erp_users` (
  `user_id` int NOT NULL,
  `user_role_id` int DEFAULT NULL,
  `user_type` varchar(50) NOT NULL,
  `company_id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `trading_name` varchar(100) DEFAULT NULL,
  `registration_no` varchar(100) DEFAULT NULL,
  `government_tax` varchar(100) DEFAULT NULL,
  `company_type_id` int DEFAULT NULL,
  `profile_photo` varchar(255) NOT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `gender` varchar(20) NOT NULL,
  `address_1` text,
  `address_2` text,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `country` int DEFAULT NULL,
  `last_login_date` varchar(255) DEFAULT NULL,
  `last_logout_date` varchar(200) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `is_logged_in` int DEFAULT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_erp_users`
--

INSERT INTO `ci_erp_users` (`user_id`, `user_role_id`, `user_type`, `company_id`, `first_name`, `last_name`, `email`, `username`, `password`, `company_name`, `trading_name`, `registration_no`, `government_tax`, `company_type_id`, `profile_photo`, `contact_number`, `gender`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `country`, `last_login_date`, `last_logout_date`, `last_login_ip`, `is_logged_in`, `is_active`, `created_at`) VALUES
(2, 0, 'company', 2, 'Aileen', 'SMP', 'aileen@gmail.com', 'aileen', '$2y$12$5h9DaBUNerkZ04Yl4G8lAOQGlX1AWtOeCvHy8ar31zidMkULWrspu', 'PT SINAR METRINDO PERKASA', 'TRD-9853142', 'RG-153974520', 'TX-74521583', 3, 'a-sm.jpg', '081245422', '1', 'jl taman aries', 'MD 20815', 'jakarta barat', 'DKI JAKARTA', '20834', 101, '12-01-2023 18:56:44', '11-01-2023 20:13:18', '::1', 1, 1, '15-05-2021 08:11:26'),
(21, 2, 'staff', 2, 'Rikardo', 'Rahmat', 'rikardo@gmail.com', 'rikardo', '$2y$12$Peb3dKZsGxBtr0zA0fKLgexd8eTu85U4LStofpxOdlPxkuOqCnCqm', 'PT SINAR METRINDO PERKASA', '', '', '', 0, '1.png', '0812365988', '1', '', '', '', '', '', 0, '0', '0', '0', 0, 1, '05-01-2023 01:52:43'),
(23, 7, 'staff', 2, 'David', 'Condro', 'david@mail.com', 'david123', '$2y$12$ngHLX1MZvDUMV3EtmRyj.eCmq.Z5LcqEkoVS4mOjntlLEFUalIIE6', 'PT SINAR METRINDO PERKASA', '', '', '', 0, '2.png', '081256555', '1', '', '', '', '', '', 0, '0', '0', '0', 0, 1, '05-01-2023 04:37:13'),
(24, 8, 'staff', 2, 'Radit', 'epa', 'radit@mail.com', 'radit123', '$2y$12$nX/kWdBOzkMA/eO1m.C/uem6csqL8TVXA5qRtA/qX76NNw.KfUGVC', 'PT SINAR METRINDO PERKASA', '', '', '', 0, '1.png', '084557855', '1', '', '', '', '', '', 0, '0', '0', '0', 0, 1, '05-01-2023 04:38:40'),
(28, 6, 'staff', 2, 'jaka', '123', 'jaka@mail.com', 'jaka123', '$2y$12$3T6M1.IviKLw4LPs1TFx8.thlXmhB76HYdKD.g3xQvkHhZb8WIDU.', 'PT SINAR METRINDO PERKASA', '', '', '', 0, 't.jpg', '0812456885', '2', '', '', '', '', '', 0, '0', '0', '0', 0, 1, '10-01-2023 09:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `ci_erp_users_details`
--

CREATE TABLE `ci_erp_users_details` (
  `staff_details_id` int NOT NULL,
  `user_id` int NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `department_id` int NOT NULL,
  `designation_id` int NOT NULL,
  `sergeant_id` int DEFAULT NULL,
  `office_shift_id` int NOT NULL,
  `basic_salary` decimal(65,2) NOT NULL,
  `hourly_rate` decimal(65,2) NOT NULL,
  `salay_type` int NOT NULL,
  `leave_categories` varchar(255) NOT NULL DEFAULT 'all',
  `role_description` mediumtext,
  `date_of_joining` varchar(200) DEFAULT NULL,
  `date_of_leaving` varchar(200) DEFAULT NULL,
  `date_of_birth` varchar(200) DEFAULT NULL,
  `marital_status` int DEFAULT NULL,
  `religion_id` int DEFAULT NULL,
  `blood_group` varchar(200) DEFAULT NULL,
  `citizenship_id` int DEFAULT NULL,
  `bio` mediumtext,
  `experience` int DEFAULT NULL,
  `fb_profile` mediumtext,
  `twitter_profile` mediumtext,
  `gplus_profile` mediumtext,
  `linkedin_profile` mediumtext,
  `account_title` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `swift_code` varchar(255) DEFAULT NULL,
  `bank_branch` mediumtext,
  `contact_full_name` varchar(200) DEFAULT NULL,
  `contact_phone_no` varchar(200) DEFAULT NULL,
  `contact_email` varchar(200) DEFAULT NULL,
  `contact_address` mediumtext,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_erp_users_details`
--

INSERT INTO `ci_erp_users_details` (`staff_details_id`, `user_id`, `employee_id`, `department_id`, `designation_id`, `sergeant_id`, `office_shift_id`, `basic_salary`, `hourly_rate`, `salay_type`, `leave_categories`, `role_description`, `date_of_joining`, `date_of_leaving`, `date_of_birth`, `marital_status`, `religion_id`, `blood_group`, `citizenship_id`, `bio`, `experience`, `fb_profile`, `twitter_profile`, `gplus_profile`, `linkedin_profile`, `account_title`, `account_number`, `bank_name`, `iban`, `swift_code`, `bank_branch`, `contact_full_name`, `contact_phone_no`, `contact_email`, `contact_address`, `created_at`) VALUES
(21, 23, '703123', 16, 15, NULL, 1, '0.00', '0.00', 1, '0', 'Enter role description here..', '05-01-2023', '', '', 0, 0, '', 0, 'Enter staff bio here..', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '05-01-2023 04:37:13'),
(22, 24, '813883', 16, 16, NULL, 1, '0.00', '0.00', 1, '0', 'Enter role description here..', '05-01-2023', '', '', 0, 0, '', 0, 'Enter staff bio here..', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '05-01-2023 04:38:40'),
(24, 28, '314689', 16, 16, 1, 1, '0.00', '0.00', 1, '0', 'Enter role description here..', '10-01-2023', '', '', 0, 0, '', 0, 'Enter staff bio here..', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10-01-2023 09:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `ci_erp_users_role`
--

CREATE TABLE `ci_erp_users_role` (
  `role_id` int NOT NULL,
  `role_name` varchar(200) DEFAULT NULL,
  `role_access` varchar(200) DEFAULT NULL,
  `role_resources` text,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_estimates`
--

CREATE TABLE `ci_estimates` (
  `estimate_id` int NOT NULL,
  `estimate_number` varchar(255) NOT NULL,
  `company_id` int NOT NULL,
  `client_id` int NOT NULL,
  `project_id` int NOT NULL,
  `estimate_month` varchar(255) DEFAULT NULL,
  `estimate_date` varchar(255) NOT NULL,
  `estimate_due_date` varchar(255) NOT NULL,
  `sub_total_amount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(11) NOT NULL,
  `discount_figure` decimal(65,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(65,2) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(100) DEFAULT NULL,
  `total_discount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `grand_total` decimal(65,2) NOT NULL DEFAULT '0.00',
  `estimate_note` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `payment_method` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_estimates_items`
--

CREATE TABLE `ci_estimates_items` (
  `estimate_item_id` int NOT NULL,
  `estimate_id` int NOT NULL,
  `project_id` int NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_qty` varchar(255) NOT NULL,
  `item_unit_price` decimal(65,2) NOT NULL DEFAULT '0.00',
  `item_sub_total` decimal(65,2) NOT NULL DEFAULT '0.00',
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_events`
--

CREATE TABLE `ci_events` (
  `event_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `event_title` varchar(255) NOT NULL,
  `event_date` varchar(255) NOT NULL,
  `event_time` varchar(255) NOT NULL,
  `event_note` mediumtext NOT NULL,
  `event_color` varchar(200) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_finance_accounts`
--

CREATE TABLE `ci_finance_accounts` (
  `account_id` int NOT NULL,
  `company_id` int NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_balance` decimal(65,2) NOT NULL DEFAULT '0.00',
  `account_opening_balance` decimal(65,2) NOT NULL DEFAULT '0.00',
  `account_number` varchar(255) NOT NULL,
  `branch_code` varchar(255) NOT NULL,
  `bank_branch` text NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_finance_entity`
--

CREATE TABLE `ci_finance_entity` (
  `entity_id` int NOT NULL,
  `company_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact_number` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_finance_membership_invoices`
--

CREATE TABLE `ci_finance_membership_invoices` (
  `membership_invoice_id` int NOT NULL,
  `invoice_id` varchar(50) DEFAULT NULL,
  `company_id` int NOT NULL,
  `membership_id` int NOT NULL,
  `subscription_id` varchar(50) DEFAULT NULL,
  `membership_type` varchar(200) NOT NULL,
  `subscription` varchar(200) NOT NULL,
  `invoice_month` varchar(255) DEFAULT NULL,
  `membership_price` decimal(65,2) NOT NULL DEFAULT '0.00',
  `payment_method` varchar(200) NOT NULL,
  `transaction_date` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `receipt_url` longtext,
  `source_info` varchar(10) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_finance_membership_invoices`
--

INSERT INTO `ci_finance_membership_invoices` (`membership_invoice_id`, `invoice_id`, `company_id`, `membership_id`, `subscription_id`, `membership_type`, `subscription`, `invoice_month`, `membership_price`, `payment_method`, `transaction_date`, `description`, `receipt_url`, `source_info`, `created_at`) VALUES
(4, 'txn_1IrrDtJck1huBCXGA8vOl02B', 2, 6, '100585963', 'Pro Plan', '2', '2021-05', '59.00', 'Stripe', '2021-05-16 05:10:07', 'Free server unlimited approx 255k+ Premium collection', 'stripe.com', 'visa', '2021-05-16 05:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `ci_finance_transactions`
--

CREATE TABLE `ci_finance_transactions` (
  `transaction_id` int NOT NULL,
  `account_id` int NOT NULL,
  `company_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `transaction_date` varchar(255) NOT NULL,
  `transaction_type` varchar(100) NOT NULL,
  `entity_id` int NOT NULL,
  `entity_type` varchar(100) DEFAULT NULL,
  `entity_category_id` int NOT NULL,
  `description` mediumtext NOT NULL,
  `amount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `dr_cr` enum('dr','cr') NOT NULL,
  `payment_method_id` int NOT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `attachment_file` varchar(100) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_holidays`
--

CREATE TABLE `ci_holidays` (
  `holiday_id` int NOT NULL,
  `company_id` int NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `is_publish` tinyint(1) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_invoices`
--

CREATE TABLE `ci_invoices` (
  `invoice_id` int NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `company_id` int NOT NULL,
  `client_id` int NOT NULL,
  `project_id` int NOT NULL,
  `invoice_month` varchar(255) DEFAULT NULL,
  `invoice_date` varchar(255) NOT NULL,
  `invoice_due_date` varchar(255) NOT NULL,
  `sub_total_amount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(11) NOT NULL,
  `discount_figure` decimal(65,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(65,2) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(100) DEFAULT NULL,
  `total_discount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `grand_total` decimal(65,2) NOT NULL DEFAULT '0.00',
  `invoice_note` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `payment_method` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_invoices_items`
--

CREATE TABLE `ci_invoices_items` (
  `invoice_item_id` int NOT NULL,
  `invoice_id` int NOT NULL,
  `project_id` int NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_qty` varchar(255) NOT NULL,
  `item_unit_price` decimal(65,2) NOT NULL DEFAULT '0.00',
  `item_sub_total` decimal(65,2) NOT NULL DEFAULT '0.00',
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_languages`
--

CREATE TABLE `ci_languages` (
  `language_id` int NOT NULL,
  `language_name` varchar(255) NOT NULL,
  `language_code` varchar(255) NOT NULL,
  `language_flag` varchar(255) NOT NULL,
  `is_active` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_languages`
--

INSERT INTO `ci_languages` (`language_id`, `language_name`, `language_code`, `language_flag`, `is_active`, `created_at`) VALUES
(1, 'English', 'en', 'en.gif', 1, '09-05-2021 06:36:23'),
(3, 'Russian', 'ru', 'ru.gif', 1, '14-05-2021 08:22:21'),
(4, 'Dutch', 'nl', 'nl.gif', 1, '14-05-2021 09:39:11'),
(5, 'Portuguese', 'br', 'br.gif', 1, '15-05-2021 12:28:41'),
(6, 'Vietnamese', 'vn', 'vn.gif', 1, '15-05-2021 12:29:04'),
(7, 'Spanish', 'es', 'es.gif', 1, '15-05-2021 12:30:13'),
(8, 'Italiano', 'it', 'it.gif', 1, '15-05-2021 12:30:54'),
(9, 'Turkish', 'tr', 'tr.gif', 1, '15-05-2021 12:31:21'),
(10, 'French', 'fr', 'fr.gif', 1, '15-05-2021 12:31:39'),
(11, 'Chinese', 'cn', 'cn.gif', 1, '15-05-2021 12:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `ci_leads`
--

CREATE TABLE `ci_leads` (
  `lead_id` int NOT NULL,
  `company_id` int NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `gender` int NOT NULL,
  `address_1` text,
  `address_2` text,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `country` int NOT NULL,
  `status` int NOT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ci_leads`
--

INSERT INTO `ci_leads` (`lead_id`, `company_id`, `first_name`, `last_name`, `email`, `profile_photo`, `contact_number`, `gender`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `country`, `status`, `created_at`) VALUES
(1, 2, 'jaka', 'kakak', 'jaka1@gmail.com', 'server.png', '08125469547', 1, '', '', '', '', '', 0, 1, '22-12-2022 09:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `ci_leads_followup`
--

CREATE TABLE `ci_leads_followup` (
  `followup_id` int NOT NULL,
  `lead_id` int NOT NULL,
  `company_id` int NOT NULL,
  `next_followup` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_leave_applications`
--

CREATE TABLE `ci_leave_applications` (
  `leave_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `leave_type_id` int NOT NULL,
  `from_date` varchar(200) NOT NULL,
  `to_date` varchar(200) NOT NULL,
  `reason` mediumtext NOT NULL,
  `remarks` mediumtext,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_half_day` tinyint(1) DEFAULT NULL,
  `leave_attachment` varchar(255) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_meetings`
--

CREATE TABLE `ci_meetings` (
  `meeting_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `meeting_title` varchar(255) NOT NULL,
  `meeting_date` varchar(255) NOT NULL,
  `meeting_time` varchar(255) NOT NULL,
  `meeting_room` varchar(255) NOT NULL,
  `meeting_note` mediumtext NOT NULL,
  `meeting_color` varchar(200) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_membership`
--

CREATE TABLE `ci_membership` (
  `membership_id` int NOT NULL,
  `subscription_id` varchar(100) DEFAULT NULL,
  `membership_type` varchar(200) NOT NULL,
  `price` decimal(65,2) NOT NULL DEFAULT '0.00',
  `plan_duration` int NOT NULL,
  `total_employees` int NOT NULL DEFAULT '0',
  `description` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_membership`
--

INSERT INTO `ci_membership` (`membership_id`, `subscription_id`, `membership_type`, `price`, `plan_duration`, `total_employees`, `description`, `created_at`) VALUES
(6, '100585963', 'Pro Plan', '59.00', 2, 10, 'Free server unlimited approx 255k+ Premium collection', '09-05-2021 06:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `ci_module_attributes`
--

CREATE TABLE `ci_module_attributes` (
  `custom_field_id` int NOT NULL,
  `company_id` int NOT NULL,
  `module_id` int NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `attribute_label` varchar(255) NOT NULL,
  `attribute_type` varchar(255) NOT NULL,
  `col_width` varchar(100) DEFAULT NULL,
  `validation` int NOT NULL,
  `priority` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_module_attributes_select_value`
--

CREATE TABLE `ci_module_attributes_select_value` (
  `attributes_select_value_id` int NOT NULL,
  `company_id` int NOT NULL,
  `custom_field_id` int NOT NULL,
  `select_label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_module_attributes_values`
--

CREATE TABLE `ci_module_attributes_values` (
  `attributes_value_id` int NOT NULL,
  `company_id` int NOT NULL,
  `user_id` int NOT NULL,
  `module_attributes_id` int NOT NULL,
  `attribute_value` text,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_office_shifts`
--

CREATE TABLE `ci_office_shifts` (
  `office_shift_id` int NOT NULL,
  `company_id` int NOT NULL,
  `shift_name` varchar(255) NOT NULL,
  `monday_in_time` varchar(222) NOT NULL,
  `monday_out_time` varchar(222) NOT NULL,
  `tuesday_in_time` varchar(222) NOT NULL,
  `tuesday_out_time` varchar(222) NOT NULL,
  `wednesday_in_time` varchar(222) NOT NULL,
  `wednesday_out_time` varchar(222) NOT NULL,
  `thursday_in_time` varchar(222) NOT NULL,
  `thursday_out_time` varchar(222) NOT NULL,
  `friday_in_time` varchar(222) NOT NULL,
  `friday_out_time` varchar(222) NOT NULL,
  `saturday_in_time` varchar(222) NOT NULL,
  `saturday_out_time` varchar(222) NOT NULL,
  `sunday_in_time` varchar(222) NOT NULL,
  `sunday_out_time` varchar(222) NOT NULL,
  `created_at` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_office_shifts`
--

INSERT INTO `ci_office_shifts` (`office_shift_id`, `company_id`, `shift_name`, `monday_in_time`, `monday_out_time`, `tuesday_in_time`, `tuesday_out_time`, `wednesday_in_time`, `wednesday_out_time`, `thursday_in_time`, `thursday_out_time`, `friday_in_time`, `friday_out_time`, `saturday_in_time`, `saturday_out_time`, `sunday_in_time`, `sunday_out_time`, `created_at`) VALUES
(1, 2, 'office hour', '07:37', '17:14', '', '', '', '', '', '', '', '', '', '', '', '', '22-12-2022 10:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `ci_official_documents`
--

CREATE TABLE `ci_official_documents` (
  `document_id` int NOT NULL,
  `company_id` int NOT NULL,
  `license_name` varchar(255) NOT NULL,
  `document_type` varchar(255) NOT NULL,
  `license_no` varchar(200) DEFAULT NULL,
  `expiry_date` varchar(200) DEFAULT NULL,
  `document_file` varchar(255) NOT NULL,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_payslips`
--

CREATE TABLE `ci_payslips` (
  `payslip_id` int NOT NULL,
  `payslip_key` varchar(200) NOT NULL,
  `company_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `salary_month` varchar(200) NOT NULL,
  `wages_type` int NOT NULL,
  `payslip_type` varchar(50) NOT NULL,
  `basic_salary` decimal(65,2) NOT NULL DEFAULT '0.00',
  `daily_wages` decimal(65,2) NOT NULL DEFAULT '0.00',
  `hours_worked` varchar(50) NOT NULL DEFAULT '0',
  `total_allowances` decimal(65,2) NOT NULL DEFAULT '0.00',
  `total_commissions` decimal(65,2) NOT NULL DEFAULT '0.00',
  `total_statutory_deductions` decimal(65,2) NOT NULL DEFAULT '0.00',
  `total_other_payments` decimal(65,2) NOT NULL DEFAULT '0.00',
  `net_salary` decimal(65,2) NOT NULL DEFAULT '0.00',
  `payment_method` int NOT NULL,
  `pay_comments` mediumtext NOT NULL,
  `is_payment` int NOT NULL,
  `year_to_date` varchar(200) NOT NULL,
  `is_advance_salary_deduct` int NOT NULL,
  `advance_salary_amount` decimal(65,2) DEFAULT NULL,
  `is_loan_deduct` int NOT NULL,
  `loan_amount` decimal(65,2) NOT NULL,
  `status` int NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_payslip_allowances`
--

CREATE TABLE `ci_payslip_allowances` (
  `payslip_allowances_id` int NOT NULL,
  `payslip_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `is_taxable` int NOT NULL,
  `is_fixed` int NOT NULL,
  `pay_title` varchar(200) NOT NULL,
  `pay_amount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `salary_month` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_payslip_commissions`
--

CREATE TABLE `ci_payslip_commissions` (
  `payslip_commissions_id` int NOT NULL,
  `payslip_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `is_taxable` int NOT NULL,
  `is_fixed` int NOT NULL,
  `pay_title` varchar(200) NOT NULL,
  `pay_amount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `salary_month` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_payslip_other_payments`
--

CREATE TABLE `ci_payslip_other_payments` (
  `payslip_other_payment_id` int NOT NULL,
  `payslip_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `is_taxable` int NOT NULL,
  `is_fixed` int NOT NULL,
  `pay_title` varchar(200) NOT NULL,
  `pay_amount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `salary_month` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_payslip_statutory_deductions`
--

CREATE TABLE `ci_payslip_statutory_deductions` (
  `payslip_deduction_id` int NOT NULL,
  `payslip_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `is_fixed` int NOT NULL,
  `pay_title` varchar(200) NOT NULL,
  `pay_amount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `salary_month` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_performance_appraisal`
--

CREATE TABLE `ci_performance_appraisal` (
  `performance_appraisal_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `appraisal_year_month` varchar(255) NOT NULL,
  `remarks` mediumtext NOT NULL,
  `added_by` int NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_performance_appraisal_options`
--

CREATE TABLE `ci_performance_appraisal_options` (
  `performance_appraisal_options_id` int NOT NULL,
  `company_id` int NOT NULL,
  `appraisal_id` int NOT NULL,
  `appraisal_type` varchar(200) NOT NULL,
  `appraisal_option_id` int NOT NULL,
  `appraisal_option_value` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_performance_indicator`
--

CREATE TABLE `ci_performance_indicator` (
  `performance_indicator_id` int NOT NULL,
  `company_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `designation_id` int NOT NULL,
  `added_by` int NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_performance_indicator_options`
--

CREATE TABLE `ci_performance_indicator_options` (
  `performance_indicator_options_id` int NOT NULL,
  `company_id` int NOT NULL,
  `indicator_id` int NOT NULL,
  `indicator_type` varchar(200) NOT NULL,
  `indicator_option_id` int NOT NULL,
  `indicator_option_value` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_policies`
--

CREATE TABLE `ci_policies` (
  `policy_id` int NOT NULL,
  `company_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `added_by` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_projects`
--

CREATE TABLE `ci_projects` (
  `project_id` int NOT NULL,
  `company_id` int NOT NULL,
  `client_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `assigned_to` mediumtext,
  `associated_goals` text,
  `priority` varchar(255) NOT NULL,
  `project_no` varchar(255) DEFAULT NULL,
  `budget_hours` varchar(255) DEFAULT NULL,
  `summary` mediumtext NOT NULL,
  `description` mediumtext,
  `project_progress` varchar(255) NOT NULL,
  `project_note` longtext,
  `status` tinyint NOT NULL,
  `added_by` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_projects_bugs`
--

CREATE TABLE `ci_projects_bugs` (
  `project_bug_id` int NOT NULL,
  `company_id` int NOT NULL,
  `project_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `bug_note` text,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_projects_discussion`
--

CREATE TABLE `ci_projects_discussion` (
  `project_discussion_id` int NOT NULL,
  `company_id` int NOT NULL,
  `project_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `discussion_text` text,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_projects_files`
--

CREATE TABLE `ci_projects_files` (
  `project_file_id` int NOT NULL,
  `company_id` int NOT NULL,
  `project_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `attachment_file` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_projects_notes`
--

CREATE TABLE `ci_projects_notes` (
  `project_note_id` int NOT NULL,
  `company_id` int NOT NULL,
  `project_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `project_note` text,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_projects_timelogs`
--

CREATE TABLE `ci_projects_timelogs` (
  `timelogs_id` int NOT NULL,
  `project_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `total_hours` varchar(255) NOT NULL,
  `timelogs_memo` text NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_recent_activity`
--

CREATE TABLE `ci_recent_activity` (
  `activity_id` int NOT NULL,
  `company_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `module_id` int NOT NULL,
  `module_type` varchar(200) NOT NULL,
  `is_read` int NOT NULL DEFAULT '0',
  `added_by` int NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_rec_candidates`
--

CREATE TABLE `ci_rec_candidates` (
  `candidate_id` int NOT NULL,
  `company_id` int NOT NULL,
  `job_id` int NOT NULL,
  `designation_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `message` mediumtext NOT NULL,
  `job_resume` mediumtext NOT NULL,
  `application_status` int NOT NULL DEFAULT '0',
  `application_remarks` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_rec_candidates`
--

INSERT INTO `ci_rec_candidates` (`candidate_id`, `company_id`, `job_id`, `designation_id`, `staff_id`, `message`, `job_resume`, `application_status`, `application_remarks`, `created_at`) VALUES
(1, 2, 1, 2, 2, 'test', 'server.png', 1, 'application remarks here', '03-01-2023 08:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `ci_rec_interviews`
--

CREATE TABLE `ci_rec_interviews` (
  `job_interview_id` int NOT NULL,
  `company_id` int NOT NULL,
  `job_id` int NOT NULL,
  `designation_id` int NOT NULL,
  `staff_id` varchar(11) NOT NULL,
  `interview_place` varchar(255) NOT NULL,
  `interview_date` varchar(255) NOT NULL,
  `interview_time` varchar(255) NOT NULL,
  `interviewer_id` int NOT NULL,
  `description` mediumtext NOT NULL,
  `interview_remarks` text,
  `status` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_rec_interviews`
--

INSERT INTO `ci_rec_interviews` (`job_interview_id`, `company_id`, `job_id`, `designation_id`, `staff_id`, `interview_place`, `interview_date`, `interview_time`, `interviewer_id`, `description`, `interview_remarks`, `status`, `created_at`) VALUES
(1, 2, 1, 2, '2', 'online', '2023-01-04', '08:57', 4, 'percobaan', 'interview marks goes here', 2, '03-01-2023 08:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `ci_rec_jobs`
--

CREATE TABLE `ci_rec_jobs` (
  `job_id` int NOT NULL,
  `company_id` int NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `designation_id` int NOT NULL,
  `job_type` int NOT NULL,
  `job_vacancy` int NOT NULL,
  `gender` varchar(100) NOT NULL,
  `minimum_experience` varchar(255) NOT NULL,
  `date_of_closing` varchar(200) NOT NULL,
  `short_description` mediumtext NOT NULL,
  `long_description` mediumtext NOT NULL,
  `status` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_resignations`
--

CREATE TABLE `ci_resignations` (
  `resignation_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `notice_date` varchar(255) NOT NULL,
  `resignation_date` varchar(255) NOT NULL,
  `reason` mediumtext NOT NULL,
  `added_by` int NOT NULL,
  `status` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sergeans`
--

CREATE TABLE `ci_sergeans` (
  `sergeant_id` int NOT NULL,
  `department_id` int NOT NULL,
  `company_id` int NOT NULL,
  `designation_id` int NOT NULL,
  `sergeant_name` varchar(200) NOT NULL,
  `description` text,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_sergeans`
--

INSERT INTO `ci_sergeans` (`sergeant_id`, `department_id`, `company_id`, `designation_id`, `sergeant_name`, `description`, `created_at`) VALUES
(1, 16, 2, 15, 'sergeant 2', '', '05-01-2023 04:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sms_template`
--

CREATE TABLE `ci_sms_template` (
  `template_id` int NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_sms_template`
--

INSERT INTO `ci_sms_template` (`template_id`, `subject`, `message`, `created_at`) VALUES
(1, 'New Project Assigned', 'Hello {firstname}, you have been assigned a new project {project_name}', '2021-07-01'),
(2, 'New Task Assigned', 'Hello {firstname}, you have been assigned a new task {task_name}', '2021-07-01'),
(3, 'New Award', 'Hello {firstname}, you have been awarded with {award_name}', '2021-07-01'),
(4, 'Leave Approved', 'Hello {firstname}, you leave has been approved {leave_name}', '2021-07-01'),
(5, 'Leave Rejected', 'Hello {firstname}, you leave has been rejected {leave_name}', '2021-07-01'),
(6, 'Payslip Created', 'Hello {firstname}, your salary has been paid. Amount {salary_amount}', '2021-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `ci_staff_roles`
--

CREATE TABLE `ci_staff_roles` (
  `role_id` int NOT NULL,
  `company_id` int NOT NULL,
  `role_name` varchar(200) NOT NULL,
  `role_access` varchar(200) NOT NULL,
  `role_resources` longtext NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_staff_roles`
--

INSERT INTO `ci_staff_roles` (`role_id`, `company_id`, `role_name`, `role_access`, `role_resources`, `created_at`) VALUES
(6, 2, 'Liutenant	', '1', '0,attendance,hr_projects,project1,project1,project2,project3,project4,project5,project6,project7,project8,project9,project10,project11,projects_calendar,projects_sboard,hr_tasks,task1,task1,task2,task3,task4,task5,task6,task7,task8,tasks_calendar,tasks_sboard,hr_payroll,pay1,pay1,pay2,pay3,pay_history,hradvance_salary,advance_salary1,advance_salary2,advance_salary3,advance_salary4,hrloan,loan1,loan2,loan3,loan4,hr_helpdesk,helpdesk1,helpdesk2,helpdesk3,helpdesk4,helpdesk5,helpdesk6,helpdesk7,helpdesk8,hr_training,training1,training2,training3,training4,training6,training5,training7,trainer1,trainer1,trainer2,trainer3,trainer4,training_skill1,training_skill1,training_skill2,training_skill3,training_skill4,training_calendar,hr_assets,asset1,asset1,asset2,asset3,asset4,asset_cat1,asset_cat1,asset_cat2,asset_cat3,asset_cat4,asset_brand1,asset_brand1,asset_brand2,asset_brand3,asset_brand4,hr_awards,award1,award1,award2,award3,award4,award_type1,award_type1,award_type2,award_type3,award_type4,hr_travel,travel1,travel1,travel2,travel3,travel4,travel5,travel_type1,travel_type1,travel_type2,travel_type3,travel_type4,travel_calendar,hr_leave,leave1,leave2,leave3,leave4,leave6,leave7,leave_calendar,leave_type1,leave_type1,leave_type2,leave_type3,leave_type4,overtime_req1,overtime_req1,overtime_req2,overtime_req3,overtime_req4,hr_complaints,complaint1,complaint2,complaint3,complaint4,hr_resignations,resignation1,resignation2,resignation3,resignation4,hr_disciplinary,disciplinary1,disciplinary1,disciplinary2,disciplinary3,disciplinary5,case_type1,case_type1,case_type2,case_type3,case_type4,hr_transfers,transfers1,transfers2,transfers3,transfers4,hr_settings,settings1,settings2,settings3,settings4,settings5,settings6,settings7,hr_inventory_control,warehouse1,warehouse1,warehouse2,warehouse3,warehouse4,product1,product1,product2,product3,product4,out_of_stock,expired_product,product_category1,product_category1,product_category2,product_category3,product_category4,supplier1,supplier1,supplier2,supplier3,supplier4,purchases1,purchases1,purchases2,purchases3,purchases4,purchases5,sales_order1,sales_order1,sales_order2,sales_order3,sales_order4,quote_order1,quote_order1,quote_order2,quote_order3,quote_order4,paid_orders,unpaid_orders,packed_orders,delivered_orders,cancelled_orders,custom_fields,hr_staff,staff2,staff2,staff3,staff4,staff5,shift1,shift1,shift2,shift3,shift4,staffexit1,staffexit1,staffexit2,staffexit3,staffexit4,exit_type1,exit_type1,exit_type2,exit_type3,exit_type4,hr_profile,hr_basic_info,hr_personal_info,hr_picture,account_info,hr_documents,change_password,hr_ats,ats2,ats2,ats3,ats4,ats5,candidate,interview,promotion,core_hr,news1,news1,news2,news3,news4,department1,department1,department2,department3,department4,designation1,designation1,designation2,designation3,designation4,policy1,policy1,policy2,policy3,policy4,policy5,org_chart,timesheet,upattendance1,upattendance1,upattendance2,upattendance3,upattendance4,monthly_time,hr_finance,accounts1,accounts1,accounts2,accounts3,accounts4,deposit1,deposit1,deposit2,deposit3,deposit4,expense1,expense1,expense2,expense3,expense4,transaction1,dep_cat1,dep_cat1,dep_cat2,dep_cat3,dep_cat4,exp_cat1,exp_cat1,exp_cat2,exp_cat3,exp_cat4,hr_talent,indicator1,indicator1,indicator2,indicator3,indicator4,appraisal1,appraisal1,appraisal2,appraisal3,appraisal4,competency1,competency1,competency2,competency3,competency4,tracking1,tracking1,tracking2,tracking3,tracking4,tracking5,track_type1,track_type1,track_type2,track_type3,track_type4,track_calendar,hr_clients,client1,client2,client3,client4,hr_leads,leads1,leads2,leads3,leads4,leads5,hr_invoices,invoice1,invoice2,invoice3,invoice4,invoice5,invoice_payments,invoice_calendar,tax_type1,tax_type1,tax_type2,tax_type3,tax_type4,estimate1,estimate2,estimate3,estimate4,estimate5,estimate6,estimate7,estimates_calendar,hr_events,hr_event1,hr_event1,hr_event2,hr_event3,hr_event4,events_calendar,hr_conference,conference1,conference1,conference2,conference3,conference4,conference_calendar,hr_holidays,holiday1,holiday1,holiday2,holiday3,holiday4,holidays_calendar,hr_visitors,visitor1,visitor2,visitor3,visitor4,hr_files,file1,file1,file2,file3,file4,officialfile1,officialfile1,officialfile2,officialfile3,officialfile4,todo_ist,system_calendar,system_reports', '05-01-2023 03:52:54'),
(7, 2, 'Sergeant	', '1', '0,attendance,hr_projects,project1,project1,project2,project3,project4,project5,project6,project7,project8,project9,project10,project11,projects_calendar,projects_sboard,hr_tasks,task1,task1,task2,task3,task4,task5,task6,task7,task8,tasks_calendar,tasks_sboard,hr_payroll,pay1,pay1,pay2,pay3,pay_history,hradvance_salary,advance_salary1,advance_salary2,advance_salary3,advance_salary4,hrloan,loan1,loan2,loan3,loan4,hr_helpdesk,helpdesk1,helpdesk2,helpdesk3,helpdesk4,helpdesk5,helpdesk6,helpdesk7,helpdesk8,hr_training,training1,training2,training3,training4,training6,training5,training7,trainer1,trainer1,trainer2,trainer3,trainer4,training_skill1,training_skill1,training_skill2,training_skill3,training_skill4,training_calendar,hr_assets,asset1,asset1,asset2,asset3,asset4,asset_cat1,asset_cat1,asset_cat2,asset_cat3,asset_cat4,asset_brand1,asset_brand1,asset_brand2,asset_brand3,asset_brand4,hr_awards,award1,award1,award2,award3,award4,award_type1,award_type1,award_type2,award_type3,award_type4,hr_travel,travel1,travel1,travel2,travel3,travel4,travel5,travel_type1,travel_type1,travel_type2,travel_type3,travel_type4,travel_calendar,hr_leave,leave1,leave2,leave3,leave4,leave6,leave7,leave_calendar,leave_type1,leave_type1,leave_type2,leave_type3,leave_type4,overtime_req1,overtime_req1,overtime_req2,overtime_req3,overtime_req4,hr_complaints,complaint1,complaint2,complaint3,complaint4,hr_resignations,resignation1,resignation2,resignation3,resignation4,hr_disciplinary,disciplinary1,disciplinary1,disciplinary2,disciplinary3,disciplinary5,case_type1,case_type1,case_type2,case_type3,case_type4,hr_transfers,transfers1,transfers2,transfers3,transfers4,hr_settings,settings1,settings2,settings3,settings4,settings5,settings6,settings7,hr_inventory_control,warehouse1,warehouse1,warehouse2,warehouse3,warehouse4,product1,product1,product2,product3,product4,out_of_stock,expired_product,product_category1,product_category1,product_category2,product_category3,product_category4,supplier1,supplier1,supplier2,supplier3,supplier4,purchases1,purchases1,purchases2,purchases3,purchases4,purchases5,sales_order1,sales_order1,sales_order2,sales_order3,sales_order4,quote_order1,quote_order1,quote_order2,quote_order3,quote_order4,paid_orders,unpaid_orders,packed_orders,delivered_orders,cancelled_orders,custom_fields,hr_staff,staff2,staff2,staff3,staff4,staff5,shift1,shift1,shift2,shift3,shift4,staffexit1,staffexit1,staffexit2,staffexit3,staffexit4,exit_type1,exit_type1,exit_type2,exit_type3,exit_type4,hr_profile,hr_basic_info,hr_personal_info,hr_picture,account_info,hr_documents,change_password,hr_ats,ats2,ats2,ats3,ats4,ats5,candidate,interview,promotion,core_hr,news1,news1,news2,news3,news4,department1,department1,department2,department3,department4,designation1,designation1,designation2,designation3,designation4,policy1,policy1,policy2,policy3,policy4,policy5,org_chart,timesheet,upattendance1,upattendance1,upattendance2,upattendance3,upattendance4,monthly_time,hr_finance,accounts1,accounts1,accounts2,accounts3,accounts4,deposit1,deposit1,deposit2,deposit3,deposit4,expense1,expense1,expense2,expense3,expense4,transaction1,dep_cat1,dep_cat1,dep_cat2,dep_cat3,dep_cat4,exp_cat1,exp_cat1,exp_cat2,exp_cat3,exp_cat4,hr_talent,indicator1,indicator1,indicator2,indicator3,indicator4,appraisal1,appraisal1,appraisal2,appraisal3,appraisal4,competency1,competency1,competency2,competency3,competency4,tracking1,tracking1,tracking2,tracking3,tracking4,tracking5,track_type1,track_type1,track_type2,track_type3,track_type4,track_calendar,hr_clients,client1,client2,client3,client4,hr_leads,leads1,leads2,leads3,leads4,leads5,hr_invoices,invoice1,invoice2,invoice3,invoice4,invoice5,invoice_payments,invoice_calendar,tax_type1,tax_type1,tax_type2,tax_type3,tax_type4,estimate1,estimate2,estimate3,estimate4,estimate5,estimate6,estimate7,estimates_calendar,hr_events,hr_event1,hr_event1,hr_event2,hr_event3,hr_event4,events_calendar,hr_conference,conference1,conference1,conference2,conference3,conference4,conference_calendar,hr_holidays,holiday1,holiday1,holiday2,holiday3,holiday4,holidays_calendar,hr_visitors,visitor1,visitor2,visitor3,visitor4,hr_files,file1,file1,file2,file3,file4,officialfile1,officialfile1,officialfile2,officialfile3,officialfile4,todo_ist,system_calendar,system_reports', '05-01-2023 03:53:17'),
(8, 2, 'Staff Sergeant', '1', '0,attendance,hr_projects,project1,project1,project2,project3,project4,project5,project6,project7,project8,project9,project10,project11,projects_calendar,projects_sboard,hr_tasks,task1,task1,task2,task3,task4,task5,task6,task7,task8,tasks_calendar,tasks_sboard,hr_payroll,pay1,pay1,pay2,pay3,pay_history,hradvance_salary,advance_salary1,advance_salary2,advance_salary3,advance_salary4,hrloan,loan1,loan2,loan3,loan4,hr_helpdesk,helpdesk1,helpdesk2,helpdesk3,helpdesk4,helpdesk5,helpdesk6,helpdesk7,helpdesk8,hr_training,training1,training2,training3,training4,training6,training5,training7,trainer1,trainer1,trainer2,trainer3,trainer4,training_skill1,training_skill1,training_skill2,training_skill3,training_skill4,training_calendar,hr_assets,asset1,asset1,asset2,asset3,asset4,asset_cat1,asset_cat1,asset_cat2,asset_cat3,asset_cat4,asset_brand1,asset_brand1,asset_brand2,asset_brand3,asset_brand4,hr_awards,award1,award1,award2,award3,award4,award_type1,award_type1,award_type2,award_type3,award_type4,hr_travel,travel1,travel1,travel2,travel3,travel4,travel5,travel_type1,travel_type1,travel_type2,travel_type3,travel_type4,travel_calendar,hr_leave,leave1,leave2,leave3,leave4,leave6,leave7,leave_calendar,leave_type1,leave_type1,leave_type2,leave_type3,leave_type4,overtime_req1,overtime_req1,overtime_req2,overtime_req3,overtime_req4,hr_complaints,complaint1,complaint2,complaint3,complaint4,hr_resignations,resignation1,resignation2,resignation3,resignation4,hr_disciplinary,disciplinary1,disciplinary1,disciplinary2,disciplinary3,disciplinary5,case_type1,case_type1,case_type2,case_type3,case_type4,hr_transfers,transfers1,transfers2,transfers3,transfers4,hr_settings,settings1,settings2,settings3,settings4,settings5,settings6,settings7,hr_inventory_control,warehouse1,warehouse1,warehouse2,warehouse3,warehouse4,product1,product1,product2,product3,product4,out_of_stock,expired_product,product_category1,product_category1,product_category2,product_category3,product_category4,supplier1,supplier1,supplier2,supplier3,supplier4,purchases1,purchases1,purchases2,purchases3,purchases4,purchases5,sales_order1,sales_order1,sales_order2,sales_order3,sales_order4,quote_order1,quote_order1,quote_order2,quote_order3,quote_order4,paid_orders,unpaid_orders,packed_orders,delivered_orders,cancelled_orders,custom_fields,hr_staff,staff2,staff2,staff3,staff4,staff5,shift1,shift1,shift2,shift3,shift4,staffexit1,staffexit1,staffexit2,staffexit3,staffexit4,exit_type1,exit_type1,exit_type2,exit_type3,exit_type4,hr_profile,hr_basic_info,hr_personal_info,hr_picture,account_info,hr_documents,change_password,hr_ats,ats2,ats2,ats3,ats4,ats5,candidate,interview,promotion,core_hr,news1,news1,news2,news3,news4,department1,department1,department2,department3,department4,designation1,designation1,designation2,designation3,designation4,policy1,policy1,policy2,policy3,policy4,policy5,org_chart,timesheet,upattendance1,upattendance1,upattendance2,upattendance3,upattendance4,monthly_time,hr_finance,accounts1,accounts1,accounts2,accounts3,accounts4,deposit1,deposit1,deposit2,deposit3,deposit4,expense1,expense1,expense2,expense3,expense4,transaction1,dep_cat1,dep_cat1,dep_cat2,dep_cat3,dep_cat4,exp_cat1,exp_cat1,exp_cat2,exp_cat3,exp_cat4,hr_talent,indicator1,indicator1,indicator2,indicator3,indicator4,appraisal1,appraisal1,appraisal2,appraisal3,appraisal4,competency1,competency1,competency2,competency3,competency4,tracking1,tracking1,tracking2,tracking3,tracking4,tracking5,track_type1,track_type1,track_type2,track_type3,track_type4,track_calendar,hr_clients,client1,client2,client3,client4,hr_leads,leads1,leads2,leads3,leads4,leads5,hr_invoices,invoice1,invoice2,invoice3,invoice4,invoice5,invoice_payments,invoice_calendar,tax_type1,tax_type1,tax_type2,tax_type3,tax_type4,estimate1,estimate2,estimate3,estimate4,estimate5,estimate6,estimate7,estimates_calendar,hr_events,hr_event1,hr_event1,hr_event2,hr_event3,hr_event4,events_calendar,hr_conference,conference1,conference1,conference2,conference3,conference4,conference_calendar,hr_holidays,holiday1,holiday1,holiday2,holiday3,holiday4,holidays_calendar,hr_visitors,visitor1,visitor2,visitor3,visitor4,hr_files,file1,file1,file2,file3,file4,officialfile1,officialfile1,officialfile2,officialfile3,officialfile4,todo_ist,system_calendar,system_reports', '05-01-2023 04:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `ci_stock_orders`
--

CREATE TABLE `ci_stock_orders` (
  `order_id` int NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `company_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `invoice_month` varchar(255) DEFAULT NULL,
  `invoice_date` varchar(255) NOT NULL,
  `invoice_due_date` varchar(255) NOT NULL,
  `sub_total_amount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(11) NOT NULL,
  `discount_figure` decimal(65,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(65,2) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(100) DEFAULT NULL,
  `total_discount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `grand_total` decimal(65,2) NOT NULL DEFAULT '0.00',
  `invoice_note` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `payment_method` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_stock_order_items`
--

CREATE TABLE `ci_stock_order_items` (
  `order_item_id` int NOT NULL,
  `order_id` int NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `item_qty` varchar(255) NOT NULL,
  `item_unit_price` decimal(65,2) NOT NULL DEFAULT '0.00',
  `item_sub_total` decimal(65,2) NOT NULL DEFAULT '0.00',
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_stock_order_quotes`
--

CREATE TABLE `ci_stock_order_quotes` (
  `quote_id` int NOT NULL,
  `quote_number` varchar(255) NOT NULL,
  `company_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `quote_month` varchar(255) DEFAULT NULL,
  `quote_date` varchar(255) NOT NULL,
  `quote_due_date` varchar(255) NOT NULL,
  `sub_total_amount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(11) NOT NULL,
  `discount_figure` decimal(65,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(65,2) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(100) DEFAULT NULL,
  `total_discount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `grand_total` decimal(65,2) NOT NULL DEFAULT '0.00',
  `quote_note` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `payment_method` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_stock_order_quote_items`
--

CREATE TABLE `ci_stock_order_quote_items` (
  `quote_item_id` int NOT NULL,
  `quote_id` int NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `item_qty` varchar(255) NOT NULL,
  `item_unit_price` decimal(65,2) NOT NULL DEFAULT '0.00',
  `item_sub_total` decimal(65,2) NOT NULL DEFAULT '0.00',
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_stock_products`
--

CREATE TABLE `ci_stock_products` (
  `product_id` int NOT NULL,
  `company_id` int NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_qty` int NOT NULL,
  `reorder_stock` int NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `barcode_type` varchar(255) DEFAULT NULL,
  `warehouse_id` int NOT NULL,
  `category_id` int NOT NULL,
  `product_sku` varchar(255) DEFAULT NULL,
  `product_serial_number` varchar(255) DEFAULT NULL,
  `purchase_price` decimal(65,2) NOT NULL,
  `retail_price` decimal(65,2) NOT NULL,
  `expiration_date` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_description` longtext,
  `product_rating` int NOT NULL,
  `added_by` int NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_stock_purchases`
--

CREATE TABLE `ci_stock_purchases` (
  `purchase_id` int NOT NULL,
  `purchase_number` varchar(255) NOT NULL,
  `company_id` int NOT NULL,
  `supplier_id` int NOT NULL,
  `purchase_month` varchar(255) DEFAULT NULL,
  `purchase_date` varchar(255) NOT NULL,
  `sub_total_amount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(11) NOT NULL,
  `discount_figure` decimal(65,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(65,2) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(100) DEFAULT NULL,
  `total_discount` decimal(65,2) NOT NULL DEFAULT '0.00',
  `grand_total` decimal(65,2) NOT NULL DEFAULT '0.00',
  `purchase_note` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `payment_method` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_stock_purchase_items`
--

CREATE TABLE `ci_stock_purchase_items` (
  `purchase_item_id` int NOT NULL,
  `purchase_id` int NOT NULL,
  `item_id` int NOT NULL,
  `item_qty` varchar(255) NOT NULL,
  `item_unit_price` decimal(65,2) NOT NULL DEFAULT '0.00',
  `item_sub_total` decimal(65,2) NOT NULL DEFAULT '0.00',
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_stock_suppliers`
--

CREATE TABLE `ci_stock_suppliers` (
  `supplier_id` int NOT NULL,
  `company_id` int NOT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `registration_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `contact_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `address_1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `address_2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `country` int NOT NULL,
  `added_by` int NOT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_stock_warehouses`
--

CREATE TABLE `ci_stock_warehouses` (
  `warehouse_id` int NOT NULL,
  `company_id` int NOT NULL,
  `warehouse_name` varchar(200) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `pickup_location` tinyint(1) NOT NULL,
  `address_1` text,
  `address_2` text,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `country` int NOT NULL,
  `added_by` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_support_tickets`
--

CREATE TABLE `ci_support_tickets` (
  `ticket_id` int NOT NULL,
  `company_id` int NOT NULL,
  `ticket_code` varchar(200) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `employee_id` int NOT NULL,
  `ticket_priority` varchar(255) NOT NULL,
  `department_id` int NOT NULL,
  `description` mediumtext NOT NULL,
  `ticket_remarks` mediumtext,
  `ticket_status` varchar(200) NOT NULL,
  `created_by` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_support_ticket_files`
--

CREATE TABLE `ci_support_ticket_files` (
  `ticket_file_id` int NOT NULL,
  `company_id` int NOT NULL,
  `ticket_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `attachment_file` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_support_ticket_notes`
--

CREATE TABLE `ci_support_ticket_notes` (
  `ticket_note_id` int NOT NULL,
  `company_id` int NOT NULL,
  `ticket_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `ticket_note` text,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_support_ticket_reply`
--

CREATE TABLE `ci_support_ticket_reply` (
  `ticket_reply_id` int NOT NULL,
  `company_id` int NOT NULL,
  `ticket_id` int NOT NULL,
  `sent_by` int NOT NULL,
  `assign_to` int NOT NULL,
  `reply_text` text,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_system_documents`
--

CREATE TABLE `ci_system_documents` (
  `document_id` int NOT NULL,
  `company_id` int NOT NULL,
  `department_id` int NOT NULL,
  `document_name` varchar(255) NOT NULL,
  `document_type` varchar(255) NOT NULL,
  `document_file` varchar(255) NOT NULL,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_tasks`
--

CREATE TABLE `ci_tasks` (
  `task_id` int NOT NULL,
  `company_id` int NOT NULL,
  `project_id` int NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `assigned_to` varchar(255) DEFAULT NULL,
  `associated_goals` text,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `task_hour` varchar(200) DEFAULT NULL,
  `task_progress` varchar(200) DEFAULT NULL,
  `summary` text NOT NULL,
  `description` mediumtext,
  `task_status` int NOT NULL,
  `task_note` mediumtext,
  `created_by` int NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_tasks_discussion`
--

CREATE TABLE `ci_tasks_discussion` (
  `task_discussion_id` int NOT NULL,
  `company_id` int NOT NULL,
  `task_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `discussion_text` text,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_tasks_files`
--

CREATE TABLE `ci_tasks_files` (
  `task_file_id` int NOT NULL,
  `company_id` int NOT NULL,
  `task_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `attachment_file` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_tasks_notes`
--

CREATE TABLE `ci_tasks_notes` (
  `task_note_id` int NOT NULL,
  `company_id` int NOT NULL,
  `task_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `task_note` text,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_teams`
--

CREATE TABLE `ci_teams` (
  `team_id` int DEFAULT NULL,
  `department_id` int NOT NULL,
  `company_id` int NOT NULL,
  `designation_id` int NOT NULL,
  `sergeant_id` int NOT NULL,
  `team_name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_timesheet`
--

CREATE TABLE `ci_timesheet` (
  `time_attendance_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `attendance_date` varchar(255) NOT NULL,
  `clock_in` varchar(255) NOT NULL,
  `clock_in_ip_address` varchar(255) NOT NULL,
  `clock_out` varchar(255) NOT NULL,
  `clock_out_ip_address` varchar(255) NOT NULL,
  `clock_in_out` varchar(255) NOT NULL,
  `clock_in_latitude` varchar(150) NOT NULL,
  `clock_in_longitude` varchar(150) NOT NULL,
  `clock_out_latitude` varchar(150) NOT NULL,
  `clock_out_longitude` varchar(150) NOT NULL,
  `time_late` varchar(255) NOT NULL,
  `early_leaving` varchar(255) NOT NULL,
  `overtime` varchar(255) NOT NULL,
  `total_work` varchar(255) NOT NULL,
  `total_rest` varchar(255) NOT NULL,
  `attendance_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_timesheet_request`
--

CREATE TABLE `ci_timesheet_request` (
  `time_request_id` int NOT NULL,
  `company_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `request_date` varchar(255) NOT NULL,
  `request_month` varchar(255) NOT NULL,
  `clock_in` varchar(200) NOT NULL,
  `clock_out` varchar(200) NOT NULL,
  `total_hours` varchar(255) NOT NULL,
  `request_reason` mediumtext NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_timesheet_request`
--

INSERT INTO `ci_timesheet_request` (`time_request_id`, `company_id`, `staff_id`, `request_date`, `request_month`, `clock_in`, `clock_out`, `total_hours`, `request_reason`, `is_approved`, `created_at`) VALUES
(1, 2, 4, '2023-01-03', '2023-01', '2023-01-03 14:20:00', '2023-01-03 16:15:00', '1:55', 'test1', 0, '03-01-2023 03:33:36'),
(2, 2, 5, '2023-01-04', '2023-01', '2023-01-04 05:06:00', '2023-01-04 07:07:00', '2:1', 'lembur 1', 1, '03-01-2023 09:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `ci_todo_items`
--

CREATE TABLE `ci_todo_items` (
  `todo_item_id` int NOT NULL,
  `company_id` int NOT NULL,
  `user_id` int NOT NULL,
  `description` mediumtext,
  `is_done` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_track_goals`
--

CREATE TABLE `ci_track_goals` (
  `tracking_id` int NOT NULL,
  `company_id` int NOT NULL,
  `tracking_type_id` int NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `target_achiement` varchar(255) NOT NULL,
  `description` mediumtext,
  `goal_work` text,
  `goal_progress` varchar(200) DEFAULT NULL,
  `goal_status` int NOT NULL DEFAULT '0',
  `goal_rating` int NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_track_goals`
--

INSERT INTO `ci_track_goals` (`tracking_id`, `company_id`, `tracking_type_id`, `start_date`, `end_date`, `subject`, `target_achiement`, `description`, `goal_work`, `goal_progress`, `goal_status`, `goal_rating`, `created_at`) VALUES
(1, 2, 167, '2023-01-20', '2023-01-27', 'MEMBUAT CRYSTAL REPORT', 'CRYSTAL REPORT', '3 ORANG', NULL, '', 0, 5, '22-12-2022 09:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `ci_trainers`
--

CREATE TABLE `ci_trainers` (
  `trainer_id` int NOT NULL,
  `company_id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `expertise` mediumtext NOT NULL,
  `address` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_training`
--

CREATE TABLE `ci_training` (
  `training_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` varchar(200) NOT NULL,
  `training_type_id` int NOT NULL,
  `associated_goals` text,
  `trainer_id` int NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `finish_date` varchar(200) NOT NULL,
  `training_cost` decimal(65,2) DEFAULT NULL,
  `training_status` int DEFAULT NULL,
  `description` mediumtext,
  `performance` varchar(200) DEFAULT NULL,
  `remarks` mediumtext,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_training_notes`
--

CREATE TABLE `ci_training_notes` (
  `training_note_id` int NOT NULL,
  `company_id` int NOT NULL,
  `training_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `training_note` text,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_transfers`
--

CREATE TABLE `ci_transfers` (
  `transfer_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `transfer_date` varchar(255) NOT NULL,
  `transfer_department` int NOT NULL,
  `transfer_designation` int NOT NULL,
  `reason` mediumtext NOT NULL,
  `status` tinyint NOT NULL,
  `added_by` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_travels`
--

CREATE TABLE `ci_travels` (
  `travel_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `associated_goals` text,
  `visit_purpose` varchar(255) NOT NULL,
  `visit_place` varchar(255) NOT NULL,
  `travel_mode` int DEFAULT NULL,
  `arrangement_type` int DEFAULT NULL,
  `expected_budget` decimal(65,2) NOT NULL DEFAULT '0.00',
  `actual_budget` decimal(65,2) NOT NULL DEFAULT '0.00',
  `description` mediumtext NOT NULL,
  `status` tinyint NOT NULL,
  `added_by` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_users_documents`
--

CREATE TABLE `ci_users_documents` (
  `document_id` int NOT NULL,
  `company_id` int NOT NULL,
  `user_id` int NOT NULL,
  `document_name` varchar(255) NOT NULL,
  `document_type` varchar(255) NOT NULL,
  `document_file` varchar(255) NOT NULL,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_visitors`
--

CREATE TABLE `ci_visitors` (
  `visitor_id` int NOT NULL,
  `company_id` int NOT NULL,
  `department_id` int NOT NULL,
  `visit_purpose` varchar(255) DEFAULT NULL,
  `visitor_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `visit_date` varchar(255) DEFAULT NULL,
  `check_in` varchar(255) DEFAULT NULL,
  `check_out` varchar(255) DEFAULT NULL,
  `address` mediumtext,
  `description` mediumtext,
  `created_by` int NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_warnings`
--

CREATE TABLE `ci_warnings` (
  `warning_id` int NOT NULL,
  `company_id` int NOT NULL,
  `warning_to` int NOT NULL,
  `warning_by` int NOT NULL,
  `warning_date` varchar(255) NOT NULL,
  `warning_type_id` int NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ci_warnings`
--

INSERT INTO `ci_warnings` (`warning_id`, `company_id`, `warning_to`, `warning_by`, `warning_date`, `warning_type_id`, `attachment`, `subject`, `description`, `created_at`) VALUES
(1, 2, 4, 5, '2023-01-04', 139, 'spl 1.png', 'case 1', 'case 1', '03-01-2023 09:13:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_advance_salary`
--
ALTER TABLE `ci_advance_salary`
  ADD PRIMARY KEY (`advance_salary_id`);

--
-- Indexes for table `ci_announcements`
--
ALTER TABLE `ci_announcements`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `ci_assets`
--
ALTER TABLE `ci_assets`
  ADD PRIMARY KEY (`assets_id`);

--
-- Indexes for table `ci_awards`
--
ALTER TABLE `ci_awards`
  ADD PRIMARY KEY (`award_id`);

--
-- Indexes for table `ci_company_membership`
--
ALTER TABLE `ci_company_membership`
  ADD PRIMARY KEY (`company_membership_id`);

--
-- Indexes for table `ci_complaints`
--
ALTER TABLE `ci_complaints`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `ci_contract_options`
--
ALTER TABLE `ci_contract_options`
  ADD PRIMARY KEY (`contract_option_id`);

--
-- Indexes for table `ci_countries`
--
ALTER TABLE `ci_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `ci_currencies`
--
ALTER TABLE `ci_currencies`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `ci_database_backup`
--
ALTER TABLE `ci_database_backup`
  ADD PRIMARY KEY (`backup_id`);

--
-- Indexes for table `ci_departments`
--
ALTER TABLE `ci_departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `ci_designations`
--
ALTER TABLE `ci_designations`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `ci_email_template`
--
ALTER TABLE `ci_email_template`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `ci_employee_contacts`
--
ALTER TABLE `ci_employee_contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `ci_employee_exit`
--
ALTER TABLE `ci_employee_exit`
  ADD PRIMARY KEY (`exit_id`);

--
-- Indexes for table `ci_erp_company_settings`
--
ALTER TABLE `ci_erp_company_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `ci_erp_constants`
--
ALTER TABLE `ci_erp_constants`
  ADD PRIMARY KEY (`constants_id`);

--
-- Indexes for table `ci_erp_settings`
--
ALTER TABLE `ci_erp_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `ci_erp_users`
--
ALTER TABLE `ci_erp_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `ci_erp_users_details`
--
ALTER TABLE `ci_erp_users_details`
  ADD PRIMARY KEY (`staff_details_id`);

--
-- Indexes for table `ci_erp_users_role`
--
ALTER TABLE `ci_erp_users_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `ci_estimates`
--
ALTER TABLE `ci_estimates`
  ADD PRIMARY KEY (`estimate_id`);

--
-- Indexes for table `ci_estimates_items`
--
ALTER TABLE `ci_estimates_items`
  ADD PRIMARY KEY (`estimate_item_id`);

--
-- Indexes for table `ci_events`
--
ALTER TABLE `ci_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `ci_finance_accounts`
--
ALTER TABLE `ci_finance_accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `ci_finance_entity`
--
ALTER TABLE `ci_finance_entity`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `ci_finance_membership_invoices`
--
ALTER TABLE `ci_finance_membership_invoices`
  ADD PRIMARY KEY (`membership_invoice_id`);

--
-- Indexes for table `ci_finance_transactions`
--
ALTER TABLE `ci_finance_transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `ci_holidays`
--
ALTER TABLE `ci_holidays`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `ci_invoices`
--
ALTER TABLE `ci_invoices`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `ci_invoices_items`
--
ALTER TABLE `ci_invoices_items`
  ADD PRIMARY KEY (`invoice_item_id`);

--
-- Indexes for table `ci_languages`
--
ALTER TABLE `ci_languages`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `ci_leads`
--
ALTER TABLE `ci_leads`
  ADD PRIMARY KEY (`lead_id`);

--
-- Indexes for table `ci_leads_followup`
--
ALTER TABLE `ci_leads_followup`
  ADD PRIMARY KEY (`followup_id`);

--
-- Indexes for table `ci_leave_applications`
--
ALTER TABLE `ci_leave_applications`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `ci_meetings`
--
ALTER TABLE `ci_meetings`
  ADD PRIMARY KEY (`meeting_id`);

--
-- Indexes for table `ci_membership`
--
ALTER TABLE `ci_membership`
  ADD PRIMARY KEY (`membership_id`);

--
-- Indexes for table `ci_module_attributes`
--
ALTER TABLE `ci_module_attributes`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `ci_module_attributes_select_value`
--
ALTER TABLE `ci_module_attributes_select_value`
  ADD PRIMARY KEY (`attributes_select_value_id`);

--
-- Indexes for table `ci_module_attributes_values`
--
ALTER TABLE `ci_module_attributes_values`
  ADD PRIMARY KEY (`attributes_value_id`);

--
-- Indexes for table `ci_office_shifts`
--
ALTER TABLE `ci_office_shifts`
  ADD PRIMARY KEY (`office_shift_id`);

--
-- Indexes for table `ci_official_documents`
--
ALTER TABLE `ci_official_documents`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `ci_payslips`
--
ALTER TABLE `ci_payslips`
  ADD PRIMARY KEY (`payslip_id`);

--
-- Indexes for table `ci_payslip_allowances`
--
ALTER TABLE `ci_payslip_allowances`
  ADD PRIMARY KEY (`payslip_allowances_id`);

--
-- Indexes for table `ci_payslip_commissions`
--
ALTER TABLE `ci_payslip_commissions`
  ADD PRIMARY KEY (`payslip_commissions_id`);

--
-- Indexes for table `ci_payslip_other_payments`
--
ALTER TABLE `ci_payslip_other_payments`
  ADD PRIMARY KEY (`payslip_other_payment_id`);

--
-- Indexes for table `ci_payslip_statutory_deductions`
--
ALTER TABLE `ci_payslip_statutory_deductions`
  ADD PRIMARY KEY (`payslip_deduction_id`);

--
-- Indexes for table `ci_performance_appraisal`
--
ALTER TABLE `ci_performance_appraisal`
  ADD PRIMARY KEY (`performance_appraisal_id`);

--
-- Indexes for table `ci_performance_appraisal_options`
--
ALTER TABLE `ci_performance_appraisal_options`
  ADD PRIMARY KEY (`performance_appraisal_options_id`);

--
-- Indexes for table `ci_performance_indicator`
--
ALTER TABLE `ci_performance_indicator`
  ADD PRIMARY KEY (`performance_indicator_id`);

--
-- Indexes for table `ci_performance_indicator_options`
--
ALTER TABLE `ci_performance_indicator_options`
  ADD PRIMARY KEY (`performance_indicator_options_id`);

--
-- Indexes for table `ci_policies`
--
ALTER TABLE `ci_policies`
  ADD PRIMARY KEY (`policy_id`);

--
-- Indexes for table `ci_projects`
--
ALTER TABLE `ci_projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `ci_projects_bugs`
--
ALTER TABLE `ci_projects_bugs`
  ADD PRIMARY KEY (`project_bug_id`);

--
-- Indexes for table `ci_projects_discussion`
--
ALTER TABLE `ci_projects_discussion`
  ADD PRIMARY KEY (`project_discussion_id`);

--
-- Indexes for table `ci_projects_files`
--
ALTER TABLE `ci_projects_files`
  ADD PRIMARY KEY (`project_file_id`);

--
-- Indexes for table `ci_projects_notes`
--
ALTER TABLE `ci_projects_notes`
  ADD PRIMARY KEY (`project_note_id`);

--
-- Indexes for table `ci_projects_timelogs`
--
ALTER TABLE `ci_projects_timelogs`
  ADD PRIMARY KEY (`timelogs_id`);

--
-- Indexes for table `ci_recent_activity`
--
ALTER TABLE `ci_recent_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `ci_rec_candidates`
--
ALTER TABLE `ci_rec_candidates`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Indexes for table `ci_rec_interviews`
--
ALTER TABLE `ci_rec_interviews`
  ADD PRIMARY KEY (`job_interview_id`);

--
-- Indexes for table `ci_rec_jobs`
--
ALTER TABLE `ci_rec_jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `ci_resignations`
--
ALTER TABLE `ci_resignations`
  ADD PRIMARY KEY (`resignation_id`);

--
-- Indexes for table `ci_sergeans`
--
ALTER TABLE `ci_sergeans`
  ADD PRIMARY KEY (`sergeant_id`);

--
-- Indexes for table `ci_staff_roles`
--
ALTER TABLE `ci_staff_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `ci_stock_orders`
--
ALTER TABLE `ci_stock_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `ci_stock_order_items`
--
ALTER TABLE `ci_stock_order_items`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `ci_stock_order_quotes`
--
ALTER TABLE `ci_stock_order_quotes`
  ADD PRIMARY KEY (`quote_id`);

--
-- Indexes for table `ci_stock_order_quote_items`
--
ALTER TABLE `ci_stock_order_quote_items`
  ADD PRIMARY KEY (`quote_item_id`);

--
-- Indexes for table `ci_stock_products`
--
ALTER TABLE `ci_stock_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `ci_stock_purchases`
--
ALTER TABLE `ci_stock_purchases`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `ci_stock_purchase_items`
--
ALTER TABLE `ci_stock_purchase_items`
  ADD PRIMARY KEY (`purchase_item_id`);

--
-- Indexes for table `ci_stock_suppliers`
--
ALTER TABLE `ci_stock_suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `ci_stock_warehouses`
--
ALTER TABLE `ci_stock_warehouses`
  ADD PRIMARY KEY (`warehouse_id`);

--
-- Indexes for table `ci_support_tickets`
--
ALTER TABLE `ci_support_tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ci_support_ticket_files`
--
ALTER TABLE `ci_support_ticket_files`
  ADD PRIMARY KEY (`ticket_file_id`);

--
-- Indexes for table `ci_support_ticket_notes`
--
ALTER TABLE `ci_support_ticket_notes`
  ADD PRIMARY KEY (`ticket_note_id`);

--
-- Indexes for table `ci_support_ticket_reply`
--
ALTER TABLE `ci_support_ticket_reply`
  ADD PRIMARY KEY (`ticket_reply_id`);

--
-- Indexes for table `ci_system_documents`
--
ALTER TABLE `ci_system_documents`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `ci_tasks`
--
ALTER TABLE `ci_tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `ci_tasks_discussion`
--
ALTER TABLE `ci_tasks_discussion`
  ADD PRIMARY KEY (`task_discussion_id`);

--
-- Indexes for table `ci_tasks_files`
--
ALTER TABLE `ci_tasks_files`
  ADD PRIMARY KEY (`task_file_id`);

--
-- Indexes for table `ci_tasks_notes`
--
ALTER TABLE `ci_tasks_notes`
  ADD PRIMARY KEY (`task_note_id`);

--
-- Indexes for table `ci_timesheet`
--
ALTER TABLE `ci_timesheet`
  ADD PRIMARY KEY (`time_attendance_id`);

--
-- Indexes for table `ci_timesheet_request`
--
ALTER TABLE `ci_timesheet_request`
  ADD PRIMARY KEY (`time_request_id`);

--
-- Indexes for table `ci_todo_items`
--
ALTER TABLE `ci_todo_items`
  ADD PRIMARY KEY (`todo_item_id`);

--
-- Indexes for table `ci_track_goals`
--
ALTER TABLE `ci_track_goals`
  ADD PRIMARY KEY (`tracking_id`);

--
-- Indexes for table `ci_trainers`
--
ALTER TABLE `ci_trainers`
  ADD PRIMARY KEY (`trainer_id`);

--
-- Indexes for table `ci_training`
--
ALTER TABLE `ci_training`
  ADD PRIMARY KEY (`training_id`);

--
-- Indexes for table `ci_training_notes`
--
ALTER TABLE `ci_training_notes`
  ADD PRIMARY KEY (`training_note_id`);

--
-- Indexes for table `ci_transfers`
--
ALTER TABLE `ci_transfers`
  ADD PRIMARY KEY (`transfer_id`);

--
-- Indexes for table `ci_travels`
--
ALTER TABLE `ci_travels`
  ADD PRIMARY KEY (`travel_id`);

--
-- Indexes for table `ci_users_documents`
--
ALTER TABLE `ci_users_documents`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `ci_visitors`
--
ALTER TABLE `ci_visitors`
  ADD PRIMARY KEY (`visitor_id`);

--
-- Indexes for table `ci_warnings`
--
ALTER TABLE `ci_warnings`
  ADD PRIMARY KEY (`warning_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_advance_salary`
--
ALTER TABLE `ci_advance_salary`
  MODIFY `advance_salary_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_announcements`
--
ALTER TABLE `ci_announcements`
  MODIFY `announcement_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_assets`
--
ALTER TABLE `ci_assets`
  MODIFY `assets_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_awards`
--
ALTER TABLE `ci_awards`
  MODIFY `award_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_company_membership`
--
ALTER TABLE `ci_company_membership`
  MODIFY `company_membership_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_complaints`
--
ALTER TABLE `ci_complaints`
  MODIFY `complaint_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_contract_options`
--
ALTER TABLE `ci_contract_options`
  MODIFY `contract_option_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_countries`
--
ALTER TABLE `ci_countries`
  MODIFY `country_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `ci_currencies`
--
ALTER TABLE `ci_currencies`
  MODIFY `currency_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `ci_database_backup`
--
ALTER TABLE `ci_database_backup`
  MODIFY `backup_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_departments`
--
ALTER TABLE `ci_departments`
  MODIFY `department_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ci_designations`
--
ALTER TABLE `ci_designations`
  MODIFY `designation_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ci_email_template`
--
ALTER TABLE `ci_email_template`
  MODIFY `template_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ci_employee_contacts`
--
ALTER TABLE `ci_employee_contacts`
  MODIFY `contact_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_employee_exit`
--
ALTER TABLE `ci_employee_exit`
  MODIFY `exit_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_erp_company_settings`
--
ALTER TABLE `ci_erp_company_settings`
  MODIFY `setting_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_erp_constants`
--
ALTER TABLE `ci_erp_constants`
  MODIFY `constants_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `ci_erp_settings`
--
ALTER TABLE `ci_erp_settings`
  MODIFY `setting_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_erp_users`
--
ALTER TABLE `ci_erp_users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ci_erp_users_details`
--
ALTER TABLE `ci_erp_users_details`
  MODIFY `staff_details_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ci_erp_users_role`
--
ALTER TABLE `ci_erp_users_role`
  MODIFY `role_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_estimates`
--
ALTER TABLE `ci_estimates`
  MODIFY `estimate_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_estimates_items`
--
ALTER TABLE `ci_estimates_items`
  MODIFY `estimate_item_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_events`
--
ALTER TABLE `ci_events`
  MODIFY `event_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_finance_accounts`
--
ALTER TABLE `ci_finance_accounts`
  MODIFY `account_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_finance_entity`
--
ALTER TABLE `ci_finance_entity`
  MODIFY `entity_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_finance_membership_invoices`
--
ALTER TABLE `ci_finance_membership_invoices`
  MODIFY `membership_invoice_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ci_finance_transactions`
--
ALTER TABLE `ci_finance_transactions`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_holidays`
--
ALTER TABLE `ci_holidays`
  MODIFY `holiday_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_invoices`
--
ALTER TABLE `ci_invoices`
  MODIFY `invoice_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_invoices_items`
--
ALTER TABLE `ci_invoices_items`
  MODIFY `invoice_item_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_languages`
--
ALTER TABLE `ci_languages`
  MODIFY `language_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ci_leads`
--
ALTER TABLE `ci_leads`
  MODIFY `lead_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_leads_followup`
--
ALTER TABLE `ci_leads_followup`
  MODIFY `followup_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_leave_applications`
--
ALTER TABLE `ci_leave_applications`
  MODIFY `leave_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_meetings`
--
ALTER TABLE `ci_meetings`
  MODIFY `meeting_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_membership`
--
ALTER TABLE `ci_membership`
  MODIFY `membership_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ci_module_attributes`
--
ALTER TABLE `ci_module_attributes`
  MODIFY `custom_field_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_module_attributes_select_value`
--
ALTER TABLE `ci_module_attributes_select_value`
  MODIFY `attributes_select_value_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_module_attributes_values`
--
ALTER TABLE `ci_module_attributes_values`
  MODIFY `attributes_value_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_office_shifts`
--
ALTER TABLE `ci_office_shifts`
  MODIFY `office_shift_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_official_documents`
--
ALTER TABLE `ci_official_documents`
  MODIFY `document_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_payslips`
--
ALTER TABLE `ci_payslips`
  MODIFY `payslip_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_payslip_allowances`
--
ALTER TABLE `ci_payslip_allowances`
  MODIFY `payslip_allowances_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_payslip_commissions`
--
ALTER TABLE `ci_payslip_commissions`
  MODIFY `payslip_commissions_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_payslip_other_payments`
--
ALTER TABLE `ci_payslip_other_payments`
  MODIFY `payslip_other_payment_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_payslip_statutory_deductions`
--
ALTER TABLE `ci_payslip_statutory_deductions`
  MODIFY `payslip_deduction_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_performance_appraisal`
--
ALTER TABLE `ci_performance_appraisal`
  MODIFY `performance_appraisal_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_performance_appraisal_options`
--
ALTER TABLE `ci_performance_appraisal_options`
  MODIFY `performance_appraisal_options_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_performance_indicator`
--
ALTER TABLE `ci_performance_indicator`
  MODIFY `performance_indicator_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_performance_indicator_options`
--
ALTER TABLE `ci_performance_indicator_options`
  MODIFY `performance_indicator_options_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_policies`
--
ALTER TABLE `ci_policies`
  MODIFY `policy_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ci_projects`
--
ALTER TABLE `ci_projects`
  MODIFY `project_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_projects_bugs`
--
ALTER TABLE `ci_projects_bugs`
  MODIFY `project_bug_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_projects_discussion`
--
ALTER TABLE `ci_projects_discussion`
  MODIFY `project_discussion_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_projects_files`
--
ALTER TABLE `ci_projects_files`
  MODIFY `project_file_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_projects_notes`
--
ALTER TABLE `ci_projects_notes`
  MODIFY `project_note_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_projects_timelogs`
--
ALTER TABLE `ci_projects_timelogs`
  MODIFY `timelogs_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_recent_activity`
--
ALTER TABLE `ci_recent_activity`
  MODIFY `activity_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_rec_candidates`
--
ALTER TABLE `ci_rec_candidates`
  MODIFY `candidate_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_rec_interviews`
--
ALTER TABLE `ci_rec_interviews`
  MODIFY `job_interview_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_rec_jobs`
--
ALTER TABLE `ci_rec_jobs`
  MODIFY `job_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_resignations`
--
ALTER TABLE `ci_resignations`
  MODIFY `resignation_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_sergeans`
--
ALTER TABLE `ci_sergeans`
  MODIFY `sergeant_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ci_staff_roles`
--
ALTER TABLE `ci_staff_roles`
  MODIFY `role_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ci_stock_orders`
--
ALTER TABLE `ci_stock_orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ci_stock_order_items`
--
ALTER TABLE `ci_stock_order_items`
  MODIFY `order_item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ci_stock_order_quotes`
--
ALTER TABLE `ci_stock_order_quotes`
  MODIFY `quote_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ci_stock_order_quote_items`
--
ALTER TABLE `ci_stock_order_quote_items`
  MODIFY `quote_item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ci_stock_products`
--
ALTER TABLE `ci_stock_products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ci_stock_purchases`
--
ALTER TABLE `ci_stock_purchases`
  MODIFY `purchase_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ci_stock_purchase_items`
--
ALTER TABLE `ci_stock_purchase_items`
  MODIFY `purchase_item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ci_stock_suppliers`
--
ALTER TABLE `ci_stock_suppliers`
  MODIFY `supplier_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ci_stock_warehouses`
--
ALTER TABLE `ci_stock_warehouses`
  MODIFY `warehouse_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ci_support_tickets`
--
ALTER TABLE `ci_support_tickets`
  MODIFY `ticket_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_support_ticket_files`
--
ALTER TABLE `ci_support_ticket_files`
  MODIFY `ticket_file_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_support_ticket_notes`
--
ALTER TABLE `ci_support_ticket_notes`
  MODIFY `ticket_note_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_support_ticket_reply`
--
ALTER TABLE `ci_support_ticket_reply`
  MODIFY `ticket_reply_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_system_documents`
--
ALTER TABLE `ci_system_documents`
  MODIFY `document_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_tasks`
--
ALTER TABLE `ci_tasks`
  MODIFY `task_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_tasks_discussion`
--
ALTER TABLE `ci_tasks_discussion`
  MODIFY `task_discussion_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_tasks_files`
--
ALTER TABLE `ci_tasks_files`
  MODIFY `task_file_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_tasks_notes`
--
ALTER TABLE `ci_tasks_notes`
  MODIFY `task_note_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_timesheet`
--
ALTER TABLE `ci_timesheet`
  MODIFY `time_attendance_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ci_timesheet_request`
--
ALTER TABLE `ci_timesheet_request`
  MODIFY `time_request_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ci_todo_items`
--
ALTER TABLE `ci_todo_items`
  MODIFY `todo_item_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_track_goals`
--
ALTER TABLE `ci_track_goals`
  MODIFY `tracking_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_trainers`
--
ALTER TABLE `ci_trainers`
  MODIFY `trainer_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_training`
--
ALTER TABLE `ci_training`
  MODIFY `training_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_training_notes`
--
ALTER TABLE `ci_training_notes`
  MODIFY `training_note_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_transfers`
--
ALTER TABLE `ci_transfers`
  MODIFY `transfer_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_travels`
--
ALTER TABLE `ci_travels`
  MODIFY `travel_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_users_documents`
--
ALTER TABLE `ci_users_documents`
  MODIFY `document_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_visitors`
--
ALTER TABLE `ci_visitors`
  MODIFY `visitor_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_warnings`
--
ALTER TABLE `ci_warnings`
  MODIFY `warning_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
