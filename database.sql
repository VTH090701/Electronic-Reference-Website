-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 06:01 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cnweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngaybinhluan` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(16, 'sản phẩm tốt quá', 5, 15, '10:37:29am 09/11/2022'),
(18, 'tuyệt vời', 5, 15, '11:16:21am 09/11/2022');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(1, 'Điện thoại '),
(13, 'Tai nghe'),
(14, 'Laptop'),
(15, 'Chuột'),
(16, 'Bàn phim');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id1` int(11) NOT NULL,
  `name1` varchar(255) NOT NULL,
  `price` double(10,2) DEFAULT 0.00,
  `img` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id1`, `name1`, `price`, `img`, `mota`, `luotxem`, `iddm`) VALUES
(1, 'Chuột không dây Microsoft Arc Mouse Bluetooth ELG-00031', 1.99, 'chuotmirco.webp', '- Hệ thống theo dõi chuột với công nghệ Microsoft BlueTrack\r\n\r\n- Tốc độ theo dõi lên tới 762mm (30 inch) mỗi giây  \r\n\r\n- Thiết kế dẻo phần đuôi có thể uốn cong\r\n\r\n- Tính năng ghép nối Swift giúp dễ dàng ghép nối chuột với máy tính', 0, 15),
(2, 'Laptop ASUS TUF Gaming FX506LHB-HN188W 90NR03U2-M00B40', 17.00, 'laptoptuf.webp', '- CPU: Intel Core i5-10300H\r\n- Màn hình: 15.6\" IPS (1920 x 1080)\r\n- RAM: 1 x 8GB DDR4 2933MHz\r\n- Đồ họa: GTX 1650 4GB GDDR6 / Intel UHD Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 11 Home\r\n- Pin: 3 cell 48 Wh Pin liền\r\n- Khối lượng: 2.3kg', 0, 14),
(3, 'Chuột gaming không dây Logitech G703 Hero', 1.70, 'chuotlogitech.webp', '- Chuột gaming Logitech G703 \r\n- Cảm biến HERO cho DPI lên đến 16.000 \r\n- Kết nối Lightspeed không dây \r\n- Thời lượng pin ấn tượng lên đến 35 giờ và 60 giờ khi không chiếu sáng \r\n- 6 nút bấm có thể lập trình và led RGB tùy chỉnh tất cả đều chỉ bằng phần mềm HUB G', 0, 15),
(4, 'Tai nghe Over-ear Logitech G331 Wired Gaming', 1.06, 'tainghelogitech.webp', '- Kích thước Driver: 6 mm\r\n- Trở kháng: 39 ohms\r\n- Tần số phản hồi: 20Hz-20KHz', 0, 13),
(5, 'Xiaomi Redmi Note 11', 4.30, 'xiaomiredmi.webp', '- Chính hãng, Mới 100%, Nguyên seal\r\n- Màn hình: 6.43 Inches AMOLED, 90Hz\r\n- Camera sau: 50MP, 8MP, 2 x 2MP\r\n- Camera trước: 13MP\r\n- CPU: Snapdragon 680\r\n- Bộ nhớ: 64GB\r\n- RAM: 4GB\r\n- Hệ điều hành: Android', 0, 1),
(6, 'Bàn phím cơ Logitech Gaming G813', 3.00, 'banphimcog813.webp', '- Bàn phím cơ\r\n- Kết nối: USB\r\n- Switch: GL Clicky\r\n- Phím chức năng: Có', 57, 16),
(7, 'Bàn phím cơ không dây Newmen GM1000 Spring', 2.10, 'phimconewmen.webp', '- Được thiết kế với hoạ tiết in ấn đẹp và độc đáo, màu sắc tươi mới trẻ trung\r\n- Đa kết nối lên đến 5 thiết bị với 3 phương thức BT5.0, 2.4G, Type-C \r\n- 2 chế độ kết nối có dây & không dây, 18 hiệu ứng Led cài đặt sẵn, có phần mềm tùy chỉnh thêm\r\n- MX Socket Hotswap thay được tất cả các loại switch 3 và 5 chân thông dụng\r\n- Cherry Stab hỗ trợ cân bằng cho các nút to\r\n- Pin dung lượng lớn, tích hợp IC quản lý nguồn thông minh, thời gian sử dụng lên đến 150h', 0, 16),
(8, 'Chuột gaming Logitech G502 Hero KDA', 1.55, 'chuotg502.webp', '- Kết nối USB 2.0\r\n- Kiểu cầm Ergonomic / Công thái học\r\n- Độ phân giải (CPI/DPI) 25600DPI\r\n- Tên cảm biến HERO\r\n- Thời gian phản hồi 1 ms\r\n- Số nút bấm 11', 0, 15),
(9, 'Tai nghe Over-ear SteelSeries Arctis 5', 2.50, 'taingheoverear.webp', '- Driver giống với các tai nghe đời cao của Steelseries, cho chi tiết cao, âm thanh cân bằng và độ méo cực thấp.\r\n- Giả lập âm thanh vòm DTS 7.1 sống động\r\n- Led RGB 16,8 triệu màu tuỳ chỉnh có thẩm mỹ cao và cá tính riêng\r\n- Đệm đầu làm bằng vải đàn hồi có thể điều chỉnh, phân bố đều khối lượng tai nghe, loại bỏ tất cả các điểm gây áp lực. ', 0, 13),
(10, 'Samsung Galaxy S21+ 5G', 22.50, 'dtsamsungs21.webp', '- Chính hãng, Mới 100%, Nguyên seal\r\n- Màn hình: 6.7\" Flat FHD+\r\n- Camera sau: 2x 12MP, 64MP\r\n- Camera trước: 10MP\r\n- Bộ nhớ: 128GB\r\n- RAM: 8GB\r\n- Hệ điều hành: Android', 0, 1),
(11, 'Bàn phím Logitech G913 TKL HARPY LINEAR RGB Gaming', 4.20, 'banphimcog913.webp', '- Bàn phím cơ\r\n- Kết nối: 2.4 GHz Wireless\r\n- Switch: GL Linear\r\n- Phím chức năng: Có', 2, 16),
(12, 'Laptop ACER Nitro 5 Eagle', 23.00, 'laptopnitro5.webp', '- CPU: Intel Core i5-11400H\r\n- Màn hình: 15.6\" IPS (1920 x 1080),144Hz\r\n- RAM: 1 x 8GB DDR4 3200MHz\r\n- Đồ họa: RTX 3050 4GB GDDR6 / Intel UHD Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 11\r\n- Pin: 4 cell 57 Wh Pin liền\r\n- Khối lượng: 2.2kg', 0, 14),
(13, 'Tai nghe không dây SteelSeries Arctis 9', 5.50, 'loasteelseries.webp', '- Đáp ứng tần số micrô: 100–6.500 Hz\r\n- Độ nhạy của micrô -38 dBV / Pa\r\n- Trở kháng micrô: 2200 Ohm\r\n-  Phạm vi 40 ft / 12 m\r\n- Tuổi thọ pin 20 giờ\r\n- Cấu hình Bluetooth A2DP, HFP, HSP', 96, 13),
(14, ' iPhone 13 Pro 256GB', 27.00, 'ip13pro.webp', ' Chính hãng, Mới 100%, Nguyên seal\r\n- Màn hình: 6.1\" OLED Super Retina XDR LCD\r\n- Camera sau: 3x 12MP\r\n- Camera trước: 12MP\r\n- CPU: Apple A15 Bionic\r\n- Bộ nhớ: 256GB\r\n- Hệ điều hành: IOS', 168, 1),
(15, 'iPhone 14 Pro Max 128GB', 34.00, 'ip14pro.webp', '- Chính hãng, Mới 100%, Nguyên seal\r\n- Màn hình: LTPO Super Retina XDR OLED - 120Hz\r\n- Camera sau: 48MP, 2x 12MP\r\n- Camera trước: 12MP\r\n- CPU: A16 Bionic\r\n- Bộ nhớ: 128GB\r\n- RAM: 6GB\r\n- Hệ điều hành: IOS', 170, 1),
(16, 'Laptop ASUS ROG Strix SCAR G533ZM-LN013W', 47.60, 'laptoprog.webp', '- CPU: Intel Core i7-12700H\r\n- Màn hình: 15.6\" IPS (2560 x 1440)\r\n- RAM: 2 x 8GB DDR5\r\n- Đồ họa: RTX 3060 6GB GDDR6 / Intel Iris Xe Graphics\r\n- Lưu trữ: 1TB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 11 Home\r\n- Pin: 4 cell 90 Wh\r\n- Khối lượng: 2.3kg', 50, 14);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(5, 'huynhdinh', 'b1909902', 'yuriboyka2310@gmail.com', 'quận Ninh Kiều, tp Cần Thơ', '0919967074', 1),
(7, 'thanhhieu', '123456', 'thanhhieu@gmail.com', NULL, NULL, 1),
(8, 'trongnhan', '123456', 'trongnha@gmail.com.vn', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id1`),
  ADD KEY `fk_sanpham_danhmuc` (`iddm`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
