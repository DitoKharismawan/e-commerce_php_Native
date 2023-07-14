-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 08:27 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tekno`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `kuantiti` int(11) NOT NULL,
  `gambar` varchar(191) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id_cart`, `id_user`, `id_produk`, `nama`, `harga`, `kuantiti`, `gambar`, `kategori`, `total`) VALUES
(1, 1, 64, 'CPU Fan Water Cooler Blue', 1760000, 1, '2121010131311612084289fanwatercooler.jfif', 'Komputer', 1760000);

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tentang` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pesan` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nominal` int(20) NOT NULL,
  `gambar` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pesan`, `nama`, `nominal`, `gambar`) VALUES
(3, '1219061106', 'Bayu Pamungkas', 9000000, '1171632372-2021-01-31-09-25-26-lenovoyoga.jpg'),
(4, '184795202', 'Bayu Pamungkas', 6760000, '1044008663-2021-02-01-04-45-52-Bukti-Transfer-BRI-Terbaru-dan-Terlengkap.jpg'),
(5, '1455538211', 'bayu', 62990000, '1688404207-2021-02-01-04-55-04-Bukti-Transfer-BRI-Terbaru-dan-Terlengkap.jpg'),
(6, '918570869', 'Adminz', 1098900, '2084417268-2023-07-01-03-14-59-reviewssd.png');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_produk`, `jual`) VALUES
(7, 63, 2),
(8, 64, 1),
(9, 59, 10),
(10, 58, 5),
(11, 60, 3),
(12, 66, 11);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(191) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `createat` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama`, `harga`, `stok`, `gambar`, `kategori`, `deskripsi`, `createat`, `updateat`) VALUES
(66, 'Black Blouse', 99900, 3, '2323070701011688215614URBANCO_Fashion_T095_Blouse_Black_43097001192111-1.webp', 'Atasan', 'Atasan blouse wanita model peasant terbuat dari kain tenun yang lembut dan nyaman dipakai memiliki jahitan lipatan plisket pada bagian depan', '2023-07-01 20:13:49', '2023-07-03 07:42:46'),
(68, 'AIRism T-Shirt Kerah Bulat Lengan Pendek 69 NAVY Ukuran L', 149000, 2, '2323070703031688363121uniqlo_goods_69_454312.webp', 'Atasan', 'Ikhtisar\r\n- Sekarang dibuat dengan poliester daur ulang.\r\n- Bahan &#039;AIRism&#039; yang lembut dan elastis dengan teknologi DRY yang cepat kering.\r\n- Dengan fitur Cool Touch dan deodorisasi.\r\n- Potongan yang pas dan tetap tersembunyi di balik pakaian.\r\n- Desain kerah seperti t-shirt, sehingga terlihat stylish.\r\n- Bahan &#039;AIRism&#039; dikembangkan bersama oleh UNIQLO dan Toray.\r\n\r\nMaterial\r\nDETAIL KAIN\r\n88% Poliester, 12% Elastan ( 54% Menggunakan Serat Poliester Daur Ulang )\r\nINSTRUKSI PENCUCIAN\r\nDicuci dengan mesin menggunakan air dingin, kecepatan putaran rendah, Tidak boleh dilakukan dry clean, Jangan gunakan mesin pengering.\r\n- Beberapa warna produk mungkin tidak tersedia.', '2023-07-03 07:45:21', '0000-00-00 00:00:00'),
(69, 'Rhodey Tali Ikat Pinggang Belt Gesper Canvas Military Tactical', 33900, 5, '2323070703031688363375ikat_pinggang.jpeg', 'Aksesoris', 'Ikat pinggang militer tactical membuat penampilan sobat xplor semakin keren seperti tentara. Dengan desain fast unlock yang membuat sobat tidak repot pada saat penggunaan nya. Material canvas yang di gunakan membuat ikat pinggang ini sangat kuat dan tahan lama.\r\n\r\n* FITUR *\r\n\r\n- Gesper Buka Kunci Cepat\r\nIkat pinggang ini menggunakan sistem buckle fast unlocking yang membuat proses membuka dan memassang tali pinggang sangat cepat dan praktis.\r\n\r\n- Bahan Kanvas\r\nIkat pinggang ini terbuat dari material kain Kanvas berkualitas tinggi untuk menjamin kualitas dari sabuk ini. Ikat pinggang tahan lama dan tidak mudah putus atau rusak.\r\n\r\n- Warna Varian\r\nTerdapat variant jenis warna yang berbeda sehingga menambah gaya penampilan anda sehari hari.\r\n\r\n\r\nSpesifikasi\r\nMaterial Metal Polyester Canvas\r\n\r\nDimensi :\r\n- Buckle Length: 6.5 cm\r\n- Buckle Width: 5 cm\r\n- Belt Width: 3.4 cm\r\n- Belt Length: 120 cm', '2023-07-03 07:49:35', '0000-00-00 00:00:00'),
(70, 'Hammerstout - Forge Olive - Celana Cargo', 243750, 1, '2323070703031688363644celana.jpeg', 'Bawahan', 'Slim straight cut\r\n\r\nTwill (70% cotton 30% polyester)\r\n\r\n2 safari pocket on back\r\n\r\n2 safari pocket on side tight\r\n\r\nSide pocket\r\n\r\nKeychain holder\r\n\r\nYkk zipper fly\r\n\r\nWoven logo', '2023-07-03 07:54:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` int(1) NOT NULL,
  `keterangan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `keterangan`) VALUES
(0, ''),
(1, 'Di proses'),
(2, 'Di kirim'),
(3, 'Di terima');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `telepon` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `kuantiti_total` int(11) NOT NULL,
  `total_akhir` int(20) NOT NULL,
  `pembayaran` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `pesan_at` datetime NOT NULL,
  `kirim_at` datetime NOT NULL,
  `terima_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_pesan`, `id_user`, `pengirim`, `penerima`, `alamat`, `telepon`, `email`, `kuantiti_total`, `total_akhir`, `pembayaran`, `id_status`, `pesan_at`, `kirim_at`, `terima_at`) VALUES
(4, 184795202, 1, 'Bayu Pamungkas', 'Marniyem', 'Jawa Tengah , Wonosari , Jamaica, Rt 11 Rw 2', 2147483647, 'marniyem@gmail.com', 2, 6760000, 1, 2, '2021-01-31 11:41:38', '2021-02-01 04:53:09', '0000-00-00 00:00:00'),
(6, 340738385, 5, '', '', '', 0, '', 3, 36000000, 0, 0, '2023-07-01 04:44:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 918570869, 6, 'JNE', 'admin', 'Jl Hahay', 8991234, 'admin@mail.com', 11, 1098900, 1, 2, '2023-07-01 03:13:48', '2023-07-01 03:18:28', '0000-00-00 00:00:00'),
(3, 1098598934, 1, 'Narto Saminto', 'Saskeh ', 'Konoha. rt 02 Rw 03', 2147483647, 'saske@gmail.com', 1, 5000000, 0, 0, '2021-01-31 11:34:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1219061106, 1, 'Bayu Pamungkas', 'bayu pamungkas', 'lopawon, Kebobang, Wonosari', 2147483647, 'bayu@gmail.com', 1, 9000000, 1, 3, '2021-01-31 04:56:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1455538211, 1, 'Bayu Pamungkas', 'bayu pamungkas', 'lopawon, Kebobang, Wonosari', 2147483647, 'bayu@gmail.com', 15, 62990000, 1, 0, '2021-01-31 12:00:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transaksi` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `kuantiti` int(11) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi`, `id_pesan`, `id_produk`, `kuantiti`, `total`) VALUES
(1, 1219061106, 61, 1, 9000000),
(9, 1098598934, 63, 1, 5000000),
(10, 184795202, 63, 1, 5000000),
(11, 184795202, 64, 1, 1760000),
(12, 1455538211, 59, 10, 32990000),
(13, 1455538211, 58, 5, 30000000),
(14, 340738385, 60, 3, 36000000),
(15, 918570869, 66, 11, 1098900);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sandi` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `role` varchar(15) NOT NULL,
  `createat` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `sandi`, `image`, `role`, `createat`, `updateat`) VALUES
(1, 'Bayu Pamungkas', 'bayhek335@gmail.com', '$2y$10$JACVc4V32Jp/fpJJNWJc7eOT9F2sBQcYhZraZUWDrPz6W8R7/ElM6', 'default.png', '1', '2021-01-31 16:28:35', NULL),
(5, 'rfox', 'rfox@mail.com', '$2y$10$oLrLZSd1QaawsNNAItD.ROlMmSGCnSXVT6n65yWGEq2/iwjWtOp52', 'default.png', 'user', '2023-06-24 06:29:52', '0000-00-00 00:00:00'),
(6, 'admin', 'admin@mail.com', '$2y$10$oLrLZSd1QaawsNNAItD.ROlMmSGCnSXVT6n65yWGEq2/iwjWtOp52', 'default.png', 'admin', '2023-06-30 19:23:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD UNIQUE KEY `id_pesan` (`id_pesan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_pesan`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
