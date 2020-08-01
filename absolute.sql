-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 01, 2020 at 03:38 PM
-- Server version: 5.7.31-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absolute`
--

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `role` enum('mother','father','child') COLLATE utf8_unicode_ci NOT NULL,
  `permissions_allowed` enum('view_task','mark_done','distribute','upload_file') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='roles_permissions_description';

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role`, `permissions_allowed`) VALUES
(1, 'mother', 'view_task'),
(2, 'mother', 'mark_done'),
(3, 'mother', 'upload_file'),
(4, 'father', 'view_task'),
(5, 'father', 'mark_done'),
(6, 'father', 'distribute'),
(7, 'child', 'view_task'),
(8, 'child', 'mark_done');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tasks';

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `content`, `is_done`, `created_at`, `updated_at`) VALUES
(407, 2, 'PPIQ.SQN800000', 'All industries excl admin health educati, Inputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(408, 3, 'PPIQ.SQN800000', 'All industries excl admin health educati, Inputs Indexes (Level 0)', 1, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(409, NULL, 'PPIQ.SQN800000', 'All industries excl admin health educati, Inputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(410, 3, 'PPIQ.SQN800000', 'All industries excl admin health educati, Inputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(411, 3, 'PPIQ.SQN800001', 'All industries ex admin health edu OOD, Inputs Indexes (Level 0)', 1, '2020-08-01 12:04:39', '2020-08-01 12:05:19'),
(412, 3, 'PPIQ.SQN800001', 'All industries ex admin health edu OOD, Inputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(413, 3, 'PPIQ.SQN800001', 'All industries ex admin health edu OOD, Inputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(414, 3, 'PPIQ.SQN800001', 'All industries ex admin health edu OOD, Inputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(415, NULL, 'PPIQ.SQN900000', 'All industries, Inputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(416, NULL, 'PPIQ.SQN900000', 'All industries, Inputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(417, NULL, 'PPIQ.SQN900000', 'All industries, Inputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(418, NULL, 'PPIQ.SQN900000', 'All industries, Inputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(419, NULL, 'PPIQ.SQN900001', 'All industries excl OOD, Inputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(420, NULL, 'PPIQ.SQN900001', 'All industries excl OOD, Inputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(421, NULL, 'PPIQ.SQN900001', 'All industries excl OOD, Inputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(422, NULL, 'PPIQ.SQN900001', 'All industries excl OOD, Inputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(423, NULL, 'PPIQ.SQNAA0000', 'Agriculture, Forestry and Fishing, Inputs Indexes (Level 1)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(424, NULL, 'PPIQ.SQNAA0000', 'Agriculture, Forestry and Fishing, Inputs Indexes (Level 1)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(425, NULL, 'PPIQ.SQNAA2000', 'Forestry and Logging, Inputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(426, NULL, 'PPIQ.SQNAA2000', 'Forestry and Logging, Inputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(427, NULL, 'PPIQ.SQNAA2100', 'Forestry and Logging, Inputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(428, NULL, 'PPIQ.SQNAA2100', 'Forestry and Logging, Inputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(429, NULL, 'PPIQ.SQNAA211X', 'Forestry and Logging, Inputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(430, NULL, 'PPIQ.SQNAA211X', 'Forestry and Logging, Inputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(431, NULL, 'PPIQ.SQNCC0000', 'Manufacturing, Inputs Indexes (Level 1)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(432, NULL, 'PPIQ.SQNCC0000', 'Manufacturing, Inputs Indexes (Level 1)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(433, NULL, 'PPIQ.SQNCC0000', 'Manufacturing, Inputs Indexes (Level 1)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(434, NULL, 'PPIQ.SQNCC0000', 'Manufacturing, Inputs Indexes (Level 1)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(435, NULL, 'PPIQ.SQNCC1000', 'Food, Beverage and Tobacco Product Manuf, Inputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(436, NULL, 'PPIQ.SQNCC1000', 'Food, Beverage and Tobacco Product Manuf, Inputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(437, NULL, 'PPIQ.SQNCC1000', 'Food, Beverage and Tobacco Product Manuf, Inputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(438, NULL, 'PPIQ.SQNCC1000', 'Food, Beverage and Tobacco Product Manuf, Inputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(439, NULL, 'PPIQ.SQNCC1300', 'Dairy Product Manufacturing, Inputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(440, NULL, 'PPIQ.SQNCC1300', 'Dairy Product Manufacturing, Inputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(441, NULL, 'PPIQ.SQNCC1300', 'Dairy Product Manufacturing, Inputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(442, NULL, 'PPIQ.SQNCC1300', 'Dairy Product Manufacturing, Inputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(443, NULL, 'PPIQ.SQNCC131X', 'Dairy Product Manufacturing, Inputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(444, NULL, 'PPIQ.SQNCC131X', 'Dairy Product Manufacturing, Inputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(445, NULL, 'PPIQ.SQNCC131X', 'Dairy Product Manufacturing, Inputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(446, NULL, 'PPIQ.SQNCC131X', 'Dairy Product Manufacturing, Inputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(447, NULL, 'PPIQ.SQNCC1400', 'Fruit, Oil, Cereal and Other Food Produc, Inputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(448, NULL, 'PPIQ.SQNCC1400', 'Fruit, Oil, Cereal and Other Food Produc, Inputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(449, NULL, 'PPIQ.SQNCC141X', 'Fruit, Oil, Cereal and Other Food Product Manufact, Inputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(450, NULL, 'PPIQ.SQNCC141X', 'Fruit, Oil, Cereal and Other Food Product Manufact, Inputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(451, NULL, 'PPIQ.SQNCC3000', 'Wood and Paper Products Manufacturing, Inputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(452, NULL, 'PPIQ.SQNCC3000', 'Wood and Paper Products Manufacturing, Inputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(453, NULL, 'PPIQ.SQNCC3100', 'Wood Product Manufacturing, Inputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(454, NULL, 'PPIQ.SQNCC3100', 'Wood Product Manufacturing, Inputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(455, NULL, 'PPIQ.SQNCC311X', 'Wood Product Manufacturing, Inputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(456, NULL, 'PPIQ.SQNCC311X', 'Wood Product Manufacturing, Inputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(457, NULL, 'PPIQ.SQNCC3200', 'Pulp, Paper and Converted Paper Product, Inputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(458, NULL, 'PPIQ.SQNCC3200', 'Pulp, Paper and Converted Paper Product, Inputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(459, NULL, 'PPIQ.SQNCC321X', 'Pulp, Paper and Converted Paper Product Manufactur, Inputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(460, NULL, 'PPIQ.SQNCC321X', 'Pulp, Paper and Converted Paper Product Manufactur, Inputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(461, NULL, 'PPIQ.SQU900000', 'All industries, Outputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(462, NULL, 'PPIQ.SQU900000', 'All industries, Outputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(463, NULL, 'PPIQ.SQU900000', 'All industries, Outputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(464, NULL, 'PPIQ.SQU900000', 'All industries, Outputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(465, NULL, 'PPIQ.SQU900001', 'All industries excl OOD, Outputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(466, NULL, 'PPIQ.SQU900001', 'All industries excl OOD, Outputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(467, NULL, 'PPIQ.SQU900001', 'All industries excl OOD, Outputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(468, NULL, 'PPIQ.SQU900001', 'All industries excl OOD, Outputs Indexes (Level 0)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(469, NULL, 'PPIQ.SQUAA0000', 'Agriculture, Forestry and Fishing, Outputs Indexes (Level 1)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(470, NULL, 'PPIQ.SQUAA0000', 'Agriculture, Forestry and Fishing, Outputs Indexes (Level 1)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(471, NULL, 'PPIQ.SQUAA0000', 'Agriculture, Forestry and Fishing, Outputs Indexes (Level 1)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(472, NULL, 'PPIQ.SQUAA0000', 'Agriculture, Forestry and Fishing, Outputs Indexes (Level 1)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(473, NULL, 'PPIQ.SQUAA1000', 'Agriculture, Outputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(474, NULL, 'PPIQ.SQUAA1000', 'Agriculture, Outputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(475, NULL, 'PPIQ.SQUAA1000', 'Agriculture, Outputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(476, NULL, 'PPIQ.SQUAA1000', 'Agriculture, Outputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(477, NULL, 'PPIQ.SQUAA1100', 'Horticulture and Fruit Growing, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(478, NULL, 'PPIQ.SQUAA1100', 'Horticulture and Fruit Growing, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(479, NULL, 'PPIQ.SQUAA1100', 'Horticulture and Fruit Growing, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(480, NULL, 'PPIQ.SQUAA1100', 'Horticulture and Fruit Growing, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(481, NULL, 'PPIQ.SQUAA1110', 'Horticulture and Fruit Growing, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(482, NULL, 'PPIQ.SQUAA1110', 'Horticulture and Fruit Growing, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(483, NULL, 'PPIQ.SQUAA1110', 'Horticulture and Fruit Growing, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(484, NULL, 'PPIQ.SQUAA1110', 'Horticulture and Fruit Growing, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(485, NULL, 'PPIQ.SQUAA1200', 'Sheep, Beef Cattle and Grain Farming, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(486, NULL, 'PPIQ.SQUAA1200', 'Sheep, Beef Cattle and Grain Farming, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(487, NULL, 'PPIQ.SQUAA1200', 'Sheep, Beef Cattle and Grain Farming, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(488, NULL, 'PPIQ.SQUAA1200', 'Sheep, Beef Cattle and Grain Farming, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(489, NULL, 'PPIQ.SQUAA1210', 'Sheep, Beef Cattle and Grain Farming, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(490, NULL, 'PPIQ.SQUAA1210', 'Sheep, Beef Cattle and Grain Farming, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(491, NULL, 'PPIQ.SQUAA1210', 'Sheep, Beef Cattle and Grain Farming, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(492, NULL, 'PPIQ.SQUAA1210', 'Sheep, Beef Cattle and Grain Farming, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(493, NULL, 'PPIQ.SQUAA1300', 'Dairy Cattle Farming, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(494, NULL, 'PPIQ.SQUAA1300', 'Dairy Cattle Farming, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(495, NULL, 'PPIQ.SQUAA1300', 'Dairy Cattle Farming, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(496, NULL, 'PPIQ.SQUAA1300', 'Dairy Cattle Farming, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(497, NULL, 'PPIQ.SQUAA1310', 'Dairy Cattle Farming, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(498, NULL, 'PPIQ.SQUAA1310', 'Dairy Cattle Farming, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(499, NULL, 'PPIQ.SQUAA1310', 'Dairy Cattle Farming, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(500, NULL, 'PPIQ.SQUAA1310', 'Dairy Cattle Farming, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(501, NULL, 'PPIQ.SQUAA1400', 'Poultry, Deer and Other Livestock Farmin, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(502, NULL, 'PPIQ.SQUAA1400', 'Poultry, Deer and Other Livestock Farmin, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(503, NULL, 'PPIQ.SQUAA1400', 'Poultry, Deer and Other Livestock Farmin, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(504, NULL, 'PPIQ.SQUAA1400', 'Poultry, Deer and Other Livestock Farmin, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(505, NULL, 'PPIQ.SQUAA1410', 'Poultry, Deer and Other Livestock Farming, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(506, NULL, 'PPIQ.SQUAA1410', 'Poultry, Deer and Other Livestock Farming, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(507, NULL, 'PPIQ.SQUAA1410', 'Poultry, Deer and Other Livestock Farming, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(508, NULL, 'PPIQ.SQUAA1410', 'Poultry, Deer and Other Livestock Farming, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(509, NULL, 'PPIQ.SQUAA2000', 'Forestry and Logging, Outputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(510, NULL, 'PPIQ.SQUAA2000', 'Forestry and Logging, Outputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(511, NULL, 'PPIQ.SQUAA2100', 'Forestry and Logging, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(512, NULL, 'PPIQ.SQUAA2100', 'Forestry and Logging, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(513, NULL, 'PPIQ.SQUAA2110', 'Forestry and Logging, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(514, NULL, 'PPIQ.SQUAA2110', 'Forestry and Logging, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(515, NULL, 'PPIQ.SQUAA3000', 'Fishing, Aquaculture and Agriculture, Fo, Outputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(516, NULL, 'PPIQ.SQUAA3000', 'Fishing, Aquaculture and Agriculture, Fo, Outputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(517, NULL, 'PPIQ.SQUAA3220', 'Agriculture, Forestry and Fishing Support Services, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(518, NULL, 'PPIQ.SQUAA3220', 'Agriculture, Forestry and Fishing Support Services, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(519, NULL, 'PPIQ.SQUC03210', 'Logs for domestic market, LPT PPI - NA06CC higher level commodity indexes', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(520, NULL, 'PPIQ.SQUC03210', 'Logs for domestic market, LPT PPI - NA06CC higher level commodity indexes', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(521, NULL, 'PPIQ.SQUC03220', 'Logs for export market, LPT PPI - NA06CC higher level commodity indexes', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(522, NULL, 'PPIQ.SQUC03220', 'Logs for export market, LPT PPI - NA06CC higher level commodity indexes', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(523, NULL, 'PPIQ.SQUCC0000', 'Manufacturing, Outputs Indexes (Level 1)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(524, NULL, 'PPIQ.SQUCC0000', 'Manufacturing, Outputs Indexes (Level 1)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(525, NULL, 'PPIQ.SQUCC1000', 'Food, Beverage and Tobacco Product Manuf, Outputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(526, NULL, 'PPIQ.SQUCC1000', 'Food, Beverage and Tobacco Product Manuf, Outputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(527, NULL, 'PPIQ.SQUCC1000', 'Food, Beverage and Tobacco Product Manuf, Outputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(528, NULL, 'PPIQ.SQUCC1000', 'Food, Beverage and Tobacco Product Manuf, Outputs Indexes (Level 2)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(529, NULL, 'PPIQ.SQUCC1300', 'Dairy Product Manufacturing, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(530, NULL, 'PPIQ.SQUCC1300', 'Dairy Product Manufacturing, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(531, NULL, 'PPIQ.SQUCC1300', 'Dairy Product Manufacturing, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(532, NULL, 'PPIQ.SQUCC1300', 'Dairy Product Manufacturing, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(533, NULL, 'PPIQ.SQUCC1310', 'Dairy Product Manufacturing, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(534, NULL, 'PPIQ.SQUCC1310', 'Dairy Product Manufacturing, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(535, NULL, 'PPIQ.SQUCC1310', 'Dairy Product Manufacturing, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(536, NULL, 'PPIQ.SQUCC1310', 'Dairy Product Manufacturing, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(537, NULL, 'PPIQ.SQUCC3200', 'Pulp, Paper and Converted Paper Product, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(538, NULL, 'PPIQ.SQUCC3200', 'Pulp, Paper and Converted Paper Product, Outputs Indexes (Level 3)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(539, NULL, 'PPIQ.SQUCC3210', 'Pulp, Paper and Converted Paper Product Manufactur, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39'),
(540, NULL, 'PPIQ.SQUCC3210', 'Pulp, Paper and Converted Paper Product Manufactur, Outputs Indexes (Level 4)', 0, '2020-08-01 12:04:39', '2020-08-01 12:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `role` enum('mother','father','child') COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='users_table';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `password`) VALUES
(2, 'father', 'wewewe', '$2y$10$2ygwx0QmA4xhTwzNVNvEyujWixFINFNIfIz1MOH.OXvsTOeostjNe'),
(3, 'father', 'test', '$2y$10$cX45/vMQtXxY1YIH4HgH2eIVD4xnVVz1sF0MYfWdWPIrnI4HqilGK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_ibfk_4` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `roles_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
