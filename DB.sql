
-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 19, 2014 at 06:43 PM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a1647698_infm603`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_table`
--

CREATE TABLE `booking_table` (
  `bt_no` bigint(255) NOT NULL AUTO_INCREMENT,
  `uid` varchar(20) NOT NULL,
  `EID` varchar(20) NOT NULL,
  `slot_id` int(20) NOT NULL,
  `bt_date` varchar(20) NOT NULL,
  `d_date` varchar(20) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`bt_no`,`EID`),
  UNIQUE KEY `booking_no` (`bt_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2087721957 ;

--
-- Dumping data for table `booking_table`
--

INSERT INTO `booking_table` VALUES(4477, 'omkark', 'MCKSENNHEISER1', 1, '8/12/2013', '10/12/2013', 3);
INSERT INTO `booking_table` VALUES(4672, 'kshetty1', 'GHATI', 3, '8/12/2013', '12/12/2013', 3);
INSERT INTO `booking_table` VALUES(6595, 'omkark', 'MCKSONY1', 1, '8/12/2013', '10/12/2013', 1);
INSERT INTO `booking_table` VALUES(14687, 'omkark', 'GHATI', 1, '12/12/2013', '12/12/2013', 3);
INSERT INTO `booking_table` VALUES(19412, 'omkark', 'MCKGHATIMAAL', 1, '8/12/2013', '11/12/2013', 3);
INSERT INTO `booking_table` VALUES(20850, 'omkark', 'MCKDELL5', 1, '8/12/2013', '11/12/2013', 1);
INSERT INTO `booking_table` VALUES(31413, 'omkark', 'MCKKINDLE2', 3, '11/12/2013', '16/12/2013', 2);
INSERT INTO `booking_table` VALUES(32367, 'omkark', 'MCKGHATIMAAL', 1, '8/12/2013', '12/12/2013', 3);
INSERT INTO `booking_table` VALUES(67453076, 'omkark', 'MCKAPPLE2', 2, '12/12/2013', '12/12/2013', 1);
INSERT INTO `booking_table` VALUES(1422608448, 'kshetty1', 'MCKKINDLE3', 3, '12/12/2013', '12/12/2013', 2);
INSERT INTO `booking_table` VALUES(1934565956, 'omkark', 'MCKAPPLE15', 2, '12/12/2013', '13/12/2013', 1);
INSERT INTO `booking_table` VALUES(756523355, 'omkark', 'MCKSONY10', 2, '12/12/2013', '13/12/2013', 1);
INSERT INTO `booking_table` VALUES(1370857281, 'neeti', 'MCKAPPLE30', 1, '12/12/2013', '17/12/2013', 1);
INSERT INTO `booking_table` VALUES(554146128, 'neeti', 'MCKBOSE6', 3, '12/12/2013', '12/12/2013', 3);
INSERT INTO `booking_table` VALUES(29239025, 'omkark', 'MCKBEATS6', 3, '12/12/2013', '17/12/2013', 3);
INSERT INTO `booking_table` VALUES(2087721956, 'omkark', 'MCKGALAXYNOTE1', 1, '12/12/2013', '18/12/2013', 2);
INSERT INTO `booking_table` VALUES(1331161585, 'neeti', 'MCKAPPLE1', 1, '12/12/2013', '18/12/2013', 1);
INSERT INTO `booking_table` VALUES(1641638855, 'omkark', 'MCKDELL6', 1, '13/12/2013', '13/12/2013', 1);
INSERT INTO `booking_table` VALUES(1432674573, 'neeti', 'MCKAPPLE1', 1, '13/12/2013', '13/12/2013', 1);
INSERT INTO `booking_table` VALUES(1161707625, 'neeti', 'MCKGALAXYNOTE1', 1, '20/12/2013', '25/12/2013', 2);
INSERT INTO `booking_table` VALUES(884691375, 'omkark', 'MCKKINDLE6', 2, '22/12/2013', '26/12/2013', 2);
INSERT INTO `booking_table` VALUES(651863993, 'neeti', 'MCKSENNHEISER3', 1, '25/12/2013', '30/12/2013', 3);
INSERT INTO `booking_table` VALUES(1453580281, 'omkark', 'MCKAPPLE11', 0, '29/3/2014', '', 1);
INSERT INTO `booking_table` VALUES(1915227495, 'omkark', 'MCKBEATS4', 1, '29/3/2014', '31/3/2014', 3);
INSERT INTO `booking_table` VALUES(489958506, 'omkark', 'MCKSENNHEISER6', 1, '19/6/2014', '20/6/2014', 3);

-- --------------------------------------------------------

--
-- Table structure for table `headphone`
--

CREATE TABLE `headphone` (
  `headphone_name` varchar(20) NOT NULL,
  `EID` varchar(20) NOT NULL,
  `specs` text NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`headphone_name`,`EID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `headphone`
--

INSERT INTO `headphone` VALUES('BEATS1', 'MCKBEATS1', 'BEATS AUDIO -\nThis headphones look and sounds amazing, sturdy built and extremely portable and convenient to store. The quality and craftsmanship put in to this product makes it a great all around headphones for every purpose.', 3);
INSERT INTO `headphone` VALUES('BEATS2', 'MCKBEATS2', 'BEATS AUDIO -\nThis headphones look and sounds amazing, sturdy built and extremely portable and convenient to store. The quality and craftsmanship put in to this product makes it a great all around headphones for every purpose.', 3);
INSERT INTO `headphone` VALUES('BEATS3', 'MCKBEATS3', 'BEATS AUDIO -\nThis headphones look and sounds amazing, sturdy built and extremely portable and convenient to store. The quality and craftsmanship put in to this product makes it a great all around headphones for every purpose.', 3);
INSERT INTO `headphone` VALUES('BEATS4', 'MCKBEATS4', 'BEATS AUDIO -\nThis headphones look and sounds amazing, sturdy built and extremely portable and convenient to store. The quality and craftsmanship put in to this product makes it a great all around headphones for every purpose.', 3);
INSERT INTO `headphone` VALUES('BEATS5', 'MCKBEATS5', 'BEATS AUDIO -\nThis headphones look and sounds amazing, sturdy built and extremely portable and convenient to store. The quality and craftsmanship put in to this product makes it a great all around headphones for every purpose.', 3);
INSERT INTO `headphone` VALUES('BEATS6', 'MCKBEATS6', 'BEATS AUDIO -\nThis headphones look and sounds amazing, sturdy built and extremely portable and convenient to store. The quality and craftsmanship put in to this product makes it a great all around headphones for every purpose.', 3);
INSERT INTO `headphone` VALUES('BOSE1', 'MCKBOSE1', 'BOSE STUDIO -\nThe new BOSE QC20 are Noise Cancelling In Ear Headphones, offering great comfort, noise cancellation and sound quality. You can control the level of noise cancellation, for situations when you need to be more aware.', 3);
INSERT INTO `headphone` VALUES('BOSE2', 'MCKBOSE2', 'BOSE STUDIO -\nThe new BOSE QC20 are Noise Cancelling In Ear Headphones, offering great comfort, noise cancellation and sound quality. You can control the level of noise cancellation, for situations when you need to be more aware.', 3);
INSERT INTO `headphone` VALUES('BOSE3', 'MCKBOSE3', 'BOSE STUDIO -\nThe new BOSE QC20 are Noise Cancelling In Ear Headphones, offering great comfort, noise cancellation and sound quality. You can control the level of noise cancellation, for situations when you need to be more aware.', 3);
INSERT INTO `headphone` VALUES('BOSE4', 'MCKBOSE4', 'BOSE STUDIO -\nThe new BOSE QC20 are Noise Cancelling In Ear Headphones, offering great comfort, noise cancellation and sound quality. You can control the level of noise cancellation, for situations when you need to be more aware.', 3);
INSERT INTO `headphone` VALUES('BOSE5', 'MCKBOSE5', 'BOSE STUDIO -\nThe new BOSE QC20 are Noise Cancelling In Ear Headphones, offering great comfort, noise cancellation and sound quality. You can control the level of noise cancellation, for situations when you need to be more aware.', 3);
INSERT INTO `headphone` VALUES('BOSE6', 'MCKBOSE6', 'BOSE STUDIO -\nThe new BOSE QC20 are Noise Cancelling In Ear Headphones, offering great comfort, noise cancellation and sound quality. You can control the level of noise cancellation, for situations when you need to be more aware.', 3);
INSERT INTO `headphone` VALUES('KLIPSCH1', 'MCKKLIPSCH1', 'KLIPSCH -\n\nAmazing earphones. Beautiful, clear, flowing sound. Amazing, deep bass. Awesome noise isolation,fits perfectly in any ear for hours. you will be thrilled to have this fantastic product.\n', 3);
INSERT INTO `headphone` VALUES('KLIPSCH2', 'MCKKLIPSCH2', 'KLIPSCH -\n\nAmazing earphones. Beautiful, clear, flowing sound. Amazing, deep bass. Awesome noise isolation,fits perfectly in any ear for hours. you will be thrilled to have this fantastic product.', 3);
INSERT INTO `headphone` VALUES('KLIPSCH3', 'MCKKLIPSCH3', 'KLIPSCH -\n\nAmazing earphones. Beautiful, clear, flowing sound. Amazing, deep bass. Awesome noise isolation,fits perfectly in any ear for hours. you will be thrilled to have this fantastic product.\n', 3);
INSERT INTO `headphone` VALUES('KLIPSCH4', 'MCKKLIPSCH4', 'KLIPSCH -\n\nAmazing earphones. Beautiful, clear, flowing sound. Amazing, deep bass. Awesome noise isolation,fits perfectly in any ear for hours. you will be thrilled to have this fantastic product.', 3);
INSERT INTO `headphone` VALUES('KLIPSCH5', 'MCKKLIPSCH5', 'KLIPSCH -\n\nAmazing earphones. Beautiful, clear, flowing sound. Amazing, deep bass. Awesome noise isolation,fits perfectly in any ear for hours. you will be thrilled to have this fantastic product.\n', 3);
INSERT INTO `headphone` VALUES('KLIPSCH6', 'MCKKLIPSCH6', 'KLIPSCH -\n\nAmazing earphones. Beautiful, clear, flowing sound. Amazing, deep bass. Awesome noise isolation,fits perfectly in any ear for hours. you will be thrilled to have this fantastic product.', 3);
INSERT INTO `headphone` VALUES('LG1', 'MCKLG1', 'LG BLUETOOTH -\nTop of the line headset, great call clarity, great comfort, easy to set up and easy to reach and operate,long battery life, a perfect choice for any smartphone user on the go', 3);
INSERT INTO `headphone` VALUES('LG2', 'MCKLG2', 'LG BLUETOOTH -\nTop of the line headset, great call clarity, great comfort, easy to set up and easy to reach and operate,long battery life, a perfect choice for any smartphone user on the go', 3);
INSERT INTO `headphone` VALUES('LG3', 'MCKLG3', 'LG BLUETOOTH -\nTop of the line headset, great call clarity, great comfort, easy to set up and easy to reach and operate,long battery life, a perfect choice for any smartphone user on the go', 3);
INSERT INTO `headphone` VALUES('LG4', 'MCKLG4', 'LG BLUETOOTH -\nTop of the line headset, great call clarity, great comfort, easy to set up and easy to reach and operate,long battery life, a perfect choice for any smartphone user on the go', 3);
INSERT INTO `headphone` VALUES('LG5', 'MCKLG5', 'LG BLUETOOTH -\nTop of the line headset, great call clarity, great comfort, easy to set up and easy to reach and operate,long battery life, a perfect choice for any smartphone user on the go', 3);
INSERT INTO `headphone` VALUES('LG6', 'MCKLG6', 'LG BLUETOOTH -\nTop of the line headset, great call clarity, great comfort, easy to set up and easy to reach and operate,long battery life, a perfect choice for any smartphone user on the go', 3);
INSERT INTO `headphone` VALUES('SENNHEISER1', 'MCKSENNHEISER1', 'SENNHEISER WIRELESS -\nGreat sound, long lasting charge, long range and comfort. All this qualities combined with a competitive price makes the Sennheiser RS120 one of the best wireless headphones available', 3);
INSERT INTO `headphone` VALUES('SENNHEISER2', 'MCKSENNHEISER2', 'SENNHEISER WIRELESS -\nGreat sound, long lasting charge, long range and comfort. All this qualities combined with a competitive price makes the Sennheiser RS120 one of the best wireless headphones available', 3);
INSERT INTO `headphone` VALUES('SENNHEISER3', 'MCKSENNHEISER3', 'SENNHEISER WIRELESS -\nGreat sound, long lasting charge, long range and comfort. All this qualities combined with a competitive price makes the Sennheiser RS120 one of the best wireless headphones available', 3);
INSERT INTO `headphone` VALUES('SENNHEISER4', 'MCKSENNHEISER4', 'SENNHEISER WIRELESS -\nGreat sound, long lasting charge, long range and comfort. All this qualities combined with a competitive price makes the Sennheiser RS120 one of the best wireless headphones available', 3);
INSERT INTO `headphone` VALUES('SENNHEISER5', 'MCKSENNHEISER5', 'SENNHEISER WIRELESS -\nGreat sound, long lasting charge, long range and comfort. All this qualities combined with a competitive price makes the Sennheiser RS120 one of the best wireless headphones available', 3);
INSERT INTO `headphone` VALUES('SENNHEISER6', 'MCKSENNHEISER6', 'SENNHEISER WIRELESS -\nGreat sound, long lasting charge, long range and comfort. All this qualities combined with a competitive price makes the Sennheiser RS120 one of the best wireless headphones available', 3);

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `laptop_name` varchar(20) NOT NULL,
  `EID` varchar(20) NOT NULL,
  `specs` text NOT NULL,
  `item_id` int(10) NOT NULL,
  PRIMARY KEY (`laptop_name`,`EID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` VALUES('APPLE1', 'MCKAPPLE1', '-MACBOOK AIR\n-1.3GHz dual-core Intel Core i5 (Turbo Boost up to 2.6GHz)\n-4GB of 1600MHz LPDDR3 onboard memory\n-128GB flash storage\n-720p FaceTime HD camera\n-Bluetooth 4.0 wireless technology', 1);
INSERT INTO `laptop` VALUES('APPLE10', 'MCKAPPLE10', '-MACBOOK AIR\n-1.3GHz dual-core Intel Core i5 (Turbo Boost up to 2.6GHz)\n-4GB of 1600MHz LPDDR3 onboard memory\n-128GB flash storage\n-720p FaceTime HD camera\n-Bluetooth 4.0 wireless technology\n', 1);
INSERT INTO `laptop` VALUES('APPLE11', 'MCKAPPLE11', '-MACBOOK AIR\n-1.3GHz dual-core Intel Core i5 (Turbo Boost up to 2.6GHz)\n-4GB of 1600MHz LPDDR3 onboard memory\n-128GB flash storage\n-720p FaceTime HD camera\n-Bluetooth 4.0 wireless technology', 1);
INSERT INTO `laptop` VALUES('APPLE12', 'MCKAPPLE12', '-MACBOOK PRO\n-2.5GHz dual-core Intel Core i5 processor (Turbo Boost up to 3.1GHz)\n-4GB of 1600MHz DDR3 memory\n-500GB 5400-rpm hard drive\n-720p FaceTime HD camera\n-Bluetooth 4.0 wireless technology', 1);
INSERT INTO `laptop` VALUES('APPLE13', 'MCKAPPLE13', '-MACBOOK AIR\n-1.3GHz dual-core Intel Core i5 (Turbo Boost up to 2.6GHz)\n-4GB of 1600MHz LPDDR3 onboard memory\n-128GB flash storage\n-720p FaceTime HD camera\n-Bluetooth 4.0 wireless technology', 1);
INSERT INTO `laptop` VALUES('APPLE14', 'MCKAPPLE14', '-MACBOOK PRO\n-2.5GHz dual-core Intel Core i5 processor (Turbo Boost up to 3.1GHz)\n-4GB of 1600MHz DDR3 memory\n-500GB 5400-rpm hard drive\n-720p FaceTime HD camera\n-Bluetooth 4.0 wireless technology', 1);
INSERT INTO `laptop` VALUES('APPLE15', 'MCKAPPLE15', '-MACBOOK AIR\n-1.3GHz dual-core Intel Core i5 (Turbo Boost up to 2.6GHz)\n-4GB of 1600MHz LPDDR3 onboard memory\n-128GB flash storage\n-720p FaceTime HD camera\n-Bluetooth 4.0 wireless technology\n', 1);
INSERT INTO `laptop` VALUES('APPLE2', 'MCKAPPLE2', '-MACBOOK PRO\n-2.5GHz dual-core Intel Core i5 processor (Turbo Boost up to 3.1GHz)\n-4GB of 1600MHz DDR3 memory\n-500GB 5400-rpm hard drive\n-720p FaceTime HD camera\n-Bluetooth 4.0 wireless technology', 1);
INSERT INTO `laptop` VALUES('APPLE3', 'MCKAPPLE3', '-MACBOOK AIR\n-1.3GHz dual-core Intel Core i5 (Turbo Boost up to 2.6GHz)\n-4GB of 1600MHz LPDDR3 onboard memory\n-128GB flash storage\n-720p FaceTime HD camera\n-Bluetooth 4.0 wireless technology', 1);
INSERT INTO `laptop` VALUES('APPLE4', 'MCKAPPLE4', '-MACBOOK PRO\n-2.5GHz dual-core Intel Core i5 processor (Turbo Boost up to 3.1GHz)\n-4GB of 1600MHz DDR3 memory\n-500GB 5400-rpm hard drive\n-720p FaceTime HD camera\n-Bluetooth 4.0 wireless technology', 1);
INSERT INTO `laptop` VALUES('APPLE5', 'MCKAPPLE5', '-MACBOOK AIR\n-1.3GHz dual-core Intel Core i5 (Turbo Boost up to 2.6GHz)\n-4GB of 1600MHz LPDDR3 onboard memory\n-128GB flash storage\n-720p FaceTime HD camera\n-Bluetooth 4.0 wireless technology\n', 1);
INSERT INTO `laptop` VALUES('APPLE6', 'MCKAPPLE6', '-MACBOOK AIR\n-1.3GHz dual-core Intel Core i5 (Turbo Boost up to 2.6GHz)\n-4GB of 1600MHz LPDDR3 onboard memory\n-128GB flash storage\n-720p FaceTime HD camera\n-Bluetooth 4.0 wireless technology', 1);
INSERT INTO `laptop` VALUES('APPLE7', 'MCKAPPLE7', '-MACBOOK PRO\n-2.5GHz dual-core Intel Core i5 processor (Turbo Boost up to 3.1GHz)\n-4GB of 1600MHz DDR3 memory\n-500GB 5400-rpm hard drive\n-720p FaceTime HD camera\n-Bluetooth 4.0 wireless technology', 1);
INSERT INTO `laptop` VALUES('APPLE8', 'MCKAPPLE8', '-MACBOOK AIR\n-1.3GHz dual-core Intel Core i5 (Turbo Boost up to 2.6GHz)\n-4GB of 1600MHz LPDDR3 onboard memory\n-128GB flash storage\n-720p FaceTime HD camera\n-Bluetooth 4.0 wireless technology', 1);
INSERT INTO `laptop` VALUES('APPLE9', 'MCKAPPLE9', '-MACBOOK PRO\n-2.5GHz dual-core Intel Core i5 processor (Turbo Boost up to 3.1GHz)\n-4GB of 1600MHz DDR3 memory\n-500GB 5400-rpm hard drive\n-720p FaceTime HD camera\n-Bluetooth 4.0 wireless technology', 1);
INSERT INTO `laptop` VALUES('DELL1', 'MCKDELL1', '-INSPIRON 15R\n-CORE i7 PROCESSOR\n-8 GB RAM\n-1 TB HDD\n-1 MP WEBCAM\n-WINDOWS 8 OS\n-INTEL HD GRAPHIC CARD', 1);
INSERT INTO `laptop` VALUES('DELL10', 'MCKDELL10', '-ALIENWARE 17R\n-CORE i7 3GN PROCESSOR,3 GHZ\n-8 GB RAM\n-2 TB HDD\n-2 MP WEBCAM\n-WINDOWS 8 OS\n-NVIDIA GRAPHIC CARD', 1);
INSERT INTO `laptop` VALUES('DELL11', 'MCKDELL11', '-INSPIRON 15R\n-CORE i7 PROCESSOR\n-8 GB RAM\n-1 TB HDD\n-1 MP WEBCAM\n-WINDOWS 8 OS\n-INTEL HD GRAPHIC CARD', 1);
INSERT INTO `laptop` VALUES('DELL12', 'MCKDELL12', '-INSPIRON 15R\n-CORE i5 PROCESSOR\n-6 GB RAM\n-750 GB HDD\n-1 MP WEBCAM\n-WINDOWS 8 OS\n-INTEL HD GRAPHIC CARD', 1);
INSERT INTO `laptop` VALUES('DELL13', 'MCKDELL13', '-INSPIRON 15R\n-CORE i7 PROCESSOR\n-8 GB RAM\n-1 TB HDD\n-1 MP WEBCAM\n-WINDOWS 8 OS\n-INTEL HD GRAPHIC CARD', 1);
INSERT INTO `laptop` VALUES('DELL14', 'MCKDELL14', '-INSPIRON 15R\n-CORE i5 PROCESSOR\n-6 GB RAM\n-750 GB HDD\n-1 MP WEBCAM\n-WINDOWS 8 OS\n-INTEL HD GRAPHIC CARD', 1);
INSERT INTO `laptop` VALUES('DELL15', 'MCKDELL15', '-ALIENWARE 17R\n-CORE i7 3GN PROCESSOR,3 GHZ\n-8 GB RAM\n-2 TB HDD\n-2 MP WEBCAM\n-WINDOWS 8 OS\n-NVIDIA GRAPHIC CARD', 1);
INSERT INTO `laptop` VALUES('DELL2', 'MCKDELL2', '-INSPIRON 15R\n-CORE i5 PROCESSOR\n-6 GB RAM\n-750 GB HDD\n-1 MP WEBCAM\n-WINDOWS 8 OS\n-INTEL HD GRAPHIC CARD', 1);
INSERT INTO `laptop` VALUES('DELL3', 'MCKDELL3', '-INSPIRON 15R\n-CORE i7 PROCESSOR\n-8 GB RAM\n-1 TB HDD\n-1 MP WEBCAM\n-WINDOWS 8 OS\n-INTEL HD GRAPHIC CARD', 1);
INSERT INTO `laptop` VALUES('DELL4', 'MCKDELL4', '-INSPIRON 15R\n-CORE i5 PROCESSOR\n-6 GB RAM\n-750 GB HDD\n-1 MP WEBCAM\n-WINDOWS 8 OS\n-INTEL HD GRAPHIC CARD', 1);
INSERT INTO `laptop` VALUES('DELL5', 'MCKDELL5', '-ALIENWARE 17R\n-CORE i7 3GN PROCESSOR,3 GHZ\n-8 GB RAM\n-2 TB HDD\n-2 MP WEBCAM\n-WINDOWS 8 OS\n-NVIDIA GRAPHIC CARD', 1);
INSERT INTO `laptop` VALUES('DELL6', 'MCKDELL6', '-INSPIRON 15R\n-CORE i7 PROCESSOR\n-8 GB RAM\n-1 TB HDD\n-1 MP WEBCAM\n-WINDOWS 8 OS\n-INTEL HD GRAPHIC CARD', 1);
INSERT INTO `laptop` VALUES('DELL7', 'MCKDELL7', '-INSPIRON 15R\n-CORE i5 PROCESSOR\n-6 GB RAM\n-750 GB HDD\n-1 MP WEBCAM\n-WINDOWS 8 OS\n-INTEL HD GRAPHIC CARD', 1);
INSERT INTO `laptop` VALUES('DELL8', 'MCKDELL8', '-INSPIRON 15R\n-CORE i7 PROCESSOR\n-8 GB RAM\n-1 TB HDD\n-1 MP WEBCAM\n-WINDOWS 8 OS\n-INTEL HD GRAPHIC CARD', 1);
INSERT INTO `laptop` VALUES('DELL9', 'MCKDELL9', '-INSPIRON 15R\n-CORE i5 PROCESSOR\n-6 GB RAM\n-750 GB HDD\n-1 MP WEBCAM\n-WINDOWS 8 OS\n-INTEL HD GRAPHIC CARD', 1);
INSERT INTO `laptop` VALUES('SONY1', 'MCKSONY1', 'SONY VAIO CORE I5N Windows 8 64-bit \n Full HD display \n 8GB memory,500 GB hard drive \n Bluetooth,Touch Screen ', 1);
INSERT INTO `laptop` VALUES('SONY10', 'MCKSONY10', 'SONY VAIO CORE I5N Windows 8 64-bit \n Full HD display \n 8GB memory,500 GB hard drive \n Bluetooth,Touch Screen ', 1);
INSERT INTO `laptop` VALUES('SONY2', 'MCKSONY2', 'SONY VAIO CORE I5N Windows 8 64-bit \n Full HD display \n 8GB memory,500 GB hard drive \n Bluetooth,Touch Screen ', 1);
INSERT INTO `laptop` VALUES('SONY3', 'MCKSONY3', 'SONY VAIO CORE I5N Windows 8 64-bit \n Full HD display \n 8GB memory,500 GB hard drive \n Bluetooth,Touch Screen ', 1);
INSERT INTO `laptop` VALUES('SONY4', 'MCKSONY4', 'SONY VAIO CORE I5N Windows 8 64-bit \n Full HD display \n 8GB memory,500 GB hard drive \n Bluetooth,Touch Screen ', 1);
INSERT INTO `laptop` VALUES('SONY5', 'MCKSONY5', 'SONY VAIO CORE I5N Windows 8 64-bit \n Full HD display \n 8GB memory,500 GB hard drive \n Bluetooth,Touch Screen ', 1);
INSERT INTO `laptop` VALUES('SONY6', 'MCKSONY6', 'SONY VAIO CORE I5N Windows 8 64-bit \n Full HD display \n 8GB memory,500 GB hard drive \n Bluetooth,Touch Screen  ', 1);
INSERT INTO `laptop` VALUES('SONY7', 'MCKSONY7', 'SONY VAIO CORE I5N Windows 8 64-bit \n Full HD display \n 8GB memory,500 GB hard drive \n Bluetooth,Touch Screen ', 1);
INSERT INTO `laptop` VALUES('SONY8', 'MCKSONY8', 'SONY VAIO CORE I5N Windows 8 64-bit \n Full HD display \n 8GB memory,500 GB hard drive \n Bluetooth,Touch Screen ', 1);
INSERT INTO `laptop` VALUES('SONY9', 'MCKSONY9', 'SONY VAIO CORE I5N Windows 8 64-bit \n Full HD display \n 8GB memory,500 GB hard drive \n Bluetooth,Touch Screen ', 1);
INSERT INTO `laptop` VALUES('APPLE30', 'MCKAPPLE30', '-----', 1);
INSERT INTO `laptop` VALUES('sony30', 'MCKSONY30', 'Dual core i7', 1);
INSERT INTO `laptop` VALUES('sony', 'MCKSONY100', 'specs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tablet`
--

CREATE TABLE `tablet` (
  `tablet_name` varchar(20) NOT NULL,
  `EID` varchar(20) NOT NULL,
  `specs` text NOT NULL,
  `item_id` int(10) NOT NULL,
  PRIMARY KEY (`tablet_name`,`EID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tablet`
--

INSERT INTO `tablet` VALUES('GALAXYNOTE1', 'MCKGALAXYNOTE1', '-Samsung Galaxy Note 10.1 (2014 Edition)\n-size-243mm\n-weight-540g\n-build-faux leather\n-display-10.1', 2);
INSERT INTO `tablet` VALUES('GALAXYNOTE2', 'MCKGALAXYNOTE2', '-Samsung Galaxy Note 10.1 (2014 Edition)\n-size-243mm\n-weight-540g\n-build-faux leather\n-display-10.1', 2);
INSERT INTO `tablet` VALUES('GALAXYNOTE3', 'MCKGALAXYNOTE3', '-Samsung Galaxy Note 10.1 (2014 Edition)\n-size-243mm\n-weight-540g\n-build-faux leather\n-display-10.1', 2);
INSERT INTO `tablet` VALUES('GALAXYNOTE4', 'MCKGALAXYNOTE4', '-Samsung Galaxy Note 10.1 (2014 Edition)\n-size-243mm\n-weight-540g\n-build-faux leather\n-display-10.1', 2);
INSERT INTO `tablet` VALUES('GALAXYNOTE5', 'MCKGALAXYNOTE5', '-Samsung Galaxy Note 10.1 (2014 Edition)\n-size-243mm\n-weight-540g\n-build-faux leather\n-display-10.1', 2);
INSERT INTO `tablet` VALUES('GALAXYNOTE6', 'MCKGALAXYNOTE6', '-Samsung Galaxy Note 10.1 (2014 Edition)\n-size-243mm\n-weight-540g\n-build-faux leather\n-display-10.1', 2);
INSERT INTO `tablet` VALUES('GALAXYTAB1', 'MCKGALAXTAB1', '-Samsung Galaxy Tab 3 10.1\n-size-243mm\n-weight-510g\n-build-plastic\n-display-10.1\n-stylus-no\n', 2);
INSERT INTO `tablet` VALUES('GALAXYTAB2', 'MCKGALAXYTAB2', '-Samsung Galaxy Tab 3 10.1\n-size-243mm\n-weight-510g\n-build-plastic\n-display-10.1\n-stylus-no\n', 2);
INSERT INTO `tablet` VALUES('GALAXYTAB3', 'MCKGALAXTAB3', '-Samsung Galaxy Tab 3 10.1\n-size-243mm\n-weight-510g\n-build-plastic\n-display-10.1\n-stylus-no\n', 2);
INSERT INTO `tablet` VALUES('GALAXYTAB4', 'MCKGALAXYTAB4', '-Samsung Galaxy Tab 3 10.1\n-size-243mm\n-weight-510g\n-build-plastic\n-display-10.1\n-stylus-no\n', 2);
INSERT INTO `tablet` VALUES('GALAXYTAB5', 'MCKGALAXYTAB5', '-Samsung Galaxy Tab 3 10.1\n-size-243mm\n-weight-510g\n-build-plastic\n-display-10.1\n-stylus-no\n', 2);
INSERT INTO `tablet` VALUES('GALAXYTAB6', 'MCKGALAXYTAB6', '-Samsung Galaxy Tab 3 10.1\n-size-243mm\n-weight-510g\n-build-plastic\n-display-10.1\n-stylus-no\n', 2);
INSERT INTO `tablet` VALUES('IPAD1', 'MCKIPAD1', '-Apple iPad Air\n-size-240mm\n-weight-469g\n-build-aluminium\n-display-9.7\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('IPAD2', 'MCKIPAD2', '-Apple iPad Air\n-size-240mm\n-weight-469g\n-build-aluminium\n-display-9.7\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('IPAD3', 'MCKIPAD3', '-Apple iPad Air\n-size-240mm\n-weight-469g\n-build-aluminium\n-display-9.7\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('IPAD4', 'MCKIPAD4', '-Apple iPad Air\n-size-240mm\n-weight-469g\n-build-aluminium\n-display-9.7\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('IPAD5', 'MCKIPAD5', '-Apple iPad Air\n-size-240mm\n-weight-469g\n-build-aluminium\n-display-9.7\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('IPAD6', 'MCKIPAD6', '-Apple iPad Air\n-size-240mm\n-weight-469g\n-build-aluminium\n-display-9.7\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('KINDLE1', 'MCKKINDLE1', '-Amazon Kindle Fire HDX 8.9\n-size-231mm\n-weight-374g\n-build-plastic\n-display-8.9\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('KINDLE2', 'MCKKINDLE2', '-Amazon Kindle Fire HDX 8.9\n-size-231mm\n-weight-374g\n-build-plastic\n-display-8.9\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('KINDLE3', 'MCKKINDLE3', '-Amazon Kindle Fire HDX 8.9\n-size-231mm\n-weight-374g\n-build-plastic\n-display-8.9\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('KINDLE4', 'MCKKINDLE4', '-Amazon Kindle Fire HDX 8.9\n-size-231mm\n-weight-374g\n-build-plastic\n-display-8.9\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('KINDLE5', 'MCKKINDLE5', '-Amazon Kindle Fire HDX 8.9\n-size-231mm\n-weight-374g\n-build-plastic\n-display-8.9\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('KINDLE6', 'MCKKINDLE6', '-Amazon Kindle Fire HDX 8.9\n-size-231mm\n-weight-374g\n-build-plastic\n-display-8.9\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('SURFACE1', 'MCKSURFACE1', '-Microsoft Surface 2\n-size-275mm\n-weight-676g\n-build-vaporMg(Magnesium Alloy)\n-display-10.6\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('SURFACE2', 'MCKSURFACE2', '-Microsoft Surface 2\n-size-275mm\n-weight-676g\n-build-vaporMg(Magnesium Alloy)\n-display-10.6\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('SURFACE3', 'MCKSURFACE3', '-Microsoft Surface 2\n-size-275mm\n-weight-676g\n-build-vaporMg(Magnesium Alloy)\n-display-10.6\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('SURFACE4', 'MCKSURFACE4', '-Microsoft Surface 2\n-size-275mm\n-weight-676g\n-build-vaporMg(Magnesium Alloy)\n-display-10.6\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('SURFACE5', 'MCKSURFACE5', '-Microsoft Surface 2\n-size-275mm\n-weight-676g\n-build-vaporMg(Magnesium Alloy)\n-display-10.6\n-stylus-no', 2);
INSERT INTO `tablet` VALUES('SURFACE6', 'MCKSURFACE6', '-Microsoft Surface 2\n-size-275mm\n-weight-676g\n-build-vaporMg(Magnesium Alloy)\n-display-10.6\n-stylus-no', 2);

-- --------------------------------------------------------

--
-- Table structure for table `temp_item`
--

CREATE TABLE `temp_item` (
  `indx` int(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `EID` varchar(20) NOT NULL,
  `spec` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_item`
--

INSERT INTO `temp_item` VALUES(1, 'BEATS1', 'MCKBEATS1', 'BEATS AUDIO -\nThis headphones look and sounds amazing, sturdy built and extremely portable and convenient to store. The quality and craftsmanship put in to this product makes it a great all around headphones for every purpose.');
INSERT INTO `temp_item` VALUES(2, 'BEATS2', 'MCKBEATS2', 'BEATS AUDIO -\nThis headphones look and sounds amazing, sturdy built and extremely portable and convenient to store. The quality and craftsmanship put in to this product makes it a great all around headphones for every purpose.');
INSERT INTO `temp_item` VALUES(3, 'BEATS3', 'MCKBEATS3', 'BEATS AUDIO -\nThis headphones look and sounds amazing, sturdy built and extremely portable and convenient to store. The quality and craftsmanship put in to this product makes it a great all around headphones for every purpose.');
INSERT INTO `temp_item` VALUES(4, 'BEATS4', 'MCKBEATS4', 'BEATS AUDIO -\nThis headphones look and sounds amazing, sturdy built and extremely portable and convenient to store. The quality and craftsmanship put in to this product makes it a great all around headphones for every purpose.');
INSERT INTO `temp_item` VALUES(5, 'BEATS5', 'MCKBEATS5', 'BEATS AUDIO -\nThis headphones look and sounds amazing, sturdy built and extremely portable and convenient to store. The quality and craftsmanship put in to this product makes it a great all around headphones for every purpose.');
INSERT INTO `temp_item` VALUES(6, 'BEATS6', 'MCKBEATS6', 'BEATS AUDIO -\nThis headphones look and sounds amazing, sturdy built and extremely portable and convenient to store. The quality and craftsmanship put in to this product makes it a great all around headphones for every purpose.');
INSERT INTO `temp_item` VALUES(7, 'BOSE1', 'MCKBOSE1', 'BOSE STUDIO -\nThe new BOSE QC20 are Noise Cancelling In Ear Headphones, offering great comfort, noise cancellation and sound quality. You can control the level of noise cancellation, for situations when you need to be more aware.');
INSERT INTO `temp_item` VALUES(8, 'BOSE2', 'MCKBOSE2', 'BOSE STUDIO -\nThe new BOSE QC20 are Noise Cancelling In Ear Headphones, offering great comfort, noise cancellation and sound quality. You can control the level of noise cancellation, for situations when you need to be more aware.');
INSERT INTO `temp_item` VALUES(9, 'BOSE3', 'MCKBOSE3', 'BOSE STUDIO -\nThe new BOSE QC20 are Noise Cancelling In Ear Headphones, offering great comfort, noise cancellation and sound quality. You can control the level of noise cancellation, for situations when you need to be more aware.');
INSERT INTO `temp_item` VALUES(10, 'BOSE4', 'MCKBOSE4', 'BOSE STUDIO -\nThe new BOSE QC20 are Noise Cancelling In Ear Headphones, offering great comfort, noise cancellation and sound quality. You can control the level of noise cancellation, for situations when you need to be more aware.');
INSERT INTO `temp_item` VALUES(11, 'BOSE5', 'MCKBOSE5', 'BOSE STUDIO -\nThe new BOSE QC20 are Noise Cancelling In Ear Headphones, offering great comfort, noise cancellation and sound quality. You can control the level of noise cancellation, for situations when you need to be more aware.');
INSERT INTO `temp_item` VALUES(12, 'BOSE6', 'MCKBOSE6', 'BOSE STUDIO -\nThe new BOSE QC20 are Noise Cancelling In Ear Headphones, offering great comfort, noise cancellation and sound quality. You can control the level of noise cancellation, for situations when you need to be more aware.');
INSERT INTO `temp_item` VALUES(13, 'KLIPSCH1', 'MCKKLIPSCH1', 'KLIPSCH -\n\nAmazing earphones. Beautiful, clear, flowing sound. Amazing, deep bass. Awesome noise isolation,fits perfectly in any ear for hours. you will be thrilled to have this fantastic product.\n');
INSERT INTO `temp_item` VALUES(14, 'KLIPSCH2', 'MCKKLIPSCH2', 'KLIPSCH -\n\nAmazing earphones. Beautiful, clear, flowing sound. Amazing, deep bass. Awesome noise isolation,fits perfectly in any ear for hours. you will be thrilled to have this fantastic product.');
INSERT INTO `temp_item` VALUES(15, 'KLIPSCH3', 'MCKKLIPSCH3', 'KLIPSCH -\n\nAmazing earphones. Beautiful, clear, flowing sound. Amazing, deep bass. Awesome noise isolation,fits perfectly in any ear for hours. you will be thrilled to have this fantastic product.\n');
INSERT INTO `temp_item` VALUES(16, 'KLIPSCH4', 'MCKKLIPSCH4', 'KLIPSCH -\n\nAmazing earphones. Beautiful, clear, flowing sound. Amazing, deep bass. Awesome noise isolation,fits perfectly in any ear for hours. you will be thrilled to have this fantastic product.');
INSERT INTO `temp_item` VALUES(17, 'KLIPSCH5', 'MCKKLIPSCH5', 'KLIPSCH -\n\nAmazing earphones. Beautiful, clear, flowing sound. Amazing, deep bass. Awesome noise isolation,fits perfectly in any ear for hours. you will be thrilled to have this fantastic product.\n');
INSERT INTO `temp_item` VALUES(18, 'KLIPSCH6', 'MCKKLIPSCH6', 'KLIPSCH -\n\nAmazing earphones. Beautiful, clear, flowing sound. Amazing, deep bass. Awesome noise isolation,fits perfectly in any ear for hours. you will be thrilled to have this fantastic product.');
INSERT INTO `temp_item` VALUES(19, 'LG1', 'MCKLG1', 'LG BLUETOOTH -\nTop of the line headset, great call clarity, great comfort, easy to set up and easy to reach and operate,long battery life, a perfect choice for any smartphone user on the go');
INSERT INTO `temp_item` VALUES(20, 'LG2', 'MCKLG2', 'LG BLUETOOTH -\nTop of the line headset, great call clarity, great comfort, easy to set up and easy to reach and operate,long battery life, a perfect choice for any smartphone user on the go');
INSERT INTO `temp_item` VALUES(21, 'LG3', 'MCKLG3', 'LG BLUETOOTH -\nTop of the line headset, great call clarity, great comfort, easy to set up and easy to reach and operate,long battery life, a perfect choice for any smartphone user on the go');
INSERT INTO `temp_item` VALUES(22, 'LG4', 'MCKLG4', 'LG BLUETOOTH -\nTop of the line headset, great call clarity, great comfort, easy to set up and easy to reach and operate,long battery life, a perfect choice for any smartphone user on the go');
INSERT INTO `temp_item` VALUES(23, 'LG5', 'MCKLG5', 'LG BLUETOOTH -\nTop of the line headset, great call clarity, great comfort, easy to set up and easy to reach and operate,long battery life, a perfect choice for any smartphone user on the go');
INSERT INTO `temp_item` VALUES(24, 'LG6', 'MCKLG6', 'LG BLUETOOTH -\nTop of the line headset, great call clarity, great comfort, easy to set up and easy to reach and operate,long battery life, a perfect choice for any smartphone user on the go');
INSERT INTO `temp_item` VALUES(25, 'SENNHEISER1', 'MCKSENNHEISER1', 'SENNHEISER WIRELESS -\nGreat sound, long lasting charge, long range and comfort. All this qualities combined with a competitive price makes the Sennheiser RS120 one of the best wireless headphones available');
INSERT INTO `temp_item` VALUES(26, 'SENNHEISER2', 'MCKSENNHEISER2', 'SENNHEISER WIRELESS -\nGreat sound, long lasting charge, long range and comfort. All this qualities combined with a competitive price makes the Sennheiser RS120 one of the best wireless headphones available');
INSERT INTO `temp_item` VALUES(27, 'SENNHEISER3', 'MCKSENNHEISER3', 'SENNHEISER WIRELESS -\nGreat sound, long lasting charge, long range and comfort. All this qualities combined with a competitive price makes the Sennheiser RS120 one of the best wireless headphones available');
INSERT INTO `temp_item` VALUES(28, 'SENNHEISER4', 'MCKSENNHEISER4', 'SENNHEISER WIRELESS -\nGreat sound, long lasting charge, long range and comfort. All this qualities combined with a competitive price makes the Sennheiser RS120 one of the best wireless headphones available');
INSERT INTO `temp_item` VALUES(29, 'SENNHEISER5', 'MCKSENNHEISER5', 'SENNHEISER WIRELESS -\nGreat sound, long lasting charge, long range and comfort. All this qualities combined with a competitive price makes the Sennheiser RS120 one of the best wireless headphones available');
INSERT INTO `temp_item` VALUES(30, 'SENNHEISER6', 'MCKSENNHEISER6', 'SENNHEISER WIRELESS -\nGreat sound, long lasting charge, long range and comfort. All this qualities combined with a competitive price makes the Sennheiser RS120 one of the best wireless headphones available');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `mem_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(20) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `a_flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`mem_id`,`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` VALUES(1, 'omkark', '0d733dcdbc2a1e3e8207102de79997ce', 'Omkar', 'Khare', 'omkarkhare@gmail.com', 0);
INSERT INTO `user` VALUES(2, 'kshetty1', '29d0ebb21cf9aa8c1005835ef6d6fd46', 'Kartik', 'Shetty', 'kshetty1@umd.edu', 1);
