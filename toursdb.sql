-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2021 a las 22:45:48
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `toursdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2021_01_13_040637_create_tours_table', 1);

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
-- Estructura de tabla para la tabla `tours`
--

CREATE TABLE `tours` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `duracion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resumen` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `condiciones` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tours`
--

INSERT INTO `tours` (`id`, `titulo`, `subtitulo`, `precio`, `descripcion`, `duracion`, `resumen`, `condiciones`, `imagen`, `popular`, `createdAt`, `updatedAt`) VALUES
(2, 'Amanecer Loretano', 'Una aventura al iniciar el día.', '132, 66', 'La aventura comienza a las 4:30 a.m. en el boulevard, donde se aprecia la aurora, se respira el éter, pura energía, la salida del sol se vuelve una experiencia mágica e impresionante, además se observa el río como vía de transporte al poblador ribereño que trae sus productos al mercado principal de la ciudad (Belén) y el sonido de las aves de la zona.', '2 horas', '- Encuento 4:30 en el Boulevar.', 'La reserva y cancelaciones se hacen con 48 horas de anticipación.', 'iquitos-tour-img2.jpg', 1, NULL, NULL),
(3, 'City Night', 'Un viaje inolvidable en las calles de Iquitos por la noche.', '165', 'Es disfrutar a Iquitos de noche, en uno de los lugares frente al río: Amazon Bistro, Fitzscarraldo, La Noche, Dawn on the Amazon Café y escuchar música amazónica en el Refugio.', '3 Horas', '- Lugar de partida es la plaza de armas.\r\n- Ir al Boulevard.', 'Las cancelaciones son con 48 horas de anticipación.', 'iquitos-tour-img2.jpg', 1, NULL, NULL),
(4, 'Atardecer Amazónico', 'Disfruta de un grandioso atardecer en la ciudad de Iquitos.', '165, 82', 'La vista del ocaso lo vemos en la zona oeste de la ciudad en Morona-cocha, es una experiencia auténtica y plena una hermosa luz que hasta que es de noche.\r\nDestacan los colores anaranjados y rojos, baja una niebla fina que parece cocare un filtro a la belleza natural.', '3 Horas', '', 'Cancela con 48 horas de anticipación.', 'iquitos-tour-img2.jpg', 0, NULL, NULL);

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
  `rol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `rol`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Grover', 'grover@mail.com', NULL, '$2y$10$Mi319qv7zThHF7WyAte3t.kJ47FZ.LntFYtDkoi880HpmdIBPUYzm', 'Administrador', NULL, '2021-01-19 03:32:51', '2021-01-19 03:32:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
