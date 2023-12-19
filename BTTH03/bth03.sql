-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 19, 2023 lúc 02:02 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bth03`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`) VALUES
(1, 'Help Desk Technician', 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel'),
(2, 'Nuclear Power Engineer', 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien'),
(3, 'Legal Assistant', 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum'),
(4, 'Structural Analysis Engineer', 'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros'),
(5, 'Social Worker', 'non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit'),
(6, 'Chemical Engineer', 'donec ut mauris eget massa tempor convallis nulla neque libero convallis eget'),
(7, 'Assistant Media Planner', 'odio in hac habitasse platea dictumst maecenas ut massa quis'),
(8, 'Speech Pathologist', 'eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum'),
(9, 'Junior Executive', 'urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo'),
(10, 'Paralegal', 'hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer'),
(11, 'Systems Administrator I', 'sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus'),
(12, 'Executive Secretary', 'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus'),
(13, 'Graphic Designer', 'nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu'),
(14, 'Desktop Support Technician', 'amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum'),
(15, 'Systems Administrator III', 'nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta'),
(16, 'Database Administrator IV', 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum'),
(17, 'Director of Sales', 'cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum'),
(18, 'Technical Writer', 'a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum'),
(19, 'Speech Pathologist', 'non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede'),
(20, 'Biostatistician III', 'sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed'),
(21, 'Nurse', 'aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque'),
(22, 'Dental Hygienist', 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu'),
(23, 'General Manager', 'risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula'),
(24, 'Staff Scientist', 'posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat'),
(25, 'VP Quality Control', 'tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus'),
(26, 'Automation Specialist II', 'montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent'),
(27, 'Community Outreach Specialist', 'velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat'),
(28, 'Executive Secretary', 'quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae'),
(29, 'Actuary', 'libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed'),
(30, 'Technical Writer', 'risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl'),
(31, 'Payment Adjustment Coordinator', 'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin'),
(32, 'Health Coach II', 'consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi'),
(33, 'General Manager', 'quisque ut erat curabitur gravida nisi at nibh in hac'),
(34, 'VP Marketing', 'augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer'),
(35, 'Account Representative I', 'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue'),
(36, 'Analyst Programmer', 'bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt'),
(37, 'Graphic Designer', 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at'),
(38, 'Product Engineer', 'in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla'),
(39, 'Chief Design Engineer', 'risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus'),
(40, 'Structural Analysis Engineer', 'ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae'),
(41, 'VP Quality Control', 'libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus'),
(42, 'Research Assistant III', 'at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue'),
(43, 'VP Accounting', 'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis'),
(44, 'Accountant IV', 'suscipit a feugiat et eros vestibulum ac est lacinia nisi'),
(45, 'Actuary', 'justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum'),
(46, 'Senior Cost Accountant', 'lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit'),
(47, 'Assistant Media Planner', 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi'),
(48, 'Quality Engineer', 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum'),
(49, 'Systems Administrator II', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat'),
(50, 'Software Test Engineer II', 'tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec'),
(51, 'Systems Administrator III', 'nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui'),
(52, 'Structural Analysis Engineer', 'semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam'),
(53, 'Executive Secretary', 'ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti'),
(54, 'Programmer III', 'ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu'),
(55, 'Data Coordinator', 'in felis eu sapien cursus vestibulum proin eu mi nulla ac'),
(56, 'Analyst Programmer', 'nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula'),
(57, 'Recruiter', 'platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum'),
(58, 'Junior Executive', 'sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor'),
(59, 'Statistician I', 'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat'),
(60, 'Software Engineer I', 'erat id mauris vulputate elementum nullam varius nulla facilisi cras'),
(61, 'Pharmacist', 'platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat'),
(62, 'Computer Systems Analyst IV', 'in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc'),
(63, 'Business Systems Development Analyst', 'pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in'),
(64, 'Chemical Engineer', 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in'),
(65, 'GIS Technical Architect', 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque'),
(66, 'Sales Associate', 'nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis'),
(67, 'Compensation Analyst', 'quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla'),
(68, 'Recruiter', 'venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus'),
(70, 'Executive Secretary', 'pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
