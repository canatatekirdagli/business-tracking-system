-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 Ara 2023, 12:12:52
-- Sunucu sürümü: 10.4.25-MariaDB
-- PHP Sürümü: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `trackingsystem_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `site_baslik` varchar(300) DEFAULT NULL,
  `site_aciklama` varchar(300) DEFAULT NULL,
  `site_sahibi` varchar(100) DEFAULT NULL,
  `mail_onayi` int(11) DEFAULT NULL,
  `duyuru_onayi` int(11) DEFAULT NULL,
  `site_logo` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `site_baslik`, `site_aciklama`, `site_sahibi`, `mail_onayi`, `duyuru_onayi`, `site_logo`) VALUES
(1, 'İş Takip Sitesi', ' İş Takip Sitesiiii', 'Can Ata tek', 0, 0, '466951indir.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `kul_id` int(5) NOT NULL,
  `kul_isim` varchar(200) DEFAULT NULL,
  `kul_mail` varchar(250) DEFAULT NULL,
  `kul_sifre` varchar(250) DEFAULT NULL,
  `kul_telefon` varchar(50) DEFAULT NULL,
  `kul_unvan` varchar(250) DEFAULT NULL,
  `kul_yetki` int(11) DEFAULT NULL,
  `kul_logo` varchar(250) DEFAULT NULL,
  `ip_adresi` varchar(300) DEFAULT NULL,
  `session_mail` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`kul_id`, `kul_isim`, `kul_mail`, `kul_sifre`, `kul_telefon`, `kul_unvan`, `kul_yetki`, `kul_logo`, `ip_adresi`, `session_mail`) VALUES
(1, 'Can Ata ', 'canatatekirdagli30@gmail.com', '202cb962ac59075b964b07152d234b70', '5545294939', 'mühendis değil', 1, '9727232198WhatsAppImage2022-09-01at14.36.28.jpeg', '::1', '050020231efcf40e278ff60409cedf76');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `proje`
--

CREATE TABLE `proje` (
  `proje_id` int(5) NOT NULL,
  `proje_baslik` varchar(250) DEFAULT NULL,
  `proje_detay` text DEFAULT NULL,
  `proje_teslim_tarihi` varchar(100) DEFAULT NULL,
  `proje_baslama_tarihi` date DEFAULT NULL,
  `proje_durum` int(1) NOT NULL DEFAULT 0,
  `proje_aciliyet` int(1) NOT NULL DEFAULT 0,
  `dosya_yolu` varchar(500) DEFAULT NULL,
  `yuzde` int(11) NOT NULL DEFAULT 0,
  `eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `proje`
--

INSERT INTO `proje` (`proje_id`, `proje_baslik`, `proje_detay`, `proje_teslim_tarihi`, `proje_baslama_tarihi`, `proje_durum`, `proje_aciliyet`, `dosya_yolu`, `yuzde`, `eklenme_tarihi`) VALUES
(25, 'Proje-1', 'Fffffgggggdfsfdsfds', '2022-05-02', '2022-04-02', 0, 2, '122716indir.jpeg', 0, '2022-04-02 00:22:14'),
(27, 'Deneme', '<p>denemee</p>', '2023-12-31', '2023-12-29', 1, 1, NULL, 39, '2023-12-28 13:41:22'),
(28, 'Deneme-3', '<p>denemeee</p>', '2023-12-31', '2023-12-14', 2, 2, NULL, 20, '2023-12-28 13:41:53');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `sip_id` int(5) NOT NULL,
  `musteri_isim` varchar(250) DEFAULT NULL,
  `musteri_mail` varchar(250) DEFAULT NULL,
  `musteri_telefon` varchar(50) DEFAULT NULL,
  `sip_baslik` varchar(300) DEFAULT NULL,
  `sip_teslim_tarihi` varchar(100) DEFAULT NULL,
  `sip_aciliyet` int(1) NOT NULL DEFAULT 0,
  `sip_durum` int(1) NOT NULL DEFAULT 0,
  `sip_detay` mediumtext DEFAULT NULL,
  `sip_ucret` varchar(100) DEFAULT NULL,
  `sip_baslama_tarih` date DEFAULT NULL,
  `dosya_yolu` varchar(500) DEFAULT NULL,
  `yuzde` int(11) NOT NULL DEFAULT 0,
  `eklenme_tarihi` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`sip_id`, `musteri_isim`, `musteri_mail`, `musteri_telefon`, `sip_baslik`, `sip_teslim_tarihi`, `sip_aciliyet`, `sip_durum`, `sip_detay`, `sip_ucret`, `sip_baslama_tarih`, `dosya_yolu`, `yuzde`, `eklenme_tarihi`) VALUES
(22, 'Can Ata Tek', 'deneme@gmail', '5456456456456', 'Başlık', '2024-01-25', 1, 2, '<p>deneme</p>', '654564', '2023-12-30', NULL, 50, '2023-12-19 18:13:39'),
(23, 'Can Ata Tek', 'deneme@gmail', '5645645645645', 'Başlık', '2023-12-14', 0, 1, '<p>jhxdbjahsbdsjadsaa</p>', '654564', '2023-12-06', NULL, 60, '2023-12-28 13:43:41'),
(24, 'Can Ata Tek', 'deneme@gmail', '65456456456454', 'Başlık', '2023-12-08', 2, 0, '<p>fdgsfdsfdsfdsfdsf</p>', '321321531515515', '2023-12-07', NULL, 30, '2023-12-28 13:44:22');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`kul_id`),
  ADD UNIQUE KEY `kul_mail` (`kul_mail`);

--
-- Tablo için indeksler `proje`
--
ALTER TABLE `proje`
  ADD PRIMARY KEY (`proje_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`sip_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `kul_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `proje`
--
ALTER TABLE `proje`
  MODIFY `proje_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `sip_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
