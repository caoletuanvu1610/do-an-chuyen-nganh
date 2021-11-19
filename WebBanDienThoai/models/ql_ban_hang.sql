-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th5 28, 2021 lúc 12:59 PM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ql_ban_hang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenbaner` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `tenbaner`) VALUES
(1, 'banner1.png'),
(2, 'banner2.jpg'),
(3, 'banner3.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

DROP TABLE IF EXISTS `chitiethoadon`;
CREATE TABLE IF NOT EXISTS `chitiethoadon` (
  `ma_ct_hoa_don` int(11) NOT NULL AUTO_INCREMENT,
  `mahoadon` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` double NOT NULL,
  `thanh_tien` double NOT NULL,
  PRIMARY KEY (`ma_ct_hoa_don`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`ma_ct_hoa_don`, `mahoadon`, `masp`, `soluong`, `dongia`, `thanh_tien`) VALUES
(49, 113, 29, 2, 500000, 1000000),
(48, 113, 6, 1, 17000000, 17000000),
(47, 113, 3, 1, 15000000, 15000000),
(50, 113, 30, 1, 3000000, 3000000),
(51, 114, 3, 1, 15000000, 15000000),
(52, 114, 3, 1, 15000000, 15000000),
(53, 116, 2, 11, 12000000, 132000000),
(54, 116, 2, 11, 12000000, 132000000),
(55, 118, 3, 1, 15000000, 15000000),
(56, 118, 3, 1, 15000000, 15000000),
(57, 120, 3, 1, 15000000, 15000000),
(58, 120, 17, 1, 5500000, 5500000),
(59, 120, 3, 1, 15000000, 15000000),
(60, 120, 17, 1, 5500000, 5500000),
(61, 124, 2, 1, 12000000, 12000000),
(62, 124, 2, 1, 12000000, 12000000),
(63, 126, 30, 1, 3000000, 3000000),
(64, 126, 30, 1, 3000000, 3000000),
(65, 128, 2, 2, 12000000, 24000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE IF NOT EXISTS `hoadon` (
  `mahd` int(11) NOT NULL AUTO_INCREMENT,
  `makh` int(11) NOT NULL,
  `ngayban` date NOT NULL,
  PRIMARY KEY (`mahd`),
  KEY `FK_HD_USER` (`makh`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `makh`, `ngayban`) VALUES
(121, 133, '2020-12-07'),
(120, 133, '2020-12-07'),
(119, 123, '2020-12-07'),
(118, 123, '2020-12-07'),
(117, 121, '2020-12-07'),
(116, 121, '2020-12-07'),
(115, 119, '2020-12-07'),
(114, 119, '2020-12-07'),
(113, 116, '2020-12-07'),
(122, 135, '2020-12-07'),
(123, 135, '2020-12-07'),
(124, 137, '2020-12-07'),
(125, 137, '2020-12-07'),
(126, 139, '2020-12-07'),
(127, 139, '2020-12-07'),
(128, 141, '2020-12-07'),
(129, 142, '2020-12-07'),
(130, 143, '2020-12-07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

DROP TABLE IF EXISTS `loaisp`;
CREATE TABLE IF NOT EXISTS `loaisp` (
  `maloai` int(11) NOT NULL AUTO_INCREMENT,
  `tenloai` varchar(30) NOT NULL,
  PRIMARY KEY (`maloai`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`maloai`, `tenloai`) VALUES
(1, 'Điện Thoại'),
(2, 'Laptop'),
(3, 'Máy tính Bảng'),
(4, 'Smart Wacth'),
(5, 'Tai Nghe'),
(6, 'Loa Bluetooth');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `masp` int(11) NOT NULL AUTO_INCREMENT,
  `maloai` int(11) NOT NULL,
  `tensp` varchar(30) NOT NULL,
  `gia` double NOT NULL,
  `hinh` varchar(30) NOT NULL,
  `hang` varchar(100) NOT NULL,
  `manhinh` varchar(100) NOT NULL,
  `hedieuhanh` varchar(100) NOT NULL,
  `ram` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  PRIMARY KEY (`masp`),
  KEY `FK_SP_LoaiSP` (`maloai`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `maloai`, `tensp`, `gia`, `hinh`, `hang`, `manhinh`, `hedieuhanh`, `ram`, `pin`) VALUES
(1, 1, 'SamSung N10', 10000000, 'SamSungNote10.jpg', 'SamSung', 'Dynamic AMOLED, 6.8\", Quad HD+ (2K+)', 'Android', '12 GB', '4300 mAh, có sạc nhanh'),
(2, 2, 'Dell Vostro', 12000000, 'DellVostro.jpg', 'Dell', 'Full HD', 'Win 10', '4 GB', 'Lion'),
(3, 2, 'MacBook Pro 15', 15000000, 'Mac15.jpg', 'Apple', '2K', 'Mac OS', '8 GB', 'Lion'),
(4, 1, 'RedMi 5', 5000000, 'Redmi5.jpg', 'Xiaomi', 'Full HD', 'AnDroid', '8GB', '4000 mAh'),
(5, 1, 'Iphone 12', 30000000, 'IPhone12.jpg', 'Apple', '6.7\"', 'IOS', '6 GB', '3687 mAh, có sạc nhanh'),
(6, 2, 'Acer Nitro5', 17000000, 'Nitro5.jpg', 'Acer', 'Full HD', 'Win 10', '8 GB', 'Lion'),
(7, 1, 'Huawei', 10000000, 'Huawei.jpg', 'Huawei', 'Full HD', 'Android', '8 GB', '4000 mAh '),
(8, 1, 'OPPO Reno2', 10000000, 'oppoReno2.jpg', 'OPPO', 'Full HD', 'Android', '8 GB', '4015 mAh, có sạc nhanh'),
(9, 2, 'Surface 3', 20000000, 'Surface3.jpg', 'Microsoft', 'Full HD', 'Win 10', '8 GB', 'Lion'),
(10, 5, 'Air Pods Pro', 6000000, 'AriPodsPro.jpg', 'Apple', 'Không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '8 h liên tục'),
(11, 5, 'Defunc True Go', 3000000, 'Defunc-True_Go.jpg', 'Defunc ', 'Không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '8 tiếng liên tục'),
(12, 6, 'JBL Pulse4', 3500000, 'JBLPulse4.jpg', 'JBL', 'không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '8 tiếng liên tục'),
(13, 6, 'Xiaomi Square', 500000, 'xiaomisquare.jpg', 'Xiaomi', 'Không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '8 tiếng liên tục'),
(14, 1, 'RedMi 9', 9000000, 'Redmi9.jpg', 'Xiaomi', 'Full HD', 'Android', '8 GB', '4000 mAh'),
(15, 1, 'SamSung A51', 8000000, 'SamsungA51.jpg', 'SamSung', 'Full HD', 'Android', '8 GB', '3600 mAh'),
(16, 1, 'OPPO A5', 7000000, 'oppoA5.jpg', 'OPPO', 'Full HD', 'Android', '8 GB', '3600 mAh'),
(17, 1, 'Samsung A81', 5500000, 'SamsungA51.jpg', 'SamSung', 'Full HD', 'Android', '8 GB', '4000 mAh'),
(18, 2, 'HP 15s', 15000000, 'Hp15s.jpg', 'HP', 'Full HD ', 'Win 10', '8 GB', 'Lion '),
(19, 2, 'Asus VivoBook 14', 14000000, 'AsusVivobook14.jpg', 'Asus', 'Full HD', 'Win 10', '8 GB', 'Lion'),
(20, 2, 'Lenovo IdeaPad', 13000000, 'LenovoIdeaPad.jpg', 'Lenovo', 'Full HD', 'Win 10', '8 GB', 'Lion'),
(21, 6, 'Speaker Bottle', 30000000, 'Speaker-Bottle.jpg', 'Speaker Bottle', 'Không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '8 tiếng liên tục'),
(22, 6, 'SRS-XB22', 3500000, 'SRS-XB22.jpg', 'Sony', 'Không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '8 tiếng liên tục'),
(23, 5, 'JBL-T500BT', 4500000, 'JBL-T500BT.jpg', 'JBL', 'Không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '8 tiếng liên tục'),
(24, 5, 'WH-CH510', 1500000, 'WH-CH510.jpg', 'Sony', 'Không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '10 tiếng liên tục'),
(25, 3, 'IPad8-10.2', 8000000, 'IPad8-10.2.jpg', 'Apple', 'Full HD', 'ISO', '3 GB', '8600 mAh'),
(26, 4, 'AppleWatch6', 8500000, 'AppleWatch6.jpg', 'Apple', '1.57 inch', 'watchOS 7.0', 'Apple S5 64 bit', '334 mAh'),
(27, 3, 'IPad Pro11', 12000000, 'IPadPro11.jpg', 'Apple', 'Full HD', 'IOS', '6 GB', '1000 mAh'),
(28, 3, 'Lenovo M10', 5000000, 'LenovoM10.jpg', 'Lenovo', 'Full HD', 'Đang cập nhật', '4 GB', '3600 mAh'),
(29, 4, 'Galaxy Fit', 500000, 'GalaxyFit.jpg', 'SamSung', 'PMOLED', 'Android 5.0 , iOS 9 trở lên', '128 MB', '334 mAh'),
(30, 4, 'Lenovo S2', 3000000, 'LenovoS2.jpg', 'Lenovo', '1.4 \"240X240 ', 'Đang cập nhật', '128 MB', '120 mAh'),
(31, 3, 'Galaxy Tab6 Lite', 3500000, 'Tab6Lite.jpg', 'SamSung', 'PLS LCD, 10.4\"', 'Android 10', '4 GB', '7040 mAh'),
(32, 4, 'Samsung Gear S3', 7000000, 'SamsungGearS3.jpg', 'SamSung', 'AMOLED', 'OS TIZEN', '4 GB', '334 mAh'),
(33, 3, 'Galaxy Tab7 ', 9000000, 'Tab7.jpg', 'SamSung', 'PLS LCD, 13\"', 'OS TIZEN', '4 GB', '7200 mAh'),
(73, 1, 'Air Pod', 12000000, 'AirPod.jpg', 'Apple', 'Không', 'IOS', '4 GB', '3000 mAh'),
(74, 1, 'Iphone 11 Pro', 12000000, 'images.jpg', 'Apple', 'Không', 'IOS', '4 GB', '3000 mAh'),
(75, 3, 'Air Pob', 3500000, 'AirPod.jpg', 'Apple', 'Retina', 'Win 10', '4 GB', '3000 mAh'),
(85, 1, 'Air Pod', 12000000, 'images.jpg', 'Apple', 'Không', 'IOS', '4 GB', '3000 mAh'),
(86, 1, 'Air Pod99', 350000099, 'AirPod.jpg', 'Apple', 'Retina', 'Win 10', '4 GB', '3000 mAh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `makh` int(11) NOT NULL AUTO_INCREMENT,
  `tenkh` varchar(50) NOT NULL,
  `diachi` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `sdt` varchar(150) NOT NULL,
  `tendangnhap` varchar(150) NOT NULL,
  `matkhau` varchar(150) NOT NULL,
  PRIMARY KEY (`makh`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`makh`, `tenkh`, `diachi`, `email`, `sdt`, `tendangnhap`, `matkhau`) VALUES
(144, 'Truong Ngoc Khanh', 'Pham The Hien', 'khanhstu99@gmail.com', '0123456789', 'khanhert', 'ae8b5aa26a3ae31612eec1d1f6ffbce9'),
(143, 'Truong Ngoc Khanh', 'Pham The Hien', 'adasdsad@gmail.com', '0987654321', 'khanhert122', 'd41d8cd98f00b204e9800998ecf8427e'),
(142, 'Truong Ngoc Khanh', 'Pham The Hien', 'adasdsad@gmail.com', '0987654321', 'khanhert122', '202cb962ac59075b964b07152d234b70'),
(141, 'Truong Ngoc Khanh', 'Pham The Hien', 'adasdsad@gmail.com', '0987654321', 'khanhert122', '202cb962ac59075b964b07152d234b70'),
(140, 'Truong Ngoc Khanh', 'Pham The Hien', 'khanhert@gmail.com', '0123456789', 'khanhert', '15de21c670ae7c3f6f3f1f37029303c9'),
(139, 'Truong Ngoc Khanh', 'Pham The Hien', 'khanhert@gmail.com', '0123456789', 'khanhert', '15de21c670ae7c3f6f3f1f37029303c9'),
(138, 'Truong Ngoc Khanh', 'Pham The Hien', 'khanhert@gmail.com', '0123456789', 'khanhert', '202cb962ac59075b964b07152d234b70'),
(137, 'Truong Ngoc Khanh', 'Pham The Hien', 'khanhert@gmail.com', '0123456789', 'khanhert', '202cb962ac59075b964b07152d234b70'),
(136, 'Cao Le Tuan Vu', 'Pham The Hien', 'khanhert@gmail.com', '0123456789', 'khanhert122', '202cb962ac59075b964b07152d234b70'),
(135, 'Cao Le Tuan Vu', 'Pham The Hien', 'khanhert@gmail.com', '0123456789', 'khanhert122', '202cb962ac59075b964b07152d234b70'),
(133, 'Cao Le Tuan Vu', 'Pham The Hien', 'khanhert@gmail.com', '0123456789', 'khanhert122', '202cb962ac59075b964b07152d234b70'),
(134, 'Cao Le Tuan Vu', 'Pham The Hien', 'khanhert@gmail.com', '0123456789', 'khanhert122', '202cb962ac59075b964b07152d234b70'),
(132, 'Cao Le Tuan Vu', 'Pham The Hien123123123213', 'khanhert@gmail.com', '', 'khanhert', 'd41d8cd98f00b204e9800998ecf8427e'),
(131, 'Cao Le Tuan Vu', 'Pham The Hien', 'khanhert@gmail.com', '0123456789', 'khanhert', 'd41d8cd98f00b204e9800998ecf8427e');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_SP_LoaiSP` FOREIGN KEY (`maloai`) REFERENCES `loaisp` (`maloai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
