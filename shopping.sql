-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2016 at 08:51 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE IF NOT EXISTS `admin_master` (
  `AdminId` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`AdminId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`AdminId`, `UserName`, `Password`) VALUES
(1, 'admin', 'admin'),
(2, 'admin2', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE IF NOT EXISTS `category_master` (
  `CategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(20) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`CategoryId`, `CategoryName`, `Description`, `Image`) VALUES
(1, 'Jeans', 'Fine Denim Jeans to wear', 'Jeans.jpg'),
(3, 'Shirts', 'New Branded Cotton shirts', '1594.jpg'),
(8, 'coats', 'Blue women Blazer', 'coat5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer_registration`
--

CREATE TABLE IF NOT EXISTS `customer_registration` (
  `CustomerId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile` bigint(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BirthDate` date NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `customer_registration`
--

INSERT INTO `customer_registration` (`CustomerId`, `CustomerName`, `Address`, `City`, `Email`, `Mobile`, `Gender`, `BirthDate`, `UserName`, `Password`) VALUES
(2, 'cliff', 'lawre', 'Mehsana', 'lawrekym@gmail.com', 732123345, 'Male', '0000-00-00', 'lore', 'lore'),
(3, 'philip', '20116', 'Mombasa', 'philipwambugu@gmail.com', 727279968, 'Male', '1993-04-15', 'kababz', 'gmine'),
(4, 'philip', '2080 thika', 'Nairobi', 'gphipiwambugu@gmail.com', 727279968, 'Male', '1993-06-13', 'gmine', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_master`
--

CREATE TABLE IF NOT EXISTS `feedback_master` (
  `FeedbackId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) NOT NULL,
  `Feedback` varchar(200) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`FeedbackId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `item_master`
--

CREATE TABLE IF NOT EXISTS `item_master` (
  `ItemId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryId` int(11) NOT NULL,
  `ItemName` varchar(20) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Size` varchar(10) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  `Discount` float NOT NULL,
  `Total` float NOT NULL,
  PRIMARY KEY (`ItemId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`ItemId`, `CategoryId`, `ItemName`, `Description`, `Size`, `Image`, `Price`, `Discount`, `Total`) VALUES
(1, 1, 'Denim Jeans', 'Nice Look Boot Cut', '32', 'Jeans.jpg', 1200, 100, 1100),
(2, 3, 'Cotton Shirts', 'Nice Cotton Shirts', 'Medium', '1594.jpg', 690, 40, 650),
(3, 4, 'Sport T-Shirts', 'Cool Sport T-Shirts in all colours', 'Large', 'images.jpg', 600, 100, 500),
(4, 8, 'blazer', 'blue casual female blazer', '32', 'coat5.jpg', 1800, 200, 1600);

-- --------------------------------------------------------

--
-- Table structure for table `offer_master`
--

CREATE TABLE IF NOT EXISTS `offer_master` (
  `OfferId` int(11) NOT NULL AUTO_INCREMENT,
  `Offer` varchar(50) NOT NULL,
  `Detail` varchar(200) NOT NULL,
  `Valid` date NOT NULL,
  PRIMARY KEY (`OfferId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `offer_master`
--

INSERT INTO `offer_master` (`OfferId`, `Offer`, `Detail`, `Valid`) VALUES
(3, 'Easter Special', 'Buy 3 get one free', '2016-04-09');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE IF NOT EXISTS `shopping_cart` (
  `CartId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) NOT NULL,
  `ItemName` varchar(20) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Total` float NOT NULL,
  `OrderDate` date NOT NULL,
  PRIMARY KEY (`CartId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`CartId`, `CustomerId`, `ItemName`, `Quantity`, `Price`, `Total`, `OrderDate`) VALUES
(6, 1, 'Denim Jeans', 1, 1100, 1100, '0000-00-00'),
(7, 1, 'Cotton Shirts', 1, 650, 650, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_final`
--

CREATE TABLE IF NOT EXISTS `shopping_cart_final` (
  `CartId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) NOT NULL,
  `ItemName` varchar(20) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Total` float NOT NULL,
  `OrderDate` date NOT NULL,
  PRIMARY KEY (`CartId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `shopping_cart_final`
--

INSERT INTO `shopping_cart_final` (`CartId`, `CustomerId`, `ItemName`, `Quantity`, `Price`, `Total`, `OrderDate`) VALUES
(1, 2, 'Denim Jeans', 2, 1100, 2200, '0000-00-00'),
(2, 2, 'Sport T-Shirts', 3, 500, 1500, '0000-00-00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
