-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2017 at 07:45 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rest`
--
CREATE DATABASE IF NOT EXISTS `rest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rest`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`) VALUES
(1, 'vinitkubal93@gmail.com', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_no` varchar(100) NOT NULL,
  `prod_id` int(100) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_img` varchar(250) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `prod_price` int(100) NOT NULL,
  `duration` int(11) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cat1`
--

CREATE TABLE IF NOT EXISTS `cat1` (
  `cat1_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat1_title` varchar(50) NOT NULL,
  PRIMARY KEY (`cat1_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cat1`
--

INSERT INTO `cat1` (`cat1_id`, `cat1_title`) VALUES
(1, 'veg'),
(2, 'non-veg');

-- --------------------------------------------------------

--
-- Table structure for table `cat2`
--

CREATE TABLE IF NOT EXISTS `cat2` (
  `cat2_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat2_title` varchar(100) NOT NULL,
  PRIMARY KEY (`cat2_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cat2`
--

INSERT INTO `cat2` (`cat2_id`, `cat2_title`) VALUES
(1, 'Soups'),
(2, 'Drinks'),
(3, 'Break Fast'),
(4, 'Lunch');

-- --------------------------------------------------------

--
-- Table structure for table `cat3`
--

CREATE TABLE IF NOT EXISTS `cat3` (
  `cat3_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat3_title` varchar(100) NOT NULL,
  PRIMARY KEY (`cat3_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cat3`
--

INSERT INTO `cat3` (`cat3_id`, `cat3_title`) VALUES
(1, 'Combo'),
(2, 'Indian'),
(3, 'Italiyan'),
(4, 'Chinese'),
(5, 'Thai'),
(6, 'Mexican');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sub` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `sub`) VALUES
(3, 'vinit', 'vinitkubal93@gmail.com', 'WORKING'),
(4, 'sumit', 'sumit@google.com', 'i m just testing it'),
(5, 'divj', 'dvij@google.com', 'vinit is great');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat1_id` int(100) NOT NULL,
  `cat2_id` int(100) NOT NULL,
  `cat3_id` int(100) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_img` varchar(250) NOT NULL,
  `prod_price` int(100) NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `cat1_id`, `cat2_id`, `cat3_id`, `prod_name`, `prod_img`, `prod_price`) VALUES
(4, 2, 4, 2, 'Almond Chicken', 'Almond Chicken.jpg', 200),
(5, 2, 4, 2, 'Chicken Roast Masala', 'Chicken Roast Masala.jpg', 200),
(6, 2, 4, 2, 'Chicken Tikka Masala', 'Chicken Tikka Masala.jpg', 150),
(7, 2, 4, 2, 'Dahi Murg', 'Dahi Murg.jpg', 125),
(8, 2, 1, 2, 'Kozhi Rasam ', 'Kozhi Rasam soup.JPG', 100),
(9, 2, 1, 2, 'Murg Noorjahani', 'Murg Noorjahani.jpg', 110),
(10, 2, 4, 2, 'Pepper Chicken', 'Pepper Chicken.jpg', 250),
(11, 2, 4, 2, 'Spicy Chicken Curry', 'Spicy Chicken Curry.jpg', 175),
(12, 1, 4, 2, 'Palak Paneer', 'Palak Paneer.jpg', 200),
(13, 1, 4, 2, 'Paneer butter masala', 'Paneer butter masala.jpg', 150),
(14, 1, 4, 2, 'Paneer tikka masala', 'Paneer tikka masala.jpg', 220),
(15, 2, 4, 3, 'Chicken Parmesan', 'Chicken Parmesan with Lemony Broccoli.jpg', 500),
(16, 2, 4, 3, 'Chicken Piccata Pasta', 'Chicken Piccata Pasta.jpg', 450),
(17, 2, 4, 3, 'Chicken Sorrento', 'Chicken Sorrento.jpg', 400),
(18, 2, 4, 3, 'Grilled Chicken Risotto', 'Grilled Chicken Risotto.jpg', 450),
(19, 2, 4, 3, 'Italian Chicken and Peppers', 'Italian Chicken and Peppers.jpg', 500),
(20, 2, 4, 3, 'Skillet Chicken Potatoes and Peppers', 'Skillet Chicken, Potatoes and Peppers.jpg', 560),
(22, 1, 4, 3, 'Caprese Salad with Pesto Sauce', 'Caprese Salad with Pesto Sauce.jpg', 230),
(23, 2, 4, 3, 'Eggplant Parmigiana', 'Eggplant Parmigiana.jpg', 150),
(24, 1, 4, 3, 'Four Cheese Pasta', 'Four Cheese Pasta.jpeg', 250),
(25, 1, 4, 3, 'Mushroom Risotto', 'Mushroom Risotto.jpg', 200),
(26, 1, 4, 3, 'Panzanella', 'Panzanella.jpg', 300),
(27, 1, 4, 3, 'Bruschetta', 'Bruschetta.jpg', 150),
(28, 1, 4, 5, 'Braised Plantain with Thai Spices', 'Braised Plantain with Thai Spices.jpg', 500),
(29, 1, 4, 5, 'Corn Cakes with Sweet Chilli Sauce', 'Corn Cakes with Sweet Chilli Sauce.jpg', 400),
(30, 1, 4, 5, 'Green Papaya Salad', 'Green Papaya Salad.jpg', 300),
(31, 1, 4, 5, 'Hot yellow curry', 'Hot yellow curry.jpg', 150),
(32, 1, 4, 5, 'Rocky Pad Thai', 'Rockys Pad Thai.jpg', 250),
(33, 1, 4, 5, 'Vegetable Thai Red Curry', 'Vegetable Thai Red Curry.jpg', 200),
(34, 2, 4, 5, 'Chicken 65', 'Chicken 65.jpg', 300),
(35, 2, 4, 4, 'Chicken Chilli', 'Chicken Chilli.jpg', 250),
(37, 2, 4, 4, 'Chicken Manchurian', 'Chicken Manchurian.jpg', 200),
(38, 2, 4, 4, 'Chicken Schezwan Rice', 'Chicken Schezwan Rice.jpg', 300),
(39, 2, 4, 4, 'Prawns Manchurian', 'Prawns Manchurian.JPG', 500),
(40, 2, 4, 4, 'Prawns Schezwan', 'Prawns Schezwan.jpg', 550),
(41, 2, 4, 4, 'Roast Chicken Chilli', 'Roast Chicken Chilli.jpg', 500),
(42, 2, 4, 1, 'xyz', 'Chicken Parmesan with Lemony Broccoli.jpg', 500),
(43, 0, 0, 0, '400049', 'vinit.jpg', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `table_no`
--

CREATE TABLE IF NOT EXISTS `table_no` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_no` varchar(50) NOT NULL,
  `t_text` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `table_no`
--

INSERT INTO `table_no` (`id`, `t_no`, `t_text`) VALUES
(1, '1', 'qwerty1'),
(2, '2', 'qwerty2'),
(3, '3', 'qwerty3'),
(4, '4', 'qwerty4');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
