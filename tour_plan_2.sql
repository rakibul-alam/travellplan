-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2020 at 07:18 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour_plan_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_infos`
--

CREATE TABLE `category_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_infos`
--

INSERT INTO `category_infos` (`id`, `category_name`, `category_description`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Explore', 'Sosa River in Slovenia is one of the most beautiful rivers I\'ve ever seen. It\'s only a river but it\'s​ in no way ordinary. If you know the famous Verrucae River in Switzerland, Sosa is similar. However, having visited both, Sosa remains my favorite. It\'s located near the cozy village of Bovver in Julian Alps where you can enjoy many activities: rafting, swimming, hiking and climbing.', 0, '2019-03-06 09:35:20', '2019-03-10 09:52:22'),
(7, 'Adventerous', 'ajghsdghafsdghvasgncvngzsvcgavsdcgfD', 1, '2019-03-14 08:04:01', '2019-03-14 08:04:01'),
(8, 'De Kuakata', 'It\'s Healthiest place & perfect place for a short tour.', 1, '2019-03-21 01:03:08', '2019-03-21 01:03:08'),
(9, 'De Sundarban', 'The Suburban is a mangrove area in the delta formed by the confluence of Ganges, Brahmaputra and Meghna Rivers in the Bay of Bengal. It spans from the Hooghly River in India\'s state of West Bengal to the Baleswar River in Bangladesh.', 1, '2019-03-29 02:35:18', '2019-05-14 04:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(10) NOT NULL,
  `commentor_id` int(20) NOT NULL,
  `commentor_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentor_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentor_comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `package_id`, `commentor_id`, `commentor_name`, `commentor_email`, `commentor_comment`, `created_at`, `updated_at`) VALUES
(1, 16, 1, 'alif', 'alif@gmail.com', 'efesfewfg', '2019-03-19 10:44:17', '2019-03-19 10:44:17'),
(2, 15, 1, 'alif', 'alif@gmail.com', 'werwetewt', '2019-03-19 11:10:56', '2019-03-19 11:10:56'),
(3, 15, 1, 'alif', 'alif@gmail.com', 'ergtertgertreyterhyurty', '2019-03-19 11:11:21', '2019-03-19 11:11:21'),
(4, 15, 2, 'Rakibul', 'rakibul@gmail.com', 'dfdxgfhfjgykulhujljio[;ko\'[ppl', '2019-03-19 11:13:51', '2019-03-19 11:13:51'),
(5, 15, 2, 'Rakibul', 'rakibul@gmail.com', 'hhbbh', '2019-03-19 11:16:36', '2019-03-19 11:16:36'),
(6, 17, 2, 'Rakibul', 'rakibul@gmail.com', 'It\'s a nice place. The tour loves can visit there & can enjoy thereself.', '2019-03-21 00:49:35', '2019-03-21 00:49:35'),
(7, 16, 1, 'alif', 'alif@gmail.com', 'nice place', '2019-03-22 01:56:12', '2019-03-22 01:56:12'),
(8, 16, 2, 'Rakibul', 'rakibul@gmail.com', 'very nice place', '2019-03-22 01:57:32', '2019-03-22 01:57:32'),
(9, 9, 2, 'Rakibul', 'rakibul@gmail.com', 'nice place', '2019-03-22 01:57:48', '2019-03-22 01:57:48'),
(10, 14, 2, 'Rakibul', 'rakibul@gmail.com', 'nice place', '2019-03-22 01:58:19', '2019-03-22 01:58:19'),
(11, 9, 2, 'Rakibul', 'rakibul@gmail.com', 'Very nice package with a cheaper price.', '2019-03-22 07:35:26', '2019-03-22 07:35:26'),
(12, 17, 2, 'Rakibul', 'rakibul@gmail.com', 'nice place', '2019-03-25 02:23:26', '2019-03-25 02:23:26'),
(13, 9, 2, 'Rakibul', 'rakibul@gmail.com', 'very nice', '2019-03-29 02:01:30', '2019-03-29 02:01:30'),
(14, 9, 2, 'Rakibul', 'rakibul@gmail.com', 'nice', '2019-03-29 02:05:34', '2019-03-29 02:05:34'),
(15, 9, 2, 'Rakibul', 'rakibul@gmail.com', 'nice', '2019-03-29 02:06:47', '2019-03-29 02:06:47'),
(16, 16, 2, 'Rakibul', 'rakibul@gmail.com', 'very nice place', '2019-03-29 02:08:22', '2019-03-29 02:08:22'),
(17, 16, 2, 'Rakibul', 'rakibul@gmail.com', 'very nice', '2019-03-29 02:20:12', '2019-03-29 02:20:12'),
(18, 16, 2, 'Rakibul', 'rakibul@gmail.com', 'very nice', '2019-03-29 02:25:29', '2019-03-29 02:25:29'),
(19, 17, 2, 'Rakibul', 'rakibul@gmail.com', 'nice', '2019-03-29 02:28:55', '2019-03-29 02:28:55'),
(20, 18, 2, 'Rakibul', 'rakibul@gmail.com', 'very nice place', '2019-03-29 02:39:55', '2019-03-29 02:39:55'),
(21, 18, 2, 'Rakibul', 'rakibul@gmail.com', 'very nice', '2019-03-31 05:31:06', '2019-03-31 05:31:06'),
(22, 18, 2, 'Rakibul', 'rakibul@gmail.com', 'nice', '2019-03-31 05:31:56', '2019-03-31 05:31:56'),
(23, 16, 2, 'Rakibul', 'rakibul@gmail.com', 'nice place', '2019-05-10 04:01:05', '2019-05-10 04:01:05'),
(24, 16, 2, 'Rakibul', 'rakibul@gmail.com', 'excellient place', '2019-05-10 04:01:42', '2019-05-10 04:01:42'),
(25, 18, 2, 'Rakibul', 'rakibul@gmail.com', 'fbfgb', '2019-05-10 04:09:22', '2019-05-10 04:09:22'),
(26, 18, 2, 'Rakibul', 'rakibul@gmail.com', 'gh', '2019-07-05 06:35:58', '2019-07-05 06:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `image_lists`
--

CREATE TABLE `image_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_preview` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_name`, `user_email`, `user_subject`, `user_message`, `created_at`, `updated_at`) VALUES
(1, 'r', 'cbcbg@g.co', 'liuytrefghjkl;\'', 'asdfghjkl;\';lkjhgfds', '2019-03-16 18:33:15', '2019-03-16 18:33:15'),
(2, 'fdsfs', 'cbcbg@g.co', 'ewfe', 'ewfwetwerterw', '2019-03-16 18:52:42', '2019-03-16 18:52:42'),
(3, 'rakibul', 'r@g.co', 'liuytrefghjkl;\'', 'dsferwgf', '2019-03-16 18:58:16', '2019-03-16 18:58:16'),
(4, 'tomy', 'rak@g.c', 'pagkage related', 'good', '2019-03-29 00:13:18', '2019-03-29 00:13:18'),
(5, 'denny', 'denny@g.c', 'package', 'nice package', '2019-03-29 00:21:13', '2019-03-29 00:21:13'),
(6, 'robin', 'robin@g.c', 'package', 'good package', '2019-04-09 09:13:20', '2019-04-09 09:13:20'),
(7, 'tomy', 'r@g.co', 'package', 'need a package', '2019-05-10 03:57:51', '2019-05-10 03:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_06_000341_create_category_infos_table', 2),
(4, '2019_03_06_174758_create_package_infos_table', 3),
(5, '2019_03_09_204631_create_visitors_table', 4),
(6, '2019_03_16_235523_create_messages_table', 5),
(7, '2019_03_17_194534_create_comments_table', 6),
(8, '2019_03_19_031622_create_comments_table', 7),
(9, '2019_05_23_035430_create_imgs_table', 8),
(10, '2019_05_25_093523_create_image_lists_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `package_infos`
--

CREATE TABLE `package_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_deadline` date NOT NULL,
  `package_rdate` date NOT NULL,
  `package_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_infos`
--

INSERT INTO `package_infos` (`id`, `package_category_id`, `package_name`, `package_image`, `package_price`, `package_deadline`, `package_rdate`, `package_description`, `package_status`, `created_at`, `updated_at`) VALUES
(9, '7', 'De Kuakata', 'package_image\\kuakata-sea-beach.jpg', '5000', '2019-03-03', '2019-03-05', 'It\'s healthiest place & perfect place for visiting a short tour.', 1, '2019-03-13 05:35:36', '2019-03-21 01:08:35'),
(14, '7', 'De Cox\'s Festival', 'package_image\\coxi-3.jpg', '13000', '2019-03-08', '2019-03-10', 'very good package with a cheaper cost.', 1, '2019-03-13 12:21:04', '2019-03-14 05:47:05'),
(15, '1', 'De seint martin', 'package_image\\seint martin.jpg', '5500', '2019-03-04', '2019-03-05', 'Sent martin is one of the most beautiful place in our country. It\'s a mind refeshing place & we\'re providing our best service for that place.', 1, '2019-03-14 05:43:21', '2019-03-21 01:07:25'),
(16, '1', 'Hanging in Sylhet', 'package_image\\sylhet.jpg', '11500', '2019-03-04', '2019-03-05', 'This is the perfect package who wants to visit in the different places of Sylhet.', 1, '2019-03-14 05:55:48', '2019-03-14 05:55:48'),
(17, '7', 'Tangur Hawor', 'package_image\\tangour hauor.jpg', '5001', '2019-03-01', '2019-03-12', 'It is one of the nice place in our country & located to Sylhet Sunamgong. People who are tour lovers can visit the place. lots of beautiful  things there. Within a cheaper price we\'ll try to provide a good service for the travellers.', 1, '2019-03-19 11:19:43', '2019-03-21 00:47:19'),
(18, '7', 'De Sundarban', 'package_image\\sundarban_1.jpg', '6500', '2019-03-03', '2019-03-05', 'One of the world\'s natural wonders, this massive forest is also a tiger & ecological preserve. We\'re providing some exclusive serves for that package.', 1, '2019-03-29 02:37:59', '2019-03-29 02:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@tourguide.com', NULL, '$2y$10$zwMaGWqi/A8IuKxubWuwluCr63z3p7yQJ.kh4B/eTwoJ2zM0ADPb2', NULL, '2019-03-03 04:44:49', '2019-03-03 04:44:49'),
(2, 'alif', 'alif@admin.com', NULL, '$2y$10$..7JLK.8XKhqfOLp2EV6Iu6KFXnSNNNaixuZGLqf6bFRqJ0WWAJtC', NULL, '2019-03-03 16:53:04', '2019-03-03 16:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitor_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitor_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitor_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitor_contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitor_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `visitor_name`, `visitor_email`, `visitor_image`, `visitor_password`, `visitor_contact`, `visitor_address`, `created_at`, `updated_at`) VALUES
(1, 'alif', 'alif@gmail.com', 'visitor_image\\seint martin.jpg', '$2y$10$zxKYeS/wCxJeG/KMlTgkIuQFFWGeo20EuyL4.l0R1TxUumlHqOUxi', '8031875', 'sdcdfhgjghklkjhgfd', '2019-03-18 09:04:39', '2019-03-18 09:04:39'),
(2, 'Rakibul', 'rakibul@gmail.com', 'visitor_image\\coxi-3.jpg', '$2y$10$WnbORf9qRx2BUAlUpgA1QelOTZ3eCpp4RWHgjczlIdOZvYhjYrUJO', '101010', 'sefrdgyrd', '2019-03-19 11:13:29', '2019-03-19 11:13:29'),
(3, 'wwwwwwww', 'admin@tourguide.com', 'visitor_image\\1.jpg', '$2y$10$ojYa8GE4oz4EirAIFHnXE.fLIxFbEkvLhIQUpQe0b2rN22WkzUv0i', '654321', '654321', '2019-07-06 01:14:21', '2019-07-06 01:14:21'),
(4, 'poiuytrewq', 'tt@g.c', 'visitor_image\\Logo.jpg', '$2y$10$bM2NUeaGDz2i56VrqLQiKegAtDDSG1daoksWETaICpd46NedviLFG', '0987654321', '0987654321', '2019-07-06 01:15:28', '2019-07-06 01:15:28'),
(5, 'rakibul', 'rk@g.c', 'visitor_image\\gettyimages-630621324-612x612.jpg', '$2y$10$phRcqI0ll40oL7aAZp3MN.Ro6kYHLEFgDboCPyrp90JlaMbW6H54q', '0174444465', 'dhaka', '2019-09-20 06:11:18', '2019-09-20 06:11:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_infos`
--
ALTER TABLE `category_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_lists`
--
ALTER TABLE `image_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_infos`
--
ALTER TABLE `package_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_infos`
--
ALTER TABLE `category_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `image_lists`
--
ALTER TABLE `image_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `package_infos`
--
ALTER TABLE `package_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
