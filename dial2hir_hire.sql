-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2015 at 04:04 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dial2hir_hire`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(500) DEFAULT NULL,
  `adminPassword` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE IF NOT EXISTS `agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `vehicle_count` bigint(20) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `suburb` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `pincode` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `landline` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `email_verify` int(11) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `activation_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `route` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `package_id` int(11) NOT NULL,
  `vehicle_pref` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `car_pooling`
--

CREATE TABLE IF NOT EXISTS `car_pooling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_name` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cellno` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `suburb` int(11) DEFAULT NULL,
  `pincode` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `route` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pref_comm` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `services` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `city_description`
--

CREATE TABLE IF NOT EXISTS `city_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `links` longtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

-- --------------------------------------------------------

--
-- Table structure for table `cust_inquiry`
--

CREATE TABLE IF NOT EXISTS `cust_inquiry` (
  `inq_no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `message_type` enum('sms','email') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'sms',
  `v_rto` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `v_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `v_phone` bigint(14) NOT NULL,
  `v_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `v_model` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `pid` int(10) NOT NULL,
  PRIMARY KEY (`inq_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1497 ;

-- --------------------------------------------------------

--
-- Table structure for table `directory_inquiry`
--

CREATE TABLE IF NOT EXISTS `directory_inquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cust_mob` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_loc` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_loc` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_comp_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_comp_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inquiry_date` datetime DEFAULT NULL,
  `ip` varchar(40) CHARACTER SET latin1 NOT NULL,
  `message_type` enum('sms','email') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=153 ;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE IF NOT EXISTS `inquiry` (
  `inq_no` int(11) NOT NULL AUTO_INCREMENT,
  `vehicleid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(500) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `fromloc` varchar(200) NOT NULL,
  `toloc` varchar(200) NOT NULL,
  `message_type` enum('sms','email') NOT NULL DEFAULT 'sms',
  PRIMARY KEY (`inq_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1870 ;

-- --------------------------------------------------------

--
-- Table structure for table `instant_booking`
--

CREATE TABLE IF NOT EXISTS `instant_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `union_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `suburb` int(11) DEFAULT NULL,
  `address` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_vehicles` int(11) DEFAULT NULL,
  `ac_type` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternate_no` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_points` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

-- --------------------------------------------------------

--
-- Table structure for table `instant_customer_inquiry`
--

CREATE TABLE IF NOT EXISTS `instant_customer_inquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_point` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `drop_point` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `inquiry_date` datetime DEFAULT NULL,
  `notes` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lead_inquiry`
--

CREATE TABLE IF NOT EXISTS `lead_inquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_contact` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_req_cat` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_req_type` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_req_ton` int(11) DEFAULT NULL,
  `customer_req_from` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_req_to` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `vendor_contact` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_purchase_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `comments` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('pending','attended') COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `onetime`
--

CREATE TABLE IF NOT EXISTS `onetime` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mobile` bigint(14) NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sent_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=518 ;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE IF NOT EXISTS `package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `branding` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leads` int(11) DEFAULT NULL,
  `listing_type` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `package_report`
--

CREATE TABLE IF NOT EXISTS `package_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `drawn_bank` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cheque_no` int(11) DEFAULT NULL,
  `utr_no` int(11) DEFAULT NULL,
  `pay_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `post_load`
--

CREATE TABLE IF NOT EXISTS `post_load` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `fromloc` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `toloc` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `load_cat` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `load_type` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('pending','active') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `status` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `vehicle_count` bigint(20) NOT NULL,
  `type` varchar(5000) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `suburb` varchar(500) NOT NULL,
  `pincode` varchar(500) NOT NULL,
  `landline` varchar(500) NOT NULL,
  `email_verify` int(11) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `activation_code` varchar(50) NOT NULL,
  `route` varchar(500) NOT NULL,
  `package_id` int(11) NOT NULL,
  `vehicle_pref` varchar(500) NOT NULL,
  `taxi_type` enum('AC','Non-AC') NOT NULL,
  `agent_id` int(11) NOT NULL,
  `updated` int(4) NOT NULL DEFAULT '1',
  `end_state` int(8) NOT NULL,
  `end_city` int(8) NOT NULL,
  `end_suburb` int(8) NOT NULL,
  `end_latitude` float NOT NULL,
  `end_longitude` float NOT NULL,
  `callcenter_control` enum('online','offline') NOT NULL,
  `keyword` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`(1000)),
  KEY `state` (`state`),
  KEY `city` (`city`),
  KEY `suburb` (`suburb`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3890 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `firstname`, `lastname`, `email`, `phone`, `password`, `status`, `date`, `vehicle_count`, `type`, `state`, `city`, `suburb`, `pincode`, `landline`, `email_verify`, `latitude`, `longitude`, `activation_code`, `route`, `package_id`, `vehicle_pref`, `taxi_type`, `agent_id`, `updated`, `end_state`, `end_city`, `end_suburb`, `end_latitude`, `end_longitude`, `callcenter_control`, `keyword`) VALUES
(1, 'raj', 'thakrey', 'rajthakrey@gamil.com', '787878787', 'raj123456', 'active', '0000-00-00 00:00:00', 1, 'car', 0, 0, 'mumbaisub', '400098', '0225444454545', 0, 19.5, 23.5, '', 'mumbai-pune', 0, '', 'AC', 0, 1, 0, 0, 0, 0, 0, '', ''),
(2, 'hamish', 'dsouza', 'haish@gmail.com', '9869545466', 'hamish', 'active', '0000-00-00 00:00:00', 1, 'car', 0, 0, '', '', '', 0, 19.5, 23.5, '', 'mumbai-goa', 0, '', 'AC', 0, 1, 0, 0, 0, 0, 0, '', ''),
(3, 'alex', 'ferguson', 'imalex@gmail.com', '9869545466', 'alex', 'active', '0000-00-00 00:00:00', 1, 'car', 0, 0, '', '', '', 0, 19.5, 23.5, '', 'mumbai-goa', 0, '', 'AC', 0, 1, 0, 0, 0, 0, 0, '', ''),
(4, 'shahruk ', 'khan', 'srk@gmail.com', '9897797979', '454545', 'active', '2015-08-06 00:00:00', 0, '', 0, 0, '', '', '', 0, 19.5, 23.5, '', '', 0, '', 'AC', 0, 1, 0, 0, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `client_mob` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_mob` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inquiry_id` int(11) DEFAULT NULL,
  `review` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_cat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rickshaw`
--

CREATE TABLE IF NOT EXISTS `rickshaw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `suburb` varchar(500) NOT NULL,
  `pincode` varchar(500) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1545 ;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `country_id` int(10) DEFAULT NULL,
  `state_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

-- --------------------------------------------------------

--
-- Table structure for table `suburb`
--

CREATE TABLE IF NOT EXISTS `suburb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `suburb_name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Pending','Confirm') COLLATE utf8_unicode_ci NOT NULL,
  `v_type` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1274 ;

-- --------------------------------------------------------

--
-- Table structure for table `suburb_tempo`
--

CREATE TABLE IF NOT EXISTS `suburb_tempo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` varchar(1000) DEFAULT NULL,
  `suburb_name` varchar(1000) DEFAULT NULL,
  `vehicle_id` varchar(1000) NOT NULL,
  `status` enum('pending','confirm') NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `vehicle_id` (`vehicle_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=327 ;

-- --------------------------------------------------------

--
-- Table structure for table `taxi_info`
--

CREATE TABLE IF NOT EXISTS `taxi_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `fname` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `taxi_mobile` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permit` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `suburb` int(11) DEFAULT NULL,
  `pincode` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `route` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `services` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicleinfo` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `valance` int(11) NOT NULL,
  `status` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblcitylist`
--

CREATE TABLE IF NOT EXISTS `tblcitylist` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) NOT NULL,
  `latitude` varchar(10) NOT NULL,
  `longitude` varchar(10) NOT NULL,
  `state` varchar(50) NOT NULL,
  `state_id` int(5) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `status` enum('pending','confirm') NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1172 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE IF NOT EXISTS `tblpayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `paymentOption` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cardNumber` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `securityCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `expiryMonth` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `expiryYear` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `reference_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ship_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ship_address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ship_city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ship_state` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ship_postal_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ship_country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ship_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` enum('pending','success','cancel') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `leads` int(11) NOT NULL,
  `invoice_status` enum('pending','sent') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=48 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblrecharge`
--

CREATE TABLE IF NOT EXISTS `tblrecharge` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `earn` int(10) NOT NULL,
  `agent_id` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inactive',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_intermediate`
--

CREATE TABLE IF NOT EXISTS `tbl_intermediate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `suburb` int(10) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `registration_id` int(11) NOT NULL,
  `pickup` enum('start','end','intermediate') NOT NULL DEFAULT 'start',
  `add_date` datetime NOT NULL,
  `point_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `registration_id` (`registration_id`),
  KEY `latitude` (`latitude`),
  KEY `longitude` (`longitude`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5938 ;

-- --------------------------------------------------------

--
-- Table structure for table `tempo_city_description`
--

CREATE TABLE IF NOT EXISTS `tempo_city_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `links` longtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_extra` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=43 ;

-- --------------------------------------------------------

--
-- Table structure for table `tourist_directory`
--

CREATE TABLE IF NOT EXISTS `tourist_directory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(8000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `services` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `pid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `vehicles` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1552 ;

-- --------------------------------------------------------

--
-- Table structure for table `track_search`
--

CREATE TABLE IF NOT EXISTS `track_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromloc` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `toloc` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `searchdate` date DEFAULT NULL,
  `type` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5757 ;

-- --------------------------------------------------------

--
-- Table structure for table `transporter`
--

CREATE TABLE IF NOT EXISTS `transporter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address3` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` int(11) NOT NULL,
  `cell` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `landline` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t_route` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specialist` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `services` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `t_email` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t_password` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ad` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t_img` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t_reg_date` datetime DEFAULT NULL,
  `pid` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=981 ;

-- --------------------------------------------------------

--
-- Table structure for table `transporter_services`
--

CREATE TABLE IF NOT EXISTS `transporter_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `services` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=39 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobileno` (`mobileno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `mobileno`) VALUES
(1, '', ''),
(7, 'rahul', '7208681534'),
(8, 'abhay', '9820840946'),
(9, 'hamish', '9969983381'),
(10, 'omkar', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE IF NOT EXISTS `user_account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mobile` bigint(12) NOT NULL,
  `balance` int(10) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_date` datetime NOT NULL,
  `sms_count` int(11) NOT NULL,
  `comments` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2533 ;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_details`
--

CREATE TABLE IF NOT EXISTS `vehicle_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `make` varchar(500) DEFAULT NULL,
  `model` varchar(500) DEFAULT NULL,
  `maxrate` int(11) NOT NULL,
  `minrate` int(11) NOT NULL,
  `taxi` varchar(500) DEFAULT NULL,
  `unionnew` varchar(500) DEFAULT NULL,
  `trolley_length` int(11) DEFAULT NULL,
  `ton` int(11) DEFAULT NULL,
  `return_route` varchar(500) DEFAULT NULL,
  `v_type` varchar(500) DEFAULT NULL,
  `wheels` int(11) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `sms_count` int(11) DEFAULT NULL,
  `tempo_type` varchar(500) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `last_search_date` datetime DEFAULT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `agent_id` int(11) NOT NULL,
  `return_date` date NOT NULL,
  `return_home` varchar(500) DEFAULT NULL,
  `return_status` enum('no_return','returning') NOT NULL,
  `taxi_type` varchar(500) NOT NULL,
  `selfdrive` enum('no','yes') NOT NULL,
  `sub_vendor_contact` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5422 ;

--
-- Dumping data for table `vehicle_details`
--

INSERT INTO `vehicle_details` (`id`, `pid`, `make`, `model`, `maxrate`, `minrate`, `taxi`, `unionnew`, `trolley_length`, `ton`, `return_route`, `v_type`, `wheels`, `status`, `balance`, `sms_count`, `tempo_type`, `reg_date`, `last_search_date`, `latitude`, `longitude`, `agent_id`, `return_date`, `return_home`, `return_status`, `taxi_type`, `selfdrive`, `sub_vendor_contact`) VALUES
(1, 1, 'maruti', '800', 15, 10, '6k8hkhb', 'jbsjxjbsx', 15, 1, 'ghatkopaer', 'car', 4, 'act', 200, 10, 'idk', '2015-08-04 00:00:00', '2015-08-10 00:00:00', 19.5, 23.5, 122, '2015-08-11', 'pune', 'no_return', 'car', 'no', '898989'),
(2, 2, 'toyota', 'innova', 15, 12, 'fgf', 'sdg', 5, 1, 'ghatkopar', 'car', 4, 'active', 500, 12, 'jhgvh', '2015-08-02 00:00:00', '2015-08-03 00:00:00', 23.5, 30.23, 0, '0000-00-00', NULL, '', '', '', ''),
(3, 3, 'rollsroyes', 'ghost', 1500, 1400, 'jhfhj', 'vhvgh', 1, 1, 'ghatkopar', 'car', 4, 'active', 12, 1, 'jhvhj', '2015-08-01 00:00:00', '2015-08-03 00:00:00', 0, 0, 0, '0000-00-00', 'ghatkoapr', '', '', '', ''),
(4, 4, 'chervolate', 'tavera', 156, 120, 'jvax', 'hvhjv', 1, 1, 'ghatkopar', 'car', 4, 'active', 125, 1, 'hbhj', '2015-08-01 00:00:00', '2015-08-04 00:00:00', 0, 0, 0, '0000-00-00', 'b dsb', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_details1`
--

CREATE TABLE IF NOT EXISTS `vehicle_details1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `make` varchar(500) DEFAULT NULL,
  `model` varchar(500) DEFAULT NULL,
  `maxrate` varchar(500) NOT NULL,
  `minrate` varchar(500) NOT NULL,
  `taxi` varchar(500) DEFAULT NULL,
  `unionnew` varchar(500) DEFAULT NULL,
  `trolley_length` int(11) DEFAULT NULL,
  `ton` int(11) DEFAULT NULL,
  `return_route` varchar(500) DEFAULT NULL,
  `v_type` varchar(500) DEFAULT NULL,
  `wheels` int(11) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `sms_count` int(11) DEFAULT NULL,
  `tempo_type` varchar(500) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `last_search_date` datetime DEFAULT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2617 ;

--
-- Dumping data for table `vehicle_details1`
--

INSERT INTO `vehicle_details1` (`id`, `pid`, `make`, `model`, `maxrate`, `minrate`, `taxi`, `unionnew`, `trolley_length`, `ton`, `return_route`, `v_type`, `wheels`, `status`, `balance`, `sms_count`, `tempo_type`, `reg_date`, `last_search_date`, `latitude`, `longitude`) VALUES
(2616, 1, 'maruti', '800', '12', '8', 'hired', '121', 15, 11, 'pune', 'car', 4, 'active', 500, 12, 'uhh', '2015-08-10 00:00:00', '2015-08-12 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_info`
--

CREATE TABLE IF NOT EXISTS `vehicle_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rtono` varchar(500) DEFAULT NULL,
  `fname` varchar(1000) DEFAULT NULL,
  `lname` varchar(1000) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `suburb` varchar(1000) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `permit` varchar(255) DEFAULT NULL,
  `vehiclename` varchar(255) DEFAULT NULL,
  `model` varchar(500) DEFAULT NULL,
  `taxi` varchar(1000) NOT NULL,
  `vehicletype` varchar(500) DEFAULT NULL,
  `seater` int(11) DEFAULT NULL,
  `makeyear` int(11) DEFAULT NULL,
  `city1` varchar(500) DEFAULT NULL,
  `city2` varchar(500) DEFAULT NULL,
  `pid` int(20) DEFAULT NULL,
  `vehiclepic` varchar(1000) DEFAULT NULL,
  `cadd` text NOT NULL,
  `cadd1` varchar(100) NOT NULL,
  `trollylength` int(10) NOT NULL,
  `capacity` int(10) NOT NULL,
  `wheels` int(10) NOT NULL,
  `route` varchar(100) NOT NULL,
  `status` varchar(500) NOT NULL,
  `contact` varchar(1000) NOT NULL,
  `city_id` varchar(1000) NOT NULL,
  `state_id` varchar(1000) NOT NULL,
  `valance` int(10) NOT NULL,
  `search_count` int(10) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `date` datetime NOT NULL,
  `v_type` varchar(1000) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `return_from` varchar(5000) NOT NULL,
  `return_date` datetime NOT NULL,
  `last_search_date` datetime NOT NULL,
  `localunion` varchar(500) NOT NULL,
  `minvalue` varchar(500) NOT NULL,
  `extravalue` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `state_id` (`state_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2381 ;

--
-- Dumping data for table `vehicle_info`
--

INSERT INTO `vehicle_info` (`id`, `rtono`, `fname`, `lname`, `state`, `suburb`, `pincode`, `permit`, `vehiclename`, `model`, `taxi`, `vehicletype`, `seater`, `makeyear`, `city1`, `city2`, `pid`, `vehiclepic`, `cadd`, `cadd1`, `trollylength`, `capacity`, `wheels`, `route`, `status`, `contact`, `city_id`, `state_id`, `valance`, `search_count`, `latitude`, `longitude`, `date`, `v_type`, `description`, `return_from`, `return_date`, `last_search_date`, `localunion`, `minvalue`, `extravalue`) VALUES
(1, 'mh03', 'raj', 'thakrey', 'maharashtra', 'mumbai', 400098, 'marruti', 'maruti', '800', '', 'car', 4, 2008, 'mumabi', 'pune', 1, 'http://dial2hire.com/images/tourist_images/Toyota/innova_small.jpg', '', '', 0, 0, 4, 'mumbai-pune', 'active', '98989898', '', '', 0, 0, 0, 0, '0000-00-00 00:00:00', 'car', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(2, 'mh03', 'hamish', 'dsouza', 'maharashtra', 'mumbai', 400098, 'vv', 'toyota innova', 'innova', 'vbh', 'car', 4, 2008, 'mumbai', 'goa', 2, 'http://dial2hire.com/images/tourist_images/Tata/Tata%20Indigo%20CS_150%20X%20112.jpg', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '0000-00-00 00:00:00', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(3, 'mh03', 'alex', 'ferguson', 'maharashtra', 'mumbai', 400654, 'nbn', 'rollsroyes', 'ghost', '  nb b ', 'car', 4, 2008, 'mumbai', 'goa', 3, 'http://dial2hire.com/images/tourist_images/maruti/maruti%20swift%20dzire_150%20X%20112.jpg', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '0000-00-00 00:00:00', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(4, 'mh03', 'shahruk', 'khan', 'maharashtra', 'mumbai', 400654, 'nbn', 'chervolate', 'tavera', '  nb b ', 'car', 4, 2008, 'mumbai', 'goa', 4, 'http://dial2hire.com/images/tourist_images/maruti/maruti%20swift%20dzire_150%20X%20112.jpg', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '0000-00-00 00:00:00', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_tempo`
--

CREATE TABLE IF NOT EXISTS `vehicle_tempo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rtono` varchar(500) DEFAULT NULL,
  `cadd` varchar(1000) DEFAULT NULL,
  `cadd1` varchar(1000) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `suburb` varchar(255) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `permit` varchar(255) DEFAULT NULL,
  `vehiclename` varchar(255) DEFAULT NULL,
  `model` varchar(500) DEFAULT NULL,
  `trollylength` int(11) DEFAULT NULL,
  `vehicletype` varchar(500) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `makeyear` int(11) DEFAULT NULL,
  `city2` varchar(500) DEFAULT NULL,
  `pid` int(20) DEFAULT NULL,
  `vehiclepic` varchar(1000) DEFAULT NULL,
  `wheels` int(100) DEFAULT NULL,
  `status` varchar(500) NOT NULL,
  `contact` varchar(1000) NOT NULL,
  `city_id` varchar(1000) NOT NULL,
  `state_id` varchar(1000) NOT NULL,
  `valance` int(10) NOT NULL,
  `search_count` int(10) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `route` varchar(1000) NOT NULL,
  `date` datetime NOT NULL,
  `v_type` enum('tourist','tempo') NOT NULL DEFAULT 'tempo',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `state_id` (`state_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2086 ;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_tempo_make`
--

CREATE TABLE IF NOT EXISTS `vehicle_tempo_make` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=61 ;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_tempo_model`
--

CREATE TABLE IF NOT EXISTS `vehicle_tempo_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehiclemodel_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_makeID` int(11) DEFAULT NULL,
  `image` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=180 ;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_tourist_make`
--

CREATE TABLE IF NOT EXISTS `vehicle_tourist_make` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_tourist_model`
--

CREATE TABLE IF NOT EXISTS `vehicle_tourist_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehiclemodel_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_makeID` int(11) DEFAULT NULL,
  `image` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=294 ;

-- --------------------------------------------------------

--
-- Table structure for table `ybtaxi`
--

CREATE TABLE IF NOT EXISTS `ybtaxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `type` varchar(5000) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `suburb` varchar(500) NOT NULL,
  `pincode` varchar(500) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1544 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
