-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-01-2022 a las 17:34:30
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `apirest_productos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_28_201112_productos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo_barra` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` double(8,2) NOT NULL,
  `url_imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo_barra`, `nombre`, `descripcion`, `precio`, `url_imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1234567, 'Mouse Gamer MSI M99', 'Mouse gamer de MSI modelo M99 con luces RGB', 55.50, 'https://www.google.com.sv/url?sa=i&url=https%3A%2F%2Fwww.excaliberpc.com%2F741438%2Fmsi-m99-rgb-gaming-mouse.html&psig=AOvVaw3u-cz1l9MDgpHkiWAT-_BR&ust=1643558785339000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKid6-Gr1_UCFQAAAAAdAAAAABAN', NULL, NULL, NULL),
(1788198, 'Desktop', 'aquí va el texto', 472.84, 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(3211755, 'Laptop', 'aquí va el texto', 184.97, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(5785506, 'Laptop', 'aquí va el texto', 382.01, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(6607173, 'Desktop', 'aquí va el texto', 807.55, 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(11394822, 'Desktop', 'aquí va el texto', 469.09, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(12033577, 'Desktop', 'aquí va el texto', 118.00, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(18039115, 'Mini Laptop', 'aquí va el texto', 353.25, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(18526707, 'Mini Laptop', 'aquí va el texto', 238.66, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(23317536, 'Desktop', 'aquí va el texto', 488.94, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(23676671, 'Laptop', 'aquí va el texto', 589.35, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(25863628, 'Laptop', 'aquí va el texto', 486.97, 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(30825437, 'Mini Laptop', 'aquí va el texto', 501.24, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(34674550, 'Mini Laptop', 'aquí va el texto', 225.29, 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(38588419, 'Laptop', 'aquí va el texto', 229.23, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(39946690, 'Mini Laptop', 'aquí va el texto', 911.93, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(42777717, 'Desktop', 'aquí va el texto', 720.68, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(43434145, 'Desktop', 'aquí va el texto', 482.00, 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(46352842, 'Mini Laptop', 'aquí va el texto', 253.44, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(50397495, 'Desktop', 'aquí va el texto', 218.82, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(54282742, 'Mini Laptop', 'aquí va el texto', 510.97, 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(56874075, 'Desktop', 'aquí va el texto', 117.50, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(57393551, 'Desktop', 'aquí va el texto', 326.09, 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(59942818, 'Desktop', 'aquí va el texto', 671.65, 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(60649126, 'Mini Laptop', 'aquí va el texto', 971.70, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(62868594, 'Desktop', 'aquí va el texto', 507.60, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(66428978, 'Desktop', 'aquí va el texto', 687.73, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(66437147, 'Desktop', 'aquí va el texto', 597.21, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(66550877, 'Mini Laptop', 'aquí va el texto', 370.06, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(66856580, 'Desktop', 'aquí va el texto', 829.98, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(67092925, 'Mini Laptop', 'aquí va el texto', 491.65, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(67441617, 'Mini Laptop', 'aquí va el texto', 433.20, 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(69567322, 'Mini Laptop', 'aquí va el texto', 299.38, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(70540642, 'Desktop', 'aquí va el texto', 815.51, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(71110257, 'Mini Laptop', 'aquí va el texto', 841.00, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(72469286, 'Laptop', 'aquí va el texto', 600.89, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(72794012, 'Mini Laptop', 'aquí va el texto', 277.00, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(73136484, 'Laptop', 'aquí va el texto', 966.00, 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(74814657, 'Laptop', 'aquí va el texto', 556.70, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(77577597, 'Laptop', 'aquí va el texto', 760.50, 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(83609084, 'Desktop', 'aquí va el texto', 220.41, 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(86577854, 'Mini Laptop', 'aquí va el texto', 574.57, 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(88059617, 'Desktop', 'aquí va el texto', 120.43, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(89650998, 'Desktop', 'aquí va el texto', 350.03, 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(90003998, 'Mini Laptop', 'aquí va el texto', 427.31, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(90150739, 'Desktop', 'aquí va el texto', 659.88, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(94581157, 'Mini Laptop', 'aquí va el texto', 986.82, 'https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(94813722, 'Desktop', 'aquí va el texto', 354.63, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(96181980, 'Mini Laptop', 'aquí va el texto', 152.71, 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL),
(97330103, 'Laptop', 'aquí va el texto', 608.00, 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', '2022-01-29 21:39:50', '2022-01-29 21:39:50', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo_barra`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `codigo_barra` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97330104;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
