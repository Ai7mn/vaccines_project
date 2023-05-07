-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07 مايو 2023 الساعة 22:54
-- إصدار الخادم: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaccineapi`
--

-- --------------------------------------------------------

--
-- بنية الجدول `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add محافظة', 7, 'add_governorate'),
(26, 'Can change محافظة', 7, 'change_governorate'),
(27, 'Can delete محافظة', 7, 'delete_governorate'),
(28, 'Can view محافظة', 7, 'view_governorate'),
(29, 'Can add مديرية', 8, 'add_directorate'),
(30, 'Can change مديرية', 8, 'change_directorate'),
(31, 'Can delete مديرية', 8, 'delete_directorate'),
(32, 'Can view مديرية', 8, 'view_directorate'),
(33, 'Can add recommends', 9, 'add_recommends'),
(34, 'Can change recommends', 9, 'change_recommends'),
(35, 'Can delete recommends', 9, 'delete_recommends'),
(36, 'Can view recommends', 9, 'view_recommends'),
(37, 'Can add child', 10, 'add_child'),
(38, 'Can change child', 10, 'change_child'),
(39, 'Can delete child', 10, 'delete_child'),
(40, 'Can view child', 10, 'view_child'),
(41, 'Can add serum', 11, 'add_serum'),
(42, 'Can change serum', 11, 'change_serum'),
(43, 'Can delete serum', 11, 'delete_serum'),
(44, 'Can view serum', 11, 'view_serum'),
(45, 'Can add visit', 12, 'add_visit'),
(46, 'Can change visit', 12, 'change_visit'),
(47, 'Can delete visit', 12, 'delete_visit'),
(48, 'Can view visit', 12, 'view_visit'),
(49, 'Can add dose', 13, 'add_dose'),
(50, 'Can change dose', 13, 'change_dose'),
(51, 'Can delete dose', 13, 'delete_dose'),
(52, 'Can view dose', 13, 'view_dose');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, '123', '2023-05-07 00:47:15.000000', 1, 'admin', 'ahmed', 'moh', 'ah@gmail.com', 0, 1, '0000-00-00 00:00:00.000000'),
(2, '123', '2023-05-07 00:47:15.000000', 0, 'emp', 'salm', 'salah', 'salm@gmail.com', 1, 1, '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'dozes', 'child'),
(8, 'dozes', 'directorate'),
(13, 'dozes', 'dose'),
(7, 'dozes', 'governorate'),
(9, 'dozes', 'recommends'),
(11, 'dozes', 'serum'),
(12, 'dozes', 'visit'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- بنية الجدول `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-06 21:45:37.961836'),
(2, 'auth', '0001_initial', '2023-05-06 21:45:46.431650'),
(3, 'admin', '0001_initial', '2023-05-06 21:45:48.988438'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-06 21:45:49.036694'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-06 21:45:49.075123'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-06 21:45:49.692835'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-06 21:45:50.478163'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-06 21:45:50.648982'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-06 21:45:50.693289'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-06 21:45:51.214934'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-06 21:45:51.261427'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-06 21:45:51.298487'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-06 21:45:51.438636'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-06 21:45:51.549306'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-06 21:45:51.698792'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-06 21:45:51.777027'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-06 21:45:51.898566'),
(18, 'sessions', '0001_initial', '2023-05-06 21:45:52.955906'),
(19, 'dozes', '0001_initial', '2023-05-06 22:00:41.903014'),
(20, 'dozes', '0002_alter_child_gender_alter_dose_for_age_and_more', '2023-05-06 22:52:01.317142'),
(21, 'dozes', '0003_alter_dose_for_age', '2023-05-07 00:57:50.280878'),
(22, 'dozes', '0004_alter_dose_production_date', '2023-05-07 01:22:25.603118'),
(23, 'dozes', '0005_alter_dose_production_date', '2023-05-07 01:22:26.218649');

-- --------------------------------------------------------

--
-- بنية الجدول `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `dozes_child`
--

CREATE TABLE `dozes_child` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `second_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `serial` varchar(120) DEFAULT NULL,
  `gender` varchar(100) NOT NULL,
  `date_of_birth` varchar(100) DEFAULT NULL,
  `directorate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `dozes_child`
--

INSERT INTO `dozes_child` (`id`, `first_name`, `second_name`, `last_name`, `serial`, `gender`, `date_of_birth`, `directorate_id`) VALUES
(5, 'sameh', 'masour', 'rrrrr', 'df171044', 'male', 'شوال /06 /1444', 8),
(9, 'new', 'new', 'new', 'newnew171044', 'others', '1444/شوال/17', 8);

-- --------------------------------------------------------

--
-- بنية الجدول `dozes_directorate`
--

CREATE TABLE `dozes_directorate` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `governorate_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `dozes_directorate`
--

INSERT INTO `dozes_directorate` (`id`, `name`, `governorate_id`) VALUES
(1, 'التحرير', 1),
(2, 'الوحدة', 1),
(5, 'معين', 1),
(6, 'امانة العاصمة', 1),
(7, 'عمران', 2),
(8, 'الضبر', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `dozes_dose`
--

CREATE TABLE `dozes_dose` (
  `id` bigint(20) NOT NULL,
  `dose_number` int(10) UNSIGNED NOT NULL CHECK (`dose_number` >= 0),
  `production_date` varchar(100) DEFAULT NULL,
  `exp_date` varchar(100) DEFAULT NULL,
  `for_age` varchar(100) DEFAULT NULL,
  `serum_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `dozes_dose`
--

INSERT INTO `dozes_dose` (`id`, `dose_number`, `production_date`, `exp_date`, `for_age`, `serum_id`) VALUES
(13, 787, 'رمضان /26 /1444', 'رمضان /27 /1444', 'kknn7', 2),
(14, 8, 'شوال /04 /1444', 'شوال /11 /1444', '4lmlm', 1),
(19, 1, 'شوال /17 /1444', 'شوال /17 /1444', '1', 7),
(20, 2, 'شوال /17 /1444', 'شوال /17 /1444', '2222', 7);

-- --------------------------------------------------------

--
-- بنية الجدول `dozes_governorate`
--

CREATE TABLE `dozes_governorate` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `dozes_governorate`
--

INSERT INTO `dozes_governorate` (`id`, `name`) VALUES
(1, 'صنعاء'),
(2, 'عمران');

-- --------------------------------------------------------

--
-- بنية الجدول `dozes_recommends`
--

CREATE TABLE `dozes_recommends` (
  `id` bigint(20) NOT NULL,
  `recommend_text` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `dozes_recommends`
--

INSERT INTO `dozes_recommends` (`id`, `recommend_text`, `user_id`) VALUES
(16, 'ggggggggggggggggggggggggggggggggggggggggggggggggg', 2),
(17, 'dmkdddddd', 2),
(19, 'dkjkjf', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `dozes_serum`
--

CREATE TABLE `dozes_serum` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `made_in` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `dozes_serum`
--

INSERT INTO `dozes_serum` (`id`, `name`, `type`, `made_in`) VALUES
(1, 'mouth', 'شراب', 'اليمن'),
(2, 'd', 'شراب', 'الهند'),
(7, 'er', 'rr', 'rr');

-- --------------------------------------------------------

--
-- بنية الجدول `dozes_visit`
--

CREATE TABLE `dozes_visit` (
  `id` bigint(20) NOT NULL,
  `visit_date` varchar(100) DEFAULT NULL,
  `is_taken` tinyint(1) NOT NULL,
  `next_visit` int(10) UNSIGNED DEFAULT NULL CHECK (`next_visit` >= 0),
  `child_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `dozes_visit`
--

INSERT INTO `dozes_visit` (`id`, `visit_date`, `is_taken`, `next_visit`, `child_id`) VALUES
(32, 'شوال/ 17 / 1444', 0, 78, 5),
(33, 'شوال/ 17 / 1444', 0, 787878, 5),
(34, 'شوال/ 17 / 1444', 1, 7, 5),
(36, 'شوال/ 17 / 1444', 1, 78, 5),
(38, 'شوال /17 /1444', 0, 87, 5),
(39, 'شوال /17 /1444', 0, 87, 5),
(42, 'شوال/ 17 / 1444', 0, 3, 5),
(43, 'شوال /17 /1444', 1, 78, 5),
(44, 'شوال /17 /1444', 0, 32, 5),
(45, 'شوال/ 17 / 1444', 0, 0, 5),
(50, 'شوال /17 /1444', 0, 3, 5),
(51, 'شوال /17 /1444', 0, 55, 5),
(53, 'شوال/ 17 / 1444', 0, 123, 5),
(54, 'شوال /17 /1444', 1, 123, 5);

-- --------------------------------------------------------

--
-- بنية الجدول `dozes_visit_dose`
--

CREATE TABLE `dozes_visit_dose` (
  `id` bigint(20) NOT NULL,
  `visit_id` bigint(20) NOT NULL,
  `dose_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `dozes_visit_dose`
--

INSERT INTO `dozes_visit_dose` (`id`, `visit_id`, `dose_id`) VALUES
(61, 32, 14),
(69, 33, 13),
(70, 33, 14),
(81, 34, 13),
(80, 34, 14),
(75, 36, 13),
(76, 36, 14),
(82, 38, 13),
(83, 38, 14),
(84, 39, 13),
(89, 43, 13),
(90, 43, 14),
(91, 44, 13),
(97, 45, 13),
(94, 50, 13),
(95, 51, 13),
(96, 51, 14),
(101, 53, 13),
(100, 53, 14),
(103, 54, 13),
(102, 54, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `dozes_child`
--
ALTER TABLE `dozes_child`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serial` (`serial`),
  ADD KEY `dozes_child_directorate_id_8b2a8f3a_fk_dozes_directorate_id` (`directorate_id`);

--
-- Indexes for table `dozes_directorate`
--
ALTER TABLE `dozes_directorate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dozes_directorate_governorate_id_72ee49f4_fk_dozes_gov` (`governorate_id`);

--
-- Indexes for table `dozes_dose`
--
ALTER TABLE `dozes_dose`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serum_id` (`serum_id`);

--
-- Indexes for table `dozes_governorate`
--
ALTER TABLE `dozes_governorate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dozes_recommends`
--
ALTER TABLE `dozes_recommends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dozes_recommends_user_id_83f4e44e_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `dozes_serum`
--
ALTER TABLE `dozes_serum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dozes_visit`
--
ALTER TABLE `dozes_visit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dozes_visit_child_id_6839c4e2_fk_dozes_child_id` (`child_id`);

--
-- Indexes for table `dozes_visit_dose`
--
ALTER TABLE `dozes_visit_dose`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dozes_visit_dose_visit_id_dose_id_4382b546_uniq` (`visit_id`,`dose_id`),
  ADD KEY `dozes_visit_dose_dose_id_398c8ee5_fk_dozes_dose_id` (`dose_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `dozes_child`
--
ALTER TABLE `dozes_child`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dozes_directorate`
--
ALTER TABLE `dozes_directorate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dozes_dose`
--
ALTER TABLE `dozes_dose`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `dozes_governorate`
--
ALTER TABLE `dozes_governorate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dozes_recommends`
--
ALTER TABLE `dozes_recommends`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `dozes_serum`
--
ALTER TABLE `dozes_serum`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dozes_visit`
--
ALTER TABLE `dozes_visit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `dozes_visit_dose`
--
ALTER TABLE `dozes_visit_dose`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- قيود الجداول `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- قيود الجداول `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `dozes_child`
--
ALTER TABLE `dozes_child`
  ADD CONSTRAINT `dozes_child_directorate_id_8b2a8f3a_fk_dozes_directorate_id` FOREIGN KEY (`directorate_id`) REFERENCES `dozes_directorate` (`id`);

--
-- قيود الجداول `dozes_directorate`
--
ALTER TABLE `dozes_directorate`
  ADD CONSTRAINT `dozes_directorate_governorate_id_72ee49f4_fk_dozes_gov` FOREIGN KEY (`governorate_id`) REFERENCES `dozes_governorate` (`id`);

--
-- قيود الجداول `dozes_dose`
--
ALTER TABLE `dozes_dose`
  ADD CONSTRAINT `dozes_dose_ibfk_1` FOREIGN KEY (`serum_id`) REFERENCES `dozes_serum` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- قيود الجداول `dozes_recommends`
--
ALTER TABLE `dozes_recommends`
  ADD CONSTRAINT `dozes_recommends_user_id_83f4e44e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `dozes_visit`
--
ALTER TABLE `dozes_visit`
  ADD CONSTRAINT `dozes_visit_child_id_6839c4e2_fk_dozes_child_id` FOREIGN KEY (`child_id`) REFERENCES `dozes_child` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- قيود الجداول `dozes_visit_dose`
--
ALTER TABLE `dozes_visit_dose`
  ADD CONSTRAINT `dozes_visit_dose_dose_id_398c8ee5_fk_dozes_dose_id` FOREIGN KEY (`dose_id`) REFERENCES `dozes_dose` (`id`),
  ADD CONSTRAINT `dozes_visit_dose_visit_id_c6ad8e95_fk_dozes_visit_id` FOREIGN KEY (`visit_id`) REFERENCES `dozes_visit` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
