-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 07:53 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `delp` (IN `oid` INT)   delete from users_orders where o_id=oid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `date`) VALUES
(1, 'Bharath', '0192023a7bbd73250516f069df18b500', 'bharathmg2002@gmail.com', '2023-01-13 15:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_orders`
--

CREATE TABLE `deleted_orders` (
  `dlo_id` int(222) NOT NULL,
  `dlu_id` int(222) NOT NULL,
  `dld_id` int(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `hot_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `hot_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Mysore Masala Dosa', 'This Mysore dosa is crisp and soft dosa spiced with red chutney and served with a potato dish, along with coconut chutney', '80.00', '63b8670416fc0.jpg'),
(2, 1, 'North indian Special Meal', 'North Indian curries usually have thick, moderately spicy and creamy gravies.Tomato Soup+Papad+1 Roti+1 Naan+3 North Curry+Pulao [1 Cup]+Rice [1 Cup]+Rasam+Jamun/ Sweet', '200.00', '63b866bf28471.jpg'),
(3, 1, 'Vada', 'Vada is a category of savoury fried snacks native to South India.', '40.00', '63b8663c06cc7.jpg'),
(4, 1, 'Veg Biriyani', 'Vegetable biryani is an aromatic rice dish made with basmati rice, mix veggies, herbs & biryani spices. ', '170.00', '63b667282137b.jpg'),
(5, 1, 'Veg Fried Rice', 'A popular and flavoured rice recipe made with cooked rice, finely chopped veggies and seasoning ingredients.', '165.00', '63b99d95e8cf6.jpg'),
(6, 2, 'Chicken Hyderabadi Matka Dum Biryani', 'Biryani is a South Asian dish which made up of rice. It is a spicy dish made with species, rice, and Chicken. ', '325.00', '63b66ad3ee157.jpg'),
(7, 2, 'Veg Hyderabadi Matka Dum Biryani', 'Biryani is a South Asian dish which made up of rice. It is a spicy dish made with species, rice.', '225.00', '63b66b55c20b6.jpg'),
(8, 2, 'Surmai Tawa', 'Surmai Tawa masala or Anjal (Tulu word for Surmai) Tawa Fry is another loved dish of Mangalorean cuisine.', '380.00', '63b66ca899683.jpg'),
(9, 3, 'Chicken Cheese Fried Momo', 'Chicken cheese momo blends cheesy taste and delectable chicken to create a riot of flavours in your mouth.', '165.00', '63b66ea740d75.jpeg'),
(10, 3, 'Corn & Cheese Steamed Momo', 'The stuffing for the momos is made from sweet corn sauteed with some ginger, garlic and green chillies along with chilli flakes and black pepper.', '170.00', '63b66f49781aa.jpg'),
(11, 4, 'Cheesey Chicken Strips ', 'Cheesy Chicken Strips are a low fat, oven baked version of the fast food classic.', '345.00', '63b863243b2b6.jpg'),
(12, 4, 'Spicy American Burger Combo', 'Tender and juicy chicken patty coated in spicy, crispy batter, topped with a creamy sauce, wrapped with lettuce, onions, seasoning and cheese.', '300.00', '63b8653c505e1.png'),
(13, 4, 'Honey Chilly Wings', 'The wings are sticky, sweet, spicy and have a bit of crunch thanks to a handful of chopped peanuts and sliced green onion sprinkled on top.', '250.00', '63b865c6651b4.jpg'),
(14, 5, 'Chicken Meatball Spaghetti Pasta', 'Meatball spaghetti is a simple dish, that just never gets old!', '360.00', '63b99ad6c6c96.jpg'),
(15, 5, 'White Sauce Chicken Lasagna', ' Tender shredded chicken and golden, garlicky mushrooms smothered in a cheesy Alfredo sauce, layered up with lasagna sheets.', '385.00', '63b99bfa2def9.jpg'),
(16, 5, 'Cheese Garlic Bread', 'Cheese Garlic Bread is one of the best breads to serve with soups and starters. ', '220.00', '63b99cd4591c0.jpg'),
(17, 2, 'Dal Khichdi', 'Khichdi is a simple, classic Indian dish made with rice and yellow mung lentils.', '135.00', '63baf8e817ca3.jpg'),
(18, 2, 'Paneer Kadai', ' Kadai Paneer is a spicy, warming, flavorful and super delicious dish made by cooking paneer & bell peppers in a fragrant, fresh ground spice.', '250.00', '63baf9540c055.jpg'),
(19, 3, 'Mixed Veg Pan Tossed Momo', 'Low Calorie Pan Fried Momos is a delicious snack recipe that is shallow-fried on a hot pan and steamed until the outer layer is golden & crisp.', '170.00', '63bafa9a14161.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hot_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hot_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'Hotel Janata Delux (Pure Veg)', 'janata@gmail.com', '+918242455414', 'http://janathadeluxepathumudi.com/', '7am', '9pm', 'Mon-Sat', ' Pathumudi Soudha, Bhagavathi Nagara, Lalbagh, Mangalore', '63b64e3506ef0.jpg', '2023-01-05 04:12:37'),
(2, 1, 'Hotel Sai Palace', 'saipalace@gmail.com', '+918657820001', 'https://saipalacehotels.com/', '10am', '11pm', 'Mon-Fri', 'Hampankatta, Mangalore', '63b64ef9dcfde.jpg', '2023-01-05 04:15:53'),
(3, 2, 'Momo Zone - The Momo Company', 'momo@gmail.com', '+918310688402', 'https://www.momozone.co.in/', '10am', '9pm', 'Mon-Sat', 'Kodailbail, Mangalore', '63b657c898fd7.jpg', '2023-01-05 04:53:28'),
(4, 4, 'Westburg', 'westburg@gmail.com', '+919285040404', 'not available', '9am', '12am', 'Mon-Sat', ' Thokottu, Mangaluru', '63b861e964aa4.png', '2023-01-06 18:01:13'),
(5, 3, 'Spindrift', 'spindrift@gmail.com', '+918244272262', 'Not Available', '11am', '11pm', 'Mon-Thu', ' Lalbagh, Mangalore', '63b99902aba83.jpg', '2023-01-07 16:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `hot_category`
--

CREATE TABLE `hot_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hot_category`
--

INSERT INTO `hot_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'INDIAN', '2023-01-05 04:08:27'),
(2, 'CHINEESE', '2023-01-05 04:08:42'),
(3, 'ITALIAN', '2023-01-05 04:08:50'),
(4, 'AMERICAN', '2023-01-05 04:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `date`) VALUES
(2, 'bharath', 'Bharath', 'M G', 'bharathmg2002@gmail.com', '9141589834', '5f4dcc3b5aa765d61d8327deb882cf99', 'Puttur', '2023-01-13 15:52:19');


-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `d_id` int(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `users_orders`
--
DELIMITER $$
CREATE TRIGGER `delete_order` AFTER DELETE ON `users_orders` FOR EACH ROW insert INTO deleted_orders(date,dld_id,dlo_id,quantity,status,total_price,dlu_id)values(old.date,old.d_id,old.o_id,old.quantity,old.status,old.total_price,old.u_id)
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `deleted_orders`
--
ALTER TABLE `deleted_orders`
  ADD PRIMARY KEY (`dlo_id`),
  ADD KEY `k7` (`dld_id`),
  ADD KEY `k8` (`dlu_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `k2` (`hot_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hot_id`),
  ADD KEY `k1` (`c_id`);

--
-- Indexes for table `hot_category`
--
ALTER TABLE `hot_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k6` (`o_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `k4` (`d_id`),
  ADD KEY `k5` (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hot_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hot_category`
--
ALTER TABLE `hot_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deleted_orders`
--
ALTER TABLE `deleted_orders`
  ADD CONSTRAINT `k7` FOREIGN KEY (`dld_id`) REFERENCES `dishes` (`d_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `k8` FOREIGN KEY (`dlu_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE;

--
-- Constraints for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD CONSTRAINT `k5` FOREIGN KEY (`d_id`) REFERENCES `dishes` (`d_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `k6` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
