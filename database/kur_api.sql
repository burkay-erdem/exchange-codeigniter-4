-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 14 Nis 2021, 23:04:03
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kur_api`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `boya`
--

CREATE TABLE `boya` (
  `id` int(11) NOT NULL,
  `boya_cesit` varchar(50) NOT NULL,
  `boya_boyahane` varchar(70) NOT NULL,
  `boya_fire` varchar(50) NOT NULL,
  `boya_birimfiyat` float NOT NULL,
  `boya_kur` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ip`
--

CREATE TABLE `ip` (
  `id` int(11) NOT NULL,
  `ip_adi` varchar(50) NOT NULL,
  `ip_imalat` varchar(50) NOT NULL,
  `ip_birim_fiyat` float NOT NULL,
  `ip_kur` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kur`
--

CREATE TABLE `kur` (
  `id` int(11) NOT NULL,
  `dolar` float NOT NULL,
  `euro` float NOT NULL,
  `tl` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orgu`
--

CREATE TABLE `orgu` (
  `id` int(11) NOT NULL,
  `orgu_cesit` varchar(50) NOT NULL,
  `orgu_orguhane` varchar(70) NOT NULL,
  `orgu_fire` varchar(50) NOT NULL,
  `orgu_birimfiyat` double NOT NULL,
  `orgu_kur` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sevkiyat`
--

CREATE TABLE `sevkiyat` (
  `id` int(11) NOT NULL,
  `sevkiyat` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `boya`
--
ALTER TABLE `boya`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ip`
--
ALTER TABLE `ip`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kur`
--
ALTER TABLE `kur`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orgu`
--
ALTER TABLE `orgu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sevkiyat`
--
ALTER TABLE `sevkiyat`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `boya`
--
ALTER TABLE `boya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `ip`
--
ALTER TABLE `ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kur`
--
ALTER TABLE `kur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `orgu`
--
ALTER TABLE `orgu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sevkiyat`
--
ALTER TABLE `sevkiyat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
