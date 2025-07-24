-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 12:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ministry_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updated_at`) VALUES
(1, 'ngoga', 'ngoga', '2024-05-23 11:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `blog_title` varchar(300) NOT NULL,
  `blog_desc` varchar(300) NOT NULL,
  `blog_detail` varchar(2000) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blog_title`, `blog_desc`, `blog_detail`, `ufile`, `updated_at`) VALUES
(1, 'Your Business needs online visibility', 'In the modern marketplace, a robust online presence is vital for business success. Digital visibility, spanning websites, social media, and search engine results, ensures businesses remain accessible to potential customers. Without it, companies risk being overlooked in an increasingly digital world', 'In the fast-evolving business landscape, digital visibility is crucial for staying ahead. Our company specializes in website design and system development, ensuring businesses have a standout online presence. With visually appealing websites and robust technical infrastructure, we help clients thrive in the digital realm. Partner with us to secure a competitive edge and establish a lasting impact in the digital sphere.', '', '2024-05-07 14:56:57'),
(2, 'We provide you the best digital services', '\"We offer top-tier digital services tailored to meet your needs. Our expertise ensures that you receive the highest quality solutions to propel your digital presence forward, achieving your goals efficiently and effectively.\"', 'In Softhubgroup, we specialize in delivering unparalleled digital services, setting the standard for excellence in web and system development. Our team of experts brings together a wealth of experience and innovative solutions to cater to your unique requirements. Whether it\'s crafting cutting-edge websites, developing robust systems, or implementing sophisticated digital solutions, we are committed to providing you with the best-in-class services. With a focus on quality, reliability, and customer satisfaction, we pride ourselves on being your trusted partner in achieving your digital objectives.', '60936059d354562031616499540.png', '2024-05-07 14:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `xfile` varchar(1000) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `xfile`, `ufile`, `updated_at`) VALUES
(1, '9619LOGO.png', '4995LOGO.png', '2024-05-23 22:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `m_email` varchar(255) NOT NULL,
  `m_phone` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `port_title` varchar(500) NOT NULL,
  `port_desc` varchar(1000) NOT NULL,
  `port_detail` varchar(2000) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `port_title`, `port_desc`, `port_detail`, `ufile`, `updated_at`) VALUES
(7, 'SCOPE', 'This proposal is targeting all street children and teen mothers in Rwanda, especially in Kigali city and other vulnerable groups ages 5 to 21years. ', 'This proposal is targeting all street children and teen mothers in Rwanda, especially in Kigali city and other vulnerable groups ages 5 to 21years. This is because the highest numbers of street children according to statistics and by the time they finish their vocational trainings, they will be of employable ages.', '5455pexels-julia-volk-7293104.jpg', '2024-05-24 08:39:28'),
(8, 'SIGNIFICANCY', 'Hundreds of millions of children today live in urban slums, many without access to basic services.', 'Hundreds of millions of children today live in urban slums, many without access to basic services. They are particularly vulnerable because of the stresses of their living conditions.\r\nFor older children most especially young girls get affected by poverty and economic disadvantages. This makes them more vulnerable to human trafficking, low paid labor and worse still commercial sexual exploitation. Taking Bugesera district in Eastern part of Rwanda as a case study, majority of young school girls have been highly seduced into sexual practices and a vulgar slogan “ SUNIKA SIMBABARA” TO mean push am not feeling any pain was invented due to excessive prostitution that is happening a among the young school girls who seem to lack either parental guidance or enough resources to live a life without a need from outside their family circle. \r\n', '9279pexels-richard-badejo-532339-5409256.jpg', '2024-05-24 08:41:35'),
(9, 'OUR OBJECTIVES ', 'To work for the social development of underprivileged individuals, groups and communities in Rwanda\r\n', '	To work for the social development of underprivileged individuals, groups and communities in Rwanda;\r\n	To preach the gospel of our Lord Jesus Christ to young children and the youth.\r\n	To encourage childcare development and children’s health promotion; \r\n	To assist in the process of social integration and personal realization of underprivileged children, young people, teen mothers and families; \r\n	To endorse the human rights and in particular the rights of the children, young people, and young mothers as well as the rights of underprivileged groups and communities; \r\n', '1485pexels-julia-volk-7293104.jpg', '2024-05-24 08:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `section_title`
--

CREATE TABLE `section_title` (
  `id` int(11) NOT NULL,
  `about_title` varchar(500) NOT NULL,
  `about_text` varchar(1000) NOT NULL,
  `why_title` varchar(500) NOT NULL,
  `why_text` varchar(1000) NOT NULL,
  `service_title` varchar(500) NOT NULL,
  `service_text` varchar(1000) NOT NULL,
  `port_title` varchar(500) NOT NULL,
  `port_text` varchar(1000) NOT NULL,
  `test_title` varchar(500) NOT NULL,
  `test_text` varchar(1000) NOT NULL,
  `contact_title` varchar(500) NOT NULL,
  `contact_text` varchar(1000) NOT NULL,
  `enquiry_title` varchar(500) NOT NULL,
  `enquiry_text` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section_title`
--

INSERT INTO `section_title` (`id`, `about_title`, `about_text`, `why_title`, `why_text`, `service_title`, `service_text`, `port_title`, `port_text`, `test_title`, `test_text`, `contact_title`, `contact_text`, `enquiry_title`, `enquiry_text`) VALUES
(1, 'Description of the situation', 'Worldwide, it is estimated that the number of street children is about 150 million (community children worldwide resource library 2010) with about 30% in sub–Saharan Africa.', 'Introduction the God’s Favor Organization ', 'The current state of the nation is alarming and the government of Rwanda has been willing to take responsibility hence the formation of NCC. However, the government needs stakeholders to work with the caregivers to ensure enough support to find a lasting remedy to the current influx of teen mothers and street children in Rwanda. ', 'OUR PROGRAMMS', 'We specifically focus to support the underprivileged individuals through our crosscutting programs', 'STATEMENT OF THE PROBLEM ', ' The current state of the nation is alarming and the government of Rwanda has been willing to take responsibility hence the formation of NCC.. ', 'FEEDBACK TO THE VISITORS', 'The most common family problems of street children have been found to be for instance; death of a parent, strained relationship with step parents, alcoholism, insufficient food, abuse and family violence.', 'get in touch with us', 'Feel Free To text Us Via The The Form,email or phone', 'Microfinance and Entrepreneurship Support ', 'We Facilitate access to microfinance services and entrepreneurship training for parents and caregivers who wish to start or expand their own businesses. Provide mentorship and support to help them develop sustainable income-generating activities that can uplift their families economically.');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `service_title` varchar(500) NOT NULL,
  `service_desc` varchar(1000) NOT NULL,
  `service_detail` varchar(2000) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `upadated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `service_title`, `service_desc`, `service_detail`, `ufile`, `upadated_at`) VALUES
(2, 'Spiritual Guidance ', 'In our programs, we offer spiritual counseling, prayer sessions, and Bible studies tailored to the needs of those undergoing rehabilitation and reintegration. ', 'In our programs, we offer spiritual counseling, prayer sessions, and Bible studies tailored to the needs of those undergoing rehabilitation and reintegration. We believe spiritual support can provide strength, hope, and guidance during challenging times.', '5645portrait-happy-young-black-woman-posing-office_116547-21539.webp', '2024-05-23 22:40:29'),
(3, 'Life Skills Training', 'We provide workshops and classes focused on developing essential life skills such as communication, decision-making, conflict resolution, budgeting, and job readiness. ', 'We provide workshops and classes focused on developing essential life skills such as communication, decision-making, conflict resolution, budgeting, and job readiness. These skills are crucial for successful reintegration into society.', '9668788-7884680_hero-headshot-sitting-hd-png-download.jpg', '2024-05-23 22:47:29'),
(4, 'Support Groups', 'We facilitate support groups where individuals can connect with peers who are going through similar experiences. ', 'We facilitate support groups where individuals can connect with peers who are going through similar experiences. These groups offer a safe space for sharing struggles, offering encouragement, and receiving emotional support.', '648Eternity.jpg', '2024-05-23 22:45:25'),
(5, 'Mentorship Programs', 'We pair individuals with mentors who can provide guidance, support, and accountability as they navigate the process of rehabilitation and reintegration. ', 'We pair individuals with mentors who can provide guidance, support, and accountability as they navigate the process of rehabilitation and reintegration. Mentors can offer practical advice, share personal experiences, and serve as positive role models.', '46301546.jpg', '2024-05-23 22:41:41'),
(6, 'Education and Vocational Training', 'We offer educational support to help youth pursue their academic goals, whether it\'s completing high school equivalency exams, enrolling in vocational training programs, or professional certificates.', 'We offer educational support to help youth pursue their academic goals, whether it\'s completing high school equivalency exams, enrolling in vocational training programs, or professional certificates.We believe equipping them with valuable skills increases their chances of finding employment and building a stable future.', '2755pexels-pok-rie-33563-4334163.jpg', '2024-05-23 22:44:24'),
(7, 'Reintegration and rehabilitation ', 'God’s Favor Ministries plays a crucial role in this program by effectively supporting young children and youth in their process of rehabilitation and reintegration, helping them.', 'God’s Favor Ministries plays a crucial role in this program by effectively supporting young children and youth in their process of rehabilitation and reintegration, helping them build a brighter future grounded in faith, hope, and love. GFLO ensures the following', '4572pexels-cedric-fauntleroy-8154579.jpg', '2024-05-23 22:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig`
--

CREATE TABLE `siteconfig` (
  `id` int(11) NOT NULL,
  `site_keyword` varchar(1000) NOT NULL,
  `site_desc` varchar(500) NOT NULL,
  `site_title` varchar(300) NOT NULL,
  `site_about` varchar(1000) NOT NULL,
  `site_footer` varchar(1000) NOT NULL,
  `follow_text` varchar(1000) NOT NULL,
  `site_url` varchar(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siteconfig`
--

INSERT INTO `siteconfig` (`id`, `site_keyword`, `site_desc`, `site_title`, `site_about`, `site_footer`, `follow_text`, `site_url`, `updated_at`) VALUES
(1, 'GOD’S FAVOR LOCAL ORGANIZATION', 'God’s Favor Organization is a faith based non-profit Organization which was founded by a group of dedicated individuals who recognized the importance of guiding and supporting younger generations on their spiritual journey and empowering them to shape their destinies.', 'GOD’S FAVOR ORGANIZATION', 'God’s Favor Organization is a faith based non-profit Organization which was founded by a group of dedicated individuals who recognized the importance of guiding and supporting younger generations on their spiritual journey and empowering them to shape their destinies.', 'Copyright © 2024 God’s favor organization Co. All Rights Reserved.', 'You can directly get in touch with us to get more explainations. Visit our social media and explore our services.', 'http://localhost:8080/ministry_project/', '2024-05-24 09:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `sitecontact`
--

CREATE TABLE `sitecontact` (
  `id` int(11) NOT NULL,
  `phone1` varchar(150) NOT NULL,
  `phone2` varchar(150) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `latitude` varchar(150) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sitecontact`
--

INSERT INTO `sitecontact` (`id`, `phone1`, `phone2`, `email1`, `email2`, `longitude`, `latitude`, `updated_at`) VALUES
(1, '+250787255372', '', 'ibapfakurera@gmail.com', '', '7.099737483', '7.63734634', '2024-05-24 08:56:07');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slide_title` varchar(150) NOT NULL,
  `slide_text` varchar(500) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slide_title`, `slide_text`, `ufile`, `updated_at`) VALUES
(2, 'Grow Your Business With  Responsively & And Compatible Systems', 'You can directly get in touch with us to get more explainations. Visit our social media and explore our services.', '191we are bringing digital solution to your business.jpg', '2024-05-07 15:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `fa` varchar(150) NOT NULL,
  `social_link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `static`
--

CREATE TABLE `static` (
  `id` int(11) NOT NULL,
  `stitle` varchar(150) NOT NULL,
  `stext` varchar(500) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `static`
--

INSERT INTO `static` (`id`, `stitle`, `stext`, `updated_at`) VALUES
(1, 'GOD’S FAVOR LOCAL ORGANIZATION', 'God’s Favor Organization is a faith based non-profit Organization which was founded by a group of dedicated individuals who recognized the importance of guiding and supporting younger generations on their spiritual journey and empowering them to shape their destinies. ', '2024-05-23 20:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `testimony`
--

CREATE TABLE `testimony` (
  `id` int(11) NOT NULL,
  `message` varchar(300) NOT NULL,
  `name` varchar(150) NOT NULL,
  `position` varchar(100) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `why_us`
--

CREATE TABLE `why_us` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `ufile` varchar(10000) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `why_us`
--

INSERT INTO `why_us` (`id`, `title`, `ufile`, `updated_on`) VALUES
(10, 'OUR VISION', '9781second.png', '2024-05-23 22:15:32'),
(11, 'OUR MISSION ', '6610third.png', '2024-05-23 22:23:59'),
(12, 'OUR VALUES', '6962pexels-lagosfoodbank-7849435.jpg', '2024-05-23 22:24:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_title`
--
ALTER TABLE `section_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siteconfig`
--
ALTER TABLE `siteconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitecontact`
--
ALTER TABLE `sitecontact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static`
--
ALTER TABLE `static`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimony`
--
ALTER TABLE `testimony`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_us`
--
ALTER TABLE `why_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `section_title`
--
ALTER TABLE `section_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sitecontact`
--
ALTER TABLE `sitecontact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `static`
--
ALTER TABLE `static`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimony`
--
ALTER TABLE `testimony`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `why_us`
--
ALTER TABLE `why_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
