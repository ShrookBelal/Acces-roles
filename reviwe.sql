-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2020 at 02:30 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reviwe`
--

-- --------------------------------------------------------

--
-- Table structure for table `acheivements`
--

CREATE TABLE `acheivements` (
  `id` int(11) NOT NULL,
  `point` int(2) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `name_ar` varchar(255) NOT NULL,
  `meta_key` text DEFAULT NULL,
  `meta_desc` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `img`, `status`, `name_ar`, `meta_key`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 'Laptops', '25910.png', 1, 'لاب توب', NULL, NULL, '2019-10-22 10:12:54', '2019-10-24 07:41:45'),
(3, 'T-shirt', '71973.png', 1, 'تى شيرت', NULL, NULL, '2019-10-22 12:49:19', '2019-10-24 07:42:35'),
(4, 'Jewelries', '11889.png', 1, 'مجوهرات', NULL, NULL, '2019-10-24 07:43:09', '2019-10-24 07:43:09'),
(5, 'Beauty', '29793.png', 1, 'تجميل', NULL, NULL, '2019-10-24 07:43:44', '2019-10-24 07:43:44'),
(6, 'Shorts', '27064.png', 1, 'شورت', NULL, NULL, '2019-10-24 07:44:43', '2019-10-24 07:44:43'),
(7, 'Mobile', '65161.png', 1, 'موبيل', NULL, NULL, '2019-10-24 07:45:19', '2019-10-24 07:45:19'),
(8, 'Watches', '94999.png', 1, 'ساعات', NULL, NULL, '2019-10-24 07:46:02', '2019-10-24 07:46:02'),
(9, 'TVs', '70110.png', 1, 'تلفزيونات', NULL, NULL, '2019-10-24 07:47:16', '2019-10-24 07:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `category_attributes`
--

CREATE TABLE `category_attributes` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_attributes`
--

INSERT INTO `category_attributes` (`id`, `category_id`, `attribute_id`) VALUES
(1, 1, 8),
(2, 1, 8),
(3, 1, 1),
(4, 3, 2),
(5, 3, 4),
(6, 1, 5),
(7, 3, 5),
(8, 1, 6),
(9, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `category_products`
--

CREATE TABLE `category_products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_products`
--

INSERT INTO `category_products` (`id`, `category_id`, `product_id`) VALUES
(4, 9, 2),
(5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `about` text DEFAULT NULL,
  `rating` decimal(10,2) NOT NULL DEFAULT 0.00,
  `rating_user_count` int(11) NOT NULL DEFAULT 0,
  `name_ar` varchar(255) NOT NULL,
  `meta_key` text DEFAULT NULL,
  `meta_desc` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `img`, `status`, `about`, `rating`, `rating_user_count`, `name_ar`, `meta_key`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 'Company 1', '26411.jpeg', 1, NULL, '0.00', 0, 'شركة 1', NULL, NULL, '2019-10-22 10:46:00', '2019-10-22 10:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `configrations`
--

CREATE TABLE `configrations` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_logo` varchar(255) DEFAULT NULL,
  `home_img1` varchar(255) DEFAULT NULL,
  `home_img2` varchar(255) DEFAULT NULL,
  `offer_img` varchar(255) DEFAULT NULL,
  `home_link1` varchar(255) DEFAULT NULL,
  `home_link2` varchar(255) DEFAULT NULL,
  `about_site` mediumtext DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `lang` varchar(5) NOT NULL,
  `meta_desc` mediumtext DEFAULT NULL,
  `meta_key` mediumtext DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configrations`
--

INSERT INTO `configrations` (`id`, `site_name`, `site_logo`, `home_img1`, `home_img2`, `offer_img`, `home_link1`, `home_link2`, `about_site`, `address`, `phone`, `lang`, `meta_desc`, `meta_key`, `icon`) VALUES
(1, 'UReview', '73102.jpeg', '24837.jpeg', '75549.jpeg', '20653.jpeg', 'https://www.youtube.com/watch?v=5q7oJ1VtcDc&list=RD5q7oJ1VtcDc&start_radio=1', 'https://www.youtube.com/watch?v=5q7oJ1VtcDc&list=RD5q7oJ1VtcDc&start_radio=1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '34 Ismail Sery St. - Kasr Elaiainy St. Cairo', '01122222222', 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '25501.png'),
(3, 'UReview', '15957.jpeg', '68674.jpeg', '73469.jpeg', '27337.jpeg', 'https://www.youtube.com/watch?v=5q7oJ1VtcDc&list=RD5q7oJ1VtcDc&start_radio=1', 'https://www.youtube.com/watch?v=5q7oJ1VtcDc&list=RD5q7oJ1VtcDc&start_radio=1', 'لوريم إيبسومهو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف.', '34 Ismail Sery St. - Kasr Elaiainy St. Cairo', '01279848396', 'ar', 'لوريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف.', 'لوريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف.', '77225.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `address`, `message`, `subject`) VALUES
(1, 'ZIZO1', 'mostafazizo96@yahoo.com', '01122222222', NULL, NULL, 'dfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`id`, `product_id`, `user_id`, `title`, `text`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'discussion title', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', NULL, 1, '2019-10-23 13:53:01', '2019-10-23 13:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `reciever_id` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_08_093511_entrust_setup_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `text` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_ar` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `link`, `status`, `text`, `title_ar`, `text_ar`) VALUES
(3, 'About Us', 'about_us', 1, NULL, 'من نحن', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mohamed@yahoo.com', '$2y$10$MEjMm3VQ3hGy6wCvji/56e77rP6qoFRg3GL3HIryQltinEARlXdKq', '2019-11-04 08:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(10, 'Admin add', 'Posts', 'admin can add posts only', '2019-11-03 12:37:39', '2019-11-03 12:38:51'),
(11, 'roleadd', 'roleadd', 'admin can add new role', '2019-11-04 10:03:46', '2019-11-04 10:03:46'),
(12, 'permission', 'add permision', 'admin can add permission', '2019-11-04 10:04:27', '2019-11-04 10:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_roles`
--

INSERT INTO `permission_roles` (`permission_id`, `role_id`) VALUES
(10, 1),
(11, 11),
(12, 11);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `desc` mediumtext DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_desc` mediumtext DEFAULT NULL,
  `show_home` tinyint(4) NOT NULL DEFAULT 0,
  `title_ar` varchar(255) NOT NULL,
  `desc_ar` text DEFAULT NULL,
  `short_desc_ar` text DEFAULT NULL,
  `rating` decimal(10,2) NOT NULL DEFAULT 0.00,
  `rate_after_sale` decimal(10,2) NOT NULL DEFAULT 0.00,
  `rating_user_count` int(11) NOT NULL DEFAULT 0,
  `model` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `length` varchar(255) DEFAULT NULL,
  `warranty` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `company_id`, `title`, `link`, `img`, `desc`, `short_desc`, `status`, `meta_key`, `meta_desc`, `show_home`, `title_ar`, `desc_ar`, `short_desc_ar`, `rating`, `rate_after_sale`, `rating_user_count`, `model`, `sku`, `weight`, `height`, `width`, `length`, `warranty`) VALUES
(1, 1, 'Product 1', 'Product_1', '95975.png', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>', 1, NULL, NULL, 1, 'المنتج 1', '<p>هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء.</p>', '<p>هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء.</p>', '0.00', '0.00', 0, 'model 3454', 'Lorem Ipsum', 'Weight', 'Lorem Ipsum', 'Lorem Ipsum', 'Lorem Ipsum', 'Lorem Ipsum'),
(2, 1, 'Product 2', 'Product_2', '96323.png', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>', 1, NULL, NULL, 1, 'المنتج 2', '<p>هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء.</p>', '<p>هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء.</p>', '0.00', '0.00', 0, 'model 3454', 'Lorem Ipsum', 'Weight', 'Lorem Ipsum', 'Lorem Ipsum', 'Lorem Ipsum', 'Lorem Ipsum');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `title`, `title_ar`) VALUES
(1, 'Brand', 'الماركة'),
(2, 'Manufacturer', 'الصانع'),
(4, 'Model Number', 'رقم الموديل'),
(5, 'Warranty', 'ضمان'),
(6, 'Other', 'اخرى'),
(8, 'Camera', 'الكاميرا');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes_values`
--

CREATE TABLE `product_attributes_values` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_attributes_values`
--

INSERT INTO `product_attributes_values` (`id`, `product_id`, `attribute_id`, `value`, `value_ar`) VALUES
(9, 1, 1, 'Value English', 'Value Arabic'),
(10, 1, 5, 'Value English', 'Value Arabic'),
(11, 1, 6, 'Value English', 'Value Arabic');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` int(11) NOT NULL,
  `color` varchar(15) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `img`) VALUES
(4, 2, '93758.png'),
(5, 2, '43201.png'),
(6, 1, '84072.png'),
(7, 1, '26318.png');

-- --------------------------------------------------------

--
-- Table structure for table `rate_drivers`
--

CREATE TABLE `rate_drivers` (
  `drivers_id` int(11) NOT NULL,
  `companies_id` int(11) NOT NULL,
  `rate` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rate_product` decimal(10,2) NOT NULL,
  `rate_after_sale` decimal(10,2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `review` text DEFAULT NULL,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `rate_product`, `rate_after_sale`, `title`, `review`, `like_count`, `status`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 1, '3.20', '3.40', 'rating title', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 0, 1, '2019-10-23 10:38:38', '2019-10-23 10:38:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating_like`
--

CREATE TABLE `rating_like` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `rating_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rating_replay`
--

CREATE TABLE `rating_replay` (
  `id` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `replay` varchar(255) NOT NULL,
  `text` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating_replay`
--

INSERT INTO `rating_replay` (`id`, `rating_id`, `user_id`, `replay`, `text`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'replay title', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 1, '2019-10-23 11:59:57', '2019-10-23 12:00:48');

-- --------------------------------------------------------

--
-- Table structure for table `report_rating`
--

CREATE TABLE `report_rating` (
  `id` int(11) NOT NULL,
  `report_type_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `rating_id` int(11) DEFAULT NULL,
  `discussion_id` int(11) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `report_types`
--

CREATE TABLE `report_types` (
  `id` int(11) NOT NULL,
  `name_en` mediumtext NOT NULL,
  `name_ar` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'Admin can acess all pages in site', '2019-11-03 08:30:44', '2019-11-03 08:50:49'),
(4, 'Publisher', 'Post publish', 'admin can publish posts', '2019-11-03 09:17:01', '2019-11-03 20:17:07'),
(11, 'roler', 'Roler', 'can acess role page ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 4),
(3, 1),
(3, 4),
(6, 4),
(7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `default_lang` varchar(5) NOT NULL,
  `lat` varchar(45) DEFAULT NULL,
  `long` varchar(45) DEFAULT NULL,
  `contact_email` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telphone` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `instgram` varchar(255) DEFAULT NULL,
  `snapchat` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `point_rating` int(2) NOT NULL,
  `point_like` int(2) NOT NULL,
  `point_replay` int(2) NOT NULL,
  `point_discussion` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `default_lang`, `lat`, `long`, `contact_email`, `email`, `telphone`, `mobile`, `facebook`, `linkedin`, `youtube`, `instgram`, `snapchat`, `twitter`, `point_rating`, `point_like`, `point_replay`, `point_discussion`) VALUES
(1, 'en', '30.04591596918068', '31.224260330200195', 'secs@elfagr-med.comm', 'mostafazizo96@yahoo.com', '01008181861', 'https://twitter.com/elfagr_medical', 'https://www.facebook.com/elfagr.medical/', 'https://www.linkedin.com/in/el-fagr-for-import-and-export-81828110b/', 'https://www.youtube.com/?gl=EG', 'https://www.instagram.com/elfagr.medical/', 'https://www.youtube.com/channel/UClQUpnNb0xjWodepL8rLsZg?view_as=subscriber', 'https://twitter.com/elfagr_medical', 10, 10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sildeshow`
--

CREATE TABLE `sildeshow` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` mediumtext DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `img` varchar(45) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sildeshow`
--

INSERT INTO `sildeshow` (`id`, `title`, `desc`, `link`, `img`, `lang`, `status`) VALUES
(1, 'slide Show 1', NULL, 'https://www.google.com/?hl=ar', '30060.png', 'en', 1),
(2, 'slide Show 2', NULL, 'https://www.google.com/?hl=ar', '76080.png', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `provider` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `admin`, `provider`, `provider_id`, `google_id`) VALUES
(1, 'Mustafe Mohammed', 'mostafazizo96@yahoo.com', '$2y$10$FMP/UiFw/3wBLYAEiFpQIuVSkzIYR0CWmuDuB8TK78EkPJeezZJiG', '43rG07RPhRg8SHYJoCekfzWmWLKJkryEmtB8kELtM6s6L6ryGaHk7IVLH5Nz', '2019-10-22 08:10:33', '2019-11-03 20:49:12', '010232265588', 1, '', '', NULL),
(2, 'shrook update', 'rana@gmail.com', '$2y$10$M5L3fdymt5OVEdqhuulkK.krdTAoyVpYjdYkDPYawDMjh0mRHOJOu', NULL, '2019-10-30 12:22:57', '2019-10-30 12:22:57', '01279848396', 0, '', '', NULL),
(3, 'shrook', 'shrook@gmail.com', '$2y$10$fPGLKvdocvgj23osxA1KAOS0r41.ufbd9USIbUoeD1VUiow3QOV4e', 'GmW1BH6HL5Jxt8ZIM4oMjR2sysQiRCRkhkwLIvuPTPP8fNbamJe9r34nYApb', '2019-10-30 22:48:19', '2019-10-31 09:18:32', '01279848396', 1, '', '', NULL),
(6, 'Shrook Belal', 'shrookallam6@gmail.com', '$2y$10$CP8u2Q9t6IcJu9pVlEVkTuI1N/fwgzx0q2HcMb6l14ovyJEoF38ZW', NULL, '2019-10-31 10:00:17', '2019-10-31 10:00:17', '012325654648', 0, 'facebook', '546536502806777', NULL),
(7, 'Shrook Belal', 'shrookbelalallam@gmail.com', '$2y$10$cYdHz76kupMw1Ij3ua0i5e7IUiS4SC9Y5Aswve1DAIxXYC8UTJBJG', NULL, '2019-10-31 10:49:42', '2019-10-31 10:49:42', '0123325658', 0, NULL, NULL, '107792821124830289280'),
(9, 'aml taha', 'amltahagaml@gmail.com', '$2y$10$8z8571RcDtiBQpe7nNl5TekaclSeBI/JGz9hDEJSMSlIaiRLJYU5S', NULL, '2019-10-31 11:06:00', '2019-10-31 11:06:00', '012256689986', 0, NULL, NULL, '113203813625203337959');

-- --------------------------------------------------------

--
-- Table structure for table `user_interest`
--

CREATE TABLE `user_interest` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_point`
--

CREATE TABLE `user_point` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `point` int(2) NOT NULL,
  `source` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acheivements`
--
ALTER TABLE `acheivements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_attributes`
--
ALTER TABLE `category_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `cat_attr_attr_id_for` (`attribute_id`);

--
-- Indexes for table `category_products`
--
ALTER TABLE `category_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configrations`
--
ALTER TABLE `configrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `discussion_parent_id_id_for` (`parent_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `reciever_id` (`reciever_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_service_id_for_idx` (`company_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes_values`
--
ALTER TABLE `product_attributes_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_for_idx` (`product_id`);

--
-- Indexes for table `rate_drivers`
--
ALTER TABLE `rate_drivers`
  ADD PRIMARY KEY (`drivers_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `rating_user_id_for` (`user_id`);

--
-- Indexes for table `rating_like`
--
ALTER TABLE `rating_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `rating_id` (`rating_id`);

--
-- Indexes for table `rating_replay`
--
ALTER TABLE `rating_replay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_id` (`rating_id`),
  ADD KEY `rating_replay_user_id_for` (`user_id`);

--
-- Indexes for table `report_rating`
--
ALTER TABLE `report_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_type_id` (`report_type_id`),
  ADD KEY `rating_id` (`rating_id`),
  ADD KEY `discussion_id` (`discussion_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `report_types`
--
ALTER TABLE `report_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sildeshow`
--
ALTER TABLE `sildeshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_interest`
--
ALTER TABLE `user_interest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `user_point`
--
ALTER TABLE `user_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acheivements`
--
ALTER TABLE `acheivements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category_attributes`
--
ALTER TABLE `category_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category_products`
--
ALTER TABLE `category_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `configrations`
--
ALTER TABLE `configrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_attributes_values`
--
ALTER TABLE `product_attributes_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rating_like`
--
ALTER TABLE `rating_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating_replay`
--
ALTER TABLE `rating_replay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `report_rating`
--
ALTER TABLE `report_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_types`
--
ALTER TABLE `report_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sildeshow`
--
ALTER TABLE `sildeshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_interest`
--
ALTER TABLE `user_interest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_point`
--
ALTER TABLE `user_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_attributes`
--
ALTER TABLE `category_attributes`
  ADD CONSTRAINT `cat_attr_attr_id_for` FOREIGN KEY (`attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cat_attr_cat_id_for` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_products`
--
ALTER TABLE `category_products`
  ADD CONSTRAINT `cat_pro_cat_id_for` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cat_pro_pro_id_for` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discussions`
--
ALTER TABLE `discussions`
  ADD CONSTRAINT `discussion_parent_id_id_for` FOREIGN KEY (`parent_id`) REFERENCES `discussions` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `discussion_pro_id_for` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `discussion_user_id_id_for` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_reciever_id_for` FOREIGN KEY (`reciever_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_sender_id_for` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_for` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `product_company_id_for` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_attributes_values`
--
ALTER TABLE `product_attributes_values`
  ADD CONSTRAINT `pro_attr_val_attr_id_for` FOREIGN KEY (`attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pro_attr_val_pro_id_for` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `pro_color_pro_id_for` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `pro_img_pro_id_for` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_pro_id_for` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_user_id_for` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_like`
--
ALTER TABLE `rating_like`
  ADD CONSTRAINT `rating_like_user_id_for` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_replay`
--
ALTER TABLE `rating_replay`
  ADD CONSTRAINT `rating_replay_user_id_for` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report_rating`
--
ALTER TABLE `report_rating`
  ADD CONSTRAINT `report_rating_user_id_for` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_interest`
--
ALTER TABLE `user_interest`
  ADD CONSTRAINT `user_interest_category_id_for` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_interest_user_id_for` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_point`
--
ALTER TABLE `user_point`
  ADD CONSTRAINT `user_point_user_id_for` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
