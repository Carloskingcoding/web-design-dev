-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2024 at 08:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `shopId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `totalPrice` decimal(10,2) DEFAULT NULL,
  `addedTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartId`, `shopId`, `userId`, `productId`, `quantity`, `totalPrice`, `addedTime`) VALUES
(24, 0, 4, 24, 1, 250000.00, '2024-12-16 21:07:05'),
(25, 0, 3, 19, 1, 200000.00, '2024-12-16 21:07:05'),
(26, 0, 4, 17, 1, 100000.00, '2024-12-16 21:07:05'),
(27, 0, 2, 17, 1, 100000.00, '2024-12-16 21:07:05'),
(28, 0, 4, 28, 1, 200000.00, '2024-12-16 21:07:05'),
(30, 0, 7, 21, 1, 200000.00, '2024-12-16 21:07:05'),
(32, 0, 4, 30, 1, 250000.00, '2024-12-16 21:07:05');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `shopId` int(11) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productDesc` varchar(200) DEFAULT NULL,
  `productCategory` enum('Shirts','Pants','Sweaters & Hoodies','Accessories','Footwear') DEFAULT NULL,
  `productPrice` decimal(10,2) DEFAULT NULL,
  `productQuantity` int(11) DEFAULT NULL,
  `productPhoto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `shopId`, `userId`, `productName`, `productDesc`, `productCategory`, `productPrice`, `productQuantity`, `productPhoto`, `created_at`) VALUES
(16, NULL, 3, 'White ', 'Good Quality', 'Shirts', 1234567.00, 1, '6755827252de3_WhatsApp Image 2024-12-04 at 10.32.18 PM (2).jpeg', '2024-12-07 22:26:42'),
(17, 2, 1, 'Green Sand Hoodie', 'Good Quality', '', 100000.00, 1, '6755844c48284_WhatsApp Image 2024-12-04 at 10.55.47 PM.jpeg', '2024-12-07 22:34:36'),
(18, 2, 1, 'White ', 'Good Quality', 'Shirts', 200000.00, 2, '675589d771e8a_WhatsApp Image 2024-12-04 at 10.32.18 PM (2).jpeg', '2024-12-07 22:58:15'),
(19, 2, 1, 'Short White Pants', 'Good Quality', 'Pants', 200000.00, 2, '67558a38e3bc0_WhatsApp Image 2024-12-04 at 10.44.04 PM.jpeg', '2024-12-07 22:59:52'),
(20, 2, 1, 'Fire Black Shirt', 'Good Quality', 'Shirts', 500000.00, 1, '67558a65a9b40_WhatsApp Image 2024-12-04 at 10.32.19 PM (2).jpeg', '2024-12-07 23:00:37'),
(21, 5, 5, 'White LOL', 'Good Quality', 'Shirts', 200000.00, 2, '6755922951e23_WhatsApp Image 2024-12-04 at 10.32.19 PM (3).jpeg', '2024-12-07 23:33:45'),
(22, 5, 5, 'AriZona Shirt Green', 'Ukuran XL (tersedia)', '', 300000.00, 2, '6755929db1a1f_WhatsApp Image 2024-12-04 at 10.55.46 PM (1).jpeg', '2024-12-07 23:35:41'),
(23, 5, 5, 'BlanCa Long Sleeve ', 'Ukuran XL L (tersedia)', 'Sweaters & Hoodies', 300000.00, 1, '6755933260153_WhatsApp Image 2024-12-04 at 10.55.46 PM.jpeg', '2024-12-07 23:38:10'),
(24, 5, 5, 'Baby Shirts Black', 'Good Quality ', 'Shirts', 250000.00, 2, '675593641928b_WhatsApp Image 2024-12-04 at 10.55.49 PM.jpeg', '2024-12-07 23:39:00'),
(25, 5, 5, 'Long Pants Black', 'ukuran 34', 'Pants', 200000.00, 2, '6755967c89d2a_WhatsApp Image 2024-12-04 at 10.44.02 PM.jpeg', '2024-12-07 23:52:12'),
(27, 6, 3, 'Jam Rolex ', 'Baguss', 'Accessories', 1000000.00, 1, '6758f258bbaab_WhatsApp Image 2024-12-04 at 11.06.15 PM.jpeg', '2024-12-10 13:00:56'),
(28, 7, 6, 'Green Hoodies', 'Baguus', '', 200000.00, 1, '6758f7de98d33_WhatsApp Image 2024-12-04 at 10.55.46 PM (1).jpeg', '2024-12-10 13:24:30'),
(29, 5, 5, 'Botol bekas ', 'Botol ajaib punya saa', 'Accessories', 100000.00, 1, '675a88c8da90b_123.jpeg', '2024-12-11 17:55:04'),
(30, 9, 8, 'Sweater Rajut Pink', 'Good Quality', '', 250000.00, 0, '676067696ebfe_woman-4792228_1280.jpg', '2024-12-16 04:46:17'),
(31, 2, 1, 'Colorful Sweaters', 'good ', '', 200000.00, 4, '67606bb64dc54_ai-generated-7974550_1280.jpg', '2024-12-16 05:04:38'),
(32, 9, 8, 'Yellow Jacket', 'Good', '', 200000.00, -1, '6761360d4377e_mockup-5206355_1280.jpg', '2024-12-16 19:27:57'),
(33, 9, 9, 'Yellow Shirts Nic!', 'Good Quality', 'Shirts', 300000.00, 42, '6762bbd09e1b9_yellow-5263498_1280.jpg', '2024-12-18 06:10:56'),
(34, 10, 10, 'FIre Orange', 'Good Quality', 'Shirts', 150000.00, 0, '6762e6296e509_WhatsApp Image 2024-12-04 at 10.32.19 PM (2).jpeg', '2024-12-18 09:11:37'),
(35, 10, 10, 'Green Hoodies', 'Good Quality', '', 380000.00, 10, '6762ee8aae4aa_WhatsApp Image 2024-12-04 at 10.55.47 PM.jpeg', '2024-12-18 09:47:22');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `shopId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `shopName` varchar(255) NOT NULL,
  `phoneNumber` varchar(15) DEFAULT NULL,
  `shopDesc` text DEFAULT NULL,
  `bankAcc` varchar(255) NOT NULL,
  `linkPayment` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `operationalHours` varchar(255) NOT NULL,
  `productQuantity` int(11) NOT NULL DEFAULT 0 COMMENT 'Jumlah produk tersedia',
  `totalRevenue` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Total pendapatan dari toko',
  `orderCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Jumlah total pesanan',
  `lastOrderDate` timestamp NULL DEFAULT NULL COMMENT 'Tanggal pesanan terakhir'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shopId`, `userEmail`, `userId`, `shopName`, `phoneNumber`, `shopDesc`, `bankAcc`, `linkPayment`, `city`, `created_at`, `operationalHours`, `productQuantity`, `totalRevenue`, `orderCount`, `lastOrderDate`) VALUES
(2, '', 1, 'Funnie\'s Store', '08123345622', 'Good Quality', '', '', 'Jakarta Utara', '2024-12-07 07:13:54', '', 0, 0.00, 0, NULL),
(3, '', 1, 'Ennjeh store', '089223478', 'Nice Quality ', '', '', 'Jakarta Barat', '2024-12-07 07:25:56', '', 0, 0.00, 0, NULL),
(4, '', 1, 'Maieh store', '089223478', 'Nice Quality ', '', '', 'Jakarta Barat', '2024-12-07 07:29:27', '', 0, 0.00, 0, NULL),
(5, '', 5, 'Super Choice ', '08123345800', 'Menjual Fashion Second Kece ', '', '', 'Bekasi', '2024-12-08 05:06:14', '10:00 - 21:30', 0, 0.00, 0, NULL),
(6, '', 3, 'Sarah Rose', '081288925673', 'Toko Second, barang bagus', '', '', 'Jakarta Barat', '2024-12-10 18:58:41', '', 0, 0.00, 0, NULL),
(7, '', 6, 'Lala Store', '0872889000', 'Toko Second', '', '', 'Jakarta Timur', '2024-12-10 19:23:32', '', 0, 0.00, 0, NULL),
(9, 'kevin@gmail.com', 8, 'Kevin', '08129872922', 'Good', '9989127388', '', 'Kota Bekasi', '2024-12-16 09:22:55', '11:00 - 22:00', 0, 5850000.00, 22, '2024-12-18 15:05:31'),
(10, 'josh@gmail.com', 10, 'Josh', '08227378211', 'good', '99282372891', '', 'Jakarta Timur', '2024-12-18 15:06:41', '11:00 - 20:00', 0, 680000.00, 3, '2024-12-18 16:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transactionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `totalAmount` decimal(10,2) NOT NULL,
  `transactionDate` datetime NOT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `reasonRejected` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transactionId`, `userId`, `totalAmount`, `transactionDate`, `status`, `reasonRejected`) VALUES
(1, 9, 455000.00, '2024-12-17 00:58:53', 'Pending', NULL),
(2, 9, 450000.00, '2024-12-17 15:29:41', 'Pending', NULL),
(3, 9, 200000.00, '2024-12-17 20:19:22', 'Pending', NULL),
(4, 9, 200000.00, '2024-12-17 20:28:18', 'Pending', NULL),
(5, 9, 200000.00, '2024-12-17 20:32:27', 'Pending', NULL),
(6, 9, 200000.00, '2024-12-17 20:43:22', 'Pending', NULL),
(7, 9, 1000000.00, '2024-12-17 22:53:12', 'Pending', NULL),
(8, 9, 250000.00, '2024-12-18 12:25:54', 'Pending', NULL),
(9, 9, 5000.00, '2024-12-18 13:07:14', 'Pending', NULL),
(10, 9, 5000.00, '2024-12-18 13:11:18', 'Pending', NULL),
(14, 9, 5000.00, '2024-12-18 13:55:31', 'Pending', NULL),
(15, 9, 0.00, '2024-12-18 15:48:45', 'Pending', NULL),
(16, 9, 0.00, '2024-12-18 15:51:59', 'Pending', NULL),
(17, 9, 0.00, '2024-12-18 15:56:16', 'Pending', NULL),
(18, 9, 0.00, '2024-12-18 16:05:20', 'Pending', NULL),
(19, 9, 0.00, '2024-12-18 16:09:59', 'Pending', NULL),
(20, 9, 0.00, '2024-12-18 16:13:13', 'Pending', NULL),
(21, 9, 0.00, '2024-12-18 16:19:32', 'Pending', NULL),
(22, 9, 0.00, '2024-12-18 16:21:39', 'Pending', NULL),
(23, 9, 0.00, '2024-12-18 16:22:51', 'Pending', NULL),
(24, 9, 0.00, '2024-12-18 16:24:46', 'Pending', NULL),
(25, 9, 0.00, '2024-12-18 17:33:30', 'Pending', NULL),
(26, 9, 200000.00, '2024-12-18 17:37:24', 'Pending', NULL),
(27, 9, 450000.00, '2024-12-18 17:42:21', 'Pending', NULL),
(28, 9, 450000.00, '2024-12-18 17:48:42', 'Pending', NULL),
(29, 9, 450000.00, '2024-12-18 17:55:03', 'Pending', NULL),
(30, 9, 250000.00, '2024-12-18 17:55:32', 'Approved', NULL),
(31, 9, 200000.00, '2024-12-18 17:59:19', 'Pending', NULL),
(32, 8, 400000.00, '2024-12-18 18:39:52', 'Approved', NULL),
(33, 8, 200000.00, '2024-12-18 18:41:59', 'Approved', NULL),
(34, 8, 200000.00, '2024-12-18 18:43:45', 'Approved', NULL),
(35, 9, 200000.00, '2024-12-18 18:44:37', 'Pending', NULL),
(36, 9, 250000.00, '2024-12-18 18:44:54', 'Pending', NULL),
(37, 9, 200000.00, '2024-12-18 19:03:31', 'Pending', NULL),
(38, 9, 200000.00, '2024-12-18 19:04:46', 'Pending', NULL),
(39, 9, 200000.00, '2024-12-18 19:05:29', 'Pending', NULL),
(40, 9, 200000.00, '2024-12-18 19:08:58', 'Pending', NULL),
(41, 9, 300000.00, '2024-12-18 19:11:34', 'Pending', NULL),
(42, 8, 300000.00, '2024-12-18 19:41:14', 'Pending', NULL),
(43, 9, 300000.00, '2024-12-18 21:33:43', 'Pending', NULL),
(44, 10, 300000.00, '2024-12-18 22:05:31', 'Pending', NULL),
(45, 9, 150000.00, '2024-12-18 22:12:13', 'Approved', NULL),
(46, 9, 150000.00, '2024-12-18 22:44:57', 'Approved', NULL),
(47, 9, 380000.00, '2024-12-18 23:05:46', 'Approved', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `detailId` int(11) NOT NULL,
  `transactionId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`detailId`, `transactionId`, `productId`, `quantity`, `price`) VALUES
(1, 30, 30, 1, 250000.00),
(2, 31, 32, 1, 200000.00),
(3, 32, 32, 1, 200000.00),
(4, 32, 32, 1, 200000.00),
(5, 33, 32, 1, 200000.00),
(6, 34, 32, 1, 200000.00),
(7, 35, 32, 1, 200000.00),
(8, 36, 30, 1, 250000.00),
(9, 37, 32, 1, 200000.00),
(10, 38, 32, 1, 200000.00),
(11, 39, 32, 1, 200000.00),
(12, 40, 32, 1, 200000.00),
(13, 41, 33, 1, 300000.00),
(14, 42, 33, 1, 300000.00),
(15, 43, 33, 1, 300000.00),
(16, 44, 33, 1, 300000.00),
(17, 45, 34, 1, 150000.00),
(18, 46, 34, 1, 150000.00),
(19, 47, 35, 1, 380000.00);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_payment`
--

CREATE TABLE `transaction_payment` (
  `paymentId` int(11) NOT NULL,
  `transactionId` int(11) NOT NULL,
  `shopId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `filePath` varchar(255) NOT NULL,
  `uploadDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `totalAmount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_payment`
--

INSERT INTO `transaction_payment` (`paymentId`, `transactionId`, `shopId`, `userId`, `filePath`, `uploadDate`, `totalAmount`) VALUES
(1, 2, 0, 9, 'uploads/payment_proofs/bukti-transfer.jpeg', '2024-12-17 01:29:41', 0.00),
(2, 3, 0, 9, 'uploads/payment_proofs/bukti-transfer.jpeg', '2024-12-17 06:19:22', 0.00),
(3, 4, 0, 9, 'uploads/payment_proofs/bukti-transfer.jpeg', '2024-12-17 06:28:18', 0.00),
(4, 5, 0, 9, 'uploads/payment_proofs/bukti-transfer.jpeg', '2024-12-17 06:32:27', 0.00),
(5, 6, 0, 9, 'uploads/payment_proofs/bukti-transfer.jpeg', '2024-12-17 06:43:22', 0.00),
(6, 7, 0, 9, 'uploads/payment_proofs/bukti-transfer.jpeg', '2024-12-17 08:53:12', 0.00),
(7, 8, 0, 9, 'uploads/payment_proofs/bukti-transfer.jpeg', '2024-12-17 22:25:54', 0.00),
(9, 15, 2, 9, '0', '2024-12-18 08:48:45', 200000.00),
(10, 16, 2, 9, '0', '2024-12-18 08:51:59', 200000.00),
(11, 17, 2, 9, '0', '2024-12-18 08:56:16', 200000.00),
(12, 18, 2, 9, 'uploads/payment_proofs/1734512720_8db621c336778162b8f2ed034e599daf.jpg', '2024-12-18 09:05:20', 500000.00),
(13, 19, 2, 9, 'uploads/payment_proofs/1734512999_images.jpg', '2024-12-18 09:09:59', 200000.00),
(14, 20, 9, 9, 'uploads/payment_proofs/1734513193_P0.jpg', '2024-12-18 09:13:13', 200000.00),
(15, 21, 2, 9, 'uploads/payment_proofs/1734513572_8db621c336778162b8f2ed034e599daf.jpg', '2024-12-18 09:19:32', 200000.00),
(16, 22, 2, 9, 'uploads/payment_proofs/1734513699_8db621c336778162b8f2ed034e599daf.jpg', '2024-12-18 09:21:39', 200000.00),
(17, 23, 2, 9, 'uploads/payment_proofs/1734513771_8db621c336778162b8f2ed034e599daf.jpg', '2024-12-18 09:22:51', 200000.00),
(18, 24, 9, 9, 'uploads/payment_proofs/1734513886_8db621c336778162b8f2ed034e599daf.jpg', '2024-12-18 09:24:46', 200000.00),
(19, 25, 9, 9, 'uploads/payment_proofs/1734518010_bukti-transfer.jpeg', '2024-12-18 10:33:30', 200000.00),
(20, 26, 9, 9, 'uploads/payment_proofs/1734518244_bukti-transfer.jpeg', '2024-12-18 10:37:24', 200000.00),
(21, 27, 9, 9, 'uploads/payment_proofs/1734518541_bukti-transfer.jpeg', '2024-12-18 10:42:21', 450000.00),
(22, 28, 9, 9, 'uploads/payment_proofs/1734518922_bukti-transfer.jpeg', '2024-12-18 10:48:42', 450000.00),
(23, 29, 9, 9, 'uploads/payment_proofs/1734519303_bukti-transfer.jpeg', '2024-12-18 10:55:03', 450000.00),
(24, 30, 9, 9, 'uploads/payment_proofs/1734519332_bukti-transfer.jpeg', '2024-12-18 10:55:32', 250000.00),
(25, 31, 9, 9, 'uploads/payment_proofs/1734519559_bukti-transfer.jpeg', '2024-12-18 10:59:19', 200000.00),
(26, 32, 9, 8, 'uploads/payment_proofs/1734521992_bukti-transfer.jpeg', '2024-12-18 11:39:52', 400000.00),
(27, 33, 9, 8, 'uploads/payment_proofs/1734522119_bukti-transfer.jpeg', '2024-12-18 11:41:59', 200000.00),
(28, 34, 9, 8, 'uploads/payment_proofs/1734522225_bukti-transfer.jpeg', '2024-12-18 11:43:45', 200000.00),
(29, 35, 9, 9, 'uploads/payment_proofs/1734522277_bukti-transfer.jpeg', '2024-12-18 11:44:37', 200000.00),
(30, 36, 9, 9, 'uploads/payment_proofs/1734522294_bukti-transfer.jpeg', '2024-12-18 11:44:54', 250000.00),
(31, 37, 9, 9, 'uploads/payment_proofs/1734523411_bukti-transfer.jpeg', '2024-12-18 12:03:31', 200000.00),
(32, 38, 9, 9, 'uploads/payment_proofs/1734523486_bukti-transfer.jpeg', '2024-12-18 12:04:46', 200000.00),
(33, 39, 9, 9, 'uploads/payment_proofs/1734523529_bukti-transfer.jpeg', '2024-12-18 12:05:29', 200000.00),
(34, 40, 9, 9, 'uploads/payment_proofs/1734523738_bukti-transfer.jpeg', '2024-12-18 12:08:58', 200000.00),
(35, 41, 9, 9, 'uploads/payment_proofs/1734523894_bukti-transfer.jpeg', '2024-12-18 12:11:34', 300000.00),
(36, 42, 9, 8, 'uploads/payment_proofs/1734525674_bukti-transfer.jpeg', '2024-12-18 12:41:14', 300000.00),
(37, 43, 9, 9, 'uploads/payment_proofs/1734532423_Shopping Cart.png', '2024-12-18 14:33:43', 300000.00),
(38, 44, 9, 10, 'uploads/payment_proofs/1734534331_bukti-transfer.jpeg', '2024-12-18 15:05:31', 300000.00),
(39, 45, 10, 9, 'uploads/payment_proofs/1734534733_bukti-transfer.jpeg', '2024-12-18 15:12:13', 150000.00),
(40, 46, 10, 9, 'uploads/payment_proofs/1734536697_bukti-transfer.jpeg', '2024-12-18 15:44:57', 150000.00),
(41, 47, 10, 9, 'uploads/payment_proofs/1734537946_bukti-transfer.jpeg', '2024-12-18 16:05:46', 380000.00);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `userId` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `gender` enum('Laki-laki','Perempuan','Lainnya') NOT NULL,
  `birth_date` date DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Admin','Seller','Customer') NOT NULL DEFAULT 'Customer',
  `is_seller` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`userId`, `first_name`, `last_name`, `email`, `phone`, `address`, `gender`, `birth_date`, `password`, `role`, `is_seller`, `created_at`) VALUES
(1, 'Anggi', 'Magdalena', 'anggimagdalena0@gmail.com', '081234552678', 'Tangerang', 'Perempuan', '2000-06-02', '$2y$10$Me8wtUjrBWkzO3DM8Mj4Iu1VRsNpLIENjGRVxSyC9PNA3oLtpbIke', 'Customer', 1, '2024-12-03 07:41:17'),
(2, 'Vira', 'Ayu', 'vira@gmail.com', NULL, NULL, 'Perempuan', NULL, '$2y$10$Pzdi9S5e2/IKOcTvACaBi.3qr0zwtFSKBAKy0lGoTTK43D5XlLqn.', 'Admin', 0, '2024-12-03 18:57:11'),
(3, 'Sarah', 'Lein', 'sarah23@gmail.com', NULL, NULL, 'Perempuan', NULL, '$2y$10$yGzO/bEBaUdSdTutlduiK.l25uCgFMCjGB/RvDiK1cTFgGyzhqesG', 'Customer', 1, '2024-12-03 18:57:46'),
(4, 'Stefani', 'Asep', 'stefanikiw@gmail.com', NULL, NULL, 'Perempuan', NULL, '$2y$10$ve7MLh5GrU1cO97qAtoJEO7Mhh/ZJbS3./kX0MdTrS9dGKGIH1qd6', 'Customer', 0, '2024-12-03 18:58:22'),
(5, 'Darren', 'Axel', 'darenaxel@gmail.com', NULL, NULL, 'Laki-laki', NULL, '$2y$10$0SbBSpuufP72Fh5IqsFPLOC3MswWHCXGAqhawXdzwuDh9qmXYFETC', 'Customer', 1, '2024-12-08 05:05:11'),
(6, 'Jonah', 'Sean', 'sean23@gmail.com', NULL, NULL, 'Laki-laki', NULL, '$2y$10$vUyvvalwELQ8UX8BBWC7SOReSoefEcYzIUHNIkX.pFwZgZiw.3Gqm', 'Customer', 1, '2024-12-09 08:24:21'),
(7, 'Anggi', 'Keren', 'anggie@gmail.com', NULL, NULL, 'Laki-laki', NULL, '$2y$10$ZOpGqInqiwL694zHHQrWhuCYEsbMsFFMjZBsxKHe3VZQR4K/N7UH.', 'Customer', 0, '2024-12-11 23:45:26'),
(8, 'Kevin', 'Jordan', 'kevin@gmail.com', NULL, NULL, 'Laki-laki', NULL, '$2y$10$6RZMIncvo3EI6Mg.T45qjOeJp2WLx4Oxqv60jllXU2ded1movtLke', 'Customer', 1, '2024-12-16 08:10:25'),
(9, 'Selly', 'Camile', 'selly@gmail.com', NULL, NULL, 'Perempuan', NULL, '$2y$10$BueO2Uv7MO3dn9X7dABJWefAtlVuT0EiZdAMGtF9.Y7Ws0GDdqX3y', 'Customer', 0, '2024-12-16 10:49:25'),
(10, 'Josh', 'Verel', 'josh@gmail.com', NULL, NULL, 'Laki-laki', NULL, '$2y$10$9e8.w92eeHq6lU2Wkd1EiOm/2WWXgSf9wrHWxRekZwGiE1EF.qizq', 'Customer', 1, '2024-12-18 15:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `userId` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`userId`, `email`, `login_time`) VALUES
(1, 'anggimagdalena0@gmail.com', '2024-12-03 01:44:49'),
(1, 'anggimagdalena0@gmail.com', '2024-12-03 01:58:00'),
(1, 'anggimagdalena0@gmail.com', '2024-12-03 01:58:53'),
(1, 'anggimagdalena0@gmail.com', '2024-12-03 02:08:04'),
(1, 'anggimagdalena0@gmail.com', '2024-12-03 02:10:26'),
(1, 'anggimagdalena0@gmail.com', '2024-12-03 02:20:06'),
(1, 'anggimagdalena0@gmail.com', '2024-12-03 03:04:53'),
(1, 'anggimagdalena0@gmail.com', '2024-12-03 17:46:18'),
(1, 'anggimagdalena0@gmail.com', '2024-12-03 18:33:32'),
(1, 'anggimagdalena0@gmail.com', '2024-12-03 18:35:12'),
(1, 'anggimagdalena0@gmail.com', '2024-12-03 19:09:09'),
(1, 'anggimagdalena0@gmail.com', '2024-12-04 00:48:11'),
(1, 'anggimagdalena0@gmail.com', '2024-12-04 00:54:57'),
(1, 'anggimagdalena0@gmail.com', '2024-12-04 00:59:49'),
(1, 'anggimagdalena0@gmail.com', '2024-12-04 01:00:20'),
(1, 'anggimagdalena0@gmail.com', '2024-12-04 01:35:49'),
(1, 'anggimagdalena0@gmail.com', '2024-12-07 00:56:30'),
(1, 'anggimagdalena0@gmail.com', '2024-12-07 01:32:26'),
(1, 'anggimagdalena0@gmail.com', '2024-12-07 02:33:37'),
(1, 'anggimagdalena0@gmail.com', '2024-12-07 21:52:05'),
(1, 'anggimagdalena0@gmail.com', '2024-12-07 21:57:48'),
(1, 'anggimagdalena0@gmail.com', '2024-12-07 22:31:37'),
(1, 'anggimagdalena0@gmail.com', '2024-12-07 22:32:54'),
(1, 'anggimagdalena0@gmail.com', '2024-12-07 22:33:56'),
(1, 'anggimagdalena0@gmail.com', '2024-12-09 02:52:27'),
(1, 'anggimagdalena0@gmail.com', '2024-12-10 00:31:35'),
(1, 'anggimagdalena0@gmail.com', '2024-12-10 00:49:11'),
(1, 'anggimagdalena0@gmail.com', '2024-12-10 03:28:42'),
(1, 'anggimagdalena0@gmail.com', '2024-12-10 03:30:03'),
(1, 'anggimagdalena0@gmail.com', '2024-12-16 02:58:04'),
(1, 'anggimagdalena0@gmail.com', '2024-12-16 05:03:58'),
(2, 'vira@gmail.com', '2024-12-03 13:31:59'),
(2, 'vira@gmail.com', '2024-12-03 13:35:01'),
(2, 'vira@gmail.com', '2024-12-03 14:49:02'),
(2, 'vira@gmail.com', '2024-12-03 14:50:25'),
(2, 'vira@gmail.com', '2024-12-03 16:56:37'),
(2, 'vira@gmail.com', '2024-12-03 17:48:31'),
(2, 'vira@gmail.com', '2024-12-09 23:54:42'),
(2, 'vira@gmail.com', '2024-12-09 23:56:03'),
(2, 'vira@gmail.com', '2024-12-09 23:56:37'),
(2, 'vira@gmail.com', '2024-12-09 23:58:12'),
(2, 'vira@gmail.com', '2024-12-10 00:14:05'),
(3, 'sarah23@gmail.com', '2024-12-07 21:35:03'),
(3, 'sarah23@gmail.com', '2024-12-07 22:03:38'),
(3, 'sarah23@gmail.com', '2024-12-07 22:11:55'),
(3, 'sarah23@gmail.com', '2024-12-08 02:14:59'),
(3, 'sarah23@gmail.com', '2024-12-08 02:53:13'),
(3, 'sarah23@gmail.com', '2024-12-08 03:18:28'),
(3, 'sarah23@gmail.com', '2024-12-08 22:44:50'),
(3, 'sarah23@gmail.com', '2024-12-08 22:46:15'),
(3, 'sarah23@gmail.com', '2024-12-08 22:46:35'),
(3, 'sarah23@gmail.com', '2024-12-08 22:48:37'),
(3, 'sarah23@gmail.com', '2024-12-08 23:13:12'),
(3, 'sarah23@gmail.com', '2024-12-09 14:41:50'),
(3, 'sarah23@gmail.com', '2024-12-10 00:49:22'),
(3, 'sarah23@gmail.com', '2024-12-10 01:13:13'),
(3, 'sarah23@gmail.com', '2024-12-10 04:23:44'),
(3, 'sarah23@gmail.com', '2024-12-10 12:54:52'),
(3, 'sarah23@gmail.com', '2024-12-10 12:58:51'),
(4, 'stefanikiw@gmail.com', '2024-12-10 01:18:13'),
(4, 'stefanikiw@gmail.com', '2024-12-10 13:25:23'),
(4, 'stefanikiw@gmail.com', '2024-12-10 13:31:58'),
(4, 'stefanikiw@gmail.com', '2024-12-16 04:46:45'),
(5, 'darenaxel@gmail.com', '2024-12-07 23:05:25'),
(5, 'darenaxel@gmail.com', '2024-12-07 23:06:31'),
(5, 'darenaxel@gmail.com', '2024-12-08 00:13:23'),
(5, 'darenaxel@gmail.com', '2024-12-09 18:18:02'),
(5, 'darenaxel@gmail.com', '2024-12-11 17:54:15'),
(5, 'darenaxel@gmail.com', '2024-12-18 09:47:51'),
(6, 'sean23@gmail.com', '2024-12-09 02:24:32'),
(6, 'sean23@gmail.com', '2024-12-09 02:27:24'),
(6, 'sean23@gmail.com', '2024-12-10 13:01:45'),
(6, 'sean23@gmail.com', '2024-12-10 13:01:46'),
(6, 'sean23@gmail.com', '2024-12-10 13:08:41'),
(6, 'sean23@gmail.com', '2024-12-10 13:20:47'),
(6, 'sean23@gmail.com', '2024-12-10 13:22:28'),
(6, 'sean23@gmail.com', '2024-12-10 13:23:54'),
(7, 'anggie@gmail.com', '2024-12-11 17:45:54'),
(7, 'anggie@gmail.com', '2024-12-11 17:48:53'),
(8, 'kevin@gmail.com', '2024-12-16 02:10:36'),
(8, 'kevin@gmail.com', '2024-12-16 02:56:09'),
(8, 'kevin@gmail.com', '2024-12-16 02:59:44'),
(8, 'kevin@gmail.com', '2024-12-16 04:44:54'),
(8, 'kevin@gmail.com', '2024-12-16 05:05:04'),
(8, 'kevin@gmail.com', '2024-12-16 19:27:00'),
(8, 'kevin@gmail.com', '2024-12-18 05:00:49'),
(8, 'kevin@gmail.com', '2024-12-18 05:37:29'),
(8, 'kevin@gmail.com', '2024-12-18 06:26:19'),
(8, 'kevin@gmail.com', '2024-12-18 06:27:50'),
(8, 'kevin@gmail.com', '2024-12-18 08:57:28'),
(9, 'selly@gmail.com', '2024-12-16 04:49:35'),
(9, 'selly@gmail.com', '2024-12-16 05:05:20'),
(9, 'selly@gmail.com', '2024-12-16 19:28:36'),
(9, 'selly@gmail.com', '2024-12-16 20:34:33'),
(9, 'selly@gmail.com', '2024-12-17 02:52:35'),
(9, 'selly@gmail.com', '2024-12-17 02:53:49'),
(9, 'selly@gmail.com', '2024-12-17 16:14:04'),
(9, 'selly@gmail.com', '2024-12-17 16:24:55'),
(9, 'selly@gmail.com', '2024-12-18 02:21:09'),
(9, 'selly@gmail.com', '2024-12-18 05:44:20'),
(9, 'selly@gmail.com', '2024-12-18 08:33:24'),
(9, 'selly@gmail.com', '2024-12-18 09:11:59'),
(9, 'selly@gmail.com', '2024-12-18 09:35:43'),
(9, 'selly@gmail.com', '2024-12-18 09:42:40'),
(9, 'selly@gmail.com', '2024-12-18 10:03:58'),
(9, 'selly@gmail.com', '2024-12-23 01:22:04'),
(10, 'josh@gmail.com', '2024-12-18 09:05:11'),
(10, 'josh@gmail.com', '2024-12-18 09:07:29'),
(10, 'josh@gmail.com', '2024-12-18 09:12:33'),
(10, 'josh@gmail.com', '2024-12-18 09:46:14'),
(10, 'josh@gmail.com', '2024-12-18 10:07:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `fk_userId` (`userId`),
  ADD KEY `fk_shop` (`shopId`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shopId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transactionId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`detailId`),
  ADD KEY `transactionId` (`transactionId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `transaction_payment`
--
ALTER TABLE `transaction_payment`
  ADD PRIMARY KEY (`paymentId`),
  ADD KEY `transactionId` (`transactionId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`userId`,`login_time`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shopId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `detailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transaction_payment`
--
ALTER TABLE `transaction_payment`
  MODIFY `paymentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user_data` (`userId`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_shop` FOREIGN KEY (`shopId`) REFERENCES `shop` (`shopId`),
  ADD CONSTRAINT `fk_userId` FOREIGN KEY (`userId`) REFERENCES `user_data` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user_data` (`userId`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user_data` (`userId`);

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_ibfk_1` FOREIGN KEY (`transactionId`) REFERENCES `transactions` (`transactionId`),
  ADD CONSTRAINT `transaction_details_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`);

--
-- Constraints for table `transaction_payment`
--
ALTER TABLE `transaction_payment`
  ADD CONSTRAINT `transaction_payment_ibfk_1` FOREIGN KEY (`transactionId`) REFERENCES `transactions` (`transactionId`),
  ADD CONSTRAINT `transaction_payment_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user_data` (`userId`);

--
-- Constraints for table `user_login`
--
ALTER TABLE `user_login`
  ADD CONSTRAINT `user_login_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user_data` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
