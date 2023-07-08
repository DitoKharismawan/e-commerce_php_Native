-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 02:14 PM
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
(1, 6, 74, 'BLACK GREY RUNNING SHOES', 1320000, 8, '2323070708081688790867BLACKGREYRUNNINGSHOES.png', 'Aksesoris', 10560000),
(6, 7, 74, 'BLACK GREY RUNNING SHOES', 1320000, 5, '2323070708081688790867BLACKGREYRUNNINGSHOES.png', 'Aksesoris', 6600000),
(8, 5, 71, 'Wedrobe Orange Shirt ', 299000, 1, '2323070708081688789960ORANGESHIRT.png', 'Atasan', 299000);

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
(1, '780670363', 'ram', 123333, '991529107-2023-07-08-12-41-00-1688404207-2021-02-01-04-55-04-Bukti-Transfer-BRI-Terbaru-dan-Terlengkap.jpg');

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
(1, 73, 10),
(2, 72, 10),
(3, 66, 10),
(4, 74, 10);

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
(66, 'Black Blouse', 99900, 40, '2323070701011688215614URBANCO_Fashion_T095_Blouse_Black_43097001192111-1.webp', 'Atasan', 'Atasan blouse wanita model peasant terbuat dari kain tenun yang lembut dan nyaman dipakai memiliki jahitan lipatan plisket pada bagian depan', '2023-07-08 17:23:19', '2023-07-08 02:09:06'),
(68, 'AIRism T-Shirt Kerah Bulat Lengan Pendek 69 NAVY Ukuran L', 149000, 2, '2323070703031688363121uniqlo_goods_69_454312.webp', 'Atasan', 'Ikhtisar\r\n- Sekarang dibuat dengan poliester daur ulang.\r\n- Bahan &#039;AIRism&#039; yang lembut dan elastis dengan teknologi DRY yang cepat kering.\r\n- Dengan fitur Cool Touch dan deodorisasi.\r\n- Potongan yang pas dan tetap tersembunyi di balik pakaian.\r\n- Desain kerah seperti t-shirt, sehingga terlihat stylish.\r\n- Bahan &#039;AIRism&#039; dikembangkan bersama oleh UNIQLO dan Toray.\r\n\r\nMaterial\r\nDETAIL KAIN\r\n88% Poliester, 12% Elastan ( 54% Menggunakan Serat Poliester Daur Ulang )\r\nINSTRUKSI PENCUCIAN\r\nDicuci dengan mesin menggunakan air dingin, kecepatan putaran rendah, Tidak boleh dilakukan dry clean, Jangan gunakan mesin pengering.\r\n- Beberapa warna produk mungkin tidak tersedia.', '2023-07-03 07:45:21', '0000-00-00 00:00:00'),
(69, 'Rhodey Tali Ikat Pinggang Belt Gesper Canvas Military Tactical', 33900, 5, '2323070703031688363375ikat_pinggang.jpeg', 'Aksesoris', 'Ikat pinggang militer tactical membuat penampilan sobat xplor semakin keren seperti tentara. Dengan desain fast unlock yang membuat sobat tidak repot pada saat penggunaan nya. Material canvas yang di gunakan membuat ikat pinggang ini sangat kuat dan tahan lama.\r\n\r\n* FITUR *\r\n\r\n- Gesper Buka Kunci Cepat\r\nIkat pinggang ini menggunakan sistem buckle fast unlocking yang membuat proses membuka dan memassang tali pinggang sangat cepat dan praktis.\r\n\r\n- Bahan Kanvas\r\nIkat pinggang ini terbuat dari material kain Kanvas berkualitas tinggi untuk menjamin kualitas dari sabuk ini. Ikat pinggang tahan lama dan tidak mudah putus atau rusak.\r\n\r\n- Warna Varian\r\nTerdapat variant jenis warna yang berbeda sehingga menambah gaya penampilan anda sehari hari.\r\n\r\n\r\nSpesifikasi\r\nMaterial Metal Polyester Canvas\r\n\r\nDimensi :\r\n- Buckle Length: 6.5 cm\r\n- Buckle Width: 5 cm\r\n- Belt Width: 3.4 cm\r\n- Belt Length: 120 cm', '2023-07-03 07:49:35', '0000-00-00 00:00:00'),
(70, 'Hammerstout - Forge Olive - Celana Cargo', 243750, 0, '2323070703031688363644celana.jpeg', 'Bawahan', 'Slim straight cut\r\n\r\nTwill (70% cotton 30% polyester)\r\n\r\n2 safari pocket on back\r\n\r\n2 safari pocket on side tight\r\n\r\nSide pocket\r\n\r\nKeychain holder\r\n\r\nYkk zipper fly\r\n\r\nWoven logo', '2023-07-03 20:11:31', '2023-07-03 03:06:42'),
(71, 'Wedrobe Orange Shirt ', 299000, 20, '2323070708081688789960ORANGESHIRT.png', 'Atasan', 'ORANGE SHIRT:\r\n-COLOR	: ORANGE\r\n-SIZE	: S,M,L,XL\r\n-FIT	: REGULAR', '2023-07-08 06:19:20', '0000-00-00 00:00:00'),
(72, 'BLACK WORKSHIRT JACKET', 899880, 19, '2323070708081688790100JAKET1.png', 'Atasan', '-COLOR	: BLACK\r\n-SIZE	: S,M,L,XL\r\n-FIT	: REGULAR', '2023-07-08 17:23:19', '0000-00-00 00:00:00'),
(73, 'SHORT DAILY PANT:', 200000, 19, '2323070708081688790179SHORTDAILYPANT.png', 'Bawahan', '-COLOR	: BLACK\r\n-SIZE	: S,M,L,XL\r\n-FIT	: SHORT REGULAR', '2023-07-08 17:23:19', '0000-00-00 00:00:00'),
(74, 'BLACK GREY RUNNING SHOES', 1320000, 0, '2323070708081688790867BLACKGREYRUNNINGSHOES.png', 'Aksesoris', '-COLOR	: GREY, WHITE, BLACK\r\n-SIZE	: S,M,L,XL\r\n-FIT	: REGULAR', '2023-07-08 17:26:35', '0000-00-00 00:00:00'),
(75, 'LOGO WHITE SHIRT', 254000, 10, '2323070708081688817282LOGOWHITESHIRT.png', 'Atasan', '-COLOR	: WHITE\r\n-SIZE	: S,M,L,XL\r\n-FIT	: REGULAR', '2023-07-08 01:54:42', '0000-00-00 00:00:00'),
(76, 'FLOWER ICON WHITE SHIRT', 200000, 10, '2323070708081688817365FLOWERICONWHITESHIRT.png', 'Atasan', '-COLOR	: WHITE\r\n-SIZE	: S,M,L,XL\r\n-FIT	: REGULAR', '2023-07-08 01:56:05', '0000-00-00 00:00:00'),
(77, 'A4 GRAPHIC SHIRT', 239500, 10, '2323070708081688817413A4GRAPHICSHIRT.png', 'Atasan', '-COLOR	: BLACK\r\n-SIZE	: S,M,L,XL,XXL\r\n-FIT	: LOOSE', '2023-07-08 01:56:53', '0000-00-00 00:00:00'),
(78, 'CORDUROY KHAKI JACKET', 1250000, 15, '2323070708081688817672JAKET3.png', 'Atasan', '-COLOR	: WHITE\r\n-SIZE	: S,M,L,XL\r\n-FIT	: REGULAR', '2023-07-08 02:01:12', '0000-00-00 00:00:00'),
(79, 'GRAPHIC KHAKI WORKSHIRT JACKET', 899880, 10, '2323070708081688817726JAKET2.png', 'Atasan', '-COLOR	: WHITE\r\n-SIZE	: S,M,L,XL\r\n-FIT	: REGULAR', '2023-07-08 02:02:06', '0000-00-00 00:00:00'),
(80, 'BLACK RED RUNNING SHOES', 1250000, 20, '2323070708081688817801BLACKREDRUNNINGSHOES.png', 'Aksesoris', '-COLOR	: BLACK, RED, WHITE\r\n-SIZE	: S,M,L,XL\r\n-FIT	: REGULAR', '2023-07-08 02:03:21', '0000-00-00 00:00:00'),
(81, 'BLACK RUNNING SHOES', 1119999, 20, '2323070708081688818039BLACKRUNNINGSHOES.png', 'Aksesoris', '-COLOR	: BLACK, WHITE\r\n-SIZE	: S,M,L,XL\r\n-FIT	: REGULAR', '2023-07-08 02:07:19', '0000-00-00 00:00:00'),
(82, 'ORANGE WHITE BASKET SHOES', 2899999, 15, '2323070708081688818080ORANGEWHITEBASKETSHOES.png', 'Aksesoris', '-COLOR	: ORANGE, WHITE\r\n-SIZE	: S,M,L,XL\r\n-FIT	: REGULAR', '2023-07-08 02:08:00', '0000-00-00 00:00:00'),
(83, 'CARGO ARMY PANT', 210000, 20, '2323070708081688818227CARGOARMYPANT.png', 'Bawahan', '-COLOR	: ARMY\r\n-SIZE	: S,M,L,XL\r\n-FIT	: LONG REGULAR', '2023-07-08 02:10:27', '0000-00-00 00:00:00');

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
(1, 780670363, 5, 'entaraja', 'rfox', 'KALIBARU', 81111, 'rfox@mail.com', 13, 13179680, 1, 3, '2023-07-08 12:23:19', '2023-07-08 01:13:59', '0000-00-00 00:00:00'),
(2, 2101720740, 5, 'jne', 'aa', 'ds', 21, 'q2q3@mia.com', 1, 1320000, 0, 0, '2023-07-08 12:26:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(1, 780670363, 73, 1, 200000),
(2, 780670363, 72, 1, 899880),
(3, 780670363, 66, 2, 199800),
(4, 780670363, 74, 9, 11880000),
(5, 2101720740, 74, 1, 1320000);

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
(5, 'rfox', 'rfox@mail.com', '$2y$10$oLrLZSd1QaawsNNAItD.ROlMmSGCnSXVT6n65yWGEq2/iwjWtOp52', 'default.png', 'user', '2023-06-24 06:29:52', '0000-00-00 00:00:00'),
(6, 'admin', 'admin@mail.com', '$2y$10$oLrLZSd1QaawsNNAItD.ROlMmSGCnSXVT6n65yWGEq2/iwjWtOp52', 'default.png', 'admin', '2023-06-30 19:23:47', NULL),
(7, 'user', 'user@mail.com', '$2y$10$z9fCkdTIo.ONSgDaqCDOyOqVdnEWOjjQO3ctx6/GDcQ.fwZ3S.2oe', 'default.png', 'user', '2023-07-08 12:20:02', '0000-00-00 00:00:00');

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
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
