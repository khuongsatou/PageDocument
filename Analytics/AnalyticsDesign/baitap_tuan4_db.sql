-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2019 lúc 12:48 AM
-- Phiên bản máy phục vụ: 10.3.15-MariaDB
-- Phiên bản PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baitap_tuan4_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_hinh_app`
--

CREATE TABLE `cau_hinh_app` (
  `id` int(10) UNSIGNED NOT NULL,
  `co_hoi_sai` int(11) NOT NULL,
  `thoi_gian_tra_loi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_hinh_app`
--

INSERT INTO `cau_hinh_app` (`id`, `co_hoi_sai`, `thoi_gian_tra_loi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 20, NULL, NULL, NULL),
(2, 1, 20, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_hinh_diem_cau_hoi`
--

CREATE TABLE `cau_hinh_diem_cau_hoi` (
  `id` int(10) UNSIGNED NOT NULL,
  `thu_tu` int(11) NOT NULL,
  `diem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_hinh_diem_cau_hoi`
--

INSERT INTO `cau_hinh_diem_cau_hoi` (`id`, `thu_tu`, `diem`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_hinh_tro_giup`
--

CREATE TABLE `cau_hinh_tro_giup` (
  `id` int(10) UNSIGNED NOT NULL,
  `loai_tro_giup` int(11) NOT NULL,
  `thu_tu` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_hinh_tro_giup`
--

INSERT INTO `cau_hinh_tro_giup` (`id`, `loai_tro_giup`, `thu_tu`, `credit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 1200, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_hoi`
--

CREATE TABLE `cau_hoi` (
  `id` int(10) UNSIGNED NOT NULL,
  `noi_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linh_vuc_id` int(10) UNSIGNED NOT NULL,
  `phuong_an_a` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dap_an` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_hoi`
--

INSERT INTO `cau_hoi` (`id`, `noi_dung`, `linh_vuc_id`, `phuong_an_a`, `phuong_an_b`, `phuong_an_c`, `phuong_an_d`, `dap_an`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Đây là câu hỏi?', 1, 'Hỏi A', 'Hỏi B', 'Hỏi C', 'Hỏi D', 'D', NULL, NULL, NULL),
(2, 'Câu hỏi 2', 1, 'Đáp A', 'Đáp A', 'Đáp A', 'Đáp A', 'D', '2019-11-12 18:31:00', '2019-11-12 18:31:00', NULL),
(3, 'Câu hỏi 3', 1, 'Đáp A', 'Đáp A', 'Đáp A', 'Đáp A', 'D', '2019-11-12 18:31:10', '2019-11-12 18:31:10', NULL),
(4, 'Câu hỏi 4', 1, 'Đáp A', 'Đáp A', 'Đáp A', 'Đáp A', 'D', '2019-11-12 18:31:17', '2019-11-12 18:31:17', NULL),
(5, 'Câu hỏi 5', 1, 'Đáp A', 'Đáp A', 'Đáp A', 'Đáp A', 'D', '2019-11-12 18:31:28', '2019-11-12 18:31:28', NULL),
(6, 'Câu hỏi 6', 1, 'Đáp A', 'Đáp A', 'Đáp A', 'Đáp A', 'D', '2019-11-12 18:31:34', '2019-11-12 18:31:34', NULL),
(7, 'Câu hỏi 8', 1, 'Đáp A', 'Đáp A', 'Đáp A', 'Đáp A', 'D', '2019-11-12 18:31:40', '2019-11-12 18:31:40', NULL),
(8, 'Câu hỏi 9', 1, 'Đáp A', 'Đáp A', 'Đáp A', 'Đáp A', 'D', '2019-11-12 18:31:48', '2019-11-12 18:31:48', NULL),
(9, 'Câu hỏi 10', 1, 'Đáp A', 'Đáp A', 'Đáp A', 'Đáp A', 'D', '2019-11-12 18:31:56', '2019-11-12 18:31:56', NULL),
(10, 'Câu hỏi 11', 1, 'Đáp A', 'Đáp A', 'Đáp A', 'Đáp A', 'D', '2019-11-12 18:32:04', '2019-11-12 18:32:04', NULL),
(11, 'Câu hỏi 12', 1, 'Đáp A', 'Đáp A', 'Đáp A', 'Đáp A', 'D', '2019-11-12 18:32:10', '2019-11-12 18:32:10', NULL),
(12, 'Câu hahahhaha', 1, 'dễ', 'dễ', 'dễ', 'dễ', 'A', '2019-11-12 22:57:49', '2019-11-12 22:57:49', NULL),
(13, '0843u', 2, '2323', '2323', '2323', '2323', '343', '2019-11-12 23:37:12', '2019-11-12 23:37:12', NULL),
(14, '0843u1', 2, '2323', '2323', '2323', '2323', '343', '2019-11-12 23:37:23', '2019-11-12 23:37:23', NULL),
(15, '0843u123', 2, '2323', '2323', '2323', '2323', '343', '2019-11-12 23:37:35', '2019-11-12 23:37:35', NULL),
(16, 'câu hỏi Errr', 1, 'dễ', 'dễ', 'dễ', 'dễ', 'A', '2019-11-18 06:32:59', '2019-11-18 06:32:59', NULL),
(17, 'câu hỏi Errr22', 1, 'dễ', 'dễ', 'dễ', 'dễ', 'A', '2019-11-18 06:33:06', '2019-11-18 06:33:06', NULL),
(18, 'câu hỏi Errr2244', 1, 'dễ', 'dễ', 'dễ', 'dễ', 'A', '2019-11-18 06:33:10', '2019-11-18 06:33:10', NULL),
(19, 'câu hỏi Errr22445455', 1, 'dễ', 'dễ', 'dễ', 'dễ', 'A', '2019-11-18 06:33:14', '2019-11-18 06:33:14', NULL),
(20, 'câu434 hỏi Errr22445455', 1, 'dễ', 'dễ', 'dễ', 'dễ', 'A', '2019-11-18 06:33:19', '2019-11-18 06:33:19', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_luot_choi`
--

CREATE TABLE `chi_tiet_luot_choi` (
  `id` int(10) UNSIGNED NOT NULL,
  `luot_choi_id` int(10) UNSIGNED NOT NULL,
  `cau_hoi_id` int(10) UNSIGNED NOT NULL,
  `phuong_an` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_luot_choi`
--

INSERT INTO `chi_tiet_luot_choi` (`id`, `luot_choi_id`, `cau_hoi_id`, `phuong_an`, `diem`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'A', 50, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `goi_credit`
--

CREATE TABLE `goi_credit` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_goi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` int(11) NOT NULL,
  `so_tien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `goi_credit`
--

INSERT INTO `goi_credit` (`id`, `ten_goi`, `credit`, `so_tien`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'gói 50k', 200, 50, NULL, NULL, NULL),
(2, 'nà ní', 70, 23982, '2019-11-13 00:29:59', '2019-11-13 00:29:59', NULL),
(3, '5 ty', 50000, 3434, '2019-11-14 06:32:55', '2019-11-14 06:32:55', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_su_mua_credit`
--

CREATE TABLE `lich_su_mua_credit` (
  `id` int(10) UNSIGNED NOT NULL,
  `nguoi_choi_id` int(10) UNSIGNED NOT NULL,
  `goi_credit_id` int(10) UNSIGNED NOT NULL,
  `credit` int(11) NOT NULL,
  `so_tien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lich_su_mua_credit`
--

INSERT INTO `lich_su_mua_credit` (`id`, `nguoi_choi_id`, `goi_credit_id`, `credit`, `so_tien`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 200, 50, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linh_vuc`
--

CREATE TABLE `linh_vuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_linh_vuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `linh_vuc`
--

INSERT INTO `linh_vuc` (`id`, `ten_linh_vuc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'toán', NULL, NULL, NULL),
(2, 'lý', NULL, NULL, NULL),
(3, 'hóa', NULL, NULL, NULL),
(4, 'sinh', NULL, NULL, NULL),
(5, 'địa', NULL, NULL, NULL),
(6, 'văn', '2019-11-19 10:09:32', '2019-11-19 10:09:32', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luot_choi`
--

CREATE TABLE `luot_choi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nguoi_choi_id` int(10) UNSIGNED NOT NULL,
  `so_cau` int(11) NOT NULL,
  `diem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_gio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `luot_choi`
--

INSERT INTO `luot_choi` (`id`, `nguoi_choi_id`, `so_cau`, `diem`, `ngay_gio`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2000', '1:20', NULL, NULL, NULL),
(2, 1, 2, '3', '44', NULL, NULL, NULL),
(3, 1, 4, '5', '446', NULL, NULL, NULL),
(4, 1, 23, '3434', '34343', NULL, NULL, NULL),
(5, 1, 223, '34334', '344343', NULL, NULL, NULL),
(6, 1, 2323, '34334', '344343', NULL, NULL, NULL),
(7, 1, 21, '32', '3443463', NULL, NULL, NULL),
(8, 1, 23323, '334324', '3444343', NULL, NULL, NULL),
(9, 1, 24223, '346334', '3443343', NULL, NULL, NULL),
(10, 1, 25223, '345334', '3443433', NULL, NULL, NULL),
(11, 1, 1, '34334', '344343', NULL, NULL, NULL),
(12, 1, 2, '34334', '344343', NULL, NULL, NULL),
(13, 1, 3, '34334', '344343', NULL, NULL, NULL),
(14, 1, 4, '34334', '344343', NULL, NULL, NULL),
(15, 1, 5, '34334', '344343', NULL, NULL, NULL),
(16, 1, 6, '34334', '344343', NULL, NULL, NULL),
(17, 1, 7, '34334', '344343', NULL, NULL, NULL),
(18, 1, 8, '34334', '344343', NULL, NULL, NULL),
(19, 1, 3, '200', '2302', '2019-11-15 02:21:00', '2019-11-15 02:21:00', NULL),
(20, 1, 9, 'Điểm: 0', 'Fri Nov 15 16:22:06 GMT+07:00 2019', '2019-11-15 02:22:01', '2019-11-15 02:22:01', NULL),
(21, 1, 9, 'Điểm: 100', '01:41:04 15/11/2019', '2019-11-15 02:40:56', '2019-11-15 02:40:56', NULL),
(22, 1, 6, 'Điểm: 100', '08:45:04 15/11/2019', '2019-11-15 02:45:03', '2019-11-15 02:45:03', NULL),
(23, 1, 6, '250', '47:46:04 15/11/2019', '2019-11-15 02:46:42', '2019-11-15 02:46:42', NULL),
(24, 1, 10, '650', '38:14:05 15/11/2019', '2019-11-15 03:14:33', '2019-11-15 03:14:33', NULL),
(25, 1, 2, '0', '14:15:05 15/11/2019', '2019-11-15 03:15:09', '2019-11-15 03:15:09', NULL),
(26, 1, 3, '0', '57:19:05 15/11/2019', '2019-11-15 03:19:52', '2019-11-15 03:19:52', NULL),
(27, 1, 3, '0', '29:20:05 15/11/2019', '2019-11-15 03:20:24', '2019-11-15 03:20:24', NULL),
(28, 1, 3, '0', '06:21:05 15/11/2019', '2019-11-15 03:21:01', '2019-11-15 03:21:01', NULL),
(29, 1, 11, '0', '26:55:11 17/11/2019', '2019-11-17 09:55:27', '2019-11-17 09:55:27', NULL),
(30, 1, 6, '0', '01:57:11 17/11/2019', '2019-11-17 09:57:02', '2019-11-17 09:57:02', NULL),
(31, 1, 6, '0', '15:46:06 18/11/2019', '2019-11-17 16:46:16', '2019-11-17 16:46:16', NULL),
(32, 1, 7, '0', '47:56:06 18/11/2019', '2019-11-17 16:56:48', '2019-11-17 16:56:48', NULL),
(33, 1, 5, '0', '16:57:06 18/11/2019', '2019-11-17 16:57:16', '2019-11-17 16:57:16', NULL),
(34, 1, 7, '0', '09:20:08 18/11/2019', '2019-11-17 18:20:10', '2019-11-17 18:20:10', NULL),
(35, 1, 6, '0', '02:21:08 18/11/2019', '2019-11-17 18:21:03', '2019-11-17 18:21:03', NULL),
(36, 1, 10, '0', '24:35:09 18/11/2019', '2019-11-18 07:35:24', '2019-11-18 07:35:24', NULL),
(37, 1, 13, '50', '56:36:09 18/11/2019', '2019-11-18 07:36:55', '2019-11-18 07:36:55', NULL),
(38, 1, 6, '0', '05:39:09 18/11/2019', '2019-11-18 07:39:05', '2019-11-18 07:39:05', NULL),
(39, 1, 18, '0', '11:17:09 19/11/2019', '2019-11-19 07:17:11', '2019-11-19 07:17:11', NULL),
(40, 1, 8, '50', '15:21:09 19/11/2019', '2019-11-19 07:21:14', '2019-11-19 07:21:14', NULL),
(41, 1, 14, '0', '28:54:09 19/11/2019', '2019-11-19 07:54:27', '2019-11-19 07:54:27', NULL),
(42, 1, 13, '200', '18:08:10 19/11/2019', '2019-11-19 08:08:17', '2019-11-19 08:08:17', NULL),
(43, 1, 6, '0', '50:48:11 19/11/2019', '2019-11-19 09:48:50', '2019-11-19 09:48:50', NULL),
(44, 1, 14, '0', '20:26:01 20/11/2019', '2019-11-19 23:26:18', '2019-11-19 23:26:18', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_10_01_090042_create_table_linh_vuc', 1),
(2, '2019_10_02_141453_create_table_nguoi_choi', 1),
(3, '2019_10_03_141614_create_table_goi_credit', 1),
(4, '2019_10_04_093238_create_table_cau_hoi', 1),
(5, '2019_10_05_141426_create_table_luot_choi', 1),
(6, '2019_10_06_141716_create_table_cau_hinh_diem_cau_hoi', 1),
(7, '2019_10_06_141737_create_table_cau_hinh_app', 1),
(8, '2019_10_06_141800_create_table_quan_tri_vien', 1),
(9, '2019_10_06_141829_create_table_cau_hinh_tro_giup', 1),
(10, '2019_10_08_141536_create_table_lich_su_mua_credit', 1),
(11, '2019_10_09_140144_create_table_chi_tiet_luot_choi', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_choi`
--

CREATE TABLE `nguoi_choi` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_dai_dien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem_cao_nhat` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_choi`
--

INSERT INTO `nguoi_choi` (`id`, `ten_dang_nhap`, `mat_khau`, `email`, `hinh_dai_dien`, `diem_cao_nhat`, `credit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', '123', 'yoshi240499@gmail.com', '2033544060_1574226126.jpeg', 123, 347900, NULL, '2019-11-19 22:02:06', NULL),
(2, 'user', '123', 'yoshi1@gmail.com', '2.jpg', 30, 900, NULL, '2019-11-14 06:02:41', NULL),
(3, 'user1', '123', 'yoshi2@gmail.com', '', 0, 0, '2019-11-11 08:25:35', '2019-11-11 08:25:35', NULL),
(4, 'user3', '123', 'yoshi3@gmail.com', '', 0, 0, '2019-11-11 08:27:54', '2019-11-11 08:27:54', NULL),
(5, 'user4', '123', 'yoshie@gmail.com', '', 0, 0, '2019-11-11 08:35:25', '2019-11-11 08:35:25', NULL),
(6, 'avct', '123', 'yoshi45@gmail.com', '', 0, 0, '2019-11-19 09:35:39', '2019-11-19 09:35:39', NULL),
(7, 'test', '123', 'yoshi46te@gmail.com', '', 0, 0, '2019-11-19 09:36:30', '2019-11-19 09:36:30', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_tri_vien`
--

CREATE TABLE `quan_tri_vien` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ho_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quan_tri_vien`
--

INSERT INTO `quan_tri_vien` (`id`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', '123', 'Nguyễn Văn Khương', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cau_hinh_app`
--
ALTER TABLE `cau_hinh_app`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cau_hinh_diem_cau_hoi`
--
ALTER TABLE `cau_hinh_diem_cau_hoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cau_hinh_tro_giup`
--
ALTER TABLE `cau_hinh_tro_giup`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cau_hoi`
--
ALTER TABLE `cau_hoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cau_hoi_linh_vuc_id_foreign` (`linh_vuc_id`);

--
-- Chỉ mục cho bảng `chi_tiet_luot_choi`
--
ALTER TABLE `chi_tiet_luot_choi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chi_tiet_luot_choi_cau_hoi_id_foreign` (`cau_hoi_id`),
  ADD KEY `chi_tiet_luot_choi_luot_choi_id_foreign` (`luot_choi_id`);

--
-- Chỉ mục cho bảng `goi_credit`
--
ALTER TABLE `goi_credit`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lich_su_mua_credit`
--
ALTER TABLE `lich_su_mua_credit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lich_su_mua_credit_nguoi_choi_id_foreign` (`nguoi_choi_id`),
  ADD KEY `lich_su_mua_credit_goi_credit_id_foreign` (`goi_credit_id`);

--
-- Chỉ mục cho bảng `linh_vuc`
--
ALTER TABLE `linh_vuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `luot_choi`
--
ALTER TABLE `luot_choi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `luot_choi_nguoi_choi_id_foreign` (`nguoi_choi_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoi_choi`
--
ALTER TABLE `nguoi_choi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quan_tri_vien`
--
ALTER TABLE `quan_tri_vien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cau_hinh_app`
--
ALTER TABLE `cau_hinh_app`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cau_hinh_diem_cau_hoi`
--
ALTER TABLE `cau_hinh_diem_cau_hoi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cau_hinh_tro_giup`
--
ALTER TABLE `cau_hinh_tro_giup`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cau_hoi`
--
ALTER TABLE `cau_hoi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_luot_choi`
--
ALTER TABLE `chi_tiet_luot_choi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `goi_credit`
--
ALTER TABLE `goi_credit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `lich_su_mua_credit`
--
ALTER TABLE `lich_su_mua_credit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `linh_vuc`
--
ALTER TABLE `linh_vuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `luot_choi`
--
ALTER TABLE `luot_choi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `nguoi_choi`
--
ALTER TABLE `nguoi_choi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `quan_tri_vien`
--
ALTER TABLE `quan_tri_vien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cau_hoi`
--
ALTER TABLE `cau_hoi`
  ADD CONSTRAINT `cau_hoi_linh_vuc_id_foreign` FOREIGN KEY (`linh_vuc_id`) REFERENCES `linh_vuc` (`id`);

--
-- Các ràng buộc cho bảng `chi_tiet_luot_choi`
--
ALTER TABLE `chi_tiet_luot_choi`
  ADD CONSTRAINT `chi_tiet_luot_choi_cau_hoi_id_foreign` FOREIGN KEY (`cau_hoi_id`) REFERENCES `cau_hoi` (`id`),
  ADD CONSTRAINT `chi_tiet_luot_choi_luot_choi_id_foreign` FOREIGN KEY (`luot_choi_id`) REFERENCES `luot_choi` (`id`);

--
-- Các ràng buộc cho bảng `lich_su_mua_credit`
--
ALTER TABLE `lich_su_mua_credit`
  ADD CONSTRAINT `lich_su_mua_credit_goi_credit_id_foreign` FOREIGN KEY (`goi_credit_id`) REFERENCES `goi_credit` (`id`),
  ADD CONSTRAINT `lich_su_mua_credit_nguoi_choi_id_foreign` FOREIGN KEY (`nguoi_choi_id`) REFERENCES `nguoi_choi` (`id`);

--
-- Các ràng buộc cho bảng `luot_choi`
--
ALTER TABLE `luot_choi`
  ADD CONSTRAINT `luot_choi_nguoi_choi_id_foreign` FOREIGN KEY (`nguoi_choi_id`) REFERENCES `nguoi_choi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
