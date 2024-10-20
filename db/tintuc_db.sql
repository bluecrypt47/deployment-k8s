-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 07, 2021 at 06:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2
create database IF NOT EXISTS tintuc_db;
use tintuc_db;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tintuc`
--

-- --------------------------------------------------------

--
-- Table structure for table `loaitin`
--

CREATE TABLE `loaitin` (
  `idLT` int(11) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Ten_KhongDau` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ThuTu` int(11) NOT NULL,
  `AnHien` tinyint(1) NOT NULL,
  `idTL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaitin`
--

INSERT INTO `loaitin` (`idLT`, `Ten`, `Ten_KhongDau`, `ThuTu`, `AnHien`, `idTL`) VALUES
(14, 'Pháp luật', 'phap-luat', 1, 0, 1),
(15, 'Thế giới', 'the-gioi', 2, 0, 1),
(16, 'Giáo dục', 'giao-duc', 3, 0, 1),
(17, 'Ẩm thực', 'am-thuc', 4, 0, 1),
(19, 'Phim', 'phim', 1, 0, 7),
(20, 'Ca nhạc', 'ca-nhac', 2, 0, 7),
(21, 'TV Show', 'tv-show', 3, 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `idTL` int(11) NOT NULL,
  `TenTL` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ThuTu` int(11) NOT NULL,
  `AnHien` tinyint(1) NOT NULL,
  `TenTL_KhongDau` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`idTL`, `TenTL`, `ThuTu`, `AnHien`, `TenTL_KhongDau`) VALUES
(1, 'Tin xã hội', 1, 0, 'Tin-Xa-Hoi'),
(2, 'Việc làm', 4, 1, 'Viec-Lam'),
(3, 'Nghệ thuật sống', 2, 0, 'Nghe-Thuat-Song'),
(6, 'Thường thức', 6, 0, 'Thuong-Thuc'),
(7, 'Thư giãn', 5, 0, 'Thu-Gian'),
(8, 'Kỹ năng', 12, 0, 'ky-nang');

-- --------------------------------------------------------

--
-- Table structure for table `tin`
--

CREATE TABLE `tin` (
  `idTin` int(11) NOT NULL,
  `TieuDe` text NOT NULL,
  `TomTat` longtext NOT NULL,
  `AnHien` tinyint(1) NOT NULL,
  `TinNoiBat` tinyint(1) NOT NULL,
  `Ngay` date NOT NULL,
  `SoLanXem` int(11) DEFAULT NULL,
  `idLT` int(11) NOT NULL,
  `TieuDe_KhongDau` text DEFAULT NULL,
  `urlHinh` varchar(500) DEFAULT NULL,
  `NoiDung` longtext NOT NULL,
  `idTL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tin`
--

INSERT INTO `tin` (`idTin`, `TieuDe`, `TomTat`, `AnHien`, `TinNoiBat`, `Ngay`, `SoLanXem`, `idLT`, `TieuDe_KhongDau`, `urlHinh`, `NoiDung`, `idTL`) VALUES
(23, 'YouTube tuyên bố ‘không có trách nhiệm’ lưu trữ video của người dùng', 'TTO - YouTube vừa gửi người dùng thông báo cập nhật điều khoản sử dụng từ 10-12, trong đó có một dòng nêu rõ họ “không có trách nhiệm” lưu trữ các video nếu họ không muốn.', 0, 1, '2019-11-10', 59, 17, 'YouTube tuyên bố ‘không có trách nhiệm’ lưu trữ video của người dùng', 'dataupload\\images\\pic7.jpg', '<h2>TTO - YouTube vừa gửi người d&ugrave;ng th&ocirc;ng b&aacute;o cập nhật điều khoản sử dụng từ 10-12, trong đ&oacute; c&oacute; một d&ograve;ng n&ecirc;u r&otilde; họ &ldquo;kh&ocirc;ng c&oacute; tr&aacute;ch nhiệm&rdquo; lưu trữ c&aacute;c video nếu họ kh&ocirc;ng muốn.</h2>\r\n\r\n<p><img alt=\"YouTube tuyên bố ‘không có trách nhiệm’ lưu trữ video của người dùng - Ảnh 1.\" src=\"https://cdn.tuoitre.vn/thumb_w/586/2019/11/12/best-youtube-channels-for-kids-of-all-ages-960x1280-1573545434624381757601.jpg\" /></p>\r\n\r\n<p>Theo trang tin&nbsp;<em>The Verge</em>, trong th&ocirc;ng b&aacute;o ch&iacute;nh s&aacute;ch dịch vụ mới c&oacute; một d&ograve;ng ghi r&otilde; &quot;Youtube kh&ocirc;ng c&oacute; tr&aacute;ch nhiệm cung cấp dịch vụ host hay lưu trữ nội dung&quot;. N&oacute;i c&aacute;ch kh&aacute;c, kh&ocirc;ng phải v&igrave; YouTube l&agrave; một nền tảng tương đối mở m&agrave; c&ocirc;ng ty n&agrave;y buộc phải giữ lại c&aacute;c video.</p>\r\n\r\n<p>Thời gian qua YouTube đối mặt với nhiều chỉ tr&iacute;ch v&igrave; việc gỡ bỏ c&aacute;c video của họ. Một số người chỉ tr&iacute;ch cho rằng YouTube c&oacute; thể l&agrave;m nhiều hơn nữa để gỡ bỏ c&aacute;c video đi ngược lại những nguy&ecirc;n tắc hoạt động của c&ocirc;ng ty nhưng kh&ocirc;ng ho&agrave;n to&agrave;n vi phạm ch&uacute;ng.</p>\r\n\r\n<p>Trong khi đ&oacute;, số kh&aacute;c lại cho rằng YouTube n&ecirc;n l&agrave; một nền tảng ho&agrave;n to&agrave;n mở v&agrave; kh&ocirc;ng n&ecirc;n kiểm so&aacute;t những g&igrave; đ&atilde; c&oacute;.</p>\r\n\r\n<p>L&acirc;u nay c&aacute;c l&atilde;nh đạo c&ocirc;ng ty n&agrave;y lu&ocirc;n tuy&ecirc;n bố nền tảng của họ l&agrave; một c&ocirc;ng cụ bảo vệ tự do ng&ocirc;n luận, tuy nhi&ecirc;n cũng đ&atilde; bắt đầu kiểm so&aacute;t chặt chẽ về quy định những kiểu video n&agrave;o được ph&eacute;p lưu h&agrave;nh tr&ecirc;n nền tảng n&agrave;y.</p>\r\n\r\n<p>C&aacute;c c&ocirc;ng ty vẫn thường xuy&ecirc;n cập nhật c&aacute;c điều khoản dịch vụ của họ. Đ&acirc;y l&agrave; lần thay đổi thứ 3 ch&iacute;nh s&aacute;ch quy định với người d&ugrave;ng của YouTube chỉ trong năm 2019.</p>\r\n\r\n<p>Những thay đổi cập nhật mới nhất n&agrave;y dường như cũng tương ứng với c&aacute;c thay đổi sắp tới của Youtube nhằm ph&ugrave; hợp hơn với c&aacute;c hướng dẫn của Ủy ban thương mại li&ecirc;n bang (FTC) với YouTube. D&ugrave; vậy, một đại diện của Youtube b&aacute;c bỏ việc những thay đổi n&agrave;y được đưa ra l&agrave; v&igrave; ph&aacute;n quyết của FTC.</p>\r\n\r\n<p>Cụ thể hơn, rất nhiều trong số những nội dung cập nhật điều khoản sử dụng tập trung v&agrave;o vấn đề ai đang sử dụng nền tảng n&agrave;y v&agrave; bảo vệ trẻ em. Theo đ&oacute;, YouTube n&ecirc;u r&otilde; điều khoản: &quot;Nếu bạn l&agrave; trẻ vị th&agrave;nh ni&ecirc;n theo quy định ở nước bạn, bạn phải lu&ocirc;n được sự đồng &yacute; của cha mẹ hoặc người bảo trợ trước khi sử dụng dịch vụ&quot;.</p>\r\n\r\n<p>Th&aacute;ng 9 năm nay, FTC đ&atilde; phạt Google 170 triệu USD v&igrave; c&aacute;c vi phạm li&ecirc;n quan luật bảo vệ quyền ri&ecirc;ng tư tr&ecirc;n mạng của trẻ em (COPPA). YouTube cũng đ&atilde; chấp nhận sẽ c&oacute; những thay đổi ch&iacute;nh s&aacute;ch dịch vụ để bảo vệ trẻ em tốt hơn v&agrave; ph&ugrave; hợp với luật ph&aacute;p.</p>\r\n', 1),
(24, 'Trí tuệ ‘ảo’ cứu 700 người tự tử ‘thật’', 'TTO - Nhóm Tree Hole Rescue với hơn 600 tình nguyện viên tại Trung Quốc đã cứu sống gần 700 người muốn tự tử trong 18 tháng qua, nhờ vào một phần mềm sử dụng trí tuệ nhân tạo (AI) trên máy tính đặt cách đất nước này hơn 8.000km.', 0, 1, '2019-11-11', 1, 17, 'dung-chuong-trinh-ai-cach-8000km-de-cuu-nguoi-tai-trung-quoc', 'dataupload\\images\\pic5.jpg', '<h2>TTO - Nh&oacute;m Tree Hole Rescue với hơn 600 t&igrave;nh nguyện vi&ecirc;n tại Trung Quốc đ&atilde; cứu sống gần 700 người muốn tự tử trong 18 th&aacute;ng qua, nhờ v&agrave;o một phần mềm sử dụng tr&iacute; tuệ nh&acirc;n tạo (AI) tr&ecirc;n m&aacute;y t&iacute;nh đặt c&aacute;ch đất nước n&agrave;y hơn 8.000km.</h2>\r\n\r\n<p><img alt=\"Trí tuệ ‘ảo’ cứu 700 người tự tử ‘thật’ - Ảnh 1.\" src=\"https://cdn.tuoitre.vn/thumb_w/586/2019/11/11/ai-save-lives-pic-bbc-15734491009581298582859.jpg\" /></p>\r\n\r\n<p>Đ&agrave;i BBC ng&agrave;y 10-11 cho biết &ocirc;ng Huang Zhisheng, nh&agrave; nghi&ecirc;n cứu AI tại ĐH Vjire Amsterdam (H&agrave; Lan), l&agrave; người đ&atilde; th&agrave;nh lập nh&oacute;m&nbsp;<a href=\"https://tuoitre.vn/giai-cuu.html\" target=\"_blank\">giải cứu</a>&nbsp;tr&ecirc;n ở Trung Quốc.</p>\r\n\r\n<p>Chương tr&igrave;nh AI chạy tr&ecirc;n một m&aacute;y t&iacute;nh đặt tại ĐH Vrije Amsterdam sẽ khoanh v&ugrave;ng c&aacute;c th&ocirc;ng điệp đăng trong c&aacute;c mục chia sẻ b&iacute; mật (hay c&ograve;n gọi l&agrave; hốc c&acirc;y - Tree Hole) tr&ecirc;n mạng x&atilde; hội Weibo v&agrave; đ&aacute;nh gi&aacute; ch&uacute;ng theo thang điểm từ 1 đến 10.</p>\r\n\r\n<p>Điểm 9 c&oacute; nghĩa l&agrave; th&ocirc;ng điệp đ&oacute; thuộc về một người c&oacute; &yacute; định tự tử mạnh mẽ v&agrave; sẽ h&agrave;nh động kh&ocirc;ng l&acirc;u sau khi chia sẻ tr&ecirc;n mạng. Điểm 10 c&oacute; nghĩa l&agrave; họ gần như đ&atilde; bắt tay v&agrave;o việc kết th&uacute;c mạng sống của bản th&acirc;n.</p>\r\n\r\n<p>Trong những trường hợp n&agrave;y, c&aacute;c t&igrave;nh nguyện vi&ecirc;n sẽ li&ecirc;n lạc với cảnh s&aacute;t, th&acirc;n nh&acirc;n hay bạn b&egrave; của người đ&oacute;.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, nếu điểm số thấp hơn 6 th&igrave; nh&oacute;m t&igrave;nh nguyện thường kh&ocirc;ng can thiệp.</p>\r\n\r\n<p>Một trong những vấn đề phổ biến m&agrave; nh&oacute;m giải cứu hay gặp phải l&agrave; việc những người th&acirc;n của người c&oacute; &yacute; định tự tử thường cho rằng trầm cảm chẳng phải l&agrave; vấn đề g&igrave; to t&aacute;t cần ch&uacute; &yacute;.</p>\r\n\r\n<p>Chương tr&igrave;nh AI tr&ecirc;n từng ph&aacute;t hiện b&agrave;i đăng của một c&ocirc; g&aacute;i trẻ với nội dung: &quot;T&ocirc;i sẽ tự s&aacute;t khi năm mới đến&quot;.&nbsp;</p>\r\n\r\n<p>Khi c&aacute;c t&igrave;nh nguyện vi&ecirc;n li&ecirc;n lạc với mẹ c&ocirc; g&aacute;i v&agrave; tr&igrave;nh ra c&aacute;c bằng chứng về sự trầm cảm của c&ocirc;, b&agrave; n&agrave;y vẫn cười m&agrave; bảo rằng con g&aacute;i b&agrave; đang rất hạnh ph&uacute;c n&ecirc;n l&agrave;m g&igrave; c&oacute; &yacute; định tự tử.</p>\r\n\r\n<p>Chỉ sau khi cảnh s&aacute;t ngăn được c&ocirc; g&aacute;i kh&ocirc;ng nhảy từ s&acirc;n thượng xuống th&igrave; b&agrave; mẹ mới thay đổi suy nghĩ.</p>\r\n\r\n<p><a href=\"https://cdn.tuoitre.vn/2019/11/11/ai-save-lives-bbc-1573449613130843142864.jpg\" target=\"_blank\"><img alt=\"Trí tuệ ‘ảo’ cứu 700 người tự tử ‘thật’ - Ảnh 2.\" src=\"https://cdn.tuoitre.vn/thumb_w/586/2019/11/11/ai-save-lives-bbc-1573449613130843142864.jpg\" /></a></p>\r\n\r\n<p>Chương tr&igrave;nh m&aacute;y t&iacute;nh d&ugrave;ng tr&iacute; tuệ nh&acirc;n tạo để ph&aacute;t hiện th&ocirc;ng điệp của những người muốn tự tử tr&ecirc;n Weibo - Ảnh: BBC</p>\r\n\r\n<p>Sinh vi&ecirc;n Li Fan chia sẻ với Đ&agrave;i BBC: &quot;T&ocirc;i biết m&igrave;nh bị trầm cảm hồi học trung học nhưng mẹ bảo rằng &#39;l&agrave;m g&igrave; c&oacute; chuyện đ&oacute;, đừng c&oacute; nghĩ về n&oacute; nữa&#39;&quot;.&nbsp;</p>\r\n\r\n<p>Anh Li l&agrave; một trong những người m&agrave; đội cứu nguy Tree Hole đ&atilde; cứu được khi c&oacute; &yacute; định tự tử sau Ng&agrave;y t&igrave;nh nh&acirc;n năm nay.</p>\r\n\r\n<p>&quot;T&ocirc;i kh&ocirc;ng thể tiếp tục được nữa. T&ocirc;i bỏ cuộc&quot; l&agrave; th&ocirc;ng điệp anh Li để lại trước khi bất tỉnh. Anh sinh vi&ecirc;n 21 tuổi n&agrave;y muốn t&igrave;m c&aacute;i chết v&igrave; đang nợ nần, c&atilde;i nhau với mẹ v&agrave; bị trầm cảm nặng. C&aacute;c t&igrave;nh nguyện vi&ecirc;n kh&ocirc;ng thể li&ecirc;n lạc trực tuyến với anh, n&ecirc;n quyết định gọi cảnh s&aacute;t để cứu anh.</p>\r\n\r\n<p>Bất chấp những th&agrave;nh c&ocirc;ng đ&atilde; đạt được, &ocirc;ng Huang thừa nhận vẫn c&oacute; những giới hạn trong dự &aacute;n của m&igrave;nh.&nbsp;</p>\r\n\r\n<p>&quot;Bởi v&igrave; Weibo bị giới hạn n&ecirc;n ch&uacute;ng t&ocirc;i chỉ c&oacute; thể truy cập khoảng 3.000 mục chia sẻ mỗi ng&agrave;y. Do đ&oacute; ch&uacute;ng t&ocirc;i chỉ c&oacute; thể cứu được v&agrave;i người mỗi ng&agrave;y v&agrave; ch&uacute;ng t&ocirc;i chọn những ca nguy cấp nhất&quot; - &ocirc;ng Huang chia sẻ.</p>\r\n\r\n<p>Ngo&agrave;i ra, một vấn đề đau l&ograve;ng m&agrave; nh&oacute;m giải cứu gặp phải l&agrave; một số người được cứu sau một thời gian lại tự tử tiếp v&agrave; lần n&agrave;y họ th&agrave;nh c&ocirc;ng.&nbsp;</p>\r\n\r\n<p>Mặc kh&aacute;c, c&aacute;c t&igrave;nh nguyện vi&ecirc;n của nh&oacute;m giải cứu cũng chịu nhiều &aacute;p lực v&igrave; nhiều người được cứu đ&atilde; xem nh&oacute;m l&agrave; một chỗ dựa tinh thần v&agrave; thường chia sẻ với họ.</p>\r\n\r\n<p>&quot;Hầu hết thời gian của t&ocirc;i l&agrave; d&agrave;nh cho việc giải cứu. T&ocirc;i phải trả lời họ ngay khi họ gửi tin nhắn cho t&ocirc;i&quot; - Li Hong, nh&agrave; t&acirc;m l&yacute; học sống tại Bắc Kinh v&agrave; tham gia nh&oacute;m giải cứu được hơn 1 năm, chia sẻ.</p>\r\n', 1),
(25, 'Hằng đêm, phố đi bộ Nguyễn Huệ đều mở nhạc nước', 'TTO - Đài phun nước trên phố đi bộ Nguyễn Huệ được kết hợp với nhạc (nhạc nước) và chiếu sáng mỹ thuật sẽ hoạt động hằng đêm để phục vụ người dân TP.HCM và du khách.', 0, 1, '2019-11-12', 6, 17, 'hang-dem-pho-di-bo-nguyen-hue-deu-mo-nhac-nuoc', 'dataupload\\images\\pic8.jpg', '<h2>TTO - Đ&agrave;i phun nước tr&ecirc;n phố đi bộ Nguyễn Huệ được kết hợp với nhạc (nhạc nước) v&agrave; chiếu s&aacute;ng mỹ thuật sẽ hoạt động hằng đ&ecirc;m để phục vụ người d&acirc;n TP.HCM v&agrave; du kh&aacute;ch.</h2>\r\n\r\n<p><img alt=\"Hằng đêm, phố đi bộ Nguyễn Huệ đều mở nhạc nước - Ảnh 1.\" src=\"https://cdn.tuoitre.vn/thumb_w/586/2019/11/11/dai-phun-nuoc-15734744774712053990058.jpg\" /></p>\r\n\r\n<p>Ng&agrave;y 11-11, UBND TP.HCM c&oacute; văn bản chỉ đạo li&ecirc;n quan đến việc c&ocirc;ng t&aacute;c quản l&yacute; v&agrave; cải tạo, chỉnh trang tuyến phố đi bộ Nguyễn Huệ, phường Bến Ngh&eacute;, quận 1.</p>\r\n\r\n<p>Cụ thể, đ&agrave;i phun nước c&oacute; nhạc v&agrave; chiếu s&aacute;ng mỹ thuật sẽ hoạt động hằng đ&ecirc;m, từ 17h30 đến 23h&nbsp;c&aacute;c ng&agrave;y trong tuần, ri&ecirc;ng thứ bảy v&agrave; chủ nhật sẽ bắt đầu từ 16h.&nbsp;</p>\r\n\r\n<p>T&ugrave;y theo t&igrave;nh h&igrave;nh thực tế, ban quản l&yacute; sẽ tắt nhạc sớm hơn (chỉ phun nước, chiếu s&aacute;ng mỹ thuật)&nbsp;để kh&ocirc;ng ảnh hưởng đến du kh&aacute;ch lưu tr&uacute; tại c&aacute;c kh&aacute;ch sạn xung quanh khu vực n&agrave;y.&nbsp;Khi c&oacute; chương tr&igrave;nh biểu diễn nghệ thuật tại phố đi bộ Nguyễn Huệ&nbsp;th&igrave; nhạc nước sẽ ngưng hoạt động.</p>\r\n\r\n<p>UBND TP giao C&ocirc;ng an TP, Lực lượng Thanh ni&ecirc;n xung phong v&agrave; UBND quận 1 phối hợp bảo vệ khu vực đ&agrave;i phun nước v&agrave; c&ocirc;ng vi&ecirc;n tượng đ&agrave;i B&aacute;c. Lực lượng Thanh ni&ecirc;n xung phong bố tr&iacute; lực lượng xung quanh khu vực đ&agrave;i phun nước nhắc nhở đối với du kh&aacute;ch thiếu &yacute; thức, c&oacute; h&agrave;nh vi thiếu chuẩn mực nơi c&ocirc;ng cộng.</p>\r\n\r\n<p>Việc cải tạo, chỉnh trang phố đi bộ Nguyễn Huệ sẽ tiến h&agrave;nh trong nhiều&nbsp;giai đoạn. Trong giai đoạn 1, Sở Quy hoạch - kiến tr&uacute;c t&iacute;nh to&aacute;n mẫu thiết kế h&agrave;i h&ograve;a với khoảng c&aacute;ch giữa c&aacute;c modul bồn hoa v&agrave; ghế ngồi, c&oacute; thể&nbsp;bố tr&iacute; th&ugrave;ng r&aacute;c, chậu hoa, ghế đ&aacute;&hellip; để chặn xe v&agrave;o khu vực phố đi bộ.&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, C&ocirc;ng ty C&ocirc;ng vi&ecirc;n c&acirc;y xanh sẽ bổ sung hoa tại khu vực đ&agrave;i phun nước v&agrave; C&ocirc;ng vi&ecirc;n tượng đ&agrave;i B&aacute;c.</p>\r\n\r\n<p>Đến giai đoạn sau sẽ triển khai hạng mục chiếu s&aacute;ng to&agrave;n tuyến phố đi bộ Nguyễn Huệ theo phương thức x&atilde; hội h&oacute;a&nbsp;v&agrave; t&iacute;nh to&aacute;n th&ecirc;m c&aacute;c c&ocirc;ng tr&igrave;nh c&oacute; gi&aacute; trị nghệ thuật tại khu vực n&agrave;y.</p>\r\n', 1),
(28, 'Facebook cập nhật tính năng cho phép người dùng tắt các chấm thông báo', 'Ứng dụng Facebook sử dụng các chấm đỏ để thông báo cho người dùng biết là họ có tin nhắn đang chờ, hoặc lời mời kết bạn, thông tin có liên quan trên News Feed. Nhiều người không thích các chấm thông báo này vì khiến họ mất tập trung, may mắn thay, Facebook sắp cho phép chúng ta tắt đi các chấm thông báo và thậm chí còn cho phép xoá một số shortcut trên ứng dụng.', 0, 1, '2019-11-12', 1, 19, 'facebook-c-p-nh-t-tinh-nang-cho-phep-nguoi-dung-tat-cac-cham-thong-bao', 'dataupload\\images\\pic2.jpg', '<p>Ứng dụng Facebook sử dụng c&aacute;c chấm đỏ để th&ocirc;ng b&aacute;o cho người d&ugrave;ng biết l&agrave; họ c&oacute; tin nhắn đang chờ, hoặc lời mời kết bạn, th&ocirc;ng tin c&oacute; li&ecirc;n quan tr&ecirc;n News Feed. Nhiều người kh&ocirc;ng th&iacute;ch c&aacute;c chấm th&ocirc;ng b&aacute;o n&agrave;y v&igrave; khiến họ mất tập trung, may mắn thay, Facebook sắp cho ph&eacute;p ch&uacute;ng ta tắt đi c&aacute;c chấm th&ocirc;ng b&aacute;o v&agrave; thậm ch&iacute; c&ograve;n cho ph&eacute;p xo&aacute; một số shortcut tr&ecirc;n ứng dụng.<br />\r\n<br />\r\nTheo TechCrunch th&igrave; chỉ c&oacute; ứng dụng mobile mới được Facebook cập nhật khả năng n&agrave;y v&agrave; đang bắt đầu được cập nhật cho tất cả người d&ugrave;ng iOS, người d&ugrave;ng Android sẽ được cập nhật trong v&agrave;i tuần tới.<br />\r\n<br />\r\n<img src=\"https://photo.techrum.vn/images/2019/11/12/4WmbNE.jpg\" /><br />\r\n<br />\r\nNếu muốn ẩn c&aacute;c chấm th&ocirc;ng b&aacute;o, bạn chỉ cần nhấn giữ v&agrave;o biểu tưởng th&ocirc;ng b&aacute;o th&igrave; sẽ c&oacute; menu hiện ta, rồi lựa chọn xo&aacute; ho&agrave;n to&agrave;n icon th&ocirc;ng b&aacute;o đ&oacute; khỏi thanh shortcut hoặc chỉ đơn giản l&agrave; tắt chấm th&ocirc;ng b&aacute;o.<br />\r\n<br />\r\nBạn cũng c&oacute; thể quản l&yacute; những g&igrave; tr&ecirc;n thanh shorcut bằng c&aacute;ch nhấn v&agrave;o biểu tượng menu &gt; Settings &amp; Privacy &gt; Settings &gt; Shortcuts.</p>\r\n', 7),
(31, 'Samsung tiếp tục khẳng định vị thế tiên phong tại IFA 2019, Berlin, Đức', 'Tại triển lãm công nghệ IFA 2019, Samsung đã giới thiệu một loạt công nghệ mới tại khu trưng bày Samsung Town của mình. Các giải pháp công nghệ cao như TV QLED 8K, smartphone màn hình gập Galaxy Fold, các thiết bị gia dụng tiên tiến khác như thiết bị làm sạch quần áo, máy lọc không khí, máy hút bụi, tủ lạnh, cũng như giải pháp kết nối nhà thông minh... đều được giới thiệu đến khách tham quan.', 0, 1, '2019-11-12', 3, 19, 'samsung-ti-p-tuc-kh-ng-d-nh-v-th-tien-phong-tai-ifa-2019-berlin', 'dataupload\\images\\pic1.jpg', '<p><img src=\"https://photo.techrum.vn/images/2019/09/26/4UQZOu.jpg\" />​</p>\r\n\r\n<p><br />\r\nTại triển l&atilde;m c&ocirc;ng nghệ IFA 2019, Samsung đ&atilde; giới thiệu một loạt c&ocirc;ng nghệ mới tại khu trưng b&agrave;y Samsung Town của m&igrave;nh. C&aacute;c giải ph&aacute;p c&ocirc;ng nghệ cao như TV QLED 8K, smartphone m&agrave;n h&igrave;nh gập Galaxy Fold, c&aacute;c thiết bị gia dụng ti&ecirc;n tiến kh&aacute;c như thiết bị l&agrave;m sạch quần &aacute;o, m&aacute;y lọc kh&ocirc;ng kh&iacute;, m&aacute;y h&uacute;t bụi, tủ lạnh, cũng như giải ph&aacute;p kết nối nh&agrave; th&ocirc;ng minh... đều được giới thiệu đến kh&aacute;ch tham quan.</p>\r\n', 7),
(32, 'Thói quen sử dụng điện thoại có ảnh hưởng thế nào tới cột sống của bạn?', 'Theo một nghiên cứu mới nhất, nếu bạn nghiện game di động và suốt ngày cặm cụi với Candy Crush hay Asphalt 8 chẳng hạn, bạn không chỉ làm giảm sút năng xuất lao động của mình mà còn ảnh hưởng rất nghiêm trọng tới tình trạng của cột sống.', 0, 1, '2019-11-12', 1, 19, 'thoi-quen-s-dung-di-n-thoai-co-anh-huong-th-nao-toi-c-t-s-ng-cua-ban', 'dataupload\\images\\pic10.jpg', '<p><img src=\"https://i.imgur.com/P9kxApu.jpg\" /><br />\r\n​</p>\r\n\r\n<p>Theo một nghi&ecirc;n cứu mới nhất, nếu bạn nghiện game di động v&agrave; suốt ng&agrave;y cặm cụi với Candy Crush hay Asphalt 8 chẳng hạn, bạn kh&ocirc;ng chỉ l&agrave;m giảm s&uacute;t năng xuất lao động của m&igrave;nh m&agrave; c&ograve;n ảnh hưởng rất nghi&ecirc;m trọng tới t&igrave;nh trạng của cột sống.<br />\r\n<br />\r\nTheo nghi&ecirc;n cứu n&oacute;i tr&ecirc;n (do b&aacute;c sĩ phẫu thuật cột sống Kenneth Hansraj thực hiện v&agrave; c&ocirc;ng bố tr&ecirc;n Surgical Techonlogy International), việc c&uacute;i xuống nh&igrave;n v&agrave;o m&agrave;n h&igrave;nh điện thoại c&oacute; thể l&agrave;m tăng một &aacute;p lực tới 27.2kg (60lbs) l&ecirc;n cột sống m&agrave; cụ thể l&agrave; c&aacute;c đốt sống cổ. Mức độ nghi&ecirc;m trọng phụ thuộc v&agrave;o việc bạn c&uacute;i xuống nhiều hay &iacute;t (g&oacute;c c&uacute;i).<br />\r\n<br />\r\nTh&ocirc;ng thường ch&uacute;ng ta d&agrave;nh ra từ 2 tới 4 giờ mỗi ng&agrave;y để thực hiện c&aacute;c thao t&aacute;c tr&ecirc;n m&agrave;n h&igrave;nh điện thoại trong tư thế c&uacute;i đầu. Như vậy trong v&ograve;ng 1 năm c&aacute;c đốt sống cổ của ch&uacute;ng ta sẽ phải c&uacute;i xuống tổng cộng từ 700 đến 1.400 giờ cho c&aacute;c c&ocirc;ng việc n&oacute;i tr&ecirc;n v&agrave; đ&acirc;y thực sự l&agrave; một g&aacute;nh nặng rất lớn cho cơ thể. Đối với lứa tuổi học sinh trung học th&igrave; con số n&agrave;y c&ograve;n &quot;khủng khiếp&quot; hơn gấp nhiều lần với 5.000 giờ mỗi năm. Th&oacute;i quen n&agrave;y duy tr&igrave; trong một thời gian d&agrave;i sẽ khiến tư thế của cơ thể c&oacute; th&oacute;i quen g&ugrave; về ph&iacute;a trước v&agrave; l&agrave;m tăng nguy cơ tho&aacute;i h&oacute;a đốt sống.<br />\r\n<br />\r\nTheo b&aacute;c sĩ Hansraj th&igrave; &quot;gần như kh&ocirc;ng c&oacute; c&aacute;ch g&igrave; để tr&aacute;nh khỏi việc phải đối mặt với c&aacute;c vấn đề n&agrave;y nhưng mọi người c&oacute; thể thực hiện c&aacute;c bước ph&ograve;ng tr&aacute;nh bằng c&aacute;ch luyện tập th&oacute;i quen nh&igrave;n v&agrave;o điện thoại trong c&aacute;c tư thế tốt m&agrave; tối ưu nhất l&agrave; giữ cho tai v&agrave; vai nằm tr&ecirc;n c&ugrave;ng một đường thẳng.&quot;<br />\r\n<br />\r\nMong c&aacute;c anh chị em Techrum.vn lưu &yacute; vấn đề tưởng như kh&ocirc;ng mấy nghi&ecirc;m trọng n&agrave;y để đảm bảo sức khỏe cho bản th&acirc;n trong khi vẫn kh&ocirc;ng l&agrave;m giảm đi những trải nghiệm th&uacute; vị với c&aacute;c thiết bị di động tuyệt vời m&agrave; ch&uacute;ng ta đang sở hữu</p>\r\n', 7),
(33, 'Microsoft giới thiệu icon Edge Chromium mới, không còn nét giống Internet Explorer nữa', 'Microsoft đang làm mới logo cho trình duyệt Edge dựa trên Chromium của mình. Biểu tượng chúng ta nhìn thấy hiện nay được dựa trên trình duyệt Internet Explorer từ năm 1995 và giờ đây, hãng dường như muốn thay đổi điều này.\r\n\r\nLogo mới của Microsoft bị phát hiện là một phần của một trò chơi lướt web mới ẩn bên trong phiên bản Canary mới nhất của Edge. Nó trông giống như một con sóng với phong cách Fluent Design, tương tự như các biểu tượng Office mới.\r\n\r\nBiểu tượng Edge đã được tiết lộ trong trò chơi ẩn là Surf, nơi các nhân viên của Microsoft đã đăng những manh mối khó hiểu gồm một loạt các câu đố và hình ảnh. Người giải câu đố phải ghép biểu tượng Edge dưới dạng 3D nhờ mã Obj được ẩn trong hình ảnh.', 0, 1, '2019-11-12', 13, 15, 'microsoft-gioi-thi-u-icon-edge-chromium-moi-khong-con-net-gi-ng-internet-explorer', 'dataupload\\images\\pic6.jpg', '<p>Microsoft đang l&agrave;m mới logo cho tr&igrave;nh duyệt Edge dựa tr&ecirc;n Chromium của m&igrave;nh. Biểu tượng ch&uacute;ng ta nh&igrave;n thấy hiện nay được dựa tr&ecirc;n tr&igrave;nh duyệt Internet Explorer từ năm 1995 v&agrave; giờ đ&acirc;y, h&atilde;ng dường như muốn thay đổi điều n&agrave;y.<br />\r\n<br />\r\nLogo mới của Microsoft bị ph&aacute;t hiện l&agrave; một phần của một tr&ograve; chơi lướt web mới ẩn b&ecirc;n trong phi&ecirc;n bản Canary mới nhất của Edge. N&oacute; tr&ocirc;ng giống như một con s&oacute;ng với phong c&aacute;ch Fluent Design, tương tự như c&aacute;c biểu tượng Office mới.<br />\r\n<br />\r\nBiểu tượng Edge đ&atilde; được tiết lộ trong tr&ograve; chơi ẩn l&agrave;&nbsp;<a href=\"http://edge://surf/\" target=\"_blank\">Surf</a>, nơi c&aacute;c nh&acirc;n vi&ecirc;n của Microsoft đ&atilde; đăng những manh mối kh&oacute; hiểu gồm một loạt c&aacute;c c&acirc;u đố v&agrave; h&igrave;nh ảnh. Người giải c&acirc;u đố phải gh&eacute;p biểu tượng Edge dưới dạng 3D nhờ m&atilde; Obj được ẩn trong h&igrave;nh ảnh.</p>\r\n\r\n<p>Tr&ograve; chơi b&iacute; mật n&agrave;y rất giống với SkiFree, một tr&ograve; chơi trượt tuyết cổ điển được ph&aacute;t h&agrave;nh như một phần của G&oacute;i giải tr&iacute; 3 của Microsoft cho Windows năm 1991. Bạn sử dụng WASD tr&ecirc;n b&agrave;n ph&iacute;m để điều hướng xung quanh, tr&aacute;nh chướng ngại vật hoặc sự đe dọa từ x&uacute;c tu bạch tuộc v&agrave; tăng tốc độ v&agrave; l&aacute; chắn tr&ecirc;n đường đi.<br />\r\n<br />\r\nVẫn chưa r&otilde; khi n&agrave;o Microsoft sẽ ph&aacute;t h&agrave;nh phi&ecirc;n bản ổn định ch&iacute;nh thức của tr&igrave;nh duyệt Edge Chromium. H&atilde;ng đ&atilde; ph&aacute;t h&agrave;nh phi&ecirc;n bản beta v&agrave;o th&aacute;ng 8 v&agrave; một phi&ecirc;n bản ổn định đ&atilde; xuất hiện gần đ&acirc;y. Microsoft sẽ tổ chức hội nghị Ignite của m&igrave;nh tại Orlando v&agrave;o tuần tới v&agrave; đưa ra logo mới tiết lộ khả năng về ng&agrave;y ph&aacute;t h&agrave;nh tr&igrave;nh duyệt mới n&agrave;y.</p>\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `idUser` int(11) NOT NULL,
  `idGroup` tinyint(1) NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `gioitinh` tinyint(1) NOT NULL,
  `ngaydangky` date NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `randomkey` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`password`, `idUser`, `idGroup`, `hoten`, `email`, `username`, `gioitinh`, `ngaydangky`, `active`, `randomkey`) VALUES
('202cb962ac59075b964b07152d234b70', 1, 0, 'Nguyễn Quang Đức', 'n15dcat025@student.ptithcm.edu.vn', 'test', 1, '2019-02-10', 0, NULL),
('202cb962ac59075b964b07152d234b70', 2, 0, 'abc', 'n15dcat025@student.ptithcm.edu.vn', 'bcd', 1, '2019-02-10', 0, NULL),
('e10adc3949ba59abbe56e057f20f883e', 3, 1, 'Nguyễn Quang Đức', 'n15dcat025@student.ptithcm.edu.vn', 'duc', 1, '2019-02-10', 0, 'b2cf15b449aeb23857617fbce96aa4aa'),
('e10adc3949ba59abbe56e057f20f883e', 4, 0, 'Nguyễn Quang Đức', 'xyza1234@gmail.com', 'duc1', 1, '2019-02-10', 0, '570badcfe14697bf2a244e2e25b93e59'),
('fcea920f7412b5da7be0cf42b8c93759', 5, 0, 'Nguyễn Quang Đức', 'abcd@gmail.com', 'duc2', 1, '2019-02-10', 0, '5736e5428405974bae754547df27b739'),
('e10adc3949ba59abbe56e057f20f883e', 6, 0, 'Nguyễn Quang Đức', 'abd1@gmail.com', 'duc3', 1, '2019-02-11', 0, '20ab37f149d900a55b29067b658b86e9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loaitin`
--
ALTER TABLE `loaitin`
  ADD PRIMARY KEY (`idLT`),
  ADD KEY `idTL` (`idTL`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`idTL`);

--
-- Indexes for table `tin`
--
ALTER TABLE `tin`
  ADD PRIMARY KEY (`idTin`),
  ADD KEY `tin_loaitin_idLT_fk` (`idLT`),
  ADD KEY `tin_theloai_idTL_fk` (`idTL`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loaitin`
--
ALTER TABLE `loaitin`
  MODIFY `idLT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `idTL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tin`
--
ALTER TABLE `tin`
  MODIFY `idTin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `loaitin`
--
ALTER TABLE `loaitin`
  ADD CONSTRAINT `loaitin_ibfk_1` FOREIGN KEY (`idTL`) REFERENCES `theloai` (`idTL`);

--
-- Constraints for table `tin`
--
ALTER TABLE `tin`
  ADD CONSTRAINT `tin_loaitin_idLT_fk` FOREIGN KEY (`idLT`) REFERENCES `loaitin` (`idLT`),
  ADD CONSTRAINT `tin_theloai_idTL_fk` FOREIGN KEY (`idTL`) REFERENCES `theloai` (`idTL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
