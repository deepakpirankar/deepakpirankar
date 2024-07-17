-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2024 at 04:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)   SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '25d55ad283aa400af464c76d713c07ad', '2017-01-24 16:21:18', '02-02-2024 04:35:35 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Interior', '', '2024-02-02 11:07:32', NULL),
(8, 'Exterior', '', '2024-02-02 11:07:46', NULL),
(9, 'Performance', '', '2024-02-02 11:08:14', NULL),
(10, 'Electronics', '', '2024-02-02 11:08:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(13, 6, '61', 1, '2024-02-03 12:28:54', 'COD', NULL),
(14, 6, '66', 1, '2024-02-03 13:22:55', 'COD', NULL),
(15, 6, '66', 1, '2024-02-03 13:27:34', 'COD', NULL),
(16, 6, '66', 1, '2024-02-03 13:29:01', 'COD', NULL),
(17, 6, '59', 1, '2024-02-04 18:51:01', 'COD', NULL),
(18, 7, '24', 1, '2024-02-05 02:50:21', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(23, 7, 13, 'Car Seat Cover', 'KVD AUTOZONE', 8799, 21997, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">KVD AUTOZONE Heavy Nappa Leather Luxury Car Seat Cover Compatible with Maruti Suzuki Grand Vitara Black + Coffee Free Pillows and Neckrest Set (5 Year Warranty) - D138/147</span></h1>', 'seat1.jpg', 'seat3.jpg', 'seat2.jpg', 50, 'In Stock', '2024-02-03 04:50:38', NULL),
(24, 7, 13, 'Seat Covers', 'KING Fur/Hosiery', 999, 2550, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">KING Fur/Hosiery Seat Covers Set with Driver Headrest (Fixed) for Maruti Suzuki Alto-800 (Dark Grey), Fur, Hoisery</span></h1>', 'seat4.jpg', 'seat5.jpg', 'seat6.jpg', 50, 'In Stock', '2024-02-03 04:55:40', NULL),
(25, 7, 13, 'Car Seat Covers', 'Faux', 3000, 5987, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Leather Car Seat Covers, Faux Leatherette Automotive Vehicle Cushion Cover for Cars SUV Pick-up Truck Universal Fit Set for Auto Interior Accessories</span></h1>', 'seat7.jpg', 'seat8.jpg', 'seat9.jpg', 50, 'In Stock', '2024-02-03 05:34:34', NULL),
(26, 7, 13, 'Car Seat Covers', 'KINGSWAY', 1699, 3000, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">KINGSWAY Towel Fabric Car Seat Covers Compatible with Skoda Kushaq (Year 2021 Onwards), 100% Cotton, Grey Cclor, Complete Set of All Seats (Car Specific Front + Rear Seat Covers)</span></h1>', 'seat10.jpg', 'seat11.jpg', 'seat12.jpg', 50, 'In Stock', '2024-02-03 05:36:30', NULL),
(27, 7, 13, 'Car Seat Covers', 'KINGSWAY', 2049, 4199, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">KINGSWAY Towel Fabric Car Seat Covers Compatible with Mahindra XUV 500 (Year 2011-2015), 100% Cotton, Grey Cclor, Complete Set of All Seats (Car Specific Front + Rear Seat Covers)</span></h1>', 'seat13.jpg', 'seat14.jpg', 'seat15.jpg', 50, 'In Stock', '2024-02-03 05:39:00', NULL),
(28, 7, 13, 'Car Seat Covers', 'LOOKMINT', 4178, 10999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">LOOKMINT 12V Cooling Car &amp; Massager Seat Cushion Cover Air Ventilated 8 Fan Conditioned Cooler Pad 3 Speeds Car Seat Cushion Cover Universal, Silk, Leather, Black</span></h1>', 'seat16.jpg', 'seat17.jpg', 'seat18.jpg', 50, 'In Stock', '2024-02-03 05:41:07', NULL),
(29, 7, 14, 'Car Mats ', 'Carify ', 4999, 11000, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Carify Premium 7D Car Mats for Maruti Suzuki Ertiga Car Foot Mats Custom Fitted Luxury Nappa Leather,Water Proof and 100% Washable Mats : Colour, Full Beige</span></h1>', 'mat1.jpg', 'mat2.jpg', 'mat3.jpg', 50, 'In Stock', '2024-02-03 05:45:20', NULL),
(30, 7, 14, 'Car Mats ', 'Faux', 3798, 7990, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Hyundai Exter (5 Seater SUV) 7D Faux Prime Luxurious Leather Mats(Black with Black Embriodary)</span></h1>', 'mat4.jpg', 'mat5.jpg', 'mat6.jpg', 50, 'In Stock', '2024-02-03 05:47:08', NULL),
(31, 7, 14, 'Car Mats ', 'Faux', 3, 7990, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Kia Seltos New 2023 (5 Seater SUV) 7D Faux Prime Luxurious Leather Mats(Black with Silver Embroidery)</span></h1>', 'mat7.jpg', 'mat8.jpg', 'mat9.jpg', 50, 'In Stock', '2024-02-03 05:49:04', NULL),
(32, 7, 14, 'Car Mats ', 'AutoClow', 2579, 3999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">AutoClow/Premium 7D car mat Full Set for Tata Nexon (Model : 2017-2024) || Luxury Leather Double Car Floor Mat Complete Set || 100% Waterproof and Washable || Color : Black-Golden</span></h1>', 'mat10.jpg', 'mat11.jpg', 'mat12.jpg', 50, 'In Stock', '2024-02-03 05:51:20', NULL),
(33, 7, 14, 'Car Mats ', 'AutoZing', 3482, 5987, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">AutoZing 7d car mat for Kia sonet || Luxury Leather Double Car Floor Mat Complete Set Complete Set for Kia sonet || 100% Waterproof and Washable || Color : Black</span></h1>', 'mat12.jpg', 'mat13.jpg', 'mat14.jpg', 50, 'In Stock', '2024-02-03 05:53:31', NULL),
(34, 7, 15, 'Sun Shades', 'SGL ', 198, 599, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">SGL shrinath Gloabl Premium car Sun Shades, Universal fit for All Cars varient: z Black</span></h1>', 's1.jpg', 's2.jpg', 's3.jpg', 50, 'In Stock', '2024-02-03 05:56:02', NULL),
(35, 7, 15, 'Sun Shades', 'amazon basics', 599, 2400, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">amazon basics Car Window Pullover Sun Shade - 2-Pack</span></h1>', 's4.jpg', 's5.jpg', 's6.jpg', 50, 'In Stock', '2024-02-03 05:57:41', NULL),
(36, 7, 15, 'Sun Shades', 'Auto Addict ', 649, 999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Auto Addict Car Half Magnetic Sunshades Set of 4 Pcs (2 Half,2 Non-Half) for Ford Fiesta New (2011-2016)</span></h1>', 's7.jpg', 's8.jpg', 's9.jpg', 50, 'In Stock', '2024-02-03 06:00:51', NULL),
(37, 7, 15, 'Sun Shades', 'Auto Addict', 496, 999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Auto Addict Fix Car Window Sunshades (Side Windows,Non Magnetic) for Maruti Suzuki Celerio</span></h1>', 's10.jpg', 's11.jpg', 's12.jpg', 50, 'In Stock', '2024-02-03 06:03:05', NULL),
(38, 7, 15, 'Sun Shades', 'Sarte', 140, 359, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Sarte Universal Car Window Sun Shade for All Cars (Black)</span></h1>', 's13.jpg', 's14.jpg', 's15.jpg', 50, 'In Stock', '2024-02-03 06:05:08', NULL),
(39, 7, 16, 'Steering Wheel Cover', 'BROGBUS', 479, 799, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">BROGBUS Sport Leather Anti Slip Steering Wheel Cover 14 1/2 inch to 15 inch Universal, Padded Soft Grip Breathable for Car Truck SUV Jeep (Black and Grey)</span></h1>', 's4.jpg', 's5.jpg', 's6.jpg', 50, 'In Stock', '2024-02-03 06:10:41', NULL),
(40, 7, 16, 'Steering Wheel Cover', 'Soft X', 899, 999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Soft X Premium Faux Leather Car Steering Wheel Cover | Flat Bottom (D Shape) Breathable Anti Slip Steering Cover for Untlimate Comfort &amp; Style - Black &amp; Red</span></h1>', 's1.jpg', 's2.jpg', 's3.jpg', 50, 'In Stock', '2024-02-03 06:11:53', NULL),
(41, 7, 16, 'Steering Wheel Cover', 'MAPPLE CREATION', 599, 1299, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">MAPPLE CREATION Steering Wheel Cover, Universal 15 inch, Microfiber Leather Viscose, Breathable, Anti-Slip,Warm in Winter and Cool in Summer</span></h1>', 's7.jpg', 's8.jpg', 's9.jpg', 50, 'In Stock', '2024-02-03 06:32:09', NULL),
(42, 7, 16, 'Steering Wheel Cover', 'Xizopucy', 390, 799, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Xizopucy Steering Wheel Covers Black Universal Microfiber Leather, Suitable for 14 1/2-15 inch Car Steering Wheel Cover, Breathable, Anti Slip &amp; Odor Free</span></h1>', 's7.jpg', 's9.jpg', 's8.jpg', 50, 'In Stock', '2024-02-03 06:34:22', NULL),
(43, 7, 16, 'Steering Wheel Cover', 'SEG ', 299, 699, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">SEG Direct Black Microfiber Leather Auto Car Steering Wheel Cover Universal 15 inch</span></h1>', 's10.jpg', 's11.jpg', 's12.jpg', 50, 'In Stock', '2024-02-03 06:37:03', NULL),
(44, 8, 17, 'Spoiler', 'AutoTrends', 1299, 2000, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">AutoTrends 4x Matte Black Car Bumper Lip Fins Canards Splitter Diffuser Valence Spoiler Lip</span></h1>', 's1.jpg', 's2.jpg', 's3.jpg', 50, 'In Stock', '2024-02-03 06:48:25', NULL),
(45, 8, 17, 'Spoiler', 'Car Craft', 7977, 12466, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Car Craft Mid Trunk Wing Rear Spoiler Compatible with Honda Civic 2006-2020 10th Generation Mid Trunk Wing Rear Spoiler Gt Ar-honda-021 Glossy Black</span></h1>', 's4.jpg', 's5.jpg', 's6.jpg', 50, 'In Stock', '2024-02-03 06:53:22', NULL),
(46, 8, 17, 'Spoiler', 'Car Craft ', 6837, 9971, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Car Craft After Lip Diffuser Spoiler Compatible with Volkswagen Polo 2010-2023 After Lip Diffuser Blade Style Ar-vw-0148 Glossy Black</span></h1>', 's7.jpg', 's8.jpg', 's9.jpg', 50, 'In Stock', '2024-02-03 06:56:15', NULL),
(47, 8, 17, 'Spoiler', 'AutoBizarre', 849, 2499, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">AutoBizarre Car Black Rear Spoiler Wing Lip Trunk Lip Dicky Skirt Universal for All Cars - 1.5 Meters x 35mm</span></h1>', 's7.jpg', 's8.jpg', 's9.jpg', 50, 'In Stock', '2024-02-03 06:58:56', NULL),
(48, 8, 17, 'Spoiler', 'PRTEK ', 2478, 4999, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">PRTEK Spoiler Black Aluminium Car Rear Trunk Sporty Look GT Racing Type Rear Wing Spoiler Universal fit Car Spoiler</span><br>', 's10.jpg', 's11.jpg', 's13.jpg', 50, 'In Stock', '2024-02-03 07:08:52', NULL),
(49, 8, 18, 'Mud Flap for XUV 300', 'WolkomHome', 434, 1299, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">WolkomHome Mud Flap for XUV 300</span></h1>', 'm1.jpg', 'm2.jpg', 'm3.jpg', 50, 'In Stock', '2024-02-03 07:12:43', NULL),
(50, 8, 18, 'Mud Guards OE Type', 'Car Heavy Duty', 499, 999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Car Heavy Duty Mud Guards OE Type Front and Rear Side Mud Flaps Compatible with Mahindra Thar 2021 Onward</span></h1>', 'm4.jpg', 'm5.jpg', 'm6.jpg', 50, 'In Stock', '2024-02-03 07:15:10', NULL),
(51, 8, 18, 'Mud Flaps Splash Guards', 'Auto Pearl ', 849, 1299, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Auto Pearl Car Heavy Duty Cup Type Mud Flaps Splash Guards || O.E Type Custom Front and Rear Mud Flap Guard Set for -Civic (Set of 4pcs) - Black</span></h1>', 'm7.jpg', 'm8.jpg', 'm9.jpg', 50, 'In Stock', '2024-02-03 07:19:14', NULL),
(52, 8, 18, 'Mud Flaps Mud Guard for Innova Crysta 2023', 'WolkomHome', 449, 799, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">WolkomHome Car O.E Type Mud Flaps Mud Guard for Innova Crysta 2023</span></h1>', 'm10.jpg', 'm11.jpg', 'm12.jpg', 50, 'In Stock', '2024-02-03 07:23:43', NULL),
(53, 8, 19, 'Chromeline Silverline Door Visor Wind Deflector', 'Auto E-Shopping', 1600, 2000, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Auto E-Shopping Compatible Chromeline Silverline Door Visor Wind Deflector for Mahindra Bolero Neo Set of 6 Pieces</span></h1>', 'w1.jpg', 'w2.jpg', 'w3.jpg', 50, 'In Stock', '2024-02-03 07:28:08', NULL),
(54, 8, 19, 'Side Door Visor Rain Guard', 'KINGSWAY', 1599, 3799, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">KINGSWAY Car Side Door Visor Rain Guard Compatible with Honda Elevate (Year 2023 Onwards) - Chrome Lined Rear Window Wind Deflectors, Polycarbonate, Smoke, Set of 4 Pcs</span></h1>', 'w4.jpg', 'w5.jpg', 'w6.jpg', 50, 'In Stock', '2024-02-03 07:33:16', NULL),
(55, 8, 19, 'Unbreakable Chrome line Door Visor/Wind Deflector/Rain Guard', 'ModifyStyle', 1548, 2998, '<span style=\"color: rgb(17, 17, 17); font-family: verdana, arial, helvetica, sans-serif; font-size: 17px;\">ModifyStyle Unbreakable Chrome line Door Visor/Wind Deflector/Rain Guard Compatible for Datsun Go Plus (2015 to Present) Type-1 &amp; 2 (Set of 4pc)</span><br>', 'w7.jpg', 'w8.jpg', 'w9.jpg', 50, 'In Stock', '2024-02-03 07:37:12', NULL),
(56, 8, 20, 'Rectangular Roof Rack', 'THE ADVENTURE GARAGE', 13000, 18000, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">THE ADVENTURE GARAGE 4x4 Rectangular Roof Rack, Car Carrier Stand Roof Luggage for Thar 2020 DF</span></h1>', 'r1.jpg', 'r2.jpg', 'r3.jpg', 100, 'In Stock', '2024-02-03 12:14:29', NULL),
(57, 8, 20, 'Mounted Car Bike Rack ', 'BikerZ ', 12667, 18899, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">BikerZ Rear Mounted Car Bike Rack : Model TrunkZ</span></h1>', 'r4.jpg', 'r5.jpg', 'r6.jpg', 100, 'In Stock', '2024-02-03 12:16:26', NULL),
(58, 8, 20, 'Car Roof Bag & Rooftop Cargo Carrier', 'A-WAY', 8199, 11999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">A-WAY Car Roof Bag &amp; Rooftop Cargo Carrier. 100% Waterproof Excellent Military Quality Car Top Carrier. Heavy Duty RoofBag. Fits All Vehicle with/Without Rack.</span></h1>', 'r7.jpg', 'r8.jpg', 'r9.jpg', 100, 'In Stock', '2024-02-03 12:18:03', NULL),
(59, 8, 20, 'Roof Rails for New Brezza 2022', 'Bully Premium', 4000, 4999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Bully Premium Roof Rails for New Brezza 2022</span></h1>', 'r10.jpg', 'r11.jpg', 'r12.jpg', 100, 'In Stock', '2024-02-03 12:20:01', NULL),
(60, 8, 20, 'A-WAY Car Roof Bag & Rooftop Cargo Carrier (Car Cross Bars for Gutter Roof)', 'A-WAY', 6999, 8999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">A-WAY Car Roof Bag &amp; Rooftop Cargo Carrier (Car Cross Bars for Gutter Roof)</span></h1>', 'r13.jpg', 'r14.jpg', 'r15.jpg', 100, 'In Stock', '2024-02-03 12:22:31', NULL),
(61, 8, 21, 'Car Body Cover Compatible with Tata Tiago with Mirror & Antenna Pockets', 'Fabtec ', 799, 1399, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Fabtec Car Body Cover Compatible with Tata Tiago with Mirror &amp; Antenna Pockets (Heavy Duty, Full Sized, Triple Stitched, Grey)</span></h1>', 'c1.jpg', 'c2.jpg', 'c3.jpg', 100, 'In Stock', '2024-02-03 12:25:11', NULL),
(62, 8, 21, 'Baleno with Mirror and Antenna Pocket and Soft Cotton Lining ', 'FABTEC Store', 1084, 2099, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Baleno with Mirror and Antenna Pocket and Soft Cotton Lining (Full Bottom Elastic Triple Stitched) (Metallic Silver with Black Piping)</span></h1>', 'c4.jpg', 'c5.jpg', 'c6.jpg', 100, 'In Stock', '2024-02-03 12:27:27', NULL),
(63, 8, 21, 'Waterproof CAR Cover for Maruti Suzuki Wagon R', 'FRONCH', 849, 2799, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">FRONCH Waterproof CAR Cover for Maruti Suzuki Wagon R (Maruti Suzuki Wagon R CAR Cover/Wagon R CAR Cover/Wagon R CAR Cover Waterproof/CAR Cover for Wagon R)</span></h1>', 'c7.jpg', 'c8.jpg', 'c9.jpg', 50, 'In Stock', '2024-02-03 12:32:31', NULL),
(64, 8, 21, 'Car Body Cover Compatible with Tata Tiago with Mirror & Antenna Pockets ', 'Fabtec ', 799, 1399, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\" id=\"productTitle\">Fabtec Car Body Cover Compatible with Tata Tiago with Mirror &amp; Antenna Pockets (Heavy Duty, Full Sized, Triple Stitched, Grey)</span></h1>', 'c10.jpg', 'c12.jpg', 'c11.jpg', 50, 'In Stock', '2024-02-03 12:35:40', NULL),
(65, 8, 21, 'Waterproof CAR Cover for Maruti Suzuki Swift DZIRE', 'J S R', 599, 2999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">J S R Waterproof CAR Cover for Maruti Suzuki Swift DZIRE (Maruti Suzuki Swift DZIRE CAR Cover/Swift DZIRE CAR Cover/Swift DZIRE CAR Cover Waterproof/CAR Cover for Swift DZIRE)</span></h1>', 'c13.jpg', 'c14.jpg', 'c15.jpg', 50, 'In Stock', '2024-02-03 12:38:04', NULL),
(66, 9, 22, 'Stainless Steel Dual Tip Muffler Exhaust for Cars with Curved Design Bend Type Square Shape Modified tail Pipe ', 'CARZEX ', 1499, 1999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">CARZEX Stainless Steel Dual Tip Muffler Exhaust for Cars with Curved Design Bend Type Square Shape Modified tail Pipe (Burnt Pipe)</span></h1>', 'e1.jpg', 'e2.jpg', 'e3.jpg', 100, 'In Stock', '2024-02-03 13:13:44', NULL),
(67, 9, 22, 'Steel Car SUV Dual Exhaust Muffler Tip Tail Pipe', 'Alco ', 1093, 2000, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Alco 63mm Straight Twin Round Blue Burnt Stainless Steel Car SUV Dual Exhaust Muffler Tip Tail Pipe</span></h1>', 'e4.jpg', 'e5.jpg', 'e6.jpg', 100, 'In Stock', '2024-02-03 13:54:18', NULL),
(68, 9, 22, 'urbo Sound Whistle Exhaust Pipe', 'Guance', 1129, 1499, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Guance Universal Sound Simulator Car Turbo Sound Whistle Exhaust Pipe Turbo Sound Whistle Car Turbo Universal for All Cars</span></h1>', 'e7.jpg', 'e8.jpg', 'e9.jpg', 50, 'In Stock', '2024-02-03 13:56:11', NULL),
(70, 9, 22, 'Stainless STEEL HKS DOUBLE ROUND TIP Exhaust Muffler Silencer Burnt Tip HKS Muffler Car', 'AUTO MT', 6464, 4999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">AUTO MT Stainless STEEL HKS DOUBLE ROUND TIP Exhaust Muffler Silencer Burnt Tip HKS Muffler Car Exhaust System Loud Exhaust HKS Dual ROUND TIP</span></h1>', 'e13.jpg', 'e14.jpg', 'e15.jpg', 100, 'In Stock', '2024-02-03 14:32:59', NULL),
(71, 9, 22, 'Stainless Steel SS-010-BLUE Car Exhaust Dual Pipe Muffler Silencer Cover', 'Oshotto', 2312, 3500, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Oshotto Stainless Steel SS-010-BLUE Car Exhaust Dual Pipe Muffler Silencer Cover Compatible with Toyota Urban Cruiser Hyryder - Multicolor</span></h1>', 'e16.jpg', 'e18.jpg', 'e17.jpg', 100, 'In Stock', '2024-02-03 14:34:57', NULL),
(72, 9, 23, 'Universal Interface Bike CAR Air Filters Blue ', 'AUTO MT', 799, 1299, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">AUTO MT Universal Interface Bike CAR Air Filters Blue 12Mm Air Intake Small Mushroom Head Air Filter Modified Air Intake Filter Turbo Vent Crankcase (Blue 12Mm Turbo Bike CAR Air Filters)</span></h1>', 'a1.jpg', 'a2.jpg', 'a3.jpg', 50, 'In Stock', '2024-02-03 14:52:00', NULL),
(73, 9, 23, 'Air filter Air Cleaner for GX35 GX-35 UMK450 47.9CC', 'Generic', 1299, 1799, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Air filter Air Cleaner for GX35 GX-35 UMK450 47.9CC 4 STROKE engine Brush cutter trimmer Replace</span></h1>', 'a4.jpg', 'a5.jpg', 'a6.jpg', 50, 'In Stock', '2024-02-03 14:53:50', NULL),
(74, 9, 23, 'HI-PERFORMANCE AIR FILTER FOR HYUNDAI i20 ELITE/ACTIVE', 'ALTECH ', 1200, 2000, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">ALTECH HI-PERFORMANCE AIR FILTER FOR HYUNDAI i20 ELITE/ACTIVE (2ND GEN 2014 TO 2019)</span></h1>', 'a7.jpg', 'a8.jpg', 'a9.jpg', 50, 'In Stock', '2024-02-03 14:55:11', NULL),
(75, 9, 23, 'Car engine oil filter and air filter compatible with etios/etios liva diesel', 'GOPINATH AUTOLINK', 490, 799, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">GOPINATH AUTOLINK Car engine oil filter and air filter compatible with etios/etios liva diesel</span></h1>', 'a10.jpg', 'a11.jpg', 'a12.jpg', 50, 'In Stock', '2024-02-03 14:58:21', NULL),
(76, 9, 23, 'Air Filter Compatible With Chevrolet Optra Petrol ', 'Sparedeals', 487, 699, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Sparedeals - Air Filter Compatible With Chevrolet Optra Petrol (2003-2006)</span></h1>', 'a13.jpg', 'a14.jpg', 'a15.jpg', 50, 'In Stock', '2024-02-03 15:00:06', NULL),
(77, 9, 25, 'DP2 - DP6 Front&Rear - Combo Brake Disc Pads Compatible for Suzuki Gixxer', 'NIKAVI ', 300, 700, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">NIKAVI DP2 - DP6 Front&amp;Rear - Combo Brake Disc Pads Compatible for Suzuki Gixxer (All Models)</span></h1>', 'b1.jpg', 'b2.jpg', 'b3.jpg', 50, 'In Stock', '2024-02-03 15:02:49', NULL),
(78, 9, 25, 'Stainless Steel Rear Brake Oil Container Guard Compatible with Triumph Speed 400', 'SGTB', 689, 1190, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">SGTB Stainless Steel Rear Brake Oil Container Guard Compatible with Triumph Speed 400</span></h1>', 'b4.jpg', 'b5.jpg', 'b6.jpg', 50, 'In Stock', '2024-02-03 15:06:05', NULL),
(79, 9, 25, 'Grease Gun Coupler Kit', 'Mass Pro', 769, 1499, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Mass Pro Grease Gun Coupler Kit, Strong Lock on Greases Gun Couplers With 12\" Spring Flex Hose, Quick Release Grease Coupler Accessories</span></h1>', 'b7.jpg', 'b8.jpg', 'b9.jpg', 50, 'In Stock', '2024-02-03 15:08:11', NULL),
(80, 9, 25, 'Attractive Offer World Brake Shoe for Mahindra Centuro', 'Aow ', 393, 499, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Aow Attractive Offer World Brake Shoe for Mahindra Centuro</span></h1>', 'b10.jpg', 'b11.jpg', 'b12.jpg', 50, 'In Stock', '2024-02-03 15:12:06', NULL),
(81, 9, 25, 'Attractive Offer World Brake Shoe for Mahindra Centuro', 'Aow ', 393, 499, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Aow Attractive Offer World Brake Shoe for Mahindra Centuro</span></h1>', 'b10.jpg', 'b11.jpg', 'b12.jpg', 50, 'In Stock', '2024-02-03 15:23:06', NULL),
(82, 10, 27, 'Car Dash Camera Pro X from Hero Group', 'Qubo', 3490, 5990, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Qubo Car Dash Camera Pro X from Hero Group | 2MP FHD 1080p | Made in India Dashcam | Super Capacitor | WiFi | with Emergency Recording | Easy DIY Set Up | Up to 1TB SD Card Supported | (Space Grey)</span></h1>', 'd1.jpg', 'd2.jpg', 'd3.jpg', 50, 'In Stock', '2024-02-03 17:14:53', NULL),
(83, 10, 27, 'Mini Car Dash Camera', 'DDPAI', 3299, 5999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">DDPAI Mini Car Dash Camera, Full HD 1080p, 140° Wide Angle, F2.0 Aperture, Super-Capacitor, G-Sensor, WiFi, Parking Mode, Upto 128GB Supported (Designed for Hot Indian Weather)</span></h1>', 'd4.jpg', 'd5.jpg', 'd6.jpg', 50, 'In Stock', '2024-02-03 17:22:13', NULL),
(84, 10, 27, 'Blackbox Dash Camera Pro WiFi Dual Channel 1296P Front & 1080P Rear', 'Conbre', 3699, 5999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Conbre Blackbox Dash Camera Pro WiFi Dual Channel 1296P Front &amp; 1080P Rear | Full HD 1080p | Wide Angle | Emergency Recording | Easy DIY Set Up (Jet Black) (Blackbox Pro)</span></h1>', 'd7.jpg', 'd8.jpg', 'd9.jpg', 50, 'In Stock', '2024-02-03 17:24:43', NULL),
(85, 10, 27, 'Car Dash Camera Pro', 'Qubo', 3499, 6758, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Qubo Car Dash Camera Pro (with GPS Log) Dash Cam from Hero Group | 2MP FHD 1080p | Made in India Dashcam | Large FOV Wide Angle | Suitable for Large Cars | G-Sensor | WiFi | With Emergency Recording |</span></h1>', 'd10.jpg', 'd11.jpg', 'd12.jpg', 50, 'In Stock', '2024-02-03 17:26:42', NULL),
(86, 10, 27, 'F5 WiFi Dash Cam Front', 'REDTIGER', 2499, 3990, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">REDTIGER F5 WiFi Dash Cam Front:1080P Full HD Smart Dash Camera for Cars, 360 Degree Rotation, APP Control, Loop Recording, G-Sensor, Night Vision, Parking Mode</span></h1>', 'd13.jpg', 'd14.jpg', 'd16.jpg', 50, 'In Stock', '2024-02-03 17:29:21', NULL),
(87, 10, 27, 'NEXDIGITRON A3 Pro Car Dash Camera, 1.5K 1296P Super Full HD', 'NEXDIGITRON', 3799, 7999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">NEXDIGITRON A3 Pro Car Dash Camera, 1.5K 1296P Super Full HD, Super-Capacitor, F2.0 6G Lens, 140° Wide Angle, G-Sensor, WiFi, Optional Parking Mode, Upto 128GB Supported</span></h1>', 'd17.jpg', 'd18.jpg', 'd19.jpg', 50, 'In Stock', '2024-02-03 17:31:46', NULL);
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(88, 10, 30, 'Jbl Gto609C 90W Wired Speaker - Black', 'JBL', 9237, 14500, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span style=\"font-size: 14px;\">360w 2-Way Speaker, Complete line of multielement and component speakers, Gold-Plated Terminals, New low-distortion,low-Q woofer motor, 1 year warranty</span><br></h1>', 's1.jpg', 's3.jpg', 's2.jpg', 50, 'In Stock', '2024-02-03 17:42:47', NULL),
(89, 10, 30, 'High Performance 3 Way 6 Inch Coaxial Car Speaker', 'JXL ', 1049, 2499, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">JXL 1690 High Performance 3 Way 6 Inch Coaxial Car Speaker with Inbuilt PEI Car Tweeter and HOP Woofer 600W MAX Pair (Black)</span></h1>', 's4.jpg', 's5.jpg', 's6.jpg', 50, 'In Stock', '2024-02-03 17:47:38', NULL),
(90, 10, 30, 'Jbl A1500Hi 1500W 1 Channel Wired Subwoofer - Black', 'Jbl ', 5233, 7700, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Jbl A1500Hi 1500W 1 Channel Wired Subwoofer - Black</span></h1>', 's8.jpg', 's10.jpg', 's9.jpg', 50, 'In Stock', '2024-02-03 17:52:56', NULL),
(91, 10, 30, 'SP Electron 2 inch 5W 4 Ohm Full Range Audio Speaker Stereo Woofer Loudspeaker (Set of 2)', 'SP Electron', 499, 799, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">SP Electron 2 inch 5W 4 Ohm Full Range Audio Speaker Stereo Woofer Loudspeaker (Set of 2)</span></h1>', 's11.jpg', 's13.jpg', 's12.jpg', 50, 'In Stock', '2024-02-03 17:57:44', NULL),
(92, 10, 30, 'Pioneer Car Component Speaker TS-C602IN', 'Pioneer', 3550, 7144, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Pioneer Car Component Speaker TS-C602IN,16 cm Component with Separate Cross Over Max 390W Nominal 90W, Made for India, Polyimide Diaphragm, 30 Hz?30,000 Hz, Car Sound Fit App,Tweeter mounting Option</span></h1>', 's12.jpg', 's11.jpg', 's13.jpg', 50, 'In Stock', '2024-02-03 18:01:07', NULL),
(93, 10, 31, 'Android Double Din Stereo Player 11 Android Version Gorilla Glass IPS Display Car Stereo Touch Screen', 'AUTO SNAP', 5999, 25000, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">AUTO SNAP 9 Inch HD Android Double Din Stereo Player 11 Android Version Gorilla Glass IPS Display Car Stereo Touch Screen Flashing 2GB RAM 32GB ROM for All Cars</span></h1>', 'i1.jpg', 'i2.jpg', 'i3.jpg', 50, 'In Stock', '2024-02-03 18:13:02', NULL),
(96, 10, 31, 'Advanced Car Radio Receiver Android System', 'Bassoholic', 4599, 11000, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Bassoholic 9 Inches (22Cm) Advanced Car Radio Receiver Android System with 2GB/32GB RAM &amp; ROM, IPS Capacitive Touch Panel with Gorilla Glass/Full HD Display/WiFi/GPS/Steering Wheel Connectivity</span></h1>', 'i4.jpg', 'i5.jpg', 'i6.jpg', 50, 'In Stock', '2024-02-03 18:47:52', NULL),
(97, 10, 31, 'Android Car Stereo/Headunit for car', 'TESHA', 10999, 35000, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">TESHA. 9\" Android Car Stereo/Headunit for car/Capacitive Touch Screen/GPS + Steering Control Module/HD Screen (4/32 GB Ts9 (Wireless Carplay &amp; Android Auto))</span></h1>', 'i7.jpg', 'i8.jpg', 'i9.jpg', 50, 'In Stock', '2024-02-03 18:50:32', NULL),
(98, 10, 31, 'Car Android Double Din Player 2GB/32GB Capacitive Touch Screen Quad Core Proceessor 1080P HD Screen', 'JXL', 12999, 21000, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">JXL 9 Inch Car Android Double Din Player 2GB/32GB Capacitive Touch Screen Quad Core Proceessor 1080P HD Screen, Latest Android Version 10.1 BT 5.0, Wi-Fi, GPS, USB 2.0, Navigation 2GB/32GB</span></h1>', 'i10.jpg', 'i11.jpg', 'i12.jpg', 50, 'In Stock', '2024-02-03 18:53:43', NULL),
(99, 9, 24, 'Heavy-duty Suspension Coil Spring Buffer Kit (with Zip-tie) for all car models', 'sparebros ', 3000, 5000, 'sparebros Heavy-duty Suspension Coil Spring Buffer Kit (with Zip-tie) for all car models Front Size-B, Rear Size-B (Set of 4PCS)<br>', 's1.jpg', 's2.jpg', 's3.jpg', 100, 'In Stock', '2024-02-05 02:32:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 7, 'Seat Cover', '2024-02-02 11:08:50', NULL),
(14, 7, 'Floor Mats', '2024-02-02 11:09:04', NULL),
(15, 7, 'Sun Shade', '2024-02-02 11:09:17', NULL),
(16, 7, 'Stearing Wheel Covers', '2024-02-02 11:09:42', NULL),
(17, 8, 'Spoilers', '2024-02-02 11:09:49', NULL),
(18, 8, 'Mud Flaps', '2024-02-02 11:09:59', NULL),
(19, 8, 'Wind Deflectors', '2024-02-02 11:10:15', NULL),
(20, 8, 'Roof Racks', '2024-02-02 11:10:27', NULL),
(21, 8, 'Car Cover', '2024-02-02 11:10:37', NULL),
(22, 9, 'Exhaust Systems', '2024-02-02 11:10:54', NULL),
(23, 9, 'Air Filters', '2024-02-02 11:11:04', NULL),
(24, 9, 'Suspension Upgrades', '2024-02-02 11:11:16', NULL),
(25, 9, 'Brake Kits', '2024-02-02 11:11:26', NULL),
(27, 10, 'Dash Cams', '2024-02-02 11:11:48', NULL),
(30, 10, 'Car Audio Systems', '2024-02-02 11:13:16', NULL),
(31, 10, 'Infotainment System', '2024-02-02 11:13:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(32, 'mithilpawar7044@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-03 12:27:55', NULL, 0),
(33, 'mithilpawar7044@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-03 12:28:43', NULL, 1),
(34, 'mithilpawar7044@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-04 18:50:40', NULL, 1),
(35, 'itspravat@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-05 02:40:20', '05-02-2024 08:10:50 AM', 1),
(36, 'mithilpawar7044@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-05 02:46:38', '05-02-2024 08:19:43 AM', 1),
(37, 'itspravat@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-05 02:49:59', '05-02-2024 08:21:06 AM', 1),
(38, 'mithilpawar7044@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-05 02:56:58', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(6, 'Mithil', 'mithilpawar7044@gmail.com', 9860195017, '25d55ad283aa400af464c76d713c07ad', 'At-hatiwale, post-kondye, taluka-rajapur, district- ratnagiri\r\nNear gangeshwar temple', 'Maharashtra', 'Rajapur', 416702, NULL, NULL, NULL, NULL, '2024-02-03 12:28:31', NULL),
(7, 'Pravat Bera', 'itspravat@gmail.com', 9860195017, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-05 02:39:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
