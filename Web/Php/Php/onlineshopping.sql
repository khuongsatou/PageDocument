-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 05, 2019 lúc 03:07 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `onlineshopping`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'Biba'),
(7, 'Flying Machine'),
(8, 'Nike'),
(9, 'Adidas'),
(10, 'Kidzee'),
(11, 'Ikea'),
(12, 'Philips');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total_amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amount`) VALUES
(1, 13, '0.0.0.0', 7, 'Computer Table', 'computertable.JPG', 8, 2000, 16000),
(2, 2, '0.0.0.0', 7, 'iPhone 5s', 'iphonemobile.JPG', 1, 25000, 25000),
(3, 5, '0.0.0.0', 7, 'Sony Vaio Laptop', 'vaio.JPG', 7, 25000, 175000),
(4, 4, '0.0.0.0', 7, 'Samsung Tab', 'samsungtab.JPG', 1, 10000, 10000),
(5, 1, '0.0.0.0', 4, 'Samsung Duos 2', 'samsungduos.JPG', 4, 5000, 20000),
(6, 5, '0.0.0.0', 4, 'Sony Vaio Laptop', 'vaio.JPG', 7, 25000, 175000),
(7, 1, '0.0.0.0', 5, 'Samsung Duos 2', 'samsungduos.JPG', 4, 5000, 20000),
(8, 5, '0.0.0.0', 5, 'Sony Vaio Laptop', 'vaio.JPG', 7, 25000, 175000),
(9, 2, '0.0.0.0', 5, 'iPhone 5s', 'iphonemobile.JPG', 1, 25000, 25000),
(10, 6, '0.0.0.0', 4, 'LG Aqua 2', 'lgaqua.JPG', 10, 15000, 150000),
(11, 13, '0.0.0.0', 4, 'Computer Table', 'computertable.JPG', 8, 2000, 16000),
(12, 11, '0.0.0.0', 4, 'Baby Shirt', 'babyshirt.JPG', 9, 500, 4500);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Electronics'),
(2, 'Ladies Wear'),
(3, 'Mens Wear'),
(4, 'Kids Wear'),
(5, 'Home Appliances'),
(6, 'Sports');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL,
  `p_status` varchar(100) NOT NULL,
  `tr_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer_order`
--

INSERT INTO `customer_order` (`id`, `uid`, `pid`, `p_name`, `p_price`, `p_qty`, `p_status`, `tr_id`) VALUES
(1, 6, 1, 'LG Aqua 2', 15000, 1, 'CONFIRMED', '15179'),
(30, 2, 6, 'LG Aqua 2', 15000, 1, 'CONFIRMED', '15179'),
(31, 2, 15, 'Football Shoes', 2500, 1, 'CONFIRMED', '15179'),
(32, 2, 16, 'Football', 600, 1, 'CONFIRMED', '15179');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, '1', '2', 'Samsung Duos 2', 5000, 'Samsung Duos 2 mobile phone', 'samsungduos.JPG', 'samsung mobile electronics'),
(2, '1', '3', 'iPhone 5s', 25000, 'iPhone mobile ', 'iphonemobile.JPG', 'apple iphone mobile electronics'),
(3, '1', '3', 'iPad', 30000, 'iPad tablet for use', 'iPad.jpg', 'apple ipad\r\ntablet'),
(4, '1', '2', 'Samsung Tab', 10000, 'samsung tablet for home use', 'samsungtab.JPG', 'samsung tablet electronics'),
(5, '1', '4', 'Sony Vaio Laptop', 25000, 'Vaio Laptop', 'vaio.JPG', 'sony\r\nlaptop vaio'),
(6, '1', '5', 'LG Aqua 2', 15000, 'LG aqua mobile phone all featured', 'lgaqua.JPG', 'lg mobile phone aqua'),
(7, '2', '6', 'Draped Lehenga', 1500, 'Matching Lehenga', 'lehenga.JPG', 'lehenga biba'),
(8, '2', '6', 'SIlk Saree', 1000, 'Pure Silk Saree', 'saree.JPG', 'biba\r\nsaree'),
(9, '3', '7', 'T-Shirt', 700, 'T-Shirt for summer', 'tshirt.JPG', 'flying\r\nmachine tshirt'),
(10, '3', '7', 'FM Jeans', 1800, 'Jeans for the ones who do', 'jeans.JPG', 'flying machine jeans'),
(11, '4', '10', 'Baby Shirt', 500, 'Shirt for the babies', 'babyshirt.JPG', 'kids shirt kidzee'),
(12, '4', '10', 'Kids Jeans', 800, 'Jeans for kids', 'kidsjeans.JPG', 'kids\r\njeans kidzee'),
(13, '5', '11', 'Computer Table', 2000, 'Table for computer', 'computertable.JPG', 'computer table ikea '),
(14, '5', '12', 'Trimmer', 1500, 'Trimmer by Philips', 'philipstrimmer.JPG', 'philips trimmer'),
(15, '6', '8', 'Football Shoes', 2500, 'Shoes to play football by Nike', 'nikeshoes.JPG', 'nike shoes football'),
(16, '6', '9', 'Football', 600, 'Football by Adidas', 'adidasfootball.JPG', 'football adidas');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `received_payment`
--

CREATE TABLE `received_payment` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `amt` int(100) NOT NULL,
  `tr_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'admin', 'YuKaRi', 'admin@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567', '123/22', '456/22'),
(2, 'Abhijeet', 'Kumar', 'abhinav@krotos.com', 'c4ca4238a0b923820dcc509a6f75849b', '7631649503', 'West Lohanipur,\r\nKadamkuan, MNS Lane', 'Patna'),
(3, 'Krotos', 'Kumar', 'kroto@star.com', 'e3daab6a6b16a140aaf0f1df98d3be24', '7631649503', 'West Lohanipur,\r\nKadamkuan, MNS Lane', 'Patna'),
(4, 'Khuong', 'Rueyreo', 'khuonghaa@gmail.com', 'c63091462b90cdbb6ce26758851998c2', '0356241963', '9347394', '2323'),
(5, 'Khuong', 'Nguyen Van', 'khuongYua@gmail.com', 'c63091462b90cdbb6ce26758851998c2', '0356241963', '12345', '6789'),
(6, 'Khuong', 'Rueyreoi', 'khuongs@gmail.com', 'c63091462b90cdbb6ce26758851998c2', '0356241963', '9347394', '2323'),
(7, 'KhuongHa', 'Vn', 'khuongha@gmail.com', 'c63091462b90cdbb6ce26758851998c2', '0356241963', '290', '66');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`,`pid`),
  ADD KEY `pid` (`pid`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat` (`product_cat`);

--
-- Chỉ mục cho bảng `received_payment`
--
ALTER TABLE `received_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Chỉ mục cho bảng `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `products` (`product_id`);

--
-- Các ràng buộc cho bảng `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `customer_order_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `customer_order_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user_info` (`user_id`);

--
-- Các ràng buộc cho bảng `received_payment`
--
ALTER TABLE `received_payment`
  ADD CONSTRAINT `received_payment_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user_info` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
