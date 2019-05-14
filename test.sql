-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2019 at 09:23 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `_id` int(10) NOT NULL,
  `name` varchar(125) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(125) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zipCode` varchar(10) NOT NULL,
  `tier` int(10) NOT NULL,
  `phone_primary` varchar(50) NOT NULL,
  `phone_mobile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`_id`, `name`, `address`, `city`, `state`, `zipCode`, `tier`, `phone_primary`, `phone_mobile`) VALUES
(101, 'uyen', '123 Main Street #200', 'Seattle', 'WA', '98101', 2, '206-221-2345', '206-555-3211'),
(321, 'Abe Simpson', '2445 Onion Belt Ave', 'Springfield', 'IL', '62701', 1, '217-345-2345', '217-987-3211'),
(467, 'Joseph Schmoe', '2765 There Street', 'Charlotte', 'NC', '28205', 3, '828-865-2345', '828-432-3211'),
(1987, 'Bob Loblaw', '123 Main Street #200', 'Laguna Beach', 'CA', '92677', 2, '714-765-2349', '714-496-3288');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `_id` int(110) NOT NULL,
  `agent_id` int(10) NOT NULL,
  `guid` varchar(36) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `balance` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `eyeColor` varchar(50) NOT NULL,
  `name_first` varchar(50) NOT NULL,
  `name_last` varchar(50) NOT NULL,
  `company` varchar(125) NOT NULL,
  `email` varchar(125) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `registered` varchar(255) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `longitude` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`_id`, `agent_id`, `guid`, `isActive`, `balance`, `age`, `eyeColor`, `name_first`, `name_last`, `company`, `email`, `phone`, `address`, `registered`, `latitude`, `longitude`) VALUES
(1042, 101, '5013facc-fe79-449f-93bf-987de4b8ac22', 0, '$3,228.02', 45, 'green', 'Abigail', 'Thomas', 'STRALOY', 'abigail.thomas@straloy.us', '+1 (994) 426-3814', '340 Grand Street, Alamo, Oklahoma, 9416', 'Wednesday, August 30, 2017 7:33 AM', '54.145003', '-145.804237'),
(1129, 1987, '0feba4c1-7c12-48e1-81a7-8fbd8c8a61fc', 1, '$1,779.45', 51, 'green', 'Maude', 'Copeland', 'PRISMATIC', 'maude.copeland@prismatic.name', '+1 (901) 448-3545', '553 Delmonico Place, Tampico, Maine, 854', 'Thursday, June 4, 2015 12:02 AM', '-13.386213', '-6.31491'),
(1152, 467, '7a25dfca-2ac1-4063-b4e5-11da63ac7ec6', 0, '$1,641.76', 34, 'green', 'Walsh', 'Wiggins', 'BESTO', 'walsh.wiggins@besto.info', '+1 (977) 454-3682', '652 Orange Street, Lodoga, Massachusetts, 3183', 'Friday, May 15, 2015 11:26 PM', '-79.311788', '94.185572'),
(1393, 101, '913b0ea1-755e-4a48-ad94-6e58f7341cc9', 1, '$2,770.19', 69, 'green', 'Daniels', 'Hunter', 'EPLOSION', 'daniels.hunter@eplosion.co.uk', '+1 (835) 444-2099', '951 Kaufman Place, Eastmont, Virgin Islands, 6553', 'Sunday, May 31, 2015 12:31 AM', '86.124385', '128.011458'),
(1430, 101, '99032dca-5699-49b3-af26-ad249063ab8e', 1, '$1,304.22', 37, 'green', 'Antonia', 'Crosby', 'ZEAM', 'antonia.crosby@zeam.info', '+1 (940) 538-3464', '432 Wilson Avenue, Glasgow, Virginia, 2545', 'Friday, November 3, 2017 1:53 PM', '33.093873', '69.217461'),
(1636, 467, '3465d272-b5df-433b-a23d-f412423d069b', 0, '$3,841.91', 27, 'brown', 'Gordon', 'Scott', 'FROLIX', 'gordon.scott@frolix.org', '+1 (808) 454-3714', '404 Lorraine Street, Sussex, Alaska, 3467', 'Tuesday, August 28, 2018 3:09 AM', '-51.933074', '116.505441'),
(1663, 1987, 'a1d811ff-faa4-481c-9b02-988339532bbf', 0, '$3,359.62', 66, 'blue', 'Susie', 'Combs', 'ISONUS', 'susie.combs@isonus.net', '+1 (885) 480-3553', '432 Harrison Avenue, Esmont, Georgia, 2516', 'Saturday, August 11, 2018 11:38 AM', '69.971147', '50.667061'),
(1889, 467, 'f7489c58-2816-44d8-b800-fa9d1f44aca0', 0, '$2,657.47', 33, 'green', 'Solis', 'Decker', 'VALPREAL', 'solis.decker@valpreal.biz', '+1 (992) 542-2711', '193 Grove Place, Warren, Michigan, 6954', 'Tuesday, February 14, 2017 6:14 PM', '-58.511774', '-26.099681'),
(2096, 101, '6a4232da-dba7-44e0-a8ff-0a9fe1ba5a4c', 0, '$3,361.96', 36, 'blue', 'Ericka', 'Morrow', 'IMKAN', 'ericka.morrow@imkan.info', '+1 (991) 427-2244', '856 Ross Street, Frierson, Washington, 7344', 'Tuesday, December 29, 2015 9:53 AM', '-77.764947', '166.005676'),
(2224, 101, '6155ad7e-20a9-45a2-b49b-406a7b87a790', 0, '$2,619.80', 46, 'green', 'Petersen', 'Harper', 'PHOTOBIN', 'petersen.harper@photobin.tv', '+1 (977) 533-3905', '285 Sutton Street, Crayne, Kentucky, 2753', 'Wednesday, March 16, 2016 8:16 PM', '50.874561', '-53.594529'),
(2354, 101, '56e3aa2b-7c7d-438c-b1ca-7861eac7dcc3', 1, '$1,933.48', 31, 'brown', 'Marsha', 'George', 'DOGNOSIS', 'marsha.george@dognosis.ca', '+1 (824) 479-2374', '953 McKibbin Street, Coventry, Florida, 2823', 'Friday, October 31, 2014 2:17 PM', '70.299862', '60.4194'),
(2376, 321, 'bbdc3d0b-c5ee-4a5e-8803-d9c2426f5b0f', 1, '$1,243.70', 60, 'blue', 'April', 'Martin', 'VENOFLEX', 'april.martin@venoflex.biz', '+1 (856) 560-2053', '173 Martense Street, Rosewood, Rhode Island, 6361', 'Thursday, September 6, 2018 2:29 AM', '80.329339', '39.898377'),
(2378, 321, 'a688e827-f70f-4307-8b42-924f4654e111', 1, '$2,190.41', 42, 'blue', 'Fulton', 'Hatfield', 'ACIUM', 'fulton.hatfield@acium.name', '+1 (836) 534-2204', '967 Lott Place, Juarez, Puerto Rico, 8036', 'Tuesday, September 22, 2015 6:57 AM', '34.60264', '-103.84763'),
(2387, 101, '7190e3a3-f101-458b-9be2-9c65ec3dc39f', 1, '$1,367.64', 67, 'brown', 'Woodward', 'Justice', 'MOREGANIC', 'woodward.justice@moreganic.biz', '+1 (984) 548-3242', '479 Campus Place, Kohatk, Kentucky, 7979', 'Tuesday, April 19, 2016 6:34 AM', '72.220179', '152.26156'),
(2389, 101, '7ed0c357-843f-4975-bfd3-fab8b6a8c993', 1, '$2,113.94', 70, 'blue', 'Elma', 'Lamb', 'XEREX', 'elma.lamb@xerex.ca', '+1 (934) 477-2330', '645 Village Court, Datil, North Dakota, 708', 'Sunday, December 11, 2016 1:59 PM', '-81.672695', '-107.35948'),
(2682, 321, '593b5a8a-8830-4089-bb00-a1e5a4e9ffe7', 1, '$1,380.87', 67, 'brown', 'Jaime', 'Chambers', 'QUAREX', 'jaime.chambers@quarex.net', '+1 (886) 427-2707', '688 Reed Street, Coaldale, Alabama, 8148', 'Sunday, August 21, 2016 9:17 PM', '64.720929', '-6.632349'),
(2685, 1987, '9445d198-db23-44d5-8600-f30d93575a45', 1, '$1,808.76', 52, 'blue', 'Franklin', 'Osborn', 'COMTEST', 'franklin.osborn@comtest.name', '+1 (834) 517-3307', '269 Cheever Place, Gloucester, Hawaii, 9383', 'Sunday, May 14, 2017 8:09 AM', '33.596796', '-34.270386'),
(2754, 321, 'd6ac8da4-b1ca-48ac-bd01-d8f95652ed77', 1, '$1,703.00', 20, 'brown', 'Phoebe', 'Harding', 'BILLMED', 'phoebe.harding@billmed.co.uk', '+1 (886) 408-2479', '160 Hampton Avenue, Mulino, Indiana, 4899', 'Thursday, January 30, 2014 3:20 PM', '-44.048841', '36.806523'),
(2818, 321, 'a84e511c-27cd-494e-b617-bd4f69acbeea', 0, '$1,687.88', 30, 'green', 'Blair', 'Webb', 'BLANET', 'blair.webb@blanet.me', '+1 (957) 418-3625', '146 Clinton Avenue, Bayview, Vermont, 160', 'Saturday, June 30, 2018 7:41 PM', '-21.99449', '106.42415'),
(2980, 1987, '55d7f187-ff89-4d13-9ae5-521dbadaeff2', 0, '$2,755.99', 52, 'brown', 'Gretchen', 'Ingram', 'COMSTRUCT', 'gretchen.ingram@comstruct.me', '+1 (968) 507-3214', '644 Forbell Street, Sanford, American Samoa, 4824', 'Wednesday, January 25, 2017 5:07 PM', '-33.860268', '97.94713'),
(3027, 1987, '66200019-4a42-4c7c-b4b0-3f800bc02a53', 1, '$2,224.22', 33, 'blue', 'Mcfadden', 'Daugherty', 'ZENTILITY', 'mcfadden.daugherty@zentility.org', '+1 (951) 511-3052', '545 Suydam Place, Dennard, Tennessee, 2215', 'Tuesday, January 30, 2018 6:08 AM', '-3.924279', '91.912049'),
(3118, 101, 'bce51f7c-0bb3-4373-976c-fa29d180d38b', 1, '$3,687.96', 23, 'brown', 'James', 'Sullivan', 'PERKLE', 'james.sullivan@perkle.com', '+1 (890) 545-2638', '994 Calyer Street, Englevale, Ohio, 1383', 'Monday, October 1, 2018 12:58 AM', '63.128363', '23.326641'),
(3171, 101, 'bdc09684-cd16-44be-8ac9-a4fb1db4964b', 1, '$1,242.51', 29, 'blue', 'Salas', 'Walter', 'ATOMICA', 'salas.walter@atomica.us', '+1 (816) 432-2617', '362 Barbey Street, Manchester, Texas, 6910', 'Friday, August 17, 2018 5:04 PM', '6.421966', '1.41398'),
(3196, 1987, 'd464b794-4d49-496d-a4c3-ffcb75975816', 1, '$3,876.91', 54, 'blue', 'Lorraine', 'Burton', 'BIOHAB', 'lorraine.burton@biohab.us', '+1 (994) 404-3434', '736 Jamison Lane, Carrsville, California, 4623', 'Wednesday, December 3, 2014 12:35 PM', '6.586642', '143.461679'),
(3297, 321, '9fab94f6-bab9-4cd4-9a51-5812440b19f4', 1, '$2,743.62', 47, 'blue', 'Mindy', 'Anderson', 'QUILTIGEN', 'mindy.anderson@quiltigen.tv', '+1 (989) 434-2106', '937 Glen Street, Basye, Ohio, 6781', 'Monday, July 20, 2015 12:05 PM', '85.267581', '-4.220733'),
(3432, 1987, 'f62119ee-5678-4de7-b8de-2ad8c373ef65', 0, '$3,252.27', 37, 'blue', 'Trisha', 'Mejia', 'EXOTECHNO', 'trisha.mejia@exotechno.biz', '+1 (937) 567-2488', '143 Quincy Street, Eden, North Carolina, 4675', 'Friday, January 1, 2016 10:16 AM', '-82.796597', '6.806035'),
(3545, 101, 'b57cc107-bb21-47cf-b3b2-dd544a5dffaf', 0, '$3,076.02', 34, 'brown', 'Jeannie', 'Stephens', 'PUSHCART', 'jeannie.stephens@pushcart.me', '+1 (805) 470-2576', '631 Coffey Street, Calverton, Nebraska, 1034', 'Friday, February 20, 2015 11:45 PM', '-59.8153', '30.192601'),
(3643, 1987, '1f2c6045-da92-4ca9-a19a-f430d3e797a6', 0, '$1,429.06', 53, 'brown', 'Lucas', 'Morris', 'MUSIX', 'lucas.morris@musix.biz', '+1 (872) 455-3456', '424 Brooklyn Road, Lewis, North Dakota, 3845', 'Monday, November 16, 2015 9:14 PM', '71.385209', '6.689644'),
(3780, 467, '452c85ea-29e2-472f-8a6d-c3ccde1e210f', 0, '$1,916.67', 58, 'blue', 'Warner', 'Hernandez', 'OLYMPIX', 'warner.hernandez@olympix.tv', '+1 (959) 513-2607', '778 Oakland Place, Weeksville, Maryland, 8102', 'Wednesday, August 24, 2016 9:38 AM', '87.56753', '141.52792'),
(3957, 101, '574d9b9b-7131-4048-84e0-f3413793a5e5', 0, '$3,706.60', 21, 'green', 'Eloise', 'Serrano', 'ZYTRAC', 'eloise.serrano@zytrac.co.uk', '+1 (817) 433-2423', '288 Cypress Avenue, Levant, Idaho, 8792', 'Saturday, January 6, 2018 9:42 PM', '-45.933966', '-57.077253'),
(3976, 101, 'f7694236-7940-4e69-afe1-f05ec63d306a', 0, '$1,367.29', 32, 'green', 'Toni', 'Shannon', 'DUFLEX', 'toni.shannon@duflex.com', '+1 (889) 501-3651', '738 Gotham Avenue, Watrous, Connecticut, 7762', 'Sunday, November 20, 2016 11:00 PM', '-8.822746', '-5.338954'),
(4020, 321, 'c67c5c3c-1cda-4df6-940f-28e2dbebb49f', 0, '$1,477.94', 53, 'green', 'Chris', 'Burt', 'POLARAX', 'chris.burt@polarax.co.uk', '+1 (932) 462-2331', '251 Colonial Court, Nadine, Montana, 2150', 'Friday, June 1, 2018 2:11 AM', '76.447586', '99.810593'),
(4083, 321, '08e33cbd-6a50-4b47-b31d-cce8be93cee6', 1, '$3,078.38', 56, 'green', 'Gracie', 'Grant', 'PREMIANT', 'gracie.grant@premiant.name', '+1 (936) 495-3220', '477 Tiffany Place, Austinburg, Missouri, 3492', 'Wednesday, January 4, 2017 2:00 AM', '49.685809', '65.923656'),
(4273, 467, '15953809-9c1b-45a7-902e-c0844778a3fb', 0, '$2,049.67', 36, 'blue', 'Caitlin', 'Fields', 'DYNO', 'caitlin.fields@dyno.biz', '+1 (841) 443-3222', '333 Grafton Street, Bowie, Florida, 2196', 'Sunday, May 29, 2016 1:05 AM', '22.268895', '2.737973'),
(4336, 467, 'b7708e62-3554-4b66-a744-6bfb8724d98b', 1, '$3,460.39', 53, 'blue', 'Gloria', 'Bowman', 'PLASMOSIS', 'gloria.bowman@plasmosis.tv', '+1 (922) 469-2786', '573 Decatur Street, Temperanceville, Utah, 595', 'Saturday, March 19, 2016 3:40 AM', '-32.477508', '-27.212085'),
(4389, 321, 'fd953594-3150-4677-9efd-0833c5621245', 1, '$2,498.38', 25, 'brown', 'Shaffer', 'Church', 'MEDIFAX', 'shaffer.church@medifax.biz', '+1 (989) 572-2039', '249 Vine Street, Groveville, Delaware, 6219', 'Tuesday, January 1, 2019 10:45 AM', '83.463017', '-94.037938'),
(4581, 467, '5a10d06a-25b4-4c13-b635-01fb3cf586e7', 1, '$2,007.45', 47, 'blue', 'Bush', 'Dotson', 'FROSNEX', 'bush.dotson@frosnex.ca', '+1 (982) 593-3989', '150 National Drive, Rivereno, Marshall Islands, 1026', 'Tuesday, August 14, 2018 12:48 PM', '-45.013725', '80.111429'),
(4639, 1987, 'fb18d815-0897-4e34-8018-72cd92ca00db', 0, '$3,482.65', 26, 'green', 'Ophelia', 'Wong', 'CONJURICA', 'ophelia.wong@conjurica.org', '+1 (961) 502-2651', '870 Hanson Place, Calpine, North Carolina, 9068', 'Wednesday, December 20, 2017 3:07 PM', '-32.500154', '42.378851'),
(4884, 467, 'fa7299c8-d079-4c9c-8179-3d05e0297c23', 1, '$2,696.51', 22, 'blue', 'Deloris', 'Garrison', 'HARMONEY', 'deloris.garrison@harmoney.biz', '+1 (901) 462-3257', '811 Irving Street, Gibbsville, Tennessee, 8268', 'Thursday, January 12, 2017 12:55 AM', '45.347761', '119.339133'),
(4904, 321, 'f5c1ffed-fd1a-450f-94a8-f2d0842de50c', 0, '$3,612.71', 38, 'blue', 'Buchanan', 'Barr', 'ZAPPIX', 'buchanan.barr@zappix.net', '+1 (932) 473-3214', '410 Melrose Street, Chaparrito, Washington, 1367', 'Thursday, February 11, 2016 12:17 PM', '58.098824', '130.811528'),
(5054, 1987, '54fc8606-0630-42f9-9e3c-716772df09bf', 1, '$1,578.40', 57, 'blue', 'Neva', 'Calderon', 'ISOTRONIC', 'neva.calderon@isotronic.info', '+1 (985) 502-2956', '573 Turner Place, Yukon, Federated States Of Micronesia, 762', 'Wednesday, January 31, 2018 12:40 PM', '76.989498', '26.410977'),
(5357, 1987, 'fde49b71-acee-4e61-acc0-92fe7526a8b8', 1, '$1,463.68', 68, 'brown', 'Jillian', 'Bass', 'PAWNAGRA', 'jillian.bass@pawnagra.com', '+1 (891) 534-2579', '384 Duffield Street, Ivanhoe, Palau, 6588', 'Tuesday, February 21, 2017 4:10 AM', '-39.056234', '-161.29457'),
(5420, 467, '894102e7-f322-471c-bff6-135cd931dbae', 0, '$1,291.17', 38, 'brown', 'Diann', 'Woodard', 'KONGLE', 'diann.woodard@kongle.com', '+1 (851) 454-3720', '371 Veranda Place, Woodruff, Illinois, 5931', 'Thursday, November 6, 2014 7:52 PM', '87.101933', '154.153243'),
(5528, 467, 'f3e19639-8ea5-474d-a9a6-f1cd8b59348c', 0, '$1,498.30', 35, 'brown', 'Keller', 'Orr', 'SATIANCE', 'keller.orr@satiance.org', '+1 (985) 598-3782', '482 Amber Street, Como, Northern Mariana Islands, 3190', 'Sunday, July 23, 2017 6:36 AM', '-1.711557', '124.722546'),
(5811, 101, 'f4de199c-0cca-438e-804a-f2d3c36435e0', 1, '$3,514.01', 28, 'blue', 'Kathie', 'Hill', 'PHORMULA', 'kathie.hill@phormula.ca', '+1 (921) 572-3174', '954 Nostrand Avenue, Ronco, District Of Columbia, 4202', 'Friday, December 29, 2017 1:39 AM', '2.547736', '-163.457438'),
(5854, 101, '574e0dd4-547d-40fa-b699-63b58ad0e66d', 1, '$1,892.16', 57, 'brown', 'Harmon', 'Bray', 'INTERGEEK', 'harmon.bray@intergeek.co.uk', '+1 (916) 415-3937', '678 Wyona Street, Shindler, Delaware, 1799', 'Monday, August 24, 2015 5:29 AM', '68.015535', '107.565725'),
(6078, 101, '95fa5409-d9ca-4893-b226-ab6a7cb8c455', 0, '$2,147.05', 65, 'green', 'Hensley', 'Zamora', 'WEBIOTIC', 'hensley.zamora@webiotic.net', '+1 (918) 505-2579', '754 Fair Street, Sexton, Marshall Islands, 4705', 'Thursday, September 24, 2015 7:51 PM', '71.782843', '37.839963'),
(6225, 101, '0f7d599c-ac89-4580-9bfb-d1a7947b97de', 1, '$1,253.66', 51, 'green', 'Irma', 'Roman', 'BEADZZA', 'irma.roman@beadzza.info', '+1 (934) 443-2067', '567 Pitkin Avenue, Barrelville, New Jersey, 3596', 'Wednesday, October 25, 2017 3:30 PM', '69.446672', '83.647644'),
(6449, 467, '25bc821f-a45a-47b7-b176-81223b11f058', 0, '$1,201.37', 42, 'green', 'Alexis', 'Kramer', 'QUINEX', 'alexis.kramer@quinex.biz', '+1 (875) 580-2489', '316 Perry Terrace, Martinez, Oregon, 6561', 'Friday, June 20, 2014 12:13 AM', '11.946742', '92.874893'),
(6520, 1987, 'eaea8bcb-884d-4750-9ce2-be05fcc6f487', 0, '$3,174.43', 65, 'brown', 'Rosa', 'Rogers', 'ORBOID', 'rosa.rogers@orboid.biz', '+1 (973) 453-2371', '293 Everett Avenue, Foxworth, Arizona, 1787', 'Sunday, December 27, 2015 9:37 PM', '-43.647932', '54.759495'),
(6569, 467, '6b37854b-f373-40fe-873f-6f89245fe148', 0, '$1,034.21', 27, 'blue', 'Evangelina', 'Owen', 'SYNKGEN', 'evangelina.owen@synkgen.biz', '+1 (981) 479-2174', '480 Cypress Court, Sheatown, Arkansas, 9766', 'Wednesday, October 18, 2017 5:59 AM', '81.143782', '-114.965446'),
(6711, 321, '0ce13218-29f5-4102-afae-f705925bfd1c', 0, '$3,930.59', 31, 'blue', 'Langley', 'Marks', 'NEPTIDE', 'langley.marks@neptide.ca', '+1 (983) 599-2017', '547 Glendale Court, Elliston, Alabama, 1765', 'Tuesday, April 18, 2017 8:38 AM', '27.365016', '81.045444'),
(6774, 467, 'e5cb2158-10e9-4168-aa38-75c30406cede', 0, '$1,506.99', 33, 'green', 'Hope', 'Fuentes', 'ECRATER', 'hope.fuentes@ecrater.info', '+1 (871) 568-3636', '603 George Street, Oneida, Illinois, 5063', 'Tuesday, March 7, 2017 12:39 AM', '-7.713686', '133.666001'),
(6842, 321, '83838165-80e8-47a8-8084-b5690c8e80fd', 1, '$2,256.70', 50, 'green', 'Roach', 'Greene', 'VIASIA', 'roach.greene@viasia.co.uk', '+1 (836) 481-3703', '741 Dekalb Avenue, Oley, Pennsylvania, 7393', 'Tuesday, January 7, 2014 3:59 PM', '-74.392137', '-134.747872'),
(7029, 1987, '04fc5518-94af-4c9b-be93-8968ec1e6cb7', 1, '$3,571.13', 63, 'blue', 'Guadalupe', 'Pate', 'MICRONAUT', 'guadalupe.pate@micronaut.tv', '+1 (991) 403-2461', '518 Clarkson Avenue, Faxon, New Mexico, 3572', 'Monday, December 1, 2014 9:48 PM', '70.057754', '116.827374'),
(7050, 467, 'f4f25bd7-82fc-40bb-9080-8feaf51de115', 0, '$2,455.82', 52, 'brown', 'Petty', 'Hobbs', 'EXIAND', 'petty.hobbs@exiand.com', '+1 (978) 541-2997', '455 Tehama Street, Curtice, Guam, 4979', 'Monday, January 26, 2015 12:46 PM', '87.364113', '142.131627'),
(7195, 1987, '84d401e6-9219-46c0-9b78-1a3a2eba4028', 1, '$1,481.62', 70, 'blue', 'Goff', 'Black', 'KONGENE', 'goff.black@kongene.net', '+1 (843) 459-2589', '749 Columbia Street, Baker, Wisconsin, 3910', 'Friday, March 25, 2016 10:31 PM', '58.585479', '29.424912'),
(7266, 1987, '4c77e986-5d47-4464-a7f5-ee5e070d4aec', 0, '$3,088.13', 32, 'brown', 'Graves', 'Briggs', 'UNIWORLD', 'graves.briggs@uniworld.org', '+1 (829) 537-3632', '926 Lincoln Avenue, Fairforest, Colorado, 8856', 'Monday, December 24, 2018 6:49 AM', '74.155951', '46.099708'),
(7433, 321, 'c664749d-7790-405c-8756-f0445f450338', 1, '$1,799.38', 59, 'blue', 'Marshall', 'Tyler', 'COMCUBINE', 'marshall.tyler@comcubine.tv', '+1 (862) 558-2530', '534 Throop Avenue, Smeltertown, Michigan, 6955', 'Monday, April 2, 2018 3:40 PM', '39.152074', '-165.073126'),
(7490, 101, 'e79ec26f-32a1-4d78-9e0f-0f3c8696d0f9', 1, '$1,932.78', 53, 'green', 'Stout', 'Deleon', 'PHEAST', 'stout.deleon@pheast.ca', '+1 (823) 538-2050', '265 Royce Street, Coyote, Louisiana, 1120', 'Thursday, December 25, 2014 3:32 PM', '-5.095696', '-70.304646'),
(7761, 1987, 'd4e59467-7e0d-40a0-a7fa-43ed0d2b20a1', 0, '$2,364.61', 48, 'green', 'Ernestine', 'Phillips', 'SYNTAC', 'ernestine.phillips@syntac.me', '+1 (832) 441-2031', '486 Eldert Lane, Brambleton, Nevada, 9459', 'Wednesday, March 7, 2018 9:07 PM', '-75.887295', '-178.791646'),
(7835, 467, '93152581-7881-4391-a91b-031590ce7288', 0, '$2,505.40', 35, 'brown', 'Marilyn', 'Gibbs', 'MIXERS', 'marilyn.gibbs@mixers.org', '+1 (968) 477-2985', '722 Main Street, Irwin, Iowa, 9087', 'Sunday, February 21, 2016 12:58 PM', '-51.042316', '156.191978'),
(7909, 1987, 'cfe382f1-a84e-4bf0-8a0c-d77aa5497b38', 1, '$3,492.48', 68, 'blue', 'Evans', 'Kaufman', 'ZYTRAX', 'evans.kaufman@zytrax.name', '+1 (935) 561-2793', '462 Lincoln Road, Russellville, Indiana, 6886', 'Friday, July 28, 2017 4:18 PM', '-88.437668', '116.586165'),
(8101, 467, '5cc1fe9f-7607-411c-ae66-4ed536d46da6', 1, '$2,547.26', 38, 'blue', 'Abby', 'Rosales', 'LUDAK', 'abby.rosales@ludak.me', '+1 (987) 582-2274', '677 Otsego Street, Williams, Colorado, 1725', 'Saturday, September 3, 2016 11:23 AM', '62.527173', '28.543435'),
(8190, 101, 'cc834cd3-beab-42f9-8d49-83902d832e86', 1, '$3,300.88', 40, 'blue', 'Bullock', 'Fox', 'COMTOUR', 'bullock.fox@comtour.ca', '+1 (940) 412-3470', '967 Bedford Avenue, Saddlebrooke, South Carolina, 9509', 'Tuesday, December 15, 2015 2:17 PM', '27.297706', '13.711871'),
(8195, 321, '2638d4d9-81b9-445f-9ad4-a65eb7a05626', 0, '$2,172.25', 68, 'green', 'Lillian', 'Atkinson', 'DOGTOWN', 'lillian.atkinson@dogtown.info', '+1 (811) 466-3486', '685 Mill Avenue, Rodanthe, Kansas, 630', 'Tuesday, March 27, 2018 1:07 AM', '-41.096389', '-90.639319'),
(8203, 467, '60e09079-3b7b-434a-9030-5f7f98eda232', 1, '$2,634.30', 62, 'brown', 'Pope', 'Wheeler', 'GEEKOLOGY', 'pope.wheeler@geekology.co.uk', '+1 (910) 453-2823', '825 Cropsey Avenue, Homeworth, Puerto Rico, 7683', 'Thursday, January 16, 2014 2:49 AM', '59.528935', '52.987053'),
(8223, 467, 'cfa52657-f0eb-4d00-8522-e41a488f3e42', 0, '$1,754.13', 23, 'blue', 'Bradford', 'Guthrie', 'COMBOGEN', 'bradford.guthrie@combogen.biz', '+1 (874) 589-2990', '247 Highland Avenue, Wyano, New York, 8321', 'Saturday, October 25, 2014 4:23 PM', '-68.257313', '-177.481313'),
(8226, 467, 'cc4710fe-4309-4e4a-8272-cc46d7c9864b', 0, '$1,123.26', 47, 'blue', 'Rosanne', 'Rowland', 'HAIRPORT', 'rosanne.rowland@hairport.com', '+1 (910) 570-2857', '840 Thomas Street, Sidman, Federated States Of Micronesia, 7407', 'Monday, December 8, 2014 5:22 AM', '-52.277202', '75.419117'),
(8389, 101, 'ba706c0e-dd42-4d14-9745-1a9dc9441ea0', 1, '$3,251.85', 47, 'brown', 'Amalia', 'Golden', 'LETPRO', 'amalia.golden@letpro.us', '+1 (897) 540-3041', '482 Whitwell Place, Noblestown, Missouri, 1539', 'Friday, June 2, 2017 8:01 AM', '-5.159751', '-65.252759'),
(8463, 321, '1ef5fafc-4499-41fd-be0b-48d289052e43', 1, '$2,280.48', 45, 'blue', 'Dina', 'Moreno', 'QUONK', 'dina.moreno@quonk.biz', '+1 (828) 478-3414', '378 Pershing Loop, Yardville, Virgin Islands, 6929', 'Friday, August 5, 2016 10:58 AM', '57.893847', '33.137927'),
(8755, 101, 'dbbb82af-1a8d-43a1-ae91-ca2ccc36a9f5', 1, '$3,951.59', 35, 'green', 'Cervantes', 'Levy', 'GOKO', 'cervantes.levy@goko.us', '+1 (819) 541-3210', '645 Hendrickson Street, Finderne, South Dakota, 1210', 'Monday, January 30, 2017 9:56 AM', '26.264172', '4.149593'),
(9196, 101, 'd15434f8-bef0-46c5-aaee-5d6a9740d857', 0, '$3,475.77', 39, 'green', 'Frank', 'Stafford', 'GRONK', 'frank.stafford@gronk.net', '+1 (958) 479-2531', '572 Himrod Street, Masthope, Minnesota, 6553', 'Wednesday, October 11, 2017 1:54 AM', '-7.019371', '115.235981'),
(9220, 1987, '892c1106-916d-4915-af33-13f72f5ad35f', 0, '$3,889.50', 39, 'brown', 'Elisabeth', 'Roberson', 'ZOUNDS', 'elisabeth.roberson@zounds.org', '+1 (811) 480-3816', '470 Lacon Court, Vale, Vermont, 8209', 'Friday, April 22, 2016 5:53 PM', '-22.27042', '-125.774252'),
(9610, 1987, 'c5d9c0f4-2118-47dc-92b0-c72235779f4c', 1, '$3,590.96', 24, 'green', 'Shields', 'Knowles', 'QUIZMO', 'shields.knowles@quizmo.me', '+1 (970) 546-2778', '385 Guider Avenue, Jamestown, Texas, 3671', 'Sunday, February 23, 2014 9:56 AM', '58.924333', '135.839052'),
(9616, 1987, '91372338-f020-4c59-9f5f-6df39040dd17', 0, '$3,428.29', 52, 'brown', 'Oconnor', 'Campos', 'ZILLAN', 'oconnor.campos@zillan.net', '+1 (928) 557-2017', '605 Farragut Road, Cowiche, New Jersey, 460', 'Saturday, January 9, 2016 9:45 PM', '37.857089', '-155.562363'),
(9848, 467, 'd993778b-3bcb-473b-afc2-fc5388c6c386', 1, '$3,170.72', 21, 'green', 'Holt', 'Cruz', 'HOPELI', 'holt.cruz@hopeli.name', '+1 (871) 438-2688', '142 Ferris Street, Toftrees, West Virginia, 2088', 'Monday, May 18, 2015 9:19 PM', '-67.248379', '-59.23766'),
(9988, 467, '6b71c8c6-f87f-4518-b277-ee81fc9c24ed', 0, '$3,613.23', 68, 'brown', 'Mccullough', 'Wall', 'EXODOC', 'mccullough.wall@exodoc.us', '+1 (842) 497-3565', '175 Malbone Street, Ezel, New Hampshire, 5880', 'Saturday, June 2, 2018 6:03 PM', '-35.784215', '-17.864023');

-- --------------------------------------------------------

--
-- Table structure for table `customer_tag`
--

CREATE TABLE `customer_tag` (
  `customer_id` int(10) NOT NULL,
  `tag_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_tag`
--

INSERT INTO `customer_tag` (`customer_id`, `tag_id`) VALUES
(2682, 19),
(2818, 17),
(3027, 18),
(3118, 1),
(3118, 19),
(3196, 17),
(3545, 18),
(3976, 17),
(4581, 1),
(4581, 18),
(4639, 18),
(5054, 1),
(5054, 17),
(5054, 18),
(5054, 19),
(5357, 18),
(5420, 18),
(6774, 18),
(7490, 17),
(8195, 1),
(8195, 18),
(8463, 19);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`_id`, `name`) VALUES
(1, 'eiusmod'),
(18, 'labore'),
(17, 'reprehenderit'),
(19, 'ut');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `guid` (`guid`);

--
-- Indexes for table `customer_tag`
--
ALTER TABLE `customer_tag`
  ADD PRIMARY KEY (`customer_id`,`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1990;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `_id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9994;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1203;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
