-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2021 at 11:08 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlm`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `create_date`) VALUES
(13, 'cocacola', 'Cocal cola company adalah minuman bagus', '2021-09-22 08:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `member_log`
--

CREATE TABLE `member_log` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_log`
--

INSERT INTO `member_log` (`id`, `name`, `parent_id`) VALUES
(344, 'alam', 0),
(346, 'fathur', 344),
(347, 'rudi', 344);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` text NOT NULL,
  `member_id` text NOT NULL,
  `member_name` text NOT NULL,
  `product_id` text NOT NULL,
  `qty` text NOT NULL,
  `is_igst` text NOT NULL,
  `unit_price` text NOT NULL,
  `create_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `member_id`, `member_name`, `product_id`, `qty`, `is_igst`, `unit_price`, `create_date`) VALUES
(255, '03441632296562', '344', 'alam', '', '10', 'no', '10000', '2021-09-22 09:42:42'),
(256, '03451632297291', '345', 'fathur', '234265', '1', 'undefined', '5000', '2021-09-22 09:54:51'),
(257, '03441632298094', '344', 'alam', '234265', '50', 'undefined', '5000', '2021-09-22 10:08:14'),
(258, '03461632298181', '346', 'fathur', '234265', '1', 'undefined', '5000', '2021-09-22 10:09:41'),
(259, '03471632298272', '347', 'rudi', '234265', '40', 'undefined', '5000', '2021-09-22 10:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `type` text NOT NULL,
  `ProductName` text NOT NULL,
  `ProductCategory` text NOT NULL,
  `Tax` text NOT NULL,
  `sgst` float NOT NULL,
  `cgst` float NOT NULL,
  `igst` float NOT NULL,
  `Available_qty` int(10) NOT NULL,
  `SKU` text NOT NULL,
  `Price` int(11) NOT NULL,
  `hsn` varchar(20) NOT NULL,
  `sac` varchar(20) NOT NULL,
  `SalePrice` int(11) NOT NULL,
  `description` text NOT NULL,
  `productImage` text NOT NULL,
  `company_name` text NOT NULL,
  `company_email` text NOT NULL,
  `company_phone` text NOT NULL,
  `City` text NOT NULL,
  `State` text NOT NULL,
  `Pincode` text NOT NULL,
  `company_address` text NOT NULL,
  `ip_address` text NOT NULL,
  `create_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `type`, `ProductName`, `ProductCategory`, `Tax`, `sgst`, `cgst`, `igst`, `Available_qty`, `SKU`, `Price`, `hsn`, `sac`, `SalePrice`, `description`, `productImage`, `company_name`, `company_email`, `company_phone`, `City`, `State`, `Pincode`, `company_address`, `ip_address`, `create_date`) VALUES
(234265, 0, 'Purchase', 'cocacola', '', '5', 0, 0, 0, 10, '', 5000, '', '', 5000, 'cocal cola adalah', '', 'serdadu coding', 'serdaducoding@gmail.com', '08529878798', 'Medan', 'Indonesia', '20122', 'jl. setia budi no.199a', '::1', '2021-09-22 09:48:04');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_products`
--

CREATE TABLE `purchase_products` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `qty` int(10) NOT NULL,
  `unit_price` int(10) NOT NULL,
  `TaxAmount` text NOT NULL,
  `Tax` text NOT NULL,
  `description` text NOT NULL,
  `company_name` text NOT NULL,
  `company_email` text NOT NULL,
  `company_phone` text NOT NULL,
  `City` text NOT NULL,
  `State` text NOT NULL,
  `Pincode` text NOT NULL,
  `company_address` text NOT NULL,
  `ip_address` text NOT NULL,
  `create_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_products`
--

INSERT INTO `purchase_products` (`id`, `name`, `qty`, `unit_price`, `TaxAmount`, `Tax`, `description`, `company_name`, `company_email`, `company_phone`, `City`, `State`, `Pincode`, `company_address`, `ip_address`, `create_date`) VALUES
(12, 'Producth', 80, 599, '', '', 'Test test sadlfk', 'Testing', 'test@gmail.com', '978585834812', '', '', '', 'tes asdlf asdf ', '::1', '2018-01-25 11:47:15'),
(15, 'Product 1111', 5, 250, '', '', 'asdfaasfasdf', ' asldfk', 'test@gmail.com', '3424234', '', '', '', 'sdfsadfsdf', '::1', '2018-01-24 19:01:51'),
(17, 'Product 6', 5, 599, '', '', 'Test test sadlfk', 'Testing', 'test@gmail.com', '978585834812', '', '', '', 'tes asdlf asdf ', '::1', '2018-01-25 09:38:29'),
(18, 'Productererre', 5, 599, '', '', 'Test test sadlfk', 'Testing', 'test@gmail.com', '978585834812', '', '', '', 'tes asdlf asdf ', '::1', '2018-01-25 09:40:10'),
(23, 'Product Helo', 800, 599, '', '', 'Test test sadlfk', 'Testing', 'test@gmail.com', '978585834812', '', '', '', 'tes asdlf asdf ', '::1', '2018-01-25 11:47:24'),
(26, 'sari', 100, 500, '2500', '', 'rffghfhf', 'bvvb fg', 'gfg@gdfg', '878768768', 'ggfh', 'hgfhgfh', '4545', 'ghjgjhgj', '157.37.128.110', '');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `value`) VALUES
(1, 'tax', '5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `role` text NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `name` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` text NOT NULL,
  `alternateEmail` text NOT NULL,
  `mobile_no` text NOT NULL,
  `language` text NOT NULL,
  `website` text NOT NULL,
  `picture_url` text NOT NULL,
  `profile_url` text NOT NULL,
  `dob` text NOT NULL,
  `gender` text NOT NULL,
  `about` text NOT NULL,
  `locale` text NOT NULL,
  `designation` text NOT NULL,
  `address` text NOT NULL,
  `country` text NOT NULL,
  `city` text NOT NULL,
  `pincode` text NOT NULL,
  `vat_number` text NOT NULL,
  `AccountNumber` text NOT NULL,
  `IFSCCode` text NOT NULL,
  `ip_address` text NOT NULL,
  `created` text NOT NULL,
  `lastlogged` text NOT NULL,
  `modified` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `status`, `name`, `first_name`, `last_name`, `email`, `alternateEmail`, `mobile_no`, `language`, `website`, `picture_url`, `profile_url`, `dob`, `gender`, `about`, `locale`, `designation`, `address`, `country`, `city`, `pincode`, `vat_number`, `AccountNumber`, `IFSCCode`, `ip_address`, `created`, `lastlogged`, `modified`) VALUES
(133, 'rudyfathur26@gmail.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1PeFJqcpURF2QOrH4vqMEQELe9wDMLfZYe', 'Admin', 1, 'Rudi alam', 'Rudi', 'alam', 'rudyfathur26@gmail.com', '', '9785834812', '', '', 'favicon-serdadu.png', '', '', '', 'Saya adalah seorang', '', '', 'Jl. Setia Budi No.199a, Tj. Rejo, Kec. Medan Sunggal, Kota Medan, Sumatera Utara 20154', 'Indonesia', 'Medan', '20122', '', '', '', '::1', '2021-09-22 09:42:42', '22-09-2021 10:46 AM', '2021-09-22 10:34:02'),
(344, 'serdaducoding@gmail.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1Pei5WT7Hl//TG8OB9qtmixiqEEDWLZ9LG', 'Customer', 0, 'alam', '', '', 'serdaducoding@gmail.com', '', '085270894061', '', '', 'kpu.png', '', '', '', '', '', '', 'Jl. Setia Budi No.199a, Tj. Rejo, Kec. Medan Sunggal, Kota Medan, Sumatera Utara 20154', '', '', '12345', '', '005115', '005115', '::1', '2021-09-22 09:42:42', '', ''),
(346, 'fathur@gmail.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1PeWPXYtq1d/qBLFZR8dCx7sM93Cc4F7XG', 'Customer', 0, 'fathur', '', '', 'fathur@gmail.com', '', '0987797', '', '', '', '', '', '', '', '', '', 'Jl. Setia Budi No.199a, Tj. Rejo, Kec. Medan Sunggal, Kota Medan, Sumatera Utara 20154', '', '', '12345', '', '005115', '005115', '::1', '2021-09-22 10:09:41', '', ''),
(347, 'rudi@gmail.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1Pe9SPqbi7rYJwOcdqCv8VlA5qT0MEQY56', 'Customer', 0, 'rudi', '', '', 'rudi@gmail.com', '', '5434636363', '', '', '', '', '', '', '', '', '', 'Jl. Setia Budi No.199a, Tj. Rejo, Kec. Medan Sunggal, Kota Medan, Sumatera Utara 20154', '', '', '12345', '', '005115', '005115', '::1', '2021-09-22 10:11:11', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_log`
--
ALTER TABLE `member_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_products`
--
ALTER TABLE `purchase_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234266;

--
-- AUTO_INCREMENT for table `purchase_products`
--
ALTER TABLE `purchase_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
