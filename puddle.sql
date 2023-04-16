-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2023 at 05:54 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `puddle`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add item', 8, 'add_item'),
(30, 'Can change item', 8, 'change_item'),
(31, 'Can delete item', 8, 'delete_item'),
(32, 'Can view item', 8, 'view_item'),
(33, 'Can add conversation', 9, 'add_conversation'),
(34, 'Can change conversation', 9, 'change_conversation'),
(35, 'Can delete conversation', 9, 'delete_conversation'),
(36, 'Can view conversation', 9, 'view_conversation'),
(37, 'Can add conversation message', 10, 'add_conversationmessage'),
(38, 'Can change conversation message', 10, 'change_conversationmessage'),
(39, 'Can delete conversation message', 10, 'delete_conversationmessage'),
(40, 'Can view conversation message', 10, 'view_conversationmessage');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$Tbe3R67i0pN3bWpowalO3f$auojJnePzahfFqZS8WF70MD0LyqwLleZV9nrsKccKE4=', '2023-04-16 03:50:30.761087', 1, 'pubble', '', '', 'pubble12@gmail.com', 1, 1, '2023-04-15 08:05:57.737520'),
(2, 'pbkdf2_sha256$390000$iKFUeK048utawwN8b1CEcw$TnVcDNdt2meOcdhAkQGll92KMi6MHLOEB55aac0bErI=', '2023-04-16 03:26:56.433669', 0, 'rutvik', '', '', 'rutvikkamani28@gmail.com', 0, 1, '2023-04-15 12:57:18.831549'),
(3, 'pbkdf2_sha256$390000$JOmckZtPBcO7tiiER3Q9Cf$65Ncoi6YDKS23sHWeyiXTQDBqlJ+2kCmza3tNWNTyn0=', NULL, 0, 'patel', '', '', 'rutvikkamani28@gmail.com', 0, 1, '2023-04-15 13:04:40.021510');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conversation_conversation`
--

CREATE TABLE `conversation_conversation` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `item_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conversation_conversation`
--

INSERT INTO `conversation_conversation` (`id`, `created_at`, `modified_at`, `item_id`) VALUES
(1, '2023-04-15 19:04:33.242015', '2023-04-16 03:26:04.042561', 5),
(2, '2023-04-16 03:28:02.779701', '2023-04-16 03:28:02.894023', 3),
(3, '2023-04-16 03:30:33.460495', '2023-04-16 03:30:33.514571', 1);

-- --------------------------------------------------------

--
-- Table structure for table `conversation_conversationmessage`
--

CREATE TABLE `conversation_conversationmessage` (
  `id` bigint(20) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `conversation_id` bigint(20) NOT NULL,
  `created_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conversation_conversationmessage`
--

INSERT INTO `conversation_conversationmessage` (`id`, `content`, `created_at`, `conversation_id`, `created_by_id`) VALUES
(1, 'this is content Page', '2023-04-15 19:04:33.316972', 1, 3),
(2, 'hello', '2023-04-15 19:58:23.477082', 1, 1),
(3, 'hii', '2023-04-16 03:26:04.011420', 1, 2),
(4, 'hello', '2023-04-16 03:28:02.914177', 2, 2),
(5, 'this is my 2 year old bike', '2023-04-16 00:30:33.710900', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `conversation_conversation_members`
--

CREATE TABLE `conversation_conversation_members` (
  `id` bigint(20) NOT NULL,
  `conversation_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conversation_conversation_members`
--

INSERT INTO `conversation_conversation_members` (`id`, `conversation_id`, `user_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(4, 2, 1),
(3, 2, 2),
(6, 3, 1),
(5, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-04-15 08:09:25.754131', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-04-15 08:09:34.063320', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-04-15 08:10:40.621641', '3', 'Category object (3)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-04-15 08:30:47.787649', '1', 'Item object (1)', 1, '[{\"added\": {}}]', 8, 1),
(5, '2023-04-15 08:32:02.974521', '2', 'Item object (2)', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-04-15 08:32:49.654906', '3', 'Item object (3)', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-04-15 11:25:45.893360', '2', 'Venue', 2, '[{\"changed\": {\"fields\": [\"Is sold\"]}}]', 8, 1),
(8, '2023-04-15 11:50:46.378381', '4', 'i20', 1, '[{\"added\": {}}]', 8, 1),
(9, '2023-04-15 19:48:30.660371', '1', 'ConversationMessage object (1)', 2, '[{\"changed\": {\"fields\": [\"Created by\"]}}]', 10, 1),
(10, '2023-04-15 19:48:40.067267', '1', 'ConversationMessage object (1)', 2, '[{\"changed\": {\"fields\": [\"Created by\"]}}]', 10, 1),
(11, '2023-04-16 03:26:43.387215', '3', 'ConversationMessage object (3)', 2, '[{\"changed\": {\"fields\": [\"Created by\"]}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'conversation', 'conversation'),
(10, 'conversation', 'conversationmessage'),
(7, 'item', 'category'),
(8, 'item', 'item'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-15 08:03:47.916172'),
(2, 'auth', '0001_initial', '2023-04-15 08:03:49.147139'),
(3, 'admin', '0001_initial', '2023-04-15 08:03:49.503476'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-15 08:03:49.537456'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-15 08:03:49.551469'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-15 08:03:49.665667'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-15 08:03:49.807018'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-15 08:03:49.832921'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-15 08:03:49.846935'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-15 08:03:50.286510'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-15 08:03:50.297644'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-15 08:03:50.330622'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-15 08:03:50.359984'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-15 08:03:50.381865'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-15 08:03:50.407132'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-15 08:03:50.419139'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-15 08:03:50.448129'),
(18, 'item', '0001_initial', '2023-04-15 08:03:50.491458'),
(19, 'sessions', '0001_initial', '2023-04-15 08:03:50.591424'),
(20, 'item', '0002_alter_category_options_item', '2023-04-15 08:23:51.225118'),
(21, 'conversation', '0001_initial', '2023-04-15 18:22:28.856659');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`id`, `name`) VALUES
(1, 'Cars'),
(2, 'Bikes'),
(3, 'Electronics');

-- --------------------------------------------------------

--
-- Table structure for table `item_item`
--

CREATE TABLE `item_item` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `price` double NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `is_sold` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `created_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_item`
--

INSERT INTO `item_item` (`id`, `name`, `description`, `price`, `image`, `is_sold`, `created_at`, `category_id`, `created_by_id`) VALUES
(1, 'Splendor', 'This is Splendor bike..', 75000, 'item_images/bike.jpg', 0, '2023-04-15 08:30:47.784651', 2, 1),
(3, 'Laptop Dell', 'This is Dell Company Laptop...', 45000, 'item_images/laptop.jpg', 0, '2023-04-15 08:32:49.652853', 3, 1),
(5, 'Tv', 'This is Samsung LED TV..', 15000, 'item_images/tv.jpg', 0, '2023-04-15 13:56:11.963824', 3, 2);

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
-- Indexes for table `conversation_conversation`
--
ALTER TABLE `conversation_conversation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversation_conversation_item_id_228c4088_fk_item_item_id` (`item_id`);

--
-- Indexes for table `conversation_conversationmessage`
--
ALTER TABLE `conversation_conversationmessage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversation_convers_conversation_id_fdd084d4_fk_conversat` (`conversation_id`),
  ADD KEY `conversation_convers_created_by_id_aa6cea66_fk_auth_user` (`created_by_id`);

--
-- Indexes for table `conversation_conversation_members`
--
ALTER TABLE `conversation_conversation_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `conversation_conversatio_conversation_id_user_id_8676b40f_uniq` (`conversation_id`,`user_id`),
  ADD KEY `conversation_convers_user_id_226f9afc_fk_auth_user` (`user_id`);

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
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_item`
--
ALTER TABLE `item_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_item_category_id_7971a411_fk_item_category_id` (`category_id`),
  ADD KEY `item_item_created_by_id_abf41b7a_fk_auth_user_id` (`created_by_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT for table `conversation_conversation`
--
ALTER TABLE `conversation_conversation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `conversation_conversationmessage`
--
ALTER TABLE `conversation_conversationmessage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `conversation_conversation_members`
--
ALTER TABLE `conversation_conversation_members`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_item`
--
ALTER TABLE `item_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `conversation_conversation`
--
ALTER TABLE `conversation_conversation`
  ADD CONSTRAINT `conversation_conversation_item_id_228c4088_fk_item_item_id` FOREIGN KEY (`item_id`) REFERENCES `item_item` (`id`);

--
-- Constraints for table `conversation_conversationmessage`
--
ALTER TABLE `conversation_conversationmessage`
  ADD CONSTRAINT `conversation_convers_conversation_id_fdd084d4_fk_conversat` FOREIGN KEY (`conversation_id`) REFERENCES `conversation_conversation` (`id`),
  ADD CONSTRAINT `conversation_convers_created_by_id_aa6cea66_fk_auth_user` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `conversation_conversation_members`
--
ALTER TABLE `conversation_conversation_members`
  ADD CONSTRAINT `conversation_convers_conversation_id_c146fce9_fk_conversat` FOREIGN KEY (`conversation_id`) REFERENCES `conversation_conversation` (`id`),
  ADD CONSTRAINT `conversation_convers_user_id_226f9afc_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `item_item`
--
ALTER TABLE `item_item`
  ADD CONSTRAINT `item_item_category_id_7971a411_fk_item_category_id` FOREIGN KEY (`category_id`) REFERENCES `item_category` (`id`),
  ADD CONSTRAINT `item_item_created_by_id_abf41b7a_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
