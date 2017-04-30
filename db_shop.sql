-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2016 at 08:25 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, 'Ashrafuzzaman Ashraf', 'admin', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE IF NOT EXISTS `tbl_brand` (
  `brandId` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Iphone'),
(2, 'Samsung'),
(3, 'Acer'),
(4, 'Canon');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `catName` varchar(255) NOT NULL,
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Desktop'),
(2, 'Mobile Phones'),
(3, 'Accessories'),
(4, 'Software'),
(5, 'Sports &amp; Fitness'),
(6, 'Footwear'),
(7, 'Jewellery'),
(8, 'Clothing'),
(9, 'Home Decor &amp; Kitchen'),
(10, 'Beauty &amp; Healthcare'),
(11, 'Toys, Kids &amp; Babies');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE IF NOT EXISTS `tbl_compare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_compare`
--

INSERT INTO `tbl_compare` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(7, 1, 14, 'Lorem Ipsum is simply Product  will coming.', 4000.00, 'uploads/1dea6a2358.png'),
(8, 1, 10, 'Lorem Ipsum is simply Product  will coming.', 600.50, 'uploads/280917289d.png'),
(9, 1, 17, 'Lorem Ipsum is simply Product  will coming.', 500.00, 'uploads/bb5ac5c2bc.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(1, 'Ashrafuzzaman Ashar', 'Mirpur,Dhaka', 'Dhaka', 'Bangladesh', '1207', '0177xxxxxxx', 'ashraf008@yahoo.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(14, 1, 9, 'Lorem Ipsum is simply Product  will coming.', 1, 620.87, 'uploads/a45f0c1940.jpg', '2016-10-11 23:03:04', 0),
(15, 1, 16, 'Lorem Ipsum is simply Product  will coming.', 1, 3500.00, 'uploads/79c5c098b5.jpg', '2016-10-12 09:39:48', 0),
(17, 1, 10, 'Lorem Ipsum is simply Product  will coming.', 1, 600.50, 'uploads/280917289d.png', '2016-10-12 09:58:44', 0),
(18, 1, 10, 'Lorem Ipsum is simply Product  will coming.', 0, 600.50, 'uploads/280917289d.png', '2016-10-12 23:24:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(7, 'Lorem Ipsum is simply', 3, 4, '<p>Product details will come here...Product details will come here...Product details will come here...Product details will comehere...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...</p>', 505.22, 'uploads/76899e8170.png', 0),
(8, 'Lorem Ipsum is simply Product  will coming.', 1, 2, '<p>Product details will come here...Product details will come here...Product details will come here...Product details will comehere...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...</p>', 403.66, 'uploads/ddca320c50.jpg', 0),
(9, 'Lorem Ipsum is simply Product  will coming.', 4, 3, '<p>Product details will come here...Product details will come here...Product details will come here...Product details will comehere...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...</p>', 620.87, 'uploads/a45f0c1940.jpg', 0),
(10, 'Lorem Ipsum is simply Product  will coming.', 2, 1, '<p>Product details will come here...Product details will come here...Product details will come here...Product details will comehere...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...</p>', 600.50, 'uploads/280917289d.png', 1),
(11, 'Lorem Ipsum is simply Product  will coming.', 9, 2, '<p>Product details will come here...Product details will come here...Product details will come here...Product details will comehere...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...</p>', 500.20, 'uploads/f36c99ae94.jpg', 1),
(12, 'Lorem Ipsum is simply Product  will coming.', 9, 2, '<p>Product details will come here...Product details will come here...Product details will come here...Product details will comehere...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...</p>', 3000.00, 'uploads/1d36606ff4.png', 1),
(13, 'Lorem Ipsum is simply Product  will coming.', 1, 2, '<p>Product details will come here...Product details will come here...Product details will come here...Product details will comehere...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...</p>', 3000.00, 'uploads/36223e3000.jpg', 0),
(14, 'Lorem Ipsum is simply Product  will coming.', 9, 3, '<p>Product details will come here...Product details will come here...Product details will come here...Product details will comehere...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...</p>', 4000.00, 'uploads/1dea6a2358.png', 1),
(15, 'Lorem Ipsum is simply Product  will coming.', 3, 2, '<p>Product details will come here...Product details will come here...Product details will come here...Product details will comehere...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...</p>', 2000.00, 'uploads/10d42835c7.jpg', 0),
(16, 'Lorem Ipsum is simply Product  will coming.', 6, 2, '<p>Product details will come here...Product details will come here...Product details will come here...Product details will comehere...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...</p>', 3500.00, 'uploads/79c5c098b5.jpg', 1),
(17, 'Lorem Ipsum is simply Product  will coming.', 11, 4, '<p>Product details will come here...Product details will come here...Product details will come here...Product details will comehere...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...<br /><br />Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...Product details will come here...</p>', 500.00, 'uploads/bb5ac5c2bc.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wlist`
--

CREATE TABLE IF NOT EXISTS `tbl_wlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_wlist`
--

INSERT INTO `tbl_wlist` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(6, 1, 16, 'Lorem Ipsum is simply Product  will coming.', 3500.00, 'uploads/79c5c098b5.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
