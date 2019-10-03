-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 01, 2019 lúc 12:44 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dien-may-thanh-loi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_articles_id` int(11) NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_hot_new` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `is_del` int(1) DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `desc`, `content`, `avatar`, `cat_articles_id`, `file`, `author`, `status`, `is_hot_new`, `views`, `created_at`, `updated_at`, `is_del`, `tags`) VALUES
(10, 'Fox Sports: \'Việt Nam thi đấu ổn định hơn Thái Lan\'', 'fox-sports-viet-nam-thi-dau-on-dinh-hon-thai-lan', '<p class=\"Normal\">\"Việt Nam chơi ổn định hơn nhiều, v&agrave; c&oacute; thể vượt l&ecirc;n ngay ph&uacute;t đầu ti&ecirc;n sau sự mất tập trung của h&agrave;ng thủ Th&aacute;i Lan. Tuy nhi&ecirc;n, Nguyễn Văn To&agrave;n lại dứt điểm chệch cột dọc\", b&agrave;i viết c&oacute; đoạn.</p>\r\n<p class=\"Normal\">D&ugrave; chơi tr&ecirc;n s&acirc;n kh&aacute;ch v&agrave; đối thủ chơi rắn, Việt Nam giữ được thế trận v&agrave; c&oacute; những t&igrave;nh huống ăn b&agrave;n r&otilde; n&eacute;t. Đội qu&acirc;n của Park Hang-seo cầm b&oacute;ng 45%, tung ra bốn pha dứt điểm v&agrave; một lần s&uacute;t tr&uacute;ng đ&iacute;ch. Chủ nh&agrave; Th&aacute;i Lan chỉ nhỉnh hơn một ch&uacute;t, với s&aacute;u lần dứt điểm v&agrave; hai tr&uacute;ng đ&iacute;ch.</p>', '<p class=\"Normal\">\"Việt Nam chơi ổn định hơn nhiều, v&agrave; c&oacute; thể vượt l&ecirc;n ngay ph&uacute;t đầu ti&ecirc;n sau sự mất tập trung của h&agrave;ng thủ Th&aacute;i Lan. Tuy nhi&ecirc;n, Nguyễn Văn To&agrave;n lại dứt điểm chệch cột dọc\", b&agrave;i viết c&oacute; đoạn.</p>\r\n<p class=\"Normal\">D&ugrave; chơi tr&ecirc;n s&acirc;n kh&aacute;ch v&agrave; đối thủ chơi rắn, Việt Nam giữ được thế trận v&agrave; c&oacute; những t&igrave;nh huống ăn b&agrave;n r&otilde; n&eacute;t. Đội qu&acirc;n của Park Hang-seo cầm b&oacute;ng 45%, tung ra bốn pha dứt điểm v&agrave; một lần s&uacute;t tr&uacute;ng đ&iacute;ch. Chủ nh&agrave; Th&aacute;i Lan chỉ nhỉnh hơn một ch&uacute;t, với s&aacute;u lần dứt điểm v&agrave; hai tr&uacute;ng đ&iacute;ch.</p>\r\n<p class=\"Normal\">\"Việt Nam chơi ổn định hơn nhiều, v&agrave; c&oacute; thể vượt l&ecirc;n ngay ph&uacute;t đầu ti&ecirc;n sau sự mất tập trung của h&agrave;ng thủ Th&aacute;i Lan. Tuy nhi&ecirc;n, Nguyễn Văn To&agrave;n lại dứt điểm chệch cột dọc\", b&agrave;i viết c&oacute; đoạn.</p>\r\n<p class=\"Normal\">D&ugrave; chơi tr&ecirc;n s&acirc;n kh&aacute;ch v&agrave; đối thủ chơi rắn, Việt Nam giữ được thế trận v&agrave; c&oacute; những t&igrave;nh huống ăn b&agrave;n r&otilde; n&eacute;t. Đội qu&acirc;n của Park Hang-seo cầm b&oacute;ng 45%, tung ra bốn pha dứt điểm v&agrave; một lần s&uacute;t tr&uacute;ng đ&iacute;ch. Chủ nh&agrave; Th&aacute;i Lan chỉ nhỉnh hơn một ch&uacute;t, với s&aacute;u lần dứt điểm v&agrave; hai tr&uacute;ng đ&iacute;ch.</p>\r\n<p class=\"Normal\">\"Việt Nam chơi ổn định hơn nhiều, v&agrave; c&oacute; thể vượt l&ecirc;n ngay ph&uacute;t đầu ti&ecirc;n sau sự mất tập trung của h&agrave;ng thủ Th&aacute;i Lan. Tuy nhi&ecirc;n, Nguyễn Văn To&agrave;n lại dứt điểm chệch cột dọc\", b&agrave;i viết c&oacute; đoạn.</p>\r\n<p class=\"Normal\">D&ugrave; chơi tr&ecirc;n s&acirc;n kh&aacute;ch v&agrave; đối thủ chơi rắn, Việt Nam giữ được thế trận v&agrave; c&oacute; những t&igrave;nh huống ăn b&agrave;n r&otilde; n&eacute;t. Đội qu&acirc;n của Park Hang-seo cầm b&oacute;ng 45%, tung ra bốn pha dứt điểm v&agrave; một lần s&uacute;t tr&uacute;ng đ&iacute;ch. Chủ nh&agrave; Th&aacute;i Lan chỉ nhỉnh hơn một ch&uacute;t, với s&aacute;u lần dứt điểm v&agrave; hai tr&uacute;ng đ&iacute;ch.</p>', '', 1, NULL, 1, 1, 0, 100000, 1567738900, 1567743996, 1, 'tagName,tabName,get'),
(11, 'Lụt chạm nóc nhà', 'lut-cham-noc-nha', 'Đã quen với lũ lụt nên các gia đình ở Phương Mỹ khi làm nhà đều có một cửa xép nhỏ phía gần mái để có thể leo lên gác xép và nhận tiếp tế từ bên ngoài thông qua đó. Đã quen với lũ lụt nên các gia đình ở Phương Mỹ khi làm nhà đều có một cửa xép nhỏ phía gần mái để có thể leo lên gác xép và nhận tiếp tế từ bên ngoài thông qua đó. ', '<div class=\"item_slide_show clearfix\">\r\n<div class=\"desc_cation\">\r\n<p style=\"text-align: justify;\"><img src=\"../uploads/filemanager/source/5-diem-an-tuong-vuot-troi-cua-xe-cao-cap-vinfast-lux.jpg\" alt=\"5-diem-an-tuong-vuot-troi-cua-xe-cao-cap-vinfast-lux\" /></p>\r\n<p style=\"text-align: justify;\">Đ&atilde; quen với lũ lụt n&ecirc;n c&aacute;c gia đ&igrave;nh ở Phương Mỹ khi l&agrave;m nh&agrave; đều c&oacute; một cửa x&eacute;p nhỏ ph&iacute;a gần m&aacute;i để c&oacute; thể leo l&ecirc;n g&aacute;c x&eacute;p v&agrave; nhận tiếp tế từ b&ecirc;n ngo&agrave;i th&ocirc;ng qua đ&oacute;.&nbsp;</p>\r\n</div>\r\n</div>\r\n<div class=\"item_slide_show clearfix\">\r\n<div class=\"block_thumb_slide_show\"><img id=\"vne_slide_image_4\" class=\"left displayAfterResize vne_lazy_image lazyloaded\" src=\"https://i-vnexpress.vnecdn.net/2019/09/05/lu-ha-tinh-5-1567698807_680x0.jpg\" alt=\"Lụt chạm n&oacute;c nh&agrave;\" data-reference-id=\"26760950\" data-original=\"https://i-vnexpress.vnecdn.net/2019/09/05/lu-ha-tinh-5-1567698807_680x0.jpg\" data-component-caption=\"&amp;lt;p&amp;gt;\r\n	D&ugrave; c&oacute; chuẩn bị, một số nh&agrave; d&acirc;n vẫn kh&ocirc;ng kịp &amp;quot;chạy&amp;quot; những đồ đạc lớn như b&agrave;n ghế, tủ gỗ.&amp;lt;/p&amp;gt;\r\n&amp;lt;p&amp;gt;\r\n	&amp;quot;Sau đợt lũ n&agrave;y, những dụng cụ n&agrave;o c&ograve;n d&ugrave;ng được th&igrave; sẽ lau rửa để sử dụng. Đối với c&aacute;c thiết bị điện tử bị hư hỏng th&igrave; phải sắm mới&amp;quot;, b&agrave; Ho&agrave;ng Thị Tường - chủ nh&agrave; n&oacute;i.&amp;lt;/p&amp;gt;\" /></div>\r\n<div class=\"desc_cation\">\r\n<p>D&ugrave; c&oacute; chuẩn bị, một số nh&agrave; d&acirc;n vẫn kh&ocirc;ng kịp \"chạy\" những đồ đạc lớn như b&agrave;n ghế, tủ gỗ.</p>\r\n<p>\"Sau đợt lũ n&agrave;y, những dụng cụ n&agrave;o c&ograve;n d&ugrave;ng được th&igrave; sẽ lau rửa để sử dụng. Đối với c&aacute;c thiết bị điện tử bị hư hỏng th&igrave; phải sắm mới\", b&agrave; Ho&agrave;ng Thị Tường - chủ nh&agrave; n&oacute;i.</p>\r\n</div>\r\n</div>\r\n<div class=\"item_slide_show clearfix\">\r\n<div class=\"block_thumb_slide_show\"><img id=\"vne_slide_image_5\" class=\"left displayAfterResize vne_lazy_image lazyloaded\" src=\"https://i-vnexpress.vnecdn.net/2019/09/05/lu-ha-tinh-6-1567698809_1567702456_680x0.jpg\" alt=\"Lụt chạm n&oacute;c nh&agrave;\" data-reference-id=\"26760951\" data-original=\"https://i-vnexpress.vnecdn.net/2019/09/05/lu-ha-tinh-6-1567698809_1567702456_680x0.jpg\" data-component-caption=\"&amp;lt;p&amp;gt;\r\n	Nhiều gia đ&igrave;nh kh&ocirc;ng kịp đưa vật nu&ocirc;i, gia s&uacute;c đi tr&aacute;nh lũ đ&agrave;nh phải để tr&ecirc;n thuyền.&amp;lt;/p&amp;gt;\" /></div>\r\n<div class=\"desc_cation\">\r\n<p>Nhiều gia đ&igrave;nh kh&ocirc;ng kịp đưa vật nu&ocirc;i, gia s&uacute;c đi tr&aacute;nh lũ đ&agrave;nh phải để tr&ecirc;n thuyền.</p>\r\n</div>\r\n</div>\r\n<div class=\"item_slide_show clearfix\">\r\n<div class=\"block_thumb_slide_show\"><img id=\"vne_slide_image_6\" class=\"left displayAfterResize vne_lazy_image lazyloaded\" src=\"https://i-vnexpress.vnecdn.net/2019/09/05/lu-ha-tinh-11-1567698824_680x0.jpg\" alt=\"Lụt chạm n&oacute;c nh&agrave;\" data-reference-id=\"26760952\" data-original=\"https://i-vnexpress.vnecdn.net/2019/09/05/lu-ha-tinh-11-1567698824_680x0.jpg\" data-component-caption=\"&amp;lt;p&amp;gt;\r\n	Mọi đồ đạc, vật dụng, m&aacute;y m&oacute;c thiết yếu đ&atilde; được sơ t&aacute;n l&ecirc;n n&oacute;c nh&agrave; từ tối 3/9.&amp;lt;/p&amp;gt;\" /></div>\r\n<div class=\"desc_cation\">\r\n<p>Mọi đồ đạc, vật dụng, m&aacute;y m&oacute;c thiết yếu đ&atilde; được sơ t&aacute;n l&ecirc;n n&oacute;c nh&agrave; từ tối 3/9.</p>\r\n</div>\r\n</div>\r\n<div class=\"item_slide_show clearfix\">\r\n<div class=\"block_thumb_slide_show\"><img id=\"vne_slide_image_7\" class=\"left displayAfterResize vne_lazy_image lazyloaded\" src=\"https://i-vnexpress.vnecdn.net/2019/09/05/lu-ha-tinh-13_680x0.jpg\" alt=\"Lụt chạm n&oacute;c nh&agrave;\" data-reference-id=\"26760953\" data-original=\"https://i-vnexpress.vnecdn.net/2019/09/05/lu-ha-tinh-13_680x0.jpg\" data-component-caption=\"&amp;lt;p&amp;gt;\r\n	Mẹ con chị Nguyễn Thị Lương kh&ocirc;ng kịp di chuyển l&ecirc;n v&ugrave;ng cao do nước d&acirc;ng qu&aacute; nhanh, họ phải ở lại trong căn nh&agrave; cấp bốn nước đ&atilde; ngập gần tới tận n&oacute;c.&amp;lt;/p&amp;gt;\r\n&amp;lt;p&amp;gt;\r\n	&amp;quot;Tối h&ocirc;m qua tới giờ cứ ngủ thấp thỏm, kh&ocirc;ng tr&ograve;n giấc v&igrave; sợ&amp;quot;, chị Lương n&oacute;i.&amp;lt;/p&amp;gt;\" /></div>\r\n<div class=\"desc_cation\">\r\n<p>Mẹ con chị Nguyễn Thị Lương kh&ocirc;ng kịp di chuyển l&ecirc;n v&ugrave;ng cao do nước d&acirc;ng qu&aacute; nhanh, họ phải ở lại trong căn nh&agrave; cấp bốn nước đ&atilde; ngập gần tới tận n&oacute;c.</p>\r\n<p>\"Tối h&ocirc;m qua tới giờ cứ ngủ thấp thỏm, kh&ocirc;ng tr&ograve;n giấc v&igrave; sợ\", chị Lương n&oacute;i.</p>\r\n</div>\r\n</div>', '', 2, NULL, 1, 2, 1, NULL, 1567744099, 1568371719, 0, 'lut-nha,mua-uot'),
(12, 'Ảnh tiêu đề bài viết', 'anh-tieu-de-bai-viet', 'Mô tả ngắn', '<p>M&ocirc; tả ngắn</p>', '', 1, NULL, 1, 2, 1, NULL, 1568260212, 1568262207, 0, 'tagss'),
(13, 'Băn khoăn thời điểm trình dự án sân bay Long Thành', 'ban-khoan-thoi-diem-trinh-du-an-san-bay-long-thanh', 'Băn khoăn thời điểm trình dự án sân bay Long Thành', '<p class=\"description\">Hồ sơ b&aacute;o c&aacute;o khả thi s&acirc;n bay Long Th&agrave;nh \"nặng hơn một tạ\" đang được Ch&iacute;nh phủ n&oacute;ng l&ograve;ng đề xuất tr&igrave;nh Quốc hội ngay trong th&aacute;ng 10.</p>\r\n<article class=\"content_detail fck_detail width_common block_ads_connect\">\r\n<p class=\"Normal\">Chiều 14/9,&nbsp;Bộ trưởng, Chủ nhiệm Văn ph&ograve;ng Ch&iacute;nh phủ Mai Tiến Dũng cho biết,&nbsp;b&aacute;o c&aacute;o nghi&ecirc;n cứu khả thi dự &aacute;n cảng h&agrave;ng kh&ocirc;ng quốc tế Long Th&agrave;nh đang được Hội đồng thẩm định Nh&agrave; nước xem x&eacute;t; Ch&iacute;nh phủ sẽ tr&igrave;nh Uỷ ban thường vụ Quốc hội b&aacute;o c&aacute;o n&agrave;y tại phi&ecirc;n họp 38 v&agrave;o th&aacute;ng 10. V&igrave; vậy, &ocirc;ng Dũng&nbsp;đề nghị Thường vụ Quốc hội cho bổ sung nội dung tr&ecirc;n v&agrave;o chương tr&igrave;nh kỳ họp Quốc hội khai mạc cuối th&aacute;ng 10.</p>\r\n<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"https://i-vnexpress.vnecdn.net/2019/09/14/long-thanh-2814-1541000719-162-5979-7446-1568458728.jpg\" alt=\"Phối cảnh s&acirc;n bay Long Th&agrave;nh.\" data-natural-h=\"300\" data-natural-width=\"500\" data-width=\"500\" data-pwidth=\"500\" /></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p class=\"Image\">Phối cảnh s&acirc;n bay Long Th&agrave;nh.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Chủ nhiệm Uỷ ban Kinh tế Vũ Hồng Thanh kh&ocirc;ng đồng t&igrave;nh đề xuất của Ch&iacute;nh phủ, v&igrave; thời gian từ phi&ecirc;n họp Thường vụ Quốc hội đến họp Quốc hội trong th&aacute;ng 10 chỉ v&agrave;i ng&agrave;y, trong khi đ&oacute; \"hồ sơ b&aacute;o c&aacute;o khả thi s&acirc;n bay Long Th&agrave;nh nặng hơn một tạ\", sẽ ảnh hưởng đến chất lượng b&aacute;o c&aacute;o thẩm tra.</p>\r\n<p class=\"Normal\">Ph&oacute; chủ tịch Quốc hội Ph&ugrave;ng Quốc Hiển cũng cho rằng để thẩm tra, đ&aacute;nh gi&aacute; t&aacute;c động một dự &aacute;n quan trọng th&igrave; phải tổ chức hội thảo, hội nghị xin &yacute; kiến, sau đ&oacute; c&ograve;n phải gửi cho đại biểu trước khi khai mạc kỳ họp Quốc hội v&agrave;i ng&agrave;y. \"Như vậy th&igrave; phải để việc xem x&eacute;t b&aacute;o c&aacute;o tr&ecirc;n sang kỳ họp 9 (giữa năm 2020)\", &ocirc;ng Hiển n&oacute;i.&nbsp;</p>\r\n<p class=\"Normal\">Nhấn mạnh Long Th&agrave;nh l&agrave; dự &aacute;n quan trọng, Bộ trưởng, Chủ nhiệm Văn ph&ograve;ng Ch&iacute;nh phủ Mai Tiến Dũng vẫn&nbsp;xin được đưa v&agrave;o chương tr&igrave;nh họp Thường vụ Quốc hội v&agrave; họp Quốc hội trong th&aacute;ng 10.&nbsp;\"Nếu để lại đến th&aacute;ng 5/2020 th&igrave; rất chậm\", &ocirc;ng Dũng n&oacute;i v&agrave; giải th&iacute;ch th&ecirc;m, Hội đồng thẩm định c&oacute; cả chuy&ecirc;n gia quốc tế n&ecirc;n mất nhiều thời gian, v&agrave; Thủ tướng đang tập trung chỉ đạo quyết liệt để kịp tiến độ.&nbsp;</p>\r\n<p class=\"Normal\">Chủ tịch Quốc hội Nguyễn Thị Kim Ng&acirc;n cho biết Thường vụ Quốc hội cũng \"rất sốt ruột\" với dự &aacute;n cảng h&agrave;ng kh&ocirc;ng quốc tế Long Th&agrave;nh, v&igrave; đ&acirc;y l&agrave; dự &aacute;n trọng điểm quốc gia. B&agrave; Ng&acirc;n đề nghị Chủ nhiệm Uỷ ban Kinh tế Vũ Hồng Thanh phố hợp với l&atilde;nh đạo Bộ Giao th&ocirc;ng Vận tải r&agrave; so&aacute;t với tinh thần \"nếu l&agrave;m được th&igrave; cố gắng để đưa v&agrave;o chương tr&igrave;nh\".</p>\r\n<p class=\"Normal\">Chủ trương x&acirc;y dựng Cảng h&agrave;ng kh&ocirc;ng quốc tế Long Th&agrave;nh được Quốc hội th&ocirc;ng qua th&aacute;ng 6/2015 với&nbsp;tổng mức đầu tư 336.630 tỷ đồng (tương đương 16 tỷ USD), giai đoạn một đến năm 2025 l&agrave; 114.000 tỷ đồng (5,4 tỷ USD).</p>\r\n<p class=\"Normal\">Th&aacute;ng 11/2017, Quốc hội đ&atilde; th&ocirc;ng qua nghị quyết về dự &aacute;n thu hồi đất, bồi thường, hỗ trợ, t&aacute;i định cư s&acirc;n bay Long Th&agrave;nh với tổng mức đầu tư gần 23.000 tỷ đồng.</p>\r\n</article>', NULL, 1, NULL, 1, 2, 1, NULL, 1568470286, 0, 0, 'ban-khoan,diem-tin'),
(14, 'Người đàn ông lập quốc gia riêng cho mình', 'nguoi-dan-ong-lap-quoc-gia-rieng-cho-minh', 'Người đàn ông lập quốc gia riêng cho mình', '<p class=\"description\"><span class=\"location-stamp\">AUSTRALIA</span>Với Walubara, rạn san h&ocirc; Great Barrier ngo&agrave;i khơi Australia l&agrave; một phần \"quốc gia\" được &ocirc;ng v&agrave; con lập n&ecirc;n từ 5 năm trước.</p>\r\n<article class=\"content_detail fck_detail width_common block_ads_connect\">\r\n<p class=\"Normal\">Murrumu Walubara c&ugrave;ng con trai ch&egrave;o thuyền trong v&ugrave;ng nước trong vắt của Rạn san h&ocirc; Great Barrier, ẩn nấp ph&iacute;a dưới l&agrave; những con c&aacute; k&egrave;n, hải s&acirc;m v&agrave; s&ograve; tai tượng.</p>\r\n<p class=\"Normal\">Hai cha con thổ d&acirc;n Australia đang ở khu vực c&aacute;ch khoảng 56 km ngo&agrave;i khơi bờ biển nước n&agrave;y. Walubara coi rạn san h&ocirc; Great Barrier l&agrave; một phần của L&atilde;nh thổ Yidinji, đất nước rộng hơn 15.500 km vu&ocirc;ng do &ocirc;ng tự lập ra ở ph&iacute;a đ&ocirc;ng bắc lục địa từ năm 2014.</p>\r\n<p class=\"Normal\">5 năm trước, sau khi nhận ra những thổ d&acirc;n như &ocirc;ng kh&ocirc;ng được Hiến ph&aacute;p Australia c&ocirc;ng nhận, Walubara đ&atilde; từ bỏ c&ocirc;ng việc l&agrave; một ph&oacute;ng vi&ecirc;n ch&iacute;nh trị v&agrave; từ bỏ cả quốc tịch Australia c&ugrave;ng t&ecirc;n cũ Jeremy Geia. Walubara trả lại hộ chiếu, bảo hiểm sức khỏe v&agrave; bằng l&aacute;i xe cho nh&agrave; nước, sau đ&oacute; tự cắt hết thẻ ng&acirc;n h&agrave;ng Australia.</p>\r\n<p class=\"Normal\">\"T&ocirc;i cứ ngỡ m&igrave;nh c&oacute; đầy đủ tư c&aacute;ch của một th&agrave;nh vi&ecirc;n trong Khối thịnh vượng chung Australia. Tuy nhi&ecirc;n t&ocirc;i đ&atilde; lầm. T&ocirc;i kh&ocirc;ng c&ograve;n đủ điều kiện hưởng những ph&uacute;c lợi trong x&atilde; hội n&agrave;y\", Walubara, hiện đ&atilde; bước sang tuổi 45, kể lại nội dung từng bức thư &ocirc;ng gửi cho c&aacute;c cơ quan chức năng khi trả lại giấy tờ.</p>\r\n<p class=\"Normal\">C&aacute;c chuy&ecirc;n gia n&oacute;i Walubara c&ograve;n đoạn đường đấu tranh d&agrave;i ph&iacute;a trước nếu muốn Australia c&ocirc;ng nhận chủ quyền với L&atilde;nh thổ Yidinji, song lập luận của &ocirc;ng đ&atilde; thu h&uacute;t sự ch&uacute; &yacute; của c&ocirc;ng ch&uacute;ng v&agrave; truyền th&ocirc;ng nước n&agrave;y. Tuy&ecirc;n bố của Walubara cũng mang đầy sức nặng ch&iacute;nh trị ở một quốc gia chưa c&ocirc;ng nhận tư c&aacute;ch của c&aacute;c thổ d&acirc;n bản địa trong hiến ph&aacute;p.</p>\r\n<p class=\"Normal\">Giờ đ&acirc;y, khi ch&iacute;nh phủ Australia cam kết sẽ tổ chức trưng cầu d&acirc;n &yacute; về vấn đề c&ocirc;ng nhận thổ d&acirc;n trong hiến ph&aacute;p, Walubara, người tự xưng l&agrave; Bộ trưởng Ngoại giao v&agrave; Thương mại của L&atilde;nh thổ Yidinji, một lần nữa g&acirc;y &aacute;p lực cho c&aacute;c l&atilde;nh đạo li&ecirc;n bang với y&ecirc;u cầu c&ocirc;ng nhận Yidinji c&oacute; chủ quyền. \"Nội c&aacute;c\" của Yidinji hiện c&oacute; 10 bộ trưởng v&agrave; gần 100 c&ocirc;ng d&acirc;n, hầu hết mang cả quốc tịch Australia v&agrave; Yidinji.</p>\r\n<p class=\"Normal\">\"Ch&uacute;ng t&ocirc;i kh&ocirc;ng rời đi v&agrave; cũng kh&ocirc;ng muốn Khối thịnh vượng chung Australia biến mất. Tuy nhi&ecirc;n, đ&oacute; l&agrave; l&atilde;nh thổ của ch&uacute;ng t&ocirc;i\", Walubara n&oacute;i, khẳng định kh&ocirc;ng muốn bồi thường m&agrave; chỉ cần Australia c&ocirc;ng nhận L&atilde;nh thổ Yidinji l&agrave; một thực thể ch&iacute;nh thức cũng như c&oacute; quyền duy tr&igrave; lực lượng cảnh s&aacute;t v&agrave; qu&acirc;n đội. \"N&oacute;i một c&aacute;ch đơn giản, đ&oacute; chỉ l&agrave; vấn đề tr&ecirc;n giấy tờ\", Walubara khẳng định.</p>\r\n<p class=\"Normal\">Walubara n&oacute;i đ&acirc;y l&agrave; \"liều thuốc duy nhất\" c&oacute; thể x&oacute;a bỏ nỗi đau cho c&aacute;c thế hệ thổ d&acirc;n, những người đ&atilde; sống ở Australia &iacute;t nhất 65.000 năm trước khi người Anh đến đ&acirc;y v&agrave;o cuối những năm 1700.</p>\r\n<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"https://i-vnexpress.vnecdn.net/2019/09/14/merlin-159047802-92c6f3b3-6179-2246-7736-1568438122.jpg\" alt=\"Murrumu Walubara tại ng&ocirc;i nh&agrave; ở th&agrave;nh phố Cairns, Australia. Ảnh: NYTimes.\" data-natural-h=\"300\" data-natural-width=\"500\" data-width=\"500\" data-pwidth=\"500\" /></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p class=\"Image\">Murrumu Walubara tại ng&ocirc;i nh&agrave; ở th&agrave;nh phố Cairns, Australia. Ảnh:&nbsp;<em>NYTimes.</em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Walubara sinh năm 1974 tại Cairns, ph&iacute;a bắc Australia, c&oacute; mẹ l&agrave; thổ d&acirc;n v&agrave; cha l&agrave; người Do Th&aacute;i Croatia. &Ocirc;ng l&agrave;m ph&oacute;ng vi&ecirc;n suốt&nbsp;hai thập kỷ v&agrave; từng thực hiện những cuộc phỏng vấn đầu ti&ecirc;n với Julian Assange tại Đại sứ qu&aacute;n Ecuador ở London năm 2012.</p>\r\n<p class=\"Normal\">Tuy nhi&ecirc;n, Walubara đ&atilde; cảm thấy thất vọng với những c&acirc;u chuyện lặp đi lặp lại về thổ d&acirc;n Australia, về tỷ lệ bị giam giữ, tự tử cao ở họ c&ugrave;ng những h&agrave;nh động m&agrave; &ocirc;ng coi l&agrave; \"trẻ con\" của c&aacute;c ch&iacute;nh trị gia đối với vấn đề n&agrave;y.</p>\r\n<p class=\"Normal\">V&agrave;o thời điểm đ&oacute;, &ocirc;ng bắt đầu t&igrave;m hiểu đầy đủ về việc bản th&acirc;n bị gạt ra khỏi Hiến ph&aacute;p v&agrave; nghi&ecirc;n cứu những điều kiện cần để tiến tới hiệp ước giữa ch&iacute;nh phủ Australia v&agrave; c&aacute;c bộ tộc thổ d&acirc;n c&ugrave;ng người d&acirc;n ở Quần đảo Eo biển Torres.</p>\r\n<p class=\"Normal\">\"T&ocirc;i nhận ra họ kh&ocirc;ng c&oacute; &yacute; định l&agrave;m điều đ&oacute;, n&ecirc;n t&ocirc;i phải l&agrave;m\", Walubara nhắc tới c&aacute;c l&atilde;nh đạo Australia.</p>\r\n</article>', NULL, 1, NULL, 1, 2, 1, NULL, 1568470324, 0, 0, ''),
(15, 'Bồn cầu vàng trong cung điện Anh bị đánh cắp', 'bon-cau-vang-trong-cung-dien-anh-bi-danh-cap', 'Bồn cầu vàng trong cung điện Anh bị đánh cắp', '<p class=\"description\">Một băng nh&oacute;m đột nhập Cung điện Blenheim ở Oxfordshire, Anh rạng s&aacute;ng nay v&agrave; lấy đi chiếc bồn cầu bằng v&agrave;ng khối 18 carat.</p>\r\n<article class=\"content_detail fck_detail width_common block_ads_connect\">\r\n<p class=\"Normal\">\"T&aacute;c phẩm nghệ thuật bị đ&aacute;nh cắp l&agrave; một bồn cầu gi&aacute; trị cao được l&agrave;m bằng v&agrave;ng v&agrave; được trưng b&agrave;y tại cung điện.&nbsp;Ch&uacute;ng t&ocirc;i tin rằng nh&oacute;m tội phạm đ&atilde; sử dụng &iacute;t nhất hai chiếc xe khi h&agrave;nh động\", điều tra vi&ecirc;n&nbsp;Jess Milne h&ocirc;m nay cho hay.</p>\r\n<p class=\"Normal\">Cảnh s&aacute;t cho biết vụ trộm xảy ra v&agrave;o khoảng 4h50. \"Vụ trộm kh&ocirc;ng những g&acirc;y thiệt hại t&agrave;i sản m&agrave; c&ograve;n g&acirc;y ngập nước v&igrave; bồn cầu nối với đường ống dẫn nước của t&ograve;a nh&agrave;\", cảnh s&aacute;t cho hay.&nbsp;</p>\r\n<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"https://i-vnexpress.vnecdn.net/2019/09/14/bon-cau-3363-1568466807.jpg\" alt=\"Bồn cầu v&agrave;ng America tại Cung điện Blenheim đầu tuần n&agrave;y. Ảnh: AFP.\" data-natural-h=\"467\" data-natural-width=\"350\" data-width=\"350\" data-pwidth=\"500\" /></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p class=\"Image\">Bồn cầu v&agrave;ng America tại Cung điện Blenheim đầu tuần n&agrave;y. Ảnh:&nbsp;<em>AFP</em>.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Chiếc bồn cầu l&agrave;m từ v&agrave;ng khối 18 carat với đầy đủ chức năng l&agrave; t&aacute;c phẩm của nghệ sĩ đi&ecirc;u khắc Italy Maurizio Cattelan v&agrave; t&ecirc;n l&agrave; America. Du kh&aacute;ch c&oacute; thể sử dụng bồn cầu ba ph&uacute;t mỗi khi tới tham quan.</p>\r\n<p class=\"Normal\">Một người đ&agrave;n &ocirc;ng 66 tuổi đ&atilde; bị bắt, song cảnh s&aacute;t chưa t&igrave;m được t&aacute;c phẩm nghệ thuật n&agrave;y.&nbsp;\"Đến thời điểm n&agrave;y, t&aacute;c phẩm vẫn chưa được t&igrave;m thấy nhưng ch&uacute;ng t&ocirc;i đang điều tra kỹ lưỡng để t&igrave;m ra n&oacute; v&agrave; đưa những người c&oacute; tr&aacute;ch nhiệm ra c&ocirc;ng l&yacute;\",&nbsp;Milne n&oacute;i.</p>\r\n<p class=\"Normal\">Kh&ocirc;ng ai bị thương trong vụ đột nhập v&agrave; người đ&agrave;n &ocirc;ng bị bắt hiện bị cảnh s&aacute;t thẩm vấn.&nbsp;</p>\r\n<p class=\"Normal\">Cung điện Blenheim được x&acirc;y dựng từ thế kỷ 18 v&agrave; l&agrave; di sản thế giới. Đ&acirc;y l&agrave; nơi cố thủ tướng Anh Winston Churchill ra đời. Blenheim&nbsp;l&agrave; t&ograve;a nh&agrave; duy nhất ở Anh được c&ocirc;ng nhận l&agrave; cung điện d&ugrave; kh&ocirc;ng thuộc ho&agrave;ng gia hay vị gi&aacute;m mục n&agrave;o.</p>\r\n</article>', NULL, 1, NULL, 1, 2, 0, NULL, 1568470348, 0, 0, ''),
(16, 'Trung Quốc khó đối phó Mỹ ngay cả khi Trump thất cử', 'trung-quoc-kho-doi-pho-my-ngay-ca-khi-trump-that-cu', 'Trung Quốc khó đối phó Mỹ ngay cả khi Trump thất cử', '<p class=\"description\">Hầu hết c&aacute;c ứng vi&ecirc;n đảng D&acirc;n chủ muốn thay thế Trump đều c&oacute; chung quan điểm cứng rắn với Trung Quốc trong vấn đề thương mại.</p>\r\n<article class=\"content_detail fck_detail width_common block_ads_connect\">\r\n<p class=\"Normal\">C&aacute;c ứng vi&ecirc;n đảng D&acirc;n chủ chạy đua v&agrave;o Nh&agrave; Trắng trong cuộc tranh luận tối 13/9 kh&ocirc;ng ngừng c&ocirc;ng k&iacute;ch Tổng thống Donald Trump, gọi &ocirc;ng l&agrave; \"vấn đề\", l&agrave; người đ&agrave;o s&acirc;u \"th&ugrave; hận v&agrave; chia rẽ\" hay \"tổng thống nguy hiểm nhất trong lịch sử đất nước\".</p>\r\n<p class=\"Normal\">Nhưng ngay cả khi chỉ tr&iacute;ch gay gắt Trump, những ứng vi&ecirc;n đảng D&acirc;n chủ nu&ocirc;i tham vọng \"lật đổ\" &ocirc;ng vẫn c&oacute; những dấu hiệu cho thấy họ sẽ tiếp tục th&uacute;c đẩy thứ m&agrave; dường như đ&atilde; mang dấu ấn đặc trưng của Trump: Cuộc chiến tranh thương mại với Trung Quốc.</p>\r\n<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"https://i-vnexpress.vnecdn.net/2019/09/14/s3-reutersmedia-net-5411-1568436839.jpg\" alt=\"Tổng thống Mỹ Donald Trump trả lời phỏng vấn tại Ph&ograve;ng Bầu dục, Nh&agrave; Trắng, hồi th&aacute;ng 8/2018. Ảnh: Reuters.\" data-natural-h=\"300\" data-natural-width=\"500\" data-width=\"500\" data-pwidth=\"500\" /></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p class=\"Image\">Tổng thống Mỹ Donald Trump trả lời phỏng vấn tại Ph&ograve;ng Bầu dục, Nh&agrave; Trắng, hồi th&aacute;ng 8/2018. Ảnh:&nbsp;<em>Reuters</em>.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Với c&aacute;c l&atilde;nh đạo Trung Quốc, đ&acirc;y c&oacute; thể l&agrave; dấu hiệu đ&aacute;ng lo ngại cho thấy ngay cả khi họ đặt cược v&agrave;o kịch bản Trump bị đ&aacute;nh bại trong cuộc bầu cử 2020 v&agrave; phải rời Nh&agrave; Trắng năm 2021, quan hệ thương mại Mỹ - Trung vẫn kh&oacute; l&ograve;ng thay đổi về bản chất.</p>\r\n<p class=\"Normal\">Trong buổi tranh luận, d&ugrave; c&aacute;c ứng vi&ecirc;n đảng D&acirc;n chủ chỉ tr&iacute;ch c&aacute;ch Trump xử l&yacute; cuộc chiến tranh thương mại với Trung Quốc, kh&ocirc;ng ai cam đoan rằng họ sẽ nhanh ch&oacute;ng b&atilde;i bỏ những h&agrave;ng r&agrave;o thuế quan &ocirc;ng đ&atilde; tung ra v&agrave;o c&aacute;c mặt h&agrave;ng nhập khẩu từ Trung Quốc. Một số người c&ograve;n ngụ &yacute; sẽ giữ nguy&ecirc;n ch&iacute;nh s&aacute;ch thuế n&agrave;y.</p>\r\n<p class=\"Normal\">Ứng vi&ecirc;n Andrew Yang cho biết &ocirc;ng sẽ kh&ocirc;ng \"x&oacute;a bỏ thuế quan ngay lập tức\", trong khi Thị trưởng Pete Buttigieg n&oacute;i &ocirc;ng sẽ &aacute;p dụng chiến lược coi \"thuế quan như đ&ograve;n bẩy lợi thế\". Thượng nghị sĩ D&acirc;n chủ bang Minnesota Amy Klobuchar thừa nhận b&agrave; ủng hộ đ&ograve;n thuế đ&aacute;nh v&agrave;o th&eacute;p nhập khẩu từ Trung Quốc song cho rằng phạm vi &aacute;p thuế của Trump qu&aacute; rộng v&agrave; l&agrave;m tổn thương cả c&aacute;c đồng minh.</p>\r\n<p class=\"Normal\">Klobuchar v&agrave; những ứng vi&ecirc;n kh&aacute;c chủ yếu nhắm v&agrave;o những hậu quả ti&ecirc;u cực của đ&ograve;n thuế đối với người d&acirc;n Mỹ. \"Trump khiến ch&uacute;ng ta mắc kẹt trong cuộc chiến thương mại v&agrave; &ocirc;ng ấy đang coi những người c&ocirc;ng nh&acirc;n, n&ocirc;ng d&acirc;n như qu&acirc;n b&agrave;i trong s&ograve;ng b&agrave;i sắp ph&aacute; sản của m&igrave;nh\", Klobuchar nhấn mạnh.</p>\r\n<p class=\"Normal\">\"&Ocirc;ng ấy thực hiện ch&iacute;nh s&aacute;ch thương mại bằng những d&ograve;ng tweet, dường như chỉ nhằm thỏa m&atilde;n c&aacute;i t&ocirc;i mong manh\", ứng vi&ecirc;n Kamala D. Harris b&igrave;nh luận. \"N&oacute; khiến n&ocirc;ng d&acirc;n Iowa phải đổ đậu tương v&agrave;o sọt r&aacute;c, ngồi chờ ph&aacute; sản\".</p>\r\n<p class=\"Normal\">Theo ứng vi&ecirc;n Joe Biden, ph&oacute; tổng thống Mỹ dưới thời ch&iacute;nh quyền Barack Obama, vấn đề kh&ocirc;ng nằm ở th&acirc;m hụt thương mại giữa hai nước, m&agrave; nằm ở việc Trung Quốc đ&aacute;nh cắp t&agrave;i sản sở hữu tr&iacute; tuệ của Mỹ. \"Họ đang vi phạm c&aacute;c quy định của Tổ chức Thương mại Thế giới (WTO). Họ b&aacute;n ph&aacute; gi&aacute; th&eacute;p. Đ&acirc;y l&agrave; vấn đề kh&aacute;c ho&agrave;n to&agrave;n so với việc họ b&aacute;n ph&aacute; gi&aacute; n&ocirc;ng sản\".</p>\r\n</article>', NULL, 1, NULL, 1, 2, 0, NULL, 1568470391, 0, 0, ''),
(17, 'Ý tưởng phát tiền cho dân của ứng viên tổng thống Mỹ', 'y-tuong-phat-tien-cho-dan-cua-ung-vien-tong-thong-my', 'Ý tưởng phát tiền cho dân của ứng viên tổng thống Mỹ', '<p class=\"description\">Khi Andrew Yang n&oacute;i sẽ tặng 1.000 USD/th&aacute;ng cho 10 gia đ&igrave;nh, một số tiếng cười vang l&ecirc;n, k&egrave;m theo đ&oacute; l&agrave; c&acirc;u hỏi về t&iacute;nh hợp ph&aacute;p.</p>\r\n<article class=\"content_detail fck_detail width_common block_ads_connect\">\r\n<p class=\"Normal\">Doanh nh&acirc;n&nbsp;<a href=\"https://vnexpress.net/kinh-doanh/chan-dung-doanh-nhan-my-hua-chia-moi-nguoi-12-000-usd-neu-lam-tong-thong-3899041.html\" rel=\"dofollow\">Andrew Yang</a>, 44 tuổi, l&agrave; ứng vi&ecirc;n tổng thống gốc &Aacute; đầu ti&ecirc;n của đảng D&acirc;n chủ, đ&atilde; g&acirc;y quỹ tranh cử được 6,5 triệu USD. Nếu được bầu l&agrave;m tổng thống, Yang hứa hẹn ch&iacute;nh phủ sẽ trao 1.000 USD một th&aacute;ng cho mỗi người Mỹ tr&ecirc;n 18 tuổi, bất kể t&igrave;nh trạng việc l&agrave;m. &Ocirc;ng lập luận rằng đề xuất của m&igrave;nh sẽ th&uacute;c đẩy nền kinh tế v&agrave; gi&uacute;p c&aacute;c gia đ&igrave;nh thanh to&aacute;n h&oacute;a đơn dễ d&agrave;ng hơn.</p>\r\n<p class=\"Normal\">Ch&iacute;nh s&aacute;ch thu nhập cơ bản phổ th&ocirc;ng n&agrave;y đang được thử nghiệm trong c&aacute;c chương tr&igrave;nh th&iacute; điểm nhỏ tr&ecirc;n khắp thế giới. Bản th&acirc;n Yang đ&atilde; cố gắng th&uacute;c đẩy &yacute; tưởng từ đầu năm nay, khi &ocirc;ng bắt đầu trả 1.000 USD cho ba gia đ&igrave;nh ở New Hampshire, Florida v&agrave; Iowa.</p>\r\n<p class=\"Normal\">Trong b&agrave;i ph&aacute;t biểu khai mạc tại cuộc tranh luận của c&aacute;c ứng vi&ecirc;n đảng D&acirc;n chủ h&ocirc;m 12/9, Yang th&ocirc;ng b&aacute;o về chương tr&igrave;nh \"Tặng tiền tự do\". Người d&acirc;n Mỹ c&oacute; thể điền t&ecirc;n tr&ecirc;n trang web chiến dịch, 10 người sẽ được chọn ngẫu nhi&ecirc;n để nhận 1.000 USD một th&aacute;ng.&nbsp;</p>\r\n<p class=\"Normal\">Điểm mới của động th&aacute;i n&agrave;y l&agrave; trước đ&acirc;y, Yang tự bỏ tiền t&uacute;i để trợ cấp cho ba gia đ&igrave;nh. Giờ đ&acirc;y, &yacute; tưởng ph&aacute;t tiền cho 10 người đ&ograve;i hỏi sử dụng đến quỹ của chiến dịch.</p>\r\n<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"https://i-vnexpress.vnecdn.net/2019/09/14/000-1K8818-6083-1568438763.jpg\" alt=\"Andrew Yang tại cuộc thảo luận của đảng D&acirc;n chủ tại Texas ng&agrave;y 12/9. Ảnh: AFP.\" data-natural-h=\"300\" data-natural-width=\"500\" data-width=\"500\" data-pwidth=\"500\" /></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p class=\"Image\">Andrew Yang tại cuộc thảo luận của đảng D&acirc;n chủ tại Texas ng&agrave;y 12/9. Ảnh:&nbsp;<em>AFP</em>.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">C&aacute;c ủy ban chiến dịch li&ecirc;n bang c&oacute; những quy định hạn chế nhất định về điều ứng vi&ecirc;n c&oacute; thể l&agrave;m bằng tiền của nh&agrave; t&agrave;i trợ. Một trong những điều bị cấm l&agrave; sử dụng quỹ chiến dịch cho mục đ&iacute;ch c&aacute; nh&acirc;n. Điều đ&oacute; c&oacute; nghĩa l&agrave; quỹ chiến dịch phải được sử dụng cho c&aacute;c chi ph&iacute; như lương nh&acirc;n vi&ecirc;n, văn ph&ograve;ng hay thiệp cảm ơn người ủng hộ chứ kh&ocirc;ng phải c&aacute;c khoản c&aacute; nh&acirc;n như tiền thế chấp nh&agrave; hay hội ph&iacute; c&acirc;u lạc bộ.</p>\r\n<p class=\"Normal\">C&aacute;c chuy&ecirc;n gia ph&aacute;p l&yacute; nhấn mạnh rằng kh&ocirc;ng chỉ c&aacute;c ứng vi&ecirc;n phải tu&acirc;n thủ quy tắc n&agrave;y, quỹ chiến dịch kh&ocirc;ng thể được sử dụng cho c&aacute;c chi ph&iacute; c&aacute; nh&acirc;n của bất kỳ người n&agrave;o.</p>\r\n<p class=\"Normal\">Mục đ&iacute;ch của quy định l&agrave; nhằm ngăn ngừa tham nhũng v&agrave; bảo vệ c&aacute;c nh&agrave; t&agrave;i trợ, đảm bảo tiền của họ sẽ kh&ocirc;ng rơi v&agrave;o t&uacute;i của ai kh&aacute;c ngo&agrave;i c&aacute;c dịch vụ được cung cấp cho chiến dịch, theo Adav Noti, cựu luật sư của Ủy ban Bầu cử Li&ecirc;n bang (FEC), cơ quan thực thi luật v&agrave; quy định bầu cử, n&oacute;i.</p>\r\n<p class=\"Normal\">\"Để duy tr&igrave; l&ograve;ng tin của c&aacute;c nh&agrave; t&agrave;i trợ, điều quan trọng l&agrave; họ biết chắc chắn số tiền họ đ&atilde; ủng hộ, d&ugrave; &iacute;t d&ugrave; nhiều, đều được sử dụng đ&uacute;ng mục đ&iacute;ch\", Noti n&oacute;i.</p>\r\n<p class=\"Normal\">Vậy th&igrave; quỹ chiến dịch của Yang c&oacute; thể được sử dụng theo c&aacute;ch n&agrave;y kh&ocirc;ng? Đ&oacute; l&agrave; c&acirc;u hỏi lớn.</p>\r\n<p class=\"Normal\">Những người nhận được s&eacute;c 1.000 USD h&agrave;ng th&aacute;ng từ Yang sẽ sử dụng số tiền n&agrave;y cho mục đ&iacute;ch c&aacute; nh&acirc;n. Tuy nhi&ecirc;n, chiến dịch lập luận rằng việc n&agrave;y kh&ocirc;ng vi phạm quy tắc t&agrave;i ch&iacute;nh của chiến dịch v&igrave; tiền thực sự được sử dụng cho mục đ&iacute;ch chiến dịch.</p>\r\n<p class=\"Normal\">Chiến dịch của Yang cho biết họ đ&atilde; tham khảo &yacute; kiến c&aacute;c luật sư v&agrave; họ kết luận rằng kế hoạch kh&ocirc;ng phạm luật. Một số chuy&ecirc;n gia đồng &yacute; với c&aacute;ch giải th&iacute;ch, cho rằng khoản tiền được chi đơn giản l&agrave; một h&igrave;nh thức quảng c&aacute;o chiến dịch.</p>\r\n</article>', NULL, 1, NULL, 1, 2, 1, NULL, 1568470576, 0, 0, ''),
(18, 'Bài viết số 1', 'bai-viet-so-1', 'Mô tả ngắn', '<p>adsadd</p>', 'banner-mb.jpg', 1, NULL, 1, 2, 1, NULL, 1568703419, 1568882244, 0, 'sadsd,sadasd'),
(19, 'Anh cong so day', 'anh-cong-so-day', 'Mo ta ngan', '<p>sdasdsadasd</p>', 'articles-1.png', 1, NULL, 1, 2, 1, NULL, 1568707416, 0, 0, 'aadasd'),
(20, 'asdasdas', 'asdasdas', 'asdasd', '<p>asdasdasdas</p>', 'background-login1.jpg', 1, NULL, 1, 2, 0, NULL, 1568707930, 1568862729, 0, 'asdasdasd'),
(21, 'New articles lotus social network priviews', 'new-articles-lotus-social-network-priviews', '', '<p>New articles lotus social network priviews</p>', 'thumb-6.jpg', 1, NULL, 1, 2, 1, NULL, 1568944270, 0, 0, 'lotus,mang-xa-hoi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Admin', '1', 1567591654),
('Bảo hiểm', '1', 1569321445),
('Bảo hiểm', '10', 1569225696),
('Bảo hiểm', '28', 1569225930),
('Quản  trị mail', '1', 1569321445),
('Tin tức', '1', 1569321445),
('Tin tức', '26', 1569056799);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/articles/*', 2, NULL, NULL, NULL, 1567756808, 1567756808),
('/articles/avatar', 2, NULL, NULL, NULL, 1568214326, 1568214326),
('/articles/create', 2, NULL, NULL, NULL, 1567756808, 1567756808),
('/articles/index', 2, NULL, NULL, NULL, 1567756808, 1567756808),
('/articles/is-delete', 2, NULL, NULL, NULL, 1567756808, 1567756808),
('/articles/list-articles-cat', 2, NULL, NULL, NULL, 1567756801, 1567756801),
('/articles/update', 2, NULL, NULL, NULL, 1567756808, 1567756808),
('/articles/view', 2, NULL, NULL, NULL, 1567756808, 1567756808),
('/banner/*', 2, NULL, NULL, NULL, 1567931696, 1567931696),
('/banner/active', 2, NULL, NULL, NULL, 1567931696, 1567931696),
('/banner/create', 2, NULL, NULL, NULL, 1567931696, 1567931696),
('/banner/delete', 2, NULL, NULL, NULL, 1567931696, 1567931696),
('/banner/disable', 2, NULL, NULL, NULL, 1567931696, 1567931696),
('/banner/index', 2, NULL, NULL, NULL, 1567931695, 1567931695),
('/banner/update', 2, NULL, NULL, NULL, 1567931696, 1567931696),
('/banner/view', 2, NULL, NULL, NULL, 1567931695, 1567931695),
('/cat-articles/*', 2, NULL, NULL, NULL, 1567756801, 1567756801),
('/cat-articles/create', 2, NULL, NULL, NULL, 1567756801, 1567756801),
('/cat-articles/delete', 2, NULL, NULL, NULL, 1567756801, 1567756801),
('/cat-articles/index', 2, NULL, NULL, NULL, 1567756801, 1567756801),
('/cat-articles/update', 2, NULL, NULL, NULL, 1567756801, 1567756801),
('/cat-articles/view', 2, NULL, NULL, NULL, 1567756801, 1567756801),
('/cat-insurrances/*', 2, NULL, NULL, NULL, 1567931696, 1567931696),
('/cat-insurrances/create', 2, NULL, NULL, NULL, 1567931696, 1567931696),
('/cat-insurrances/create-question', 2, NULL, NULL, NULL, 1568214326, 1568214326),
('/cat-insurrances/delete', 2, NULL, NULL, NULL, 1567931696, 1567931696),
('/cat-insurrances/delete-question', 2, NULL, NULL, NULL, 1568214326, 1568214326),
('/cat-insurrances/index', 2, NULL, NULL, NULL, 1567931696, 1567931696),
('/cat-insurrances/list-question', 2, NULL, NULL, NULL, 1568214326, 1568214326),
('/cat-insurrances/update', 2, NULL, NULL, NULL, 1567931696, 1567931696),
('/cat-insurrances/update-question', 2, NULL, NULL, NULL, 1568214326, 1568214326),
('/cat-insurrances/view', 2, NULL, NULL, NULL, 1567931696, 1567931696),
('/debug/*', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/debug/default/*', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/debug/default/index', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1567647895, 1567647895),
('/debug/default/view', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/debug/user/*', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/gii/*', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/gii/default/*', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/gii/default/action', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/gii/default/diff', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/gii/default/index', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/gii/default/preview', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/gii/default/view', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/info-profile/*', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/info-profile/update', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/log-system/*', 2, NULL, NULL, NULL, 1568013829, 1568013829),
('/log-system/index', 2, NULL, NULL, NULL, 1568013829, 1568013829),
('/mail/*', 2, NULL, NULL, NULL, 1567931697, 1567931697),
('/mail/khach-hang', 2, NULL, NULL, NULL, 1568000168, 1568000168),
('/mail/mail-boi-hoan', 2, NULL, NULL, NULL, 1567931697, 1567931697),
('/mail/mail-lien-he', 2, NULL, NULL, NULL, 1567931697, 1567931697),
('/mail/mail-nhan-tin-tuc', 2, NULL, NULL, NULL, 1567931697, 1567931697),
('/mail/thanh-vien', 2, NULL, NULL, NULL, 1568000168, 1568000168),
('/parter/*', 2, NULL, NULL, NULL, 1567931697, 1567931697),
('/parter/create', 2, NULL, NULL, NULL, 1567931697, 1567931697),
('/parter/delete', 2, NULL, NULL, NULL, 1567931697, 1567931697),
('/parter/index', 2, NULL, NULL, NULL, 1567931697, 1567931697),
('/parter/update', 2, NULL, NULL, NULL, 1567931697, 1567931697),
('/parter/view', 2, NULL, NULL, NULL, 1567931697, 1567931697),
('/products/*', 2, NULL, NULL, NULL, 1568086497, 1568086497),
('/products/create', 2, NULL, NULL, NULL, 1568086497, 1568086497),
('/products/create-question', 2, NULL, NULL, NULL, 1568214326, 1568214326),
('/products/delete', 2, NULL, NULL, NULL, 1568086497, 1568086497),
('/products/delete-question', 2, NULL, NULL, NULL, 1568214326, 1568214326),
('/products/index', 2, NULL, NULL, NULL, 1568086496, 1568086496),
('/products/list-question', 2, NULL, NULL, NULL, 1568214326, 1568214326),
('/products/update', 2, NULL, NULL, NULL, 1568086497, 1568086497),
('/products/update-question', 2, NULL, NULL, NULL, 1568214326, 1568214326),
('/products/view', 2, NULL, NULL, NULL, 1568086497, 1568086497),
('/rbac/*', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/rbac/assignment/*', 2, NULL, NULL, NULL, 1567591577, 1567591577),
('/rbac/assignment/assign', 2, NULL, NULL, NULL, 1567591577, 1567591577),
('/rbac/assignment/index', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/assignment/remove', 2, NULL, NULL, NULL, 1567591577, 1567591577),
('/rbac/assignment/view', 2, NULL, NULL, NULL, 1567591577, 1567591577),
('/rbac/permission/*', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/permission/assign', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/permission/create', 2, NULL, NULL, NULL, 1567591577, 1567591577),
('/rbac/permission/delete', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/permission/index', 2, NULL, NULL, NULL, 1567591577, 1567591577),
('/rbac/permission/remove', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/permission/update', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/permission/view', 2, NULL, NULL, NULL, 1567591577, 1567591577),
('/rbac/role/*', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/role/assign', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/role/create', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/role/delete', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/role/index', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/role/remove', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/role/update', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/role/view', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/route/*', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/route/assign', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/route/index', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/route/refresh', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/route/remove', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/rule/*', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/rbac/rule/create', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/rule/delete', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/rbac/rule/index', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/rbac/rule/update', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/rbac/rule/view', 2, NULL, NULL, NULL, 1567591583, 1567591583),
('/site/*', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/site/change-password', 2, NULL, NULL, NULL, 1568000168, 1568000168),
('/site/changepassword', 2, NULL, NULL, NULL, 1567756808, 1567756808),
('/site/check', 2, NULL, NULL, NULL, 1568013829, 1568013829),
('/site/error', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/site/index', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/site/login', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/site/logout', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/site/request-password-reset', 2, NULL, NULL, NULL, 1567756808, 1567756808),
('/site/resend-verification-email', 2, NULL, NULL, NULL, 1567756801, 1567756801),
('/site/reset-password', 2, NULL, NULL, NULL, 1567756808, 1567756808),
('/site/signup', 2, NULL, NULL, NULL, 1567591584, 1567591584),
('/site/verify-email', 2, NULL, NULL, NULL, 1567756808, 1567756808),
('/user/*', 2, NULL, NULL, NULL, 1567931697, 1567931697),
('/user/create', 2, NULL, NULL, NULL, 1567756808, 1567756808),
('/user/delete', 2, NULL, NULL, NULL, 1567931697, 1567931697),
('/user/index', 2, NULL, NULL, NULL, 1567931697, 1567931697),
('/user/update', 2, NULL, NULL, NULL, 1567756808, 1567756808),
('/user/view', 2, NULL, NULL, NULL, 1567931697, 1567931697),
('Admin', 2, NULL, NULL, NULL, 1567591633, 1567591633),
('Bảo hiểm', 2, 'Nhóm bảo hiểm', NULL, NULL, 1569031181, 1569031181),
('Quản  trị mail', 2, NULL, NULL, NULL, 1569031632, 1569031632),
('Tin tức', 2, NULL, NULL, NULL, 1569030770, 1569030770);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Admin', '/*'),
('Admin', '/articles/*'),
('Admin', '/articles/avatar'),
('Admin', '/articles/create'),
('Admin', '/articles/index'),
('Admin', '/articles/is-delete'),
('Admin', '/articles/list-articles-cat'),
('Admin', '/articles/update'),
('Admin', '/articles/view'),
('Admin', '/banner/*'),
('Admin', '/banner/active'),
('Admin', '/banner/create'),
('Admin', '/banner/delete'),
('Admin', '/banner/disable'),
('Admin', '/banner/index'),
('Admin', '/banner/update'),
('Admin', '/banner/view'),
('Admin', '/cat-articles/*'),
('Admin', '/cat-articles/create'),
('Admin', '/cat-articles/delete'),
('Admin', '/cat-articles/index'),
('Admin', '/cat-articles/update'),
('Admin', '/cat-articles/view'),
('Admin', '/cat-insurrances/*'),
('Admin', '/cat-insurrances/create'),
('Admin', '/cat-insurrances/create-question'),
('Admin', '/cat-insurrances/delete'),
('Admin', '/cat-insurrances/delete-question'),
('Admin', '/cat-insurrances/index'),
('Admin', '/cat-insurrances/list-question'),
('Admin', '/cat-insurrances/update'),
('Admin', '/cat-insurrances/update-question'),
('Admin', '/cat-insurrances/view'),
('Admin', '/debug/*'),
('Admin', '/debug/default/*'),
('Admin', '/debug/default/db-explain'),
('Admin', '/debug/default/download-mail'),
('Admin', '/debug/default/index'),
('Admin', '/debug/default/toolbar'),
('Admin', '/debug/default/view'),
('Admin', '/debug/user/*'),
('Admin', '/debug/user/reset-identity'),
('Admin', '/debug/user/set-identity'),
('Admin', '/gii/*'),
('Admin', '/gii/default/*'),
('Admin', '/gii/default/action'),
('Admin', '/gii/default/diff'),
('Admin', '/gii/default/index'),
('Admin', '/gii/default/preview'),
('Admin', '/gii/default/view'),
('Admin', '/info-profile/*'),
('Admin', '/info-profile/update'),
('Admin', '/log-system/*'),
('Admin', '/log-system/index'),
('Admin', '/mail/*'),
('Admin', '/mail/khach-hang'),
('Admin', '/mail/mail-boi-hoan'),
('Admin', '/mail/mail-lien-he'),
('Admin', '/mail/mail-nhan-tin-tuc'),
('Admin', '/mail/thanh-vien'),
('Admin', '/parter/*'),
('Admin', '/parter/create'),
('Admin', '/parter/delete'),
('Admin', '/parter/index'),
('Admin', '/parter/update'),
('Admin', '/parter/view'),
('Admin', '/products/*'),
('Admin', '/products/create'),
('Admin', '/products/create-question'),
('Admin', '/products/delete'),
('Admin', '/products/delete-question'),
('Admin', '/products/index'),
('Admin', '/products/list-question'),
('Admin', '/products/update'),
('Admin', '/products/update-question'),
('Admin', '/products/view'),
('Admin', '/rbac/*'),
('Admin', '/rbac/assignment/*'),
('Admin', '/rbac/assignment/assign'),
('Admin', '/rbac/assignment/index'),
('Admin', '/rbac/assignment/remove'),
('Admin', '/rbac/assignment/view'),
('Admin', '/rbac/permission/*'),
('Admin', '/rbac/permission/assign'),
('Admin', '/rbac/permission/create'),
('Admin', '/rbac/permission/delete'),
('Admin', '/rbac/permission/index'),
('Admin', '/rbac/permission/remove'),
('Admin', '/rbac/permission/update'),
('Admin', '/rbac/permission/view'),
('Admin', '/rbac/role/*'),
('Admin', '/rbac/role/assign'),
('Admin', '/rbac/role/create'),
('Admin', '/rbac/role/delete'),
('Admin', '/rbac/role/index'),
('Admin', '/rbac/role/remove'),
('Admin', '/rbac/role/update'),
('Admin', '/rbac/role/view'),
('Admin', '/rbac/route/*'),
('Admin', '/rbac/route/assign'),
('Admin', '/rbac/route/index'),
('Admin', '/rbac/route/refresh'),
('Admin', '/rbac/route/remove'),
('Admin', '/rbac/rule/*'),
('Admin', '/rbac/rule/create'),
('Admin', '/rbac/rule/delete'),
('Admin', '/rbac/rule/index'),
('Admin', '/rbac/rule/update'),
('Admin', '/rbac/rule/view'),
('Admin', '/site/*'),
('Admin', '/site/change-password'),
('Admin', '/site/changepassword'),
('Admin', '/site/check'),
('Admin', '/site/error'),
('Admin', '/site/index'),
('Admin', '/site/login'),
('Admin', '/site/logout'),
('Admin', '/site/request-password-reset'),
('Admin', '/site/resend-verification-email'),
('Admin', '/site/reset-password'),
('Admin', '/site/signup'),
('Admin', '/site/verify-email'),
('Admin', '/user/*'),
('Admin', '/user/create'),
('Admin', '/user/delete'),
('Admin', '/user/index'),
('Admin', '/user/update'),
('Admin', '/user/view'),
('Admin', 'Bảo hiểm'),
('Admin', 'Quản  trị mail'),
('Admin', 'Tin tức'),
('Bảo hiểm', '/articles/*'),
('Bảo hiểm', '/articles/avatar'),
('Bảo hiểm', '/articles/create'),
('Bảo hiểm', '/articles/index'),
('Bảo hiểm', '/articles/is-delete'),
('Bảo hiểm', '/articles/list-articles-cat'),
('Bảo hiểm', '/articles/update'),
('Bảo hiểm', '/articles/view'),
('Tin tức', '/articles/*'),
('Tin tức', '/articles/avatar'),
('Tin tức', '/articles/create'),
('Tin tức', '/articles/index'),
('Tin tức', '/articles/is-delete'),
('Tin tức', '/articles/list-articles-cat'),
('Tin tức', '/articles/update'),
('Tin tức', '/articles/view');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, '1569750984-tải xuống.jpg', 1, 1569750984, NULL),
(8, '1569751144-tải xuống (1).jpg', 1, 1569751144, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `code`, `name`, `status`) VALUES
(1, 'Iroma', 'Iroma ', 0),
(2, 'Kangaroo', 'Kangaroo', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cat_products`
--

CREATE TABLE `cat_products` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cat_products`
--

INSERT INTO `cat_products` (`id`, `slug`, `avatar`, `name`, `parent_id`, `level`, `status`) VALUES
(1, 'may-xay-dung', 'tải xuống (1).jpg', 'Máy xây dựng', NULL, 0, 1),
(2, 'dung-cu-cam-tay', '26mm-may-khoan-be-tong-feg-eg-2601sre_(1).jpg', 'Dụng cụ cầm tay', NULL, 0, 1),
(3, 'may-han-dien', '223004_(1).jpg', 'Mày hàn điện', 1, 0, 0),
(4, 'may-rua-xe', '', 'Máy rửa xe', NULL, 0, 0),
(5, 'may-nen-khi', '', 'Máy nén khi', NULL, 0, 0),
(6, 'may-bom-cong-nghiep', '', 'Máy bơm công nghiệp', NULL, 0, 0),
(10, 'may-tron-be-tong', '', 'Máy trộn bê tông', 4, 0, 0),
(11, 'may-khoan-be-tong', '', 'Máy khoan bê tông', 2, 0, 0),
(12, 'may-phat-dien', '', 'Máy phát điên', 1, 0, 0),
(13, 'pa-lang-xich', '', 'Pa lăng xích', 1, 0, 0),
(14, 'may-cua-xich', '', 'Máy cưa xích', 1, 0, 0),
(15, 'may-van-oc', '', 'Máy vặn ốc', 1, 0, 0),
(16, 'may-cat-co', '', 'Máy cắt cỏ', 1, 0, 0),
(17, 'may-toi-treo', '', 'Máy tời treo', 1, 0, 0),
(18, 'may-khoan-ban', '7-100ET.jpg', 'Máy khoan bàn', 1, 0, 0),
(19, 'may-han-dien', '', 'Máy hàn điện', NULL, 0, 0),
(20, 'phu-kien-khac', '', 'Phụ kiện khác', NULL, 0, 0),
(21, 'may-bom-nuoc', '', 'Máy bơm nước', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_company`
--

CREATE TABLE `detail_company` (
  `gioi_thieu_cong_ty` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuyen_dung` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL,
  `iframe` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `showroom` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail_company`
--

INSERT INTO `detail_company` (`gioi_thieu_cong_ty`, `tuyen_dung`, `id`, `iframe`, `showroom`) VALUES
('<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">I. Giới thiệu về Điện m&aacute;y Th&agrave;nh Lợi</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">1.Giới thiệu chung về C&ocirc;ng ty</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Điện m&aacute;y Th&agrave;nh Lợi tự h&agrave;o l&agrave; một trong những c&ocirc;ng ty đi ti&ecirc;n phong trong lĩnh vực Thương mại điện tử tại Vi&ecirc;t Nam từ năm 2005. Với uy t&iacute;n v&agrave; kinh nghiệm l&acirc;u năm, dịch vụ chuy&ecirc;n nghiệp gi&uacute;p kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n l&atilde;nh thổ Việt Nam dễ d&agrave;ng mua sắm c&aacute;c sản phẩm trực tuyến.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Với mục ti&ecirc;u đem đến cho kh&aacute;ch h&agrave;ng những sản phẩm tuyệt vời c&ugrave;ng dịch vụ mua sắm trực tuyến tin cậy. Điện m&aacute;y Th&agrave;nh Lợi kh&ocirc;ng ngừng n&acirc;ng cao chất lượng dịch vụ v&agrave; lắng nghe &yacute; kiến đ&oacute;ng g&oacute;p từ ph&iacute;a kh&aacute;ch h&agrave;ng để ho&agrave;n thiện dịch vụ một c&aacute;ch tốt nhất.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">L&agrave; doanh nghiệp chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm điện m&aacute;y, c&ocirc;ng cụ cầm tay; Hiện c&ocirc;ng ty đang l&agrave;m đại l&yacute; ph&acirc;n phối sản phẩm điện m&aacute;y của c&aacute;c h&atilde;ng sản xuất h&agrave;ng đầu thế giới như: Yamaha, Makita, Honda, Stilh... C&ocirc;ng ty c&oacute; trụ sở đặt tại Trung t&acirc;m th&agrave;nh phố H&agrave; Nội v&agrave; mạng lưới ph&acirc;n phối to&agrave;n miền Bắc. Sản phẩm, dịch vụ của C&ocirc;ng ty lu&ocirc;n được kh&aacute;ch h&agrave;ng, thị trường tin tưởng đ&oacute;n nhận v&agrave; đ&aacute;nh gi&aacute; cao về chất lượng v&agrave; uy t&iacute;n phục vụ. Đến nay, sau hơn 10 năm hoạt động, C&ocirc;ng ty thực sự đ&atilde; trở th&agrave;nh nh&agrave; ph&acirc;n phối h&agrave;ng điện m&aacute;y được c&aacute;c đại l&yacute; đặt niềm tin x&acirc;y dựng mối quan hệ đối t&aacute;c chiến lược d&agrave;i l&acirc;u; v&agrave; được kh&aacute;ch h&agrave;ng tin tưởng ủng hộ.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">2. Chiến lược hoạt động</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">- Tầm nh&igrave;n:</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">X&acirc;y dựng Điện m&aacute;y Th&agrave;nh Lợi trở th&agrave;nh nh&agrave; ph&acirc;n phối h&agrave;ng điện m&aacute;y số 1 tại thị trường miền Bắc; c&oacute; đại l&yacute; v&agrave; sự hiện diện thương hiệu ở tất cả tỉnh thuộc địa b&agrave;n mục ti&ecirc;u.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Nghi&ecirc;n cứu ph&aacute;t triển để sản xuất, lắp r&aacute;p một số loại sản phẩm ph&ugrave; hợp với thị trường v&agrave; khả năng của c&ocirc;ng ty mang thương hiệu Việt.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Quản trị điều h&agrave;nh hoạt động c&ocirc;ng ty bằng hệ thống quản trị kh&ocirc;ng phụ thuộc vai tr&ograve; c&aacute; nh&acirc;n; hướng đến v&agrave; thực hiện minh bạch hoạt động kinh doanh.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">X&acirc;y dựng văn h&oacute;a c&ocirc;ng ty hướng tới con người: kh&aacute;ch h&agrave;ng, đối t&aacute;c nh&acirc;n vi&ecirc;n v&agrave; tham gia đ&oacute;ng g&oacute;p cộng đồng; x&acirc;y dựng đội ngũ nh&acirc;n sự chuy&ecirc;n nghiệp, l&agrave;m cho mỗi nh&acirc;n vi&ecirc;n tự h&agrave;o l&agrave; th&agrave;nh vi&ecirc;n của Điện m&aacute;y Th&agrave;nh Lợi.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">- Sứ mệnh:</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Mang đến cho người lao động những c&ocirc;ng cụ tốt về t&iacute;nh năng, an to&agrave;n khi sử dụng, c&oacute; độ bền cao v&agrave; gi&aacute; cả hợp l&yacute;, g&oacute;p phần n&acirc;ng cao hiệu quả kinh tế cho kh&aacute;ch h&agrave;ng.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">- Gi&aacute; trị cốt l&otilde;i:</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Trở th&agrave;nh biểu tượng h&agrave;ng đầu Việt Nam về cung cấp c&aacute;c sản phẩm h&agrave;ng điện m&aacute;y ch&iacute;nh h&atilde;ng c&oacute; dịch vụ hậu m&atilde;i ho&agrave;n hảo.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Li&ecirc;m ch&iacute;nh: ch&iacute;nh trực v&agrave; trung thực trong giao dịch, hợp t&aacute;c.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Nguy&ecirc;n tắc ứng xử: minh bạch trong c&ocirc;ng việc; t&ocirc;n trọng trong ứng xử, c&ocirc;ng bằng trong xử thế.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Đạo đức: giữ chữ t&iacute;n v&agrave; t&ocirc;n trọng c&aacute;c chuẩn mực đạo đức kinh doanh.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">T&iacute;nh tu&acirc;n thủ: tu&acirc;n thủ luật ph&aacute;p; ch&iacute;nh s&aacute;ch qui định của c&ocirc;ng ty.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">II. Về sản phẩm v&agrave; dịch vụ</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">- Tổng quan về sản phẩm dịch vụ:</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Chuy&ecirc;n cung cấp c&aacute;c thiết bị, m&aacute;y m&oacute;c phục vụ cho ng&agrave;nh x&acirc;y dựng, ng&agrave;nh mộc, ng&agrave;nh cơ kh&iacute; v&agrave; n&ocirc;ng-l&acirc;m nghiệp, bao gồm c&aacute;c dụng cụ điện cầm tay&nbsp; Makita, Maktec, Stilh, Honda, Echo, Yamaha&hellip;</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">C&aacute;c loại M&aacute;y đục ph&aacute; b&ecirc; t&ocirc;ng, M&aacute;y khoan, M&aacute;y m&agrave;i, M&aacute;y cắt, M&aacute;y cưa, M&aacute;y b&agrave;o.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">M&aacute;y cưa x&iacute;ch, m&aacute;y cắt cỏ, đầu nổ, m&aacute;y ph&aacute;t điện, dụng cụ ngo&agrave;i trời.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Phụ kiện, Linh kiện k&egrave;m theo M&aacute;y : Đĩa m&agrave;i, Đĩa cắt, Mũi khoan, Mũi đục&hellip;</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Cung cấp dịch vụ: Bảo h&agrave;nh - Bảo tr&igrave; , thay thế linh kiện sản phẩm.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">- Những lợi &iacute;ch khi mua sắm trực tuyến tại dienmaythanhloi.vn:</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Được tư vấn trực tiếp để lựa chọn sản phẩm tốt nhất.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Giao h&agrave;ng v&agrave; thu tiền tại nh&agrave; tr&ecirc;n to&agrave;n quốc! Miễn ph&iacute; vận chuyển tại Nội th&agrave;nh H&agrave; Nội (Với đơn h&agrave;ng tr&ecirc;n 1.000.000đ).</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Dịch vụ chăm s&oacute;c, hỗ trợ kh&aacute;ch h&agrave;ng tận t&igrave;nh trong suốt qu&aacute; tr&igrave;nh mua h&agrave;ng, từ 8h00 đến 20h00.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">Cập nhật nhiều chương tr&igrave;nh Ưu đ&atilde;i, Khuyến mại giảm gi&aacute;, Tặng qu&agrave;.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">H&atilde;y truy cập dienmaythanhloi.vn để được tư vấn tốt nhất.</span></div>\r\n<div class=\"panel-about-title\"><span style=\"font-size: 12pt;\">&nbsp;</span></div>', '<p><span style=\"font-size: 12pt;\">Tuyển Nh&acirc;n vi&ecirc;n tư vấn B&aacute;n H&agrave;ng (Lương từ 7-12tr/th&aacute;ng)</span></p>\r\n<p><span style=\"font-size: 12pt;\">Số lượng: 05 người</span></p>\r\n<p><span style=\"font-size: 12pt;\">Mức lương: Thu nhập từ 7 - 12 triệu/th&aacute;ng</span></p>\r\n<p><span style=\"font-size: 12pt;\">L&agrave;m việc tại H&agrave; Nội:</span></p>\r\n<p><span style=\"font-size: 12pt;\">-&nbsp;297 Trường Chinh - Thanh Xu&acirc;n - H&agrave; Nội</span></p>\r\n<p><span style=\"font-size: 12pt;\">-&nbsp;116 Trường Chinh - Đống Đa - H&agrave; Nội</span></p>\r\n<p><span style=\"font-size: 12pt;\">M&ocirc; tả c&ocirc;ng việc:</span></p>\r\n<p><span style=\"font-size: 12pt;\">Tiếp nhận kh&aacute;ch h&agrave;ng, đơn đặt h&agrave;ng từ kh&aacute;ch h&agrave;ng.&nbsp; &nbsp; &nbsp;</span></p>\r\n<p><span style=\"font-size: 12pt;\">B&aacute;n h&agrave;ng v&agrave; chăm s&oacute;c kh&aacute;ch h&agrave;ng qua điện thoại, email, chat...&nbsp; &nbsp; &nbsp;</span></p>\r\n<p><span style=\"font-size: 12pt;\">Tiếp đ&oacute;n v&agrave; tư vấn kh&aacute;ch h&agrave;ng đến hỏi v&agrave; mua h&agrave;ng trực tiếp.&nbsp; &nbsp; &nbsp;</span></p>\r\n<p><span style=\"font-size: 12pt;\">Hỗ trợ, giải đ&aacute;p thắc mắc, tư vấn v&agrave; chăm s&oacute;c kh&aacute;ch h&agrave;ng qua điện thoại như hướng dẫn kh&aacute;ch h&agrave;ng mua h&agrave;ng, đặt h&agrave;ng, tiếp nhận đơn h&agrave;ng kh&aacute;ch y&ecirc;u cầu.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Thời gian l&agrave;m việc giờ h&agrave;nh ch&iacute;nh (ngo&agrave;i ra c&oacute; thể l&agrave;m việc th&ecirc;m giờ tới 20h00\'\' v&agrave; cả thứ 7 hoặc Chủ nhật)</span></p>\r\n<p><span style=\"font-size: 12pt;\">Y&ecirc;u cầu c&ocirc;ng việc:</span></p>\r\n<p><span style=\"font-size: 12pt;\">Nam, tuổi từ 20 - 28.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Chăm chỉ, nhanh nhẹn, h&ograve;a đồng.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Chưa c&oacute; kinh nghiệm sẽ được đ&agrave;o tạo.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Đam m&ecirc; b&aacute;n h&agrave;ng l&agrave; một lợi thế.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Giọng n&oacute;i chuẩn, kh&ocirc;ng n&oacute;i ngọng, kh&ocirc;ng n&oacute;i nặng giọng địa phương, truyền cảm.</span></p>\r\n<p><span style=\"font-size: 12pt;\">C&oacute; khả năng chịu &aacute;p lực c&ocirc;ng việc, năng động, nhiệt t&igrave;nh, ham học hỏi.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; h&igrave;nh thức ưa nh&igrave;n.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Quyền lợi được hưởng:</span></p>\r\n<p><span style=\"font-size: 12pt;\">M&ocirc;i trường l&agrave;m việc năng động, th&acirc;n thiện, cơ hội thăng tiến. Được đ&agrave;o tạo th&ecirc;m để n&acirc;ng cao nghiệp vụ chuy&ecirc;n m&ocirc;n.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Thu nhập kh&ocirc;ng giới hạn tương xứng với khả năng đ&oacute;ng g&oacute;p.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Chế độ nghỉ ph&eacute;p hằng năm 12 ng&agrave;y/năm, đ&oacute;ng BHXH, BHYT.. theo quy định của ph&aacute;p luật.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Lương th&aacute;ng 13&hellip;, thưởng lễ, Tết v&agrave; c&aacute;c dịp đặc biệt theo quy định của c&ocirc;ng ty.</span></p>\r\n<p><span style=\"font-size: 12pt;\">X&eacute;t khen thưởng v&agrave; tăng lương theo tỷ lệ quy định của c&ocirc;ng ty.</span></p>\r\n<p><span style=\"font-size: 12pt;\">C&oacute; cơ hội sắm c&aacute;c mặt h&agrave;ng: gia dụng, điện lạnh, y tế sức khỏe ... với gi&aacute; ưu đ&atilde;i d&agrave;nh cho nh&acirc;n vi&ecirc;n c&ocirc;ng ty.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Được tham gia c&aacute;c hoạt động ngoại kh&oacute;a: văn nghệ, thể thao, du lịch, Teambuilding của C&ocirc;ng ty.</span></p>\r\n<p><span style=\"font-size: 12pt;\">C&aacute;c chế độ thăm hỏi ốm đau, thai sản, sinh nhật, hiếu hỉ,... theo quy định của Ban Ph&uacute;c lợi.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Hồ sơ bao gồm:</span></p>\r\n<p><span style=\"font-size: 12pt;\">Sơ yếu l&iacute; lịch c&oacute; d&aacute;n ảnh 4x6</span></p>\r\n<p><span style=\"font-size: 12pt;\">Bản sao giấy khai sinh, c&aacute;c văn bằng, chứng chỉ.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Giấy kh&aacute;m sức khỏe kh&ocirc;ng qu&aacute; 6 th&aacute;ng.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Bản photo c&ocirc;ng chứng sổ hộ khẩu.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Bản sao chứng minh thư.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Đơn xin việc viết tay.</span></p>\r\n<p><span style=\"font-size: 12pt;\">Nộp hồ sơ trực tiếp tại văn ph&ograve;ng c&ocirc;ng ty theo địa chỉ:</span></p>\r\n<p><span style=\"font-size: 12pt;\">-&nbsp;297 Trường Chinh - Thanh Xu&acirc;n - H&agrave; Nội</span></p>\r\n<p><span style=\"font-size: 12pt;\">-&nbsp;116 Trường Chinh - Đống Đa - H&agrave; Nội</span></p>\r\n<p><span style=\"font-size: 12pt;\">Hạn nộp hồ sơ: 30/10/2020</span></p>', 1, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.187961974414!2d105.90575791533212!3d21.02516389327604!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135a93d80aa9aef%3A0x170d9e17b522cc97!2zMTcwIFRo4bqhY2ggQsOgbiwgTG9uZyBCacOqbiwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1569786115141!5m2!1svi!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', '<p class=\"footer-title footer-small-title\"><span style=\"font-size: 12pt;\">C&Ocirc;NG TY TNHH ĐIỆN M&Aacute;Y TH&Agrave;NH LỢI</span></p>\r\n<p class=\"footer-title footer-small-title\"><span style=\"font-size: 12pt;\">HOTLINE: 0986.486.947&nbsp; &nbsp;|&nbsp; &nbsp;0973.937.035&nbsp; &nbsp;|&nbsp; &nbsp;0936.564.441</span></p>\r\n<p class=\"footer-title footer-small-title\"><span style=\"font-size: 12pt;\">SHOWROOM 1: 297 TRƯỜNG CHINH - THANH XU&Acirc;N - H&Agrave; NỘI</span></p>\r\n<p class=\"footer-title footer-small-title\"><span style=\"font-size: 12pt;\">SỐ ĐIỆN THOẠI: (024) 3215.1620</span></p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_order`
--

CREATE TABLE `detail_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail_order`
--

INSERT INTO `detail_order` (`id`, `product_id`, `order_product_id`) VALUES
(1, 19, 1),
(2, 19, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info_profile`
--

CREATE TABLE `info_profile` (
  `id` int(11) NOT NULL,
  `full_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_day` int(11) DEFAULT NULL,
  `cell_phone` int(10) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `ward` int(11) DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `info_profile`
--

INSERT INTO `info_profile` (`id`, `full_name`, `birth_day`, `cell_phone`, `city`, `district`, `ward`, `avatar`, `gender`, `user_id`) VALUES
(1, 'Ngô Văn Điệp', 679356000, 987001396, 0, 0, 0, '2-28_(1).png', 1, 1),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26),
(27, 'diepdd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27),
(28, 'diepdz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info_profile_fe`
--

CREATE TABLE `info_profile_fe` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_day` int(11) DEFAULT NULL,
  `cell_phone` int(10) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `ward` int(11) DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log_system`
--

CREATE TABLE `log_system` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `log_system`
--

INSERT INTO `log_system` (`id`, `user_id`, `status`, `created_at`) VALUES
(4, 20, 0, 1568004884),
(5, 21, 0, 1568011452),
(6, 22, 0, 1568255539),
(7, 23, 0, 1569053542),
(8, 24, 0, 1569053633),
(9, 25, 0, 1569054353),
(10, 26, 0, 1569056037),
(11, 27, 0, 1569059582),
(12, 28, 0, 1569225854);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1567562899),
('m130524_201442_init', 1567562901),
('m140506_102106_rbac_init', 1567585375),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1567585375),
('m180523_151638_rbac_updates_indexes_without_prefix', 1567585376),
('m190124_110200_add_verification_token_column_to_user_table', 1567562901);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_products`
--

CREATE TABLE `order_products` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cell_phone` int(12) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripsion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_products`
--

INSERT INTO `order_products` (`id`, `full_name`, `address`, `cell_phone`, `email`, `descripsion`, `created_at`) VALUES
(1, 'Ngô Văn Điệp', 'Thái thịnh, Thái thụy, Thái bình', 987001396, 'nvdiepse@gmail.com', 'Mong sẽ nhận được hàng sớm', 0),
(2, 'Ngô Văn Nam', 'Thái thịnh, Thái thụy, Thái bình', 987001396, 'nvdiepse@gmail.com', 'Mô tả ngắn', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `parter`
--

CREATE TABLE `parter` (
  `id` int(11) NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guarantce` int(3) NOT NULL,
  `exp_price` float NOT NULL,
  `sale_number` int(3) NOT NULL,
  `is_new` int(11) NOT NULL,
  `is_hot_new` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `views` int(11) DEFAULT NULL,
  `is_empty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `full_name`, `price`, `description`, `slug`, `content`, `avatar`, `created_at`, `updated_at`, `status`, `code`, `guarantce`, `exp_price`, `sale_number`, `is_new`, `is_hot_new`, `cat_id`, `type`, `brand`, `views`, `is_empty`) VALUES
(15, 'Máy Soi Gỗ Bosch GKF 550', 1080000.00, 'Mô tả ngắn', 'may-soi-go-bosch-gkf-550', '<table width=\"1010\">\r\n<tbody>\r\n<tr>\r\n<td>Model</td>\r\n<td>GKF 550&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>H&atilde;ng sản xuất</td>\r\n<td>Bosch</td>\r\n</tr>\r\n<tr>\r\n<td>C&ocirc;ng suất</td>\r\n<td>550 W</td>\r\n</tr>\r\n<tr>\r\n<td>Điện &aacute;p</td>\r\n<td>220V-1pha</td>\r\n</tr>\r\n<tr>\r\n<td>Tốc độ kh&ocirc;ng tải</td>\r\n<td>33.000 v&ograve;ng/ph&uacute;t</td>\r\n</tr>\r\n<tr>\r\n<td>M&acirc;m cặp</td>\r\n<td>6 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Trọng lượng</td>\r\n<td>1.4 Kg</td>\r\n</tr>\r\n<tr>\r\n<td>Xuất xứ</td>\r\n<td>Trung Quốc</td>\r\n</tr>\r\n<tr>\r\n<td>Bảo h&agrave;nh</td>\r\n<td>06 th&aacute;ng</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'binh-bot-tuyet.png', 1569490271, 1569827939, 0, 'GKF 550', 3, 1200000, 10, 1, 1, 3, 1, 2, NULL, 0),
(16, 'Máy khoan bê tông AMAX AM 2-26B', 1188000.00, 'ádasdasd', 'may-khoan-be-tong-amax-am-2-26b', '<p>&aacute;dasdasd</p>', 'GWS7-100T.jpg', 1569490805, 1569827530, 0, 'AMAX AM 2-26B', 3, 1200000, 10, 1, 1, 1, 1, 2, NULL, 0),
(17, 'Máy khoan bê tông AMAX AM 2-28', 1188000.00, 'Mo ta ngan', 'may-khoan-be-tong-amax-am-2-28', '<table width=\"713\">\r\n<tbody>\r\n<tr>\r\n<td>Model</td>\r\n<td>AM 2-28</td>\r\n</tr>\r\n<tr>\r\n<td>C&ocirc;ng suất</td>\r\n<td>850 W</td>\r\n</tr>\r\n<tr>\r\n<td>Điện &aacute;p</td>\r\n<td>220 V-50 HZ</td>\r\n</tr>\r\n<tr>\r\n<td>Tốc độ</td>\r\n<td>1300 rpm</td>\r\n</tr>\r\n<tr>\r\n<td>Đường k&iacute;nh mũi khoan</td>\r\n<td>26 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Bảo h&agrave;nh</td>\r\n<td>03 th&aacute;ng</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>M&Aacute;Y C&Oacute; 3 CHỨC NĂNG , ĐẦU NỐI NHANH</p>\r\n<p>AMAX&nbsp;l&agrave; thương hiệu chuy&ecirc;n cung cấp vật tư, thiết bị c&ocirc;ng nghiệp đến từ Trung Quốc.&nbsp;AMAX&nbsp;được biết đến với c&aacute;c d&ograve;ng sản phẩm nổi bật như: m&aacute;y khoan AMAX, m&aacute;y m&agrave;i AMAX, m&aacute;y cưa AMAX, m&aacute;y cắt sắt AMAX, m&aacute;y cắt AMAX, m&aacute;y đục b&ecirc; t&ocirc;ng AMAX, m&aacute;y thổi AMAX, m&aacute;y b&agrave;o AMAX, m&aacute;y cưa x&iacute;ch chạy xăng, m&aacute;y ph&aacute;t điện , m&aacute;y khaon r&uacute;t l&otilde;i.<br />C&aacute;c sản phẩm AMAX lu&ocirc;n c&oacute; chất lượng cao, g&oacute;p phần n&acirc;ng cao năng suất v&agrave; hiệu quả lao động cho người sử dụng.</p>', 'hoa_tien_(1).jpg', 1569826799, 1569826946, 0, 'AMAX AM 2-28', 36, 1200000, 1, 1, 1, 1, 2, 1, NULL, 0),
(18, 'Máy Mài Góc Bosch GWS 750-100 (750W)', 1080000.00, 'Máy Mài Góc Bosch GWS 750-100 (750W)', 'may-mai-goc-bosch-gws-750-100-750w', '<table style=\"font-weight: 400;\" width=\"1012\">\r\n<tbody>\r\n<tr>\r\n<td>Model</td>\r\n<td>GWS 750-100</td>\r\n</tr>\r\n<tr>\r\n<td>H&atilde;ng sản xuất</td>\r\n<td>Bosch</td>\r\n</tr>\r\n<tr>\r\n<td>C&ocirc;ng suất</td>\r\n<td>750 W</td>\r\n</tr>\r\n<tr>\r\n<td>Điện &aacute;p</td>\r\n<td>220V-1pha</td>\r\n</tr>\r\n<tr>\r\n<td>Đường k&iacute;nh lưỡi cắt</td>\r\n<td>100 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Tốc độ kh&ocirc;ng tải</td>\r\n<td>11.000 v&ograve;ng/ph&uacute;t</td>\r\n</tr>\r\n<tr>\r\n<td>Trọng Lượng</td>\r\n<td>1.5 Kg</td>\r\n</tr>\r\n<tr>\r\n<td>Thương hiệu</td>\r\n<td>Đức</td>\r\n</tr>\r\n<tr>\r\n<td>Sản xuất</td>\r\n<td>Trung Quốc</td>\r\n</tr>\r\n<tr>\r\n<td>Bảo h&agrave;nh</td>\r\n<td>12 th&aacute;ng</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-weight: 400;\">Do hiện nay h&agrave;ng nh&aacute;i tr&agrave;n lan tr&ecirc;n thị trường , l&ecirc;n sau đ&acirc;y C&ocirc;ng Ty ch&uacute;ng t&ocirc;i hướng dẫn c&aacute;c bước cơ bản để ph&acirc;n biệt&nbsp;m&aacute;y bosch ch&iacute;nh h&atilde;ng hay m&aacute;y bosch nh&aacute;i, h&agrave;ng k&eacute;m chất lượng.&nbsp;</p>\r\n<p style=\"font-weight: 400;\">Tr&ecirc;n mỗi sản phẩm của Bosch 100% sản phẩm đều c&oacute; tem chống h&agrave;ng giả gi&uacute;p cho kh&aacute;ch h&agrave;ng lựa chọn đ&uacute;ng sản phẩm ch&iacute;nh h&atilde;ng của Bosch ph&acirc;n phối.</p>\r\n<p style=\"font-weight: 400;\">C&aacute;ch kiểm tra vui l&ograve;ng c&agrave;o nhẹ lớp phủ ngo&agrave;i kết hợp với những c&uacute; ph&aacute;p của tổng đ&agrave;i bosch đưa ra để kiểm tra xem sản phẩm ch&iacute;nh h&atilde;ng của Bosch.&nbsp;C&uacute; ph&aacute;p kiểm tra như sau ( DCA M&atilde; số an ninh@seri) gửi tới tổng đ&agrave;i Bosch 8099. Tr&ecirc;n mỗi tem c&agrave;o chống h&agrave;ng giả v&agrave; phiếu bảo h&agrave;nh đều c&oacute; hướng dẫn c&aacute;ch c&agrave;o v&agrave; gửi đến tổng đ&agrave;i.</p>\r\n<p style=\"font-weight: 400;\">Tr&ecirc;n mỗi sản phẩm đều c&oacute; phiếu bảo h&agrave;nh ch&iacute;nh h&atilde;ng của Bosch, mua m&aacute;y ở bất cứ cửa n&agrave;o tr&ecirc;n cả nước bạn mang ra trung t&acirc;m bảo h&agrave;nh ch&iacute;nh h&atilde;ng của Bosch gần nhất để được bảo h&agrave;nh.</p>\r\n<p style=\"font-weight: 400;\">Th&ocirc;ng thường thời hạn bảo h&agrave;nh c&aacute;c sản phẩm của Bosch trước đ&acirc;y l&agrave; l&agrave; 6 th&aacute;ng, nhưng tr&ecirc;n c&aacute;c sản phẩm mới đ&acirc;y c&oacute; chữ HEOWAY DUTY th&igrave; sẽ được bảo h&agrave;nh l&ecirc;n đến 12 th&aacute;ng.</p>', 'dwo.jpg', 1569828252, NULL, 0, 'Máy Mài Góc Bosch GWS 750-100 (750W)', 36, 1200000, 10, 0, 0, 2, 0, 2, NULL, 0),
(19, 'Máy đục bê tông KEN 2810T (17mm)', 17400000.00, 'Máy đục bê tông KEN 2810T (17mm)', 'may-duc-be-tong-ken-2810t-17mm', '<table width=\"863\">\r\n<tbody>\r\n<tr>\r\n<td>Model</td>\r\n<td>&nbsp;2810T</td>\r\n</tr>\r\n<tr>\r\n<td>H&atilde;ng sản xuất</td>\r\n<td>KEN</td>\r\n</tr>\r\n<tr>\r\n<td>C&ocirc;ng suất</td>\r\n<td>1050W</td>\r\n</tr>\r\n<tr>\r\n<td>Điện &aacute;p</td>\r\n<td>220V-1pha</td>\r\n</tr>\r\n<tr>\r\n<td>Đường k&iacute;nh mũi đục</td>\r\n<td>17 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Tốc độ</td>\r\n<td>2900 v&ograve;ng/ph&uacute;t</td>\r\n</tr>\r\n<tr>\r\n<td>Trọng lượng</td>\r\n<td>5,3 Kg</td>\r\n</tr>\r\n<tr>\r\n<td>Xuất xứ</td>\r\n<td>Trung Quốc</td>\r\n</tr>\r\n<tr>\r\n<td>Bảo h&agrave;nh</td>\r\n<td>06 th&aacute;ng</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'hk-h300d.jpg', 1569828311, NULL, 0, 'Máy đục bê tông KEN 2810T (17mm)', 36, 20000000, 13, 0, 0, 2, 0, 2, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `show_room`
--

CREATE TABLE `show_room` (
  `id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cell_phone` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_employ`
--

CREATE TABLE `sp_employ` (
  `huong_dan_thanh_toan` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `chinh_sach_giao_hang` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `chinh_sach_hoi_tra` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `chinh_sach_bao_mat_thong_tin` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL,
  `chinh_sach_bao_hanh` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sp_employ`
--

INSERT INTO `sp_employ` (`huong_dan_thanh_toan`, `chinh_sach_giao_hang`, `chinh_sach_hoi_tra`, `chinh_sach_bao_mat_thong_tin`, `id`, `chinh_sach_bao_hanh`) VALUES
('<p>THANH TO&Aacute;N TRỰC TIẾP:</p>\r\n<p>Đ&acirc;y l&agrave; h&igrave;nh thức thanh to&aacute;n tiện lợi, đơn giản. Qu&yacute; kh&aacute;ch đặt h&agrave;ng v&agrave; được nh&acirc;n vi&ecirc;n của Điện m&aacute;y Th&agrave;nh Lợi&nbsp;gọi điện x&aacute;c nhận, nh&acirc;n vi&ecirc;n của ch&uacute;ng t&ocirc;i sẽ giao h&agrave;ng tới địa chỉ m&agrave; bạn y&ecirc;u cầu (đối với kh&aacute;ch h&agrave;ng ở nội th&agrave;nh H&agrave; Nội) hoặc gửi sản phẩm cho Qu&yacute; kh&aacute;ch qua đường chuyển ph&aacute;t nhanh theo dịch vụ ph&aacute;t h&agrave;ng thu tiền (COD) của bưu điện (đối với kh&aacute;ch h&agrave;ng ở tỉnh, th&agrave;nh phố kh&aacute;c)</p>\r\n<p>THANH TO&Aacute;N CHUYỂN KHOẢN QUA NG&Acirc;N H&Agrave;NG:</p>\r\n<p>Qu&yacute; kh&aacute;ch chuyển khoản qua ng&acirc;n h&agrave;ng vui l&ograve;ng ghi r&otilde;: T&ecirc;n, số điện thoại, m&atilde; sản phẩm muốn đặt mua.</p>\r\n<p>Chủ t&agrave;i khoản: L&ecirc; Văn Lợi</p>\r\n<p>Số t&agrave;i khoản: 1500205533015</p>\r\n<p>Ng&acirc;n h&agrave;ng Agribank chi nh&aacute;nh H&agrave; Th&agrave;nh</p>\r\n<p>Sau khi qu&yacute; kh&aacute;ch nhận được sản phẩm từ nh&acirc;n vi&ecirc;n giao h&agrave;ng, Qu&yacute; kh&aacute;ch vui l&ograve;ng kiểm tra sản phẩm v&agrave; thanh to&aacute;n tiền trực tiếp cho nh&acirc;n vi&ecirc;n giao h&agrave;ng.</p>\r\n<p>- Thời gian giao h&agrave;ng:</p>\r\n<p>Đối với c&aacute;c sản phẩm c&oacute; sẵn tại Điện m&aacute;y Th&agrave;nh Lợi:</p>\r\n<p>+ Giao h&agrave;ng trong ng&agrave;y c&oacute; địa chỉ ở c&aacute;c quận Nội th&agrave;nh H&agrave; Nội.</p>\r\n<p>+ Giao h&agrave;ng từ 3 &ndash; 5 ng&agrave;y cho kh&aacute;ch h&agrave;ng c&oacute; địa chỉ ở c&aacute;c tỉnh l&acirc;n cận H&agrave; Nội.</p>\r\n<p>+ Giao h&agrave;ng trong tuần cho kh&aacute;ch h&agrave;ng c&oacute; địa chỉ thuộc c&aacute;c tỉnh xa H&agrave; Nội.</p>', '<p>1. PHẠM VI &Aacute;P DỤNG:</p>\r\n<p>Điện m&aacute;y Th&agrave;nh Lợi giao h&agrave;ng bằng dịch vụ Ph&aacute;t chuyển nhanh tới địa chỉ theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc v&agrave; ho&agrave;n to&agrave;n miễn ph&iacute;.</p>\r\n<p>2. THỜI GIAN GIAO H&Agrave;NG :</p>\r\n<p>Sau khi ch&uacute;ng t&ocirc;i nhận được đủ số tiền kh&aacute;ch h&agrave;ng thanh to&aacute;n cho sản phẩm đ&atilde; đặt mua, Điện m&aacute;y Th&agrave;nh Lợi&nbsp;sẽ tiến h&agrave;nh giao h&agrave;ng tới kh&aacute;ch h&agrave;ng theo thời gian như sau:</p>\r\n<p>- Trong v&ograve;ng 24 giờ tại khu vực nội th&agrave;nh H&agrave; Nội bằng h&igrave;nh thức nh&acirc;n vi&ecirc;n Điện m&aacute;y Th&agrave;nh Lợi&nbsp;giao h&agrave;ng trực tiếp.</p>\r\n<p>- Đối với kh&aacute;ch h&agrave;ng ở ngoại th&agrave;nh H&agrave; Nội, c&aacute;c Tỉnh/Th&agrave;nh phố kh&aacute;c ch&uacute;ng t&ocirc;i sẽ giao h&agrave;ng trong v&ograve;ng 36 giờ bằng h&igrave;nh thức Ph&aacute;t chuyển nhanh. Thời gian tr&ecirc;n kh&ocirc;ng t&iacute;nh c&aacute;c ng&agrave;y lễ, ng&agrave;y nghỉ.&nbsp;</p>\r\n<p>Ngo&agrave;i c&aacute;c h&igrave;nh thức giao h&agrave;ng tr&ecirc;n, ch&uacute;ng t&ocirc;i sẽ &aacute;p dụng ch&iacute;nh s&aacute;ch giao h&agrave;ng ngay lập tức nếu c&oacute; khả năng hoặc c&oacute; những thỏa thuận hoặc y&ecirc;u cầu đặc biệt của kh&aacute;ch h&agrave;ng. Tuy nhi&ecirc;n, trong một số trường hợp kh&aacute;ch quan Điện m&aacute;y Th&agrave;nh Lợi c&oacute; thể giao h&agrave;ng chậm trễ so với thời gian cam kết do những điều kiện bất khả kh&aacute;ng như thời tiết xấu, điều kiện giao th&ocirc;ng kh&ocirc;ng thuận lợi, m&aacute;y bay trễ chuyến, xe hỏng h&oacute;c tr&ecirc;n đường giao h&agrave;ng, trục trặc trong qu&aacute; tr&igrave;nh xuất h&agrave;ng.&nbsp;</p>\r\n<p>3. TR&Aacute;CH NHIỆM VỚI H&Agrave;NG H&Oacute;A VẬN CHUYỂN</p>\r\n<p>- Dịch vụ vận chuyển do Điện m&aacute;y Th&agrave;nh Lợi&nbsp;hoặc do ch&uacute;ng t&ocirc;i chỉ định sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ Điện m&aacute;y Th&agrave;nh Lợi&nbsp;đến kh&aacute;ch h&agrave;ng.</p>\r\n<p>- Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm kiểm tra h&agrave;ng h&oacute;a khi nhận h&agrave;ng. Khi ph&aacute;t hiện h&agrave;ng h&oacute;a bị hư hại, trầy xước, bể vỡ, mốp m&eacute;o, hoặc sai mẫu m&atilde; so với h&agrave;ng đ&atilde; đặt mua th&igrave; k&yacute; x&aacute;c nhận t&igrave;nh trạng h&agrave;ng h&oacute;a với Nh&acirc;n vi&ecirc;n giao nhận v&agrave; th&ocirc;ng b&aacute;o ngay cho ch&uacute;ng t&ocirc;i để giải quyết.</p>\r\n<p>- Sau khi kh&aacute;ch đ&atilde; k&yacute; nhận h&agrave;ng m&agrave; kh&ocirc;ng ghi ch&uacute; hoặc c&oacute; &yacute; kiến về h&agrave;ng h&oacute;a, đồng nghĩa với việc Điện m&aacute;y Th&agrave;nh Lợi&nbsp;kh&ocirc;ng c&oacute; tr&aacute;ch nhiệm với những y&ecirc;u cầu đổi trả v&igrave; hư hỏng, trầy xước, bể vỡ, mốp m&eacute;o, sai h&agrave;ng h&oacute;a, vv&hellip; sau n&agrave;y.</p>', '<p>Ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng nhằm đảm bảo quyền lợi tối đa cho kh&aacute;ch h&agrave;ng khi mua sắm h&agrave;ng h&oacute;a tại Điện m&aacute;y Th&agrave;nh Lợi, cụ thể như sau:</p>\r\n<p>Nhằm đảm bảo quyền lợi người ti&ecirc;u d&ugrave;ng, n&acirc;ng cao chất lượng dịch vụ sau b&aacute;n h&agrave;ng, Kh&aacute;ch h&agrave;ng được đổi sản phẩm mới c&ugrave;ng loại khi sản phẩm gặp sự cố kh&ocirc;ng thể khắc phục được (do lỗi kỹ thuật của nh&agrave; sản xuất). Sản phẩm lỗi chỉ được đổi sau khi đ&atilde; c&oacute; x&aacute;c nhận của kỹ thuật v&agrave; tu&acirc;n thủ theo c&aacute;c điều kiện sau đ&acirc;y:</p>\r\n<p>- Sản phẩm mới mua trong v&ograve;ng 01 ng&agrave;y kể từ ng&agrave;y xuất b&aacute;n. Kh&aacute;ch h&agrave;ng mua trực tuyến, thời gian được t&iacute;nh từ ng&agrave;y kh&aacute;ch nhận được sản phẩm;</p>\r\n<p>- H&agrave;ng h&oacute;a được x&aacute;c định nguồn gốc mua tại Điện m&aacute;y Th&agrave;nh Lợi&nbsp;(căn cứ v&agrave;o h&oacute;a đơn mua h&agrave;ng, phiếu bảo h&agrave;nh v&agrave; tem nhận diện d&aacute;n tr&ecirc;n sản phẩm);</p>\r\n<p>- H&agrave;ng h&oacute;a được x&aacute;c nhận bị lỗi kỹ thuật của Kỹ thuật vi&ecirc;n của Trung T&acirc;m Bảo H&agrave;nh của H&atilde;ng;</p>\r\n<p>- H&agrave;ng h&oacute;a vẫn c&ograve;n nguy&ecirc;n tem ni&ecirc;m phong (kh&ocirc;ng bị r&aacute;ch vỡ hoặc d&aacute;n lại) của nh&agrave; sản xuất hoặc tem của Điện m&aacute;y Th&agrave;nh Lợi, phải c&ograve;n nguy&ecirc;n vẹn vỏ th&ugrave;ng, xốp v&agrave; đầy đủ c&aacute;c phụ kiện k&egrave;m theo, qu&agrave; khuyến mại (nếu c&oacute;)&hellip;</p>\r\n<p>- H&agrave;ng h&oacute;a nhận lại kh&ocirc;ng bị lỗi h&igrave;nh thức (trầy xước, m&oacute;p m&eacute;o, ố v&agrave;ng, vỡ &hellip;)</p>\r\n<p>- H&agrave;ng h&oacute;a nhận lại phải c&ograve;n đầy đủ linh kiện.</p>\r\n<p>- H&agrave;ng h&oacute;a khi nhận lại phải c&oacute; đầy đủ c&aacute;c chứng từ k&egrave;m theo (Phiếu bảo h&agrave;nh, s&aacute;ch hướng dẫn &hellip; )</p>\r\n<p>Điện m&aacute;y Th&agrave;nh Lợi sẽ thực hiện đổi h&agrave;ng cho kh&aacute;ch, nhưng kh&ocirc;ng ho&agrave;n lại ph&iacute; vận chuyển/ giao h&agrave;ng (nếu c&oacute;), trừ những trường hợp sau:</p>\r\n<p>- Kh&ocirc;ng đ&uacute;ng chủng loại, mẫu m&atilde; như qu&yacute; kh&aacute;ch đ&atilde; đặt h&agrave;ng.</p>\r\n<p>- Kh&ocirc;ng đủ số lượng, kh&ocirc;ng đủ bộ/ th&ocirc;ng tin như trong đơn h&agrave;ng ban đầu.</p>\r\n<p>- Kh&ocirc;ng đạt chất lượng như: qu&aacute; hạn sử dụng, hết bảo h&agrave;nh, kh&ocirc;ng vận h&agrave;nh được, hỏng h&oacute;c kh&aacute;ch quan trong phạm vi bảo h&agrave;nh của nh&agrave; cung cấp, nh&agrave; sản xuất,..</p>\r\n<p>Trường hợp kh&ocirc;ng chấp nhận đổi hoặc trả sản phẩm:</p>\r\n<p>- Qu&yacute; kh&aacute;ch muốn thay đổi mẫu m&atilde;, chủng loại sản phẩm;</p>\r\n<p>- Lỗi do người sử dụng;</p>\r\n<p>- Kh&ocirc;ng chấp nhận c&aacute;c lỗi ngoại quan (xước, m&oacute;p, m&eacute;o, vỡ, sứt&hellip;) khi kh&aacute;ch h&agrave;ng đ&atilde; mang sản phẩm ra khỏi cửa h&agrave;ng C&ocirc;ng ty;</p>\r\n<p>- Qu&yacute; kh&aacute;ch vận h&agrave;nh kh&ocirc;ng đ&uacute;ng chỉ dẫn, g&acirc;y hỏng h&oacute;c sản phẩm, h&agrave;ng h&oacute;a;</p>\r\n<p>- Qu&yacute; kh&aacute;ch tự l&agrave;m ảnh hưởng t&igrave;nh trạng b&ecirc;n ngo&agrave;i như&nbsp; bong tr&oacute;c, bể vỡ, &hellip;;</p>\r\n<p>- Qu&yacute; kh&aacute;ch y&ecirc;u cầu đổi trả h&agrave;ng h&oacute;a v&igrave; l&yacute; do sai phạm về h&igrave;nh thức (trầy xước, m&oacute;p m&eacute;o, ố v&agrave;ng, bể vỡ,&hellip;) m&agrave; khi qu&yacute; kh&aacute;ch mua h&agrave;ng h&oacute;a vẫn c&ograve;n nguy&ecirc;n vẹn.</p>\r\n<p>Ch&uacute; &yacute;: Kh&aacute;ch h&agrave;ng xem kỹ sản phẩm trước khi mua, sản phẩm đ&atilde; b&aacute;n ra kh&ocirc;ng nhập lại. Để đảm bảo cho mọi kh&aacute;ch h&agrave;ng lu&ocirc;n mua được sản phẩm mới.</p>\r\n<p>Quy tr&igrave;nh xử l&yacute; thủ tục đổi trả h&agrave;ng:</p>\r\n<p>&nbsp;Kh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ trực tiếp với Trung T&acirc;m Bảo H&agrave;nh của H&atilde;ng hoặc th&ocirc;ng qua Ph&ograve;ng Bảo h&agrave;nh của Điện m&aacute;y Th&agrave;nh Lợi&nbsp;để thay mặt chuyển h&agrave;ng h&oacute;a đến H&atilde;ng để kiểm tra. Sau khi c&oacute; Giấy X&aacute;c Nhận T&igrave;nh Trạng với nội dung h&agrave;ng h&oacute;a hư hỏng do lỗi kỹ thuật kh&ocirc;ng thể sửa chữa, chấp nhận đổi mới. Việc đổi h&agrave;ng sẽ được thực hiện theo đ&uacute;ng quy định của Điện m&aacute;y Th&agrave;nh Lợi</p>\r\n<p>Điện m&aacute;y Th&agrave;nh Lợi kh&ocirc;ng chịu tr&aacute;ch nhiệm trong c&aacute;c trường hợp h&agrave;ng h&oacute;a hỏng h&oacute;c trong qu&aacute; tr&igrave;nh vận chuyển đến trung t&acirc;m của Điện m&aacute;y Th&agrave;nh Lợi</p>', '<p>Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin</p>', 1, '<p>1. MỤC Đ&Iacute;CH V&Agrave; PHẠM VI THU THẬP</p>\r\n<p>- Để truy cập v&agrave; sử dụng một số dịch vụ tại Điện m&aacute;y Th&agrave;nh Lợi, qu&yacute; kh&aacute;ch c&oacute; thể được y&ecirc;u cầu đăng k&yacute; với ch&uacute;ng t&ocirc;i th&ocirc;ng tin c&aacute; nh&acirc;n, bao gồm: Họ v&agrave; t&ecirc;n, Giới t&iacute;nh, Địa chỉ, Thư điện tử, Điện thoại di động, Điện thoại, số Fax.</p>\r\n<p>- Ch&uacute;ng t&ocirc;i cũng thu thập th&ocirc;ng tin về số lần viếng thăm, bao gồm số trang qu&yacute; kh&aacute;ch xem, số links (li&ecirc;n kết) bạn click, những th&ocirc;ng tin kh&aacute;c li&ecirc;n quan đến việc kết nối đến Điện m&aacute;y Th&agrave;nh Lợi&nbsp;v&agrave; c&aacute;c th&ocirc;ng tin m&agrave; tr&igrave;nh duyệt Web (Browser) qu&yacute; kh&aacute;ch sử dụng mỗi khi truy cập v&agrave;o website www.dienmaythanhloi.vn, gồm: địa chỉ IP, loại Browser, ng&ocirc;n ngữ sử dụng, thời gian v&agrave; những địa chỉ m&agrave; Browser truy xuất đến.</p>\r\n<p>2. PHẠM VI SỬ DỤNG TH&Ocirc;NG TIN</p>\r\n<p>Điện m&aacute;y Th&agrave;nh Lợi sử dụng th&ocirc;ng tin kh&aacute;ch h&agrave;ng cung cấp để:</p>\r\n<p>- Hỗ trợ kh&aacute;ch h&agrave;ng khi mua sản phẩm</p>\r\n<p>- Giải đ&aacute;p thắc mắc kh&aacute;ch h&agrave;ng</p>\r\n<p>- Cung cấp cho kh&aacute;ch h&agrave;ng th&ocirc;ng tin mới nhất tr&ecirc;n Website của ch&uacute;ng t&ocirc;i, thực hiện c&aacute;c khảo s&aacute;t kh&aacute;ch h&agrave;ng, c&aacute;c hoạt động quảng b&aacute; li&ecirc;n quan đến c&aacute;c sản phẩm v&agrave; dịch vụ của Điện m&aacute;y Th&agrave;nh Lợi&nbsp;nếu qu&yacute; kh&aacute;ch đăng k&iacute; nhận email th&ocirc;ng b&aacute;o.</p>\r\n<p>3. THỜI GIAN LƯU TRỮ TH&Ocirc;NG TIN</p>\r\n<p>- Dữ liệu c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng sẽ được lưu trữ cho đến khi c&oacute; y&ecirc;u cầu hủy bỏ. C&ograve;n lại trong mọi trường hợp th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng sẽ được bảo mật tr&ecirc;n m&aacute;y chủ của Điện m&aacute;y Th&agrave;nh Lợi</p>\r\n<p>4. ĐƠN VỊ THU THẬP V&Agrave; QUẢN L&Yacute; TH&Ocirc;NG TIN</p>\r\n<p>Điện m&aacute;y Th&agrave;nh Lợi</p>\r\n<p>Hotline: 0986.486.947&nbsp; &nbsp;|&nbsp; &nbsp;0973.937.035&nbsp; &nbsp;|&nbsp; &nbsp;0936.564.441</p>\r\n<p>Showroom 1: 297 Trường Chinh - Thanh Xu&acirc;n - H&agrave; Nội</p>\r\n<p>Số điện thoại: (024) 3215.1620</p>\r\n<p>Showroom 2: 116 Trường Chinh - Đống Đa - H&agrave; Nội</p>\r\n<p>Số điện thoại: (024) 3218.1089</p>\r\n<p>Email: dienmaythanhloi@gmail.com</p>\r\n<p>5. PHƯƠNG TIỆN V&Agrave; C&Ocirc;NG CỤ ĐỂ NGƯỜI D&Ugrave;NG TIẾP CẬN V&Agrave; CHỈNH SỬA DỮ LIỆU C&Aacute; NH&Acirc;N CỦA M&Igrave;NH</p>\r\n<p>- Kh&aacute;ch h&agrave;ng c&oacute; quyền tự kiểm tra, cập nhật, điều chỉnh hoặc hủy bỏ th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh bằng c&aacute;ch y&ecirc;u cầu Điện m&aacute;y Th&agrave;nh Lợi&nbsp;thực hiện việc n&agrave;y.</p>\r\n<p>- Kh&aacute;ch h&agrave;ng c&oacute; quyền gửi khiếu nại về người b&aacute;n đến Ban quản trị của website www.dienmaythanhloi.vn tại địa chỉ email: dienmaythanhloi@gmail.com. Khi tiếp nhận những phản hồi n&agrave;y, Điện m&aacute;y Th&agrave;nh Lợi&nbsp;sẽ x&aacute;c nhận lại th&ocirc;ng tin, trường hợp đ&uacute;ng như phản &aacute;nh của kh&aacute;ch h&agrave;ng, t&ugrave;y theo mức độ, Điện m&aacute;y Th&agrave;nh Lợi&nbsp;sẽ c&oacute; những biện ph&aacute;p xử l&yacute; kịp thời.</p>\r\n<p>6. CAM KẾT BẢO MẬT TH&Ocirc;NG TIN C&Aacute; NH&Acirc;N KH&Aacute;CH H&Agrave;NG</p>\r\n<p>- Th&ocirc;ng tin c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng tr&ecirc;n www.dienmaythanhloi.vn được Điện m&aacute;y Th&agrave;nh Lợi&nbsp;cam kết bảo mật tuyệt đối theo ch&iacute;nh s&aacute;ch bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n của Điện m&aacute;y Th&agrave;nh Lợi. Việc thu thập v&agrave; sử dụng th&ocirc;ng tin của mỗi kh&aacute;ch h&agrave;ng chỉ được thực hiện khi c&oacute; sự đồng &yacute; của kh&aacute;ch h&agrave;ng đ&oacute; trừ những trường hợp ph&aacute;p luật c&oacute; quy định kh&aacute;c.</p>\r\n<p>- Kh&ocirc;ng sử dụng, kh&ocirc;ng chuyển giao, cung cấp hay tiết lộ cho b&ecirc;n thứ 3 n&agrave;o về th&ocirc;ng tin c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng khi kh&ocirc;ng c&oacute; sự cho ph&eacute;p đồng &yacute; từ kh&aacute;ch h&agrave;ng.</p>\r\n<p>- Trong trường hợp m&aacute;y chủ lưu trữ th&ocirc;ng tin bị hacker tấn c&ocirc;ng dẫn đến mất m&aacute;t dữ liệu c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng, Điện m&aacute;y Th&agrave;nh Lợi&nbsp;sẽ c&oacute; tr&aacute;ch nhiệm th&ocirc;ng b&aacute;o vụ việc cho cơ quan chức năng điều tra xử l&yacute; kịp thời v&agrave; th&ocirc;ng b&aacute;o cho kh&aacute;ch h&agrave;ng được biết.</p>\r\n<p>- Bảo mật tuyệt đối mọi th&ocirc;ng tin giao dịch trực tuyến của kh&aacute;ch h&agrave;ng bao gồm th&ocirc;ng tin h&oacute;a đơn kế to&aacute;n chứng từ số h&oacute;a tại khu vực dữ liệu trung t&acirc;m an to&agrave;n cấp 1 của Điện m&aacute;y Th&agrave;nh Lợi</p>\r\n<p>- Ban quản trị Điện m&aacute;y Th&agrave;nh Lợi&nbsp;y&ecirc;u cầu c&aacute;c c&aacute; nh&acirc;n khi mua h&agrave;ng hoặc li&ecirc;n hệ với ban quản trị l&agrave; kh&aacute;ch h&agrave;ng, phải cung cấp đầy đủ th&ocirc;ng tin c&aacute; nh&acirc;n c&oacute; li&ecirc;n quan như: Họ v&agrave; t&ecirc;n, Giới t&iacute;nh, Địa chỉ, Thư điện tử, Điện thoại di động, Điện thoại, số Fax &hellip;., v&agrave; chịu tr&aacute;ch nhiệm về t&iacute;nh ph&aacute;p l&yacute; của những th&ocirc;ng tin tr&ecirc;n. Ban quản trị Điện m&aacute;y Th&agrave;nh Lợi&nbsp;kh&ocirc;ng chịu tr&aacute;ch nhiệm cũng như kh&ocirc;ng giải quyết mọi khiếu nại c&oacute; li&ecirc;n quan đến quyền lợi của kh&aacute;ch h&agrave;ng đ&oacute; nếu x&eacute;t thấy tất cả th&ocirc;ng tin c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng đ&oacute; cung cấp khi đăng k&yacute; ban đầu l&agrave; kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', 'GsJKqT958fBSeYiOIKGQJ-onJnsAHIkT', '$2y$13$S23xMoQLk5jRu4P2gPP3wuWA95gCb6DtLaToRQRiKCfAIpL3ttGl2', 'TWvWegjhsHRfEWbWb2XGAujaltFnY7sV_1568600181', 'nvdiepse@gmail.com', 10, 1567563706, 1569211888, 'Efw9XlaSpN0hRZ-NQIeiYoP0yiW18H3b_1567563706'),
(10, 'diepnv', 'DwCEH7OQwrgxuafTmkdhKalDXHW8vnmH', '$2y$13$einhBBZf5eYySdvrcyL.hOmFhxhKHFj6bmV1wCg1GwYqp1bORr2Ma', NULL, 'diepnv@hellomedia.vn', 10, 1567737059, 1569293104, 'um06CRysIYIvHZVfXKgcov-XhWH9FW-0_1567737059'),
(24, 'ngogiadiep', '51qJiuFCE1ekQJBid8yxEL6SeqlZwjz8', '$2y$13$gJSvulRmycUxo3DUEjHuLuDy4CI229sUoDA7jZjX5s9m6Tvhwz4p2', NULL, 'ngogiadiepit@gmail.com', 9, 1569053632, 1569053632, 'HUyPsSwWGBZGeIDEmai0TPkutkfKHv7d_1569053632'),
(25, 'nguyenvana', 'GPvKJy0SRhGlR9DB0DjJ_aNIf-mJDK96', '$2y$13$koCbz5p2ffUGtPN6GgP1sOejyWxLt9LTrqFzJma0/RApLoQs9Hm.K', NULL, 'nguyenvana@gmail.com', 10, 1569054352, 1569054352, '1Fzbvu1B6S5EdZtaC7lG4nqYJ28RSOpn_1569054352'),
(26, 'ngogiadiep12', 'TVP-kqMkYToWBmr3kdfRXsClNBbXqguS', '$2y$13$qMpSMOxt9scBCWDwc3NZ..e0tGKxevz80m2gLrElLmPytUSXVpOLO', NULL, 'ngogiadiep12@gmail.com', 0, 1569056037, 1569211386, 'XA3jMO5Z508DfUKqKY9flU0cC5FxWI0p_1569056037'),
(27, 'diepdd', '3KVq1I7d-v4KLqeJg5_qFNIEChnlVab0', '$2y$13$I7EPHRriG1jaWQJ5UaLEj.EyzFIS1CrEXVq5zQanjsxJoYgWs1NQu', NULL, 'diepdd@gmail.com', 9, 1569059582, 1569225665, 'WCwyo7OF7-Z3kpCqAnyumFjZ34JhzE28_1569059582'),
(28, 'diepdz', 'Cwb9QDFOJUmLFJOrrrw8x3AorVBbfFK0', '$2y$13$5t1SCmWrub.78Yp4/uznauyJSNvoPMytqdFAvO6D4/tO8mJedggeS', NULL, 'diepdz@gmail.com', 10, 1569225854, 1569291575, 'CCChFn9YvkvdRmBv4qrq4jhyHG_cer1W_1569225854');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `title` (`title`) USING BTREE,
  ADD KEY `catName` (`cat_articles_id`) USING BTREE;

--
-- Chỉ mục cho bảng `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Chỉ mục cho bảng `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Chỉ mục cho bảng `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Chỉ mục cho bảng `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cat_products`
--
ALTER TABLE `cat_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail_company`
--
ALTER TABLE `detail_company`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail_order`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `info_profile`
--
ALTER TABLE `info_profile`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `info_profile_fe`
--
ALTER TABLE `info_profile_fe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `log_system`
--
ALTER TABLE `log_system`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Chỉ mục cho bảng `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `parter`
--
ALTER TABLE `parter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `code` (`code`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codeProducts` (`code`,`full_name`),
  ADD KEY `fullName` (`full_name`);

--
-- Chỉ mục cho bảng `show_room`
--
ALTER TABLE `show_room`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sp_employ`
--
ALTER TABLE `sp_employ`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE,
  ADD UNIQUE KEY `email` (`email`) USING BTREE,
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cat_products`
--
ALTER TABLE `cat_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `detail_company`
--
ALTER TABLE `detail_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `detail_order`
--
ALTER TABLE `detail_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `info_profile`
--
ALTER TABLE `info_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `info_profile_fe`
--
ALTER TABLE `info_profile_fe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `log_system`
--
ALTER TABLE `log_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `parter`
--
ALTER TABLE `parter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `show_room`
--
ALTER TABLE `show_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sp_employ`
--
ALTER TABLE `sp_employ`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
