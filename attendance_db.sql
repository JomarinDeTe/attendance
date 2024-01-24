-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 02:16 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('-QDXeWPRrYss9hinKI3MokFJUflOHome', 1705811052, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('-_Nm9PQjQ1AqVmkwr7POMj4Y4uCtkwGY', 1705810391, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('-uu6Xpso1pjXe_jSznM9VlsyQtPP83Rw', 1705809978, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('0OIcFSMTUcXpNwqxetsxmVQ7m9RFljcq', 1705810363, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('0ifzBRRHWxgewQtUEeCFsY784171B9v5', 1705810390, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('101IRhB77lfsKdm3mRWinCrIpf05bzFf', 1705810283, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('1ke_-k7HSEGB1Bi1PzQHgJK-qu3JRWqf', 1705809479, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('1qKbqyBHkFw_DLzYTpK_Th0YDYfRKKbv', 1705810363, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('2dmI01PjLuW9j9dcQeAip-SFqk4XJ5lC', 1705809223, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('2iBeNgz0Vz9I859DjaZ6nnId-zAT-rGt', 1705810283, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('372f5Ijmna3DJ0FZG_tDnXBvh-N3fHdf', 1705810286, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('3Q49bgU5abf8763ngM4I54-kGPe-W9eI', 1705805714, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('3mGCcoWmhW3Pst2yFZX9paFH0c8ZgVIy', 1705811046, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('3zi4_FTPMYFwCjFkZR38fHjR6y-NQ-Xd', 1705805714, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('47mo8THovUg8pBlZBlFk8zPD-l_Wi1tk', 1705810283, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('4ZqcFfo-xDBL9mKkCoCchEBDF8GoJPvM', 1705809979, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('4hprLryr8tXo3b-ArWPXZhM5haWj3J5t', 1705810363, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('5WoQtPAjAqjMlYEi-vpdFcXpl4Kbwkmz', 1705805922, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('5iAgpO0PIkmAIYAtpWtrjobSDovTSZhv', 1705810286, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('5pfaSh_IqV9cXM9LCHxx53hs78xduFX6', 1705810364, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('5s22fVQyx11gxQHuLOuxivNwCMuuaWlV', 1705811054, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('6HfkRLU8snBi2udlNToNSh96rQAoAQyq', 1705811048, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('6gpdqzUy3VRYbRUoXxEHr2rCh4sAdWfk', 1705811056, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('6wQrIJNcfyNTwkmqpQIJbto6G5H8t2pm', 1705810259, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('76YoCjh2P1TkdWCA-UWJRN5mvzwSKN8L', 1705805953, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('77uMKYSkXXjsHm2MuFkmes-bKUwW8I8h', 1705809979, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('85OsdBQmbXbhU2nl13jf0k5D26UWVWT3', 1705809227, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('8CmaYlO_7k8OY7u13X166kqfGVOB6PHu', 1705809223, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('8eqczwGCJgaCrMFffD6ET1v_smZGMNkW', 1705810334, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('8xgBmROrDN69tbm1MgffueBKEXVj_ulR', 1705809978, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('95jV2fhky6jKx66AJwOHy0NaHXyQLULM', 1705811046, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('9JPQrZpYLx0PH1pmYLcwmu6m92vB-G6X', 1705809979, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('9xlMtRnpUdZkergy0ogUaGdNPgs1tUA-', 1705809225, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('A3vHe8Xx3_dcaJSBhaq3Lw7K7JlpJT-q', 1705810283, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('ABlqmZ0tsAAytJ4Dn0cxj_9h7aaOmMeG', 1705810259, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('AWOV5gDFVpFyDN3ZD0cbRwhXKsfvqDzG', 1705809990, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('AkQu-xYKLk7hTlvpATt7nlDHJDZRsRBv', 1705810289, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('Apm44Q543S7OyFjaNyfdNg8TNSIU4H9C', 1705810216, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('CESivdmipRrstcJx7xE-KGg_tY-UP2D3', 1705810390, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('CT88VD3ukSPq5k5Pn_Gs_kwfbjMXn5bD', 1705811064, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('ChiU27pV7CDOa2m1mQdMOHrreG8eI24w', 1705811067, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('DphNqAnb05HSCZpl5xXxByzg3gj6gwJ6', 1705810390, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('EGxQaZoyiLz7bT3_mk9JgSbOaFIJMskj', 1705811184, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('EKmkPmNVElUPmErgJC7R7WM7NvYO1Mr_', 1705811189, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('Eo8itX1woX7jjq-xi8I1f467_qh41qrR', 1705810283, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('FBm4qq3bl-UxpjocmrTYZ-QcPcZ053Yu', 1705805714, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"user\":{\"user_id\":2,\"username\":\"Administrator\",\"role\":\"Administrator\"}}'),
('FVeUGLauieMDaB-0i8mwq-hv0dspNvOd', 1705810289, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('FaZrlObF2QjbEpNo0Uu9Iy0XzsREZpct', 1705809167, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('Fs7F3wf6R8md0lYC7xuGmwb8PEXZsbQQ', 1705811062, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('GQhJQqdBrA6lDzA66BAi0bWUxxyG-MJ7', 1705810216, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('H-b0ETLF7YmZsgogmw6BbShg6Bc4OWeO', 1705810289, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('HAaw82c2mv3AqX9HT12Ub1wQDrE-Egxw', 1705810283, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('HFjNGG0VN3uLEYIZwPUQyT5dv6GWZ00-', 1705810216, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('Hep0as18cYtTno8f4BvJizOW5ay1_wlg', 1705810334, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('HxYPNMsUN1XZBF3eNjQaWKwcGJiSJUzq', 1705811184, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('I0BKKDOMFvsMleKAb_yiQBsv6-09E-8w', 1705805964, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('IO4zU9DWMTgzq_9qx1zWqhaD1uHDa6C3', 1705810219, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('JTE7cWs9tH1L9nPp1QudzQWKpiKVZLo7', 1705805899, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('JiagGpaGqK6jyAlJTphkuWiGzhVWiAE0', 1705805962, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('KaHf-4Q0Yqf480FufJe5woDrCYrVvk0A', 1705811046, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('KiMXaKL7WPToGLbAI_iEYAAB0sgcygGp', 1705805904, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('KscnVxW9kO9YtFZdmUPckhQBADLuI2gQ', 1705810219, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('L0Wz7JJSyvor1xJunfxI3s64hsqhnYSp', 1705810334, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('LlJ0o4VWGUFFbfOZduvoZaGJAOlUzgIW', 1705809479, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('LunLU85kfvsUvNU4dkvjlbPtdq1upoBz', 1705805903, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"user\":{\"user_id\":34,\"username\":\"van09\",\"role\":\"Teacher\"}}'),
('M2PwY9fStnVd2GqAgS8L_Qdq7KcgKlOz', 1705811184, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('M4uCyTgJfvwa9kH0r2nJXJLqK-rtZq82', 1705811046, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('MAUpiY-9WAJ1QHJCsuXQmCq7YesSTfys', 1705810391, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('MBuXcQsSsVZX295r8Y8aZhJGkTEDRqiw', 1705811056, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('MgScbAkjEWwksH68CSnCgfzKn-wM0et1', 1705810364, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('MowFWahgssD4Qx7-AIEiNE4dEFYWEt1F', 1705810390, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('My3E_JU47JFRfQXmKp_xQcuUWgKv_DZa', 1705811059, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('O7P6Pw3Sr5RYSu-h7yHOGS3TpdbzuQlf', 1705811054, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('OHFSID6DZQrioRKYu3D1FL7k7XLjkbOt', 1705810283, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('OKLOl4eC87vlBad_pZlpbAIvB4bu5zmL', 1705809979, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('OfJiG8dlZfpuP0QBrBkJfOv9BetupPvg', 1705809479, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('OotFTm1UPv54U498gkSey5Gw2fSFkkD2', 1705809479, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('P-qzKN3LAYo1JQGXu4Hywteep_IU0JjF', 1705809979, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('PIGtm2rvVcug-hbWYVTtrgqR0nxTcXq3', 1705810289, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('PfY6rd4HODoWCdMhiOLCha5tJtK5vl_d', 1705805906, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('Ph7IgdnoFzuzjvzsfk_2NUbqJYDBw1Cr', 1705810219, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('PpWQ2TEkpuseqeWbIOAX_FNJltafi65d', 1705805906, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('PtsCbohWb-iXGtC6HFNsY1A7DKG5bqp8', 1705805922, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('QU0p0pU83YfEjwb7aRO0ZvB-90vex3EF', 1705811059, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('RzPmgcHXZKyUzBeV6M1oo-Qg9hja5uOb', 1705805920, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('SIm1Md0spK_wlj_CNC6vqhirs643oz15', 1705810219, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('TCDbaABTBeJ3_qpksHtiE4R2DR7eI5m3', 1705811191, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('TcqMkj80k6FzUqpdXTFJBX_LtFsMdrIR', 1705805715, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('Tfg4u3h3YIVDDNDis9DzIq1XqjXOehXJ', 1705811064, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('U7K_Je9o4djqO3YkkXrp_p7CjOIalGc-', 1705805962, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('UH8WAFQfv1X1S-jDYGWYmN8qZhkvdoph', 1705811184, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('V8s7Hbsq6h91t6RSlfIaqAqs0avWfF5q', 1705811194, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('VKjpAWVRl94apDNtGXG4Gug2ngusHbUO', 1705809978, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('VdBeOABJnfBpIX6dEDzCmmjggsqdC4-D', 1705810216, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('WPVZKAXSVYHdHrW6trcjBCjgJ8_NiwAq', 1705811191, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('WXUNH8rzoht9Ck926YsTfyKwfbvOYmiQ', 1705811059, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('WtrP6zEcRf4SNRzEzfdwAqq_jcY2xqU_', 1705805965, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('X8Ad_Ucp-cBR9v0zi8mb5uMEjNANn5oe', 1705811046, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('Z7YsyXxqr-rdOyFUSmEm8ee3eZLQ0tIZ', 1705809979, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('ZBIyIOsdfhHzWRmKDdjktc_V2NQck7bR', 1705809223, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('ZDjdo8S421VCfaZW8co3TRnrF3nJlOwT', 1705805906, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('ZkhsT83ry_Sn4eglmT17994t81UU_g6l', 1705809979, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('_D0-9IJpc6pX8n6GStYkL_rCB0NcedsS', 1705805904, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('_H_LzFWY1i-TDbMjfEcVVSxoC0l_Es-c', 1705805920, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('_djBBo0RgKPsBRz2g6OgFqZdh3I79m0p', 1705810390, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('a-shzTdJ-MO6bTOjQFAZWgnbK4r4AwV3', 1705805953, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('a6aF1NwL5RZhAlwkpXbD559Vi__mrPxp', 1705811059, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('aPN24eVN0bkR-pxhJA49AsyktI4hCyUa', 1705805714, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('avNY9gSp-JtG95-gsRdBioLOR-sSUGqW', 1705810219, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('cSUk7260y_EuF3ziO2XPY7wcY2cYLCk7', 1705809479, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('cnfsMeO3epzGDZjeN9c8JvGEAglZdpWm', 1705810289, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('czGRdJC2KWsZMj0s9b05KPf52LgYqIR3', 1705805714, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('dJPytjgSdko7x1xafhouBdln3xFfz4Pd', 1705809978, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('dSOzuqV4xQn4QngrhU-dDrNeB1HfxI0y', 1705805962, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('dxkhEOtN3PrDrhfeQHKcjH2MxGMMmBug', 1705810219, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('eS0HpvaQpYncx6_qA57YNggTbsTiQaka', 1705809978, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('f0Aq4akm27gFwIF6cclwH0leJRkXPWD5', 1705810289, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('fAMIFk4bmTmRVGx869cLKnLcJJEtuuAM', 1705810334, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('fGE0qqe0WS1GLEMgD4VYmoEUiwKB1sC_', 1705805962, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('feSbsPFYii62y6QMAIMQuq-eBxlVw-HH', 1705810364, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('fnfuR-QfsO4heqJ4EiwsPEQYkW2nZkGH', 1705810219, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('foodCyDDvUd_Ra7FHVhI6_4b5QjIR4x_', 1705810363, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('fvKctSLbQ4gPPqnUL7C_wrQ9-DprCrct', 1705809479, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('h1_jZmRPqHuIe_z-qRwMrC7zBSev9_4T', 1705805953, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('h22XU7giLe_MWCPh1Cmu1noSrmCTmNvp', 1705809479, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('hFdNmdVAMlsku47aYo9qfEXbaDoh7s3r', 1705810259, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('hL0a5H6C69mOeI0WTNLbb5xUfpxscE0w', 1705810289, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('iB_B3f96SiNLxIt32PyhVSGoGKcGvwO8', 1705811062, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('j5MIXeWFR4_-lz6IVz7d_Q_ovNOOam19', 1705805953, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('kZYky4D3-BxscAaysI4LNX-i7UE979cL', 1705805965, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('kiYk6op_N5vHvqGOJy2ekQuDHoDhKxji', 1705811189, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('lVHO6k5ByizMGvjqWjJAafzfGLA0JUZO', 1705811184, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('m8uJWmlAHBQbdcCxE8XLMskG1y6AYi-H', 1705809978, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('mXa6K4Bl6Dh43MAdjZsPdFQCN_6rQ6hy', 1705810259, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('nW6A1iQpziKRV0CeRb5DEmOKWe-nwB7N', 1705811059, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('ne3YA2unW-FPGragKDKmipvxBIsiX5Kq', 1705811046, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('oFu1FK6Q-cMK445omFqXnCGeGuop2GxW', 1705810283, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('oJcm3MUXUI7L-KMqiqM4gZpmojHQYqov', 1705805906, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('oLB7VGhUqTdtZO3q8CO9bJ-PsmvkDpSo', 1705805922, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('oruowEt9jBmtkFB7DLtZBo93Ad7eLxsb', 1705810363, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('pkWDum5laWvuWb_kNA6Frxx62oR_SrGH', 1705809979, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('qDD4615QtbFSEDxOLmp5ukjGE2W_kzc_', 1705809479, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('qUG9_610TYN0GcS5E_sX_UUHjY_HkByx', 1705811048, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('ql-QmNqkySSCLoG62WE2y7pHVF2ROOfk', 1705810363, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('rh6UU99FEpaeHjyGA7mPssFgndZAVr83', 1705805899, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('sVa_8qGwg9W8oQr0q72SF1aOjQxe6Jtc', 1705810219, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('sjdSAdR1XZr1XZQUVSkUinff4__Bi8ID', 1705811194, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('sxIeWLch-4qKND02sbY-74nE5eK8UGRJ', 1705810391, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('tI-Ltnj1qcUMml9N6fQkz62hJ0ILlieg', 1705810289, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('tQeqQzFCUS43AR8IxDCdzFNglP0Neg4X', 1705809167, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('tjN5FmjJ4pTZLtHu_rHGbrhVmJSWLaqq', 1705810364, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('u8lxj_w-1Bz13k9bIdjVsmWjNWB9todC', 1705810363, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('uhDFGOJNLBBHdTa8uaDZ7RhQ2dVHKdyz', 1705811067, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('uoGeTUBlWFkeRlcCTjeovQ3HgADH3Sul', 1705811184, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('vrN5Clux1VQz5XBNWbQhRTpNSDbO9xOm', 1705809990, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('vuZnkNBbjEl3LHdbJ-hO9JSqItT9l1Sa', 1705805922, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('wDwJouzddVM3k3ZYG-jeC6XL5t8y_sJx', 1705811059, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('wNsour2gZ9UxnLF0TwXLFu7G-nELxMCg', 1705809223, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('x1-p-VZY1BnrlYYujjFjD9dntKDR_8nc', 1705811056, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('xNJhmkzAR0J_omPJiwpeblWfDGSQL510', 1705810286, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('xNw22yljW9MbZZme5enyJwOSohQXvDhL', 1705809990, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('xqXkfKG_i4prbTkJbduotHPkG7MXVHcx', 1705811048, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('yHhW2pdPytORLcGsMvElEvgevoMCpriA', 1705805715, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('yTD2PpDdzIZYXWxrzmaHX5xsbQT-Ivq8', 1705810286, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('z0mSOH1d4aR0L-fCNjw2nn5CeSpcZ3Lk', 1705810390, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('z9gshL03GETvi6YtSlIOVme9MU0paNP0', 1705805713, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('zLPDAQWG5XWxmSM-jPEgZvWXzv3IMXaU', 1705810363, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('zpMw0OrTmxFKpZkK3y2eVGKN1mgn5wzf', 1705811048, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('zrXHP0ubp7M5yBkRhIsIS46Pcea1-hmZ', 1705810391, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),
('zzTiizDhqF47IdwkxIlfEuRRB8H156Iq', 1705811056, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_code`, `subject_name`, `time`, `day`, `room`, `created_at`, `updated_at`) VALUES
(1, 'ITE 309', 'Thesis Capstone', '', '', '', NULL, NULL),
(2, 'ITE 232', 'Web Development', '', '', '', NULL, NULL),
(3, 'SSP 007', 'Student Success Program 3', '', '', '', NULL, NULL),
(10, 'ITE 314', 'Advanced Database System', '', '', '', '2023-10-24 04:53:54', '2023-10-24 04:53:54'),
(12, 'ITE 222', 'Computer Programming 1', '', '', '', '2023-10-24 12:35:44', '2023-10-24 12:35:44'),
(13, 'ITE 304', 'Networking 2', '', '', '', '2023-10-25 11:27:21', '2023-10-25 11:27:21'),
(14, 'ITE 223', 'Computer Programming 2', '', '', '', '2023-10-26 05:49:15', '2023-10-26 05:49:15'),
(15, 'ITE 123', 'Android Development', '', '', '', '2023-10-26 07:06:35', '2023-10-26 07:06:35'),
(16, 'ITE 135', 'Computer Vulcanizing', '', '', '', '2023-10-26 07:08:27', '2023-10-26 07:08:27'),
(18, 'ITE 333', 'Platform Technologies', '1:30-3:00', 'M/F', 'FLEX-LEARNING/ITS 200', '2024-01-16 23:25:06', '2024-01-16 23:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_table_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `attendance` varchar(255) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `teacher_id`, `student_table_id`, `class_id`, `attendance`, `date_added`) VALUES
(70, 34, 32, 2, 'Absent', '2024-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `student_id` varchar(50) DEFAULT NULL,
  `year_level` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `block` int(11) DEFAULT NULL,
  `contact_number` varchar(13) DEFAULT NULL,
  `address` longtext NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'Student'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `name`, `student_id`, `year_level`, `course`, `block`, `contact_number`, `address`, `date_of_birth`, `username`, `email`, `password`, `role`) VALUES
(2, 'Administrator', NULL, NULL, NULL, NULL, NULL, 'Sample Address', '1994-06-15', 'Administrator', NULL, '$2b$10$5INx1BCevldhp4YVlx.aLORpl3yYt0HAvuYxDhzvX2YVBz5XSzXO6', 'Administrator'),
(30, 'Nat Dalope', NULL, NULL, NULL, NULL, NULL, 'sample', '2001-11-01', 'nat09', 'nat@gmail.com', '$2b$10$P0BgijGsbvOPSJwIaWj7bO6x13nEAu7WC0qqwDBXmXQF3GrnAWOUe', 'Teacher'),
(32, 'Nath', '03-1819', '3rd Year', 'BSIT', NULL, '09673028611', 'maninding', NULL, 'nath01', 'nathdalope@gmail.com', '$2b$10$hgt4KskAYDmhX12gScCrp.JaQCCF0xt8PAuvUq0hqk.b7fHa0KS8W', 'Student'),
(33, 'Diego Silang', NULL, NULL, NULL, NULL, NULL, 'Sample', '2001-01-01', 'Diego2', 'Diego2@gmail.com', '$2b$10$YSy9.ouhXm5xEKvHcYt1juWuzMhNSaJglnzTdNFBnh8mQ4KloRdea', 'Teacher'),
(34, 'Vanessa Casaclang', NULL, NULL, NULL, NULL, NULL, 'Sagrado street, Libsong East, Coop Subdivision,\nLibsong East, Coop Subdivision,', '2001-11-11', 'van09', 'vane@gmail.com', '$2b$10$wzKmVwG58Rh1AjSE1Xb0feCnCDjgzIlwX4Q09jQyricqZdeVy6IzK', 'Teacher'),
(35, 'Juan Dela Cruz', '03-1819-02904', '1st Year', 'BSIT', NULL, '09687759853', 'sample', NULL, 'juan09', 'juan@yahoo.com', '$2b$10$1FJFzpeGyDxwf35SjcXhMObp9g9CxEBKQS7XFoc5fLO1vrVkiyMpq', 'Student'),
(37, 'Michael L Casaclang', NULL, NULL, NULL, NULL, NULL, '', '0000-00-00', 'jovenn09', 'michaelcasaclang82@yahoo.com', '$2b$10$vIzYcEvXLzgxsFP69QxKy.wvFppKOGnpQSjVlAWlU9khaSEUzf6Nm', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `teachers_students`
--

CREATE TABLE `teachers_students` (
  `id` int(11) NOT NULL,
  `teachers_table_id` int(11) NOT NULL,
  `student_table_id` int(11) NOT NULL,
  `blocks` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `date_added` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers_students`
--

INSERT INTO `teachers_students` (`id`, `teachers_table_id`, `student_table_id`, `blocks`, `class_id`, `date_added`) VALUES
(3, 11, 12, 5, 1, '2023-10-19'),
(35, 15, 17, 1, 2, '2023-10-24'),
(37, 18, 17, 1, 3, '2023-10-24'),
(50, 34, 32, 5, 2, '2023-10-26'),
(51, 33, 31, 1, 3, '2023-10-27'),
(52, 33, 31, 1, 1, '2023-10-27'),
(53, 33, 31, 1, 11, '2023-10-27'),
(54, 33, 32, 1, 3, '2023-10-27'),
(55, 33, 32, 1, 1, '2023-10-27'),
(56, 33, 32, 1, 11, '2023-10-27');

-- --------------------------------------------------------

--
-- Table structure for table `teachers_subjects`
--

CREATE TABLE `teachers_subjects` (
  `data_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers_subjects`
--

INSERT INTO `teachers_subjects` (`data_id`, `teacher_id`, `subject_id`) VALUES
(1, 10, 1),
(2, 10, 2),
(4, 11, 1),
(5, 11, 3),
(6, 13, 4),
(7, 15, 2),
(8, 15, 1),
(9, 18, 3),
(10, 19, 4),
(11, 21, 9),
(12, 21, 1),
(13, 22, 10),
(14, 24, 1),
(15, 26, 11),
(16, 26, 3),
(17, 27, 12),
(18, 28, 12),
(19, 29, 10),
(20, 30, 14),
(21, 30, 1),
(22, 33, 1),
(23, 33, 3),
(24, 33, 11),
(25, 34, 1),
(26, 34, 2),
(27, 34, 10),
(28, 36, 1),
(29, 37, 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `teachers_students`
--
ALTER TABLE `teachers_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers_subjects`
--
ALTER TABLE `teachers_subjects`
  ADD PRIMARY KEY (`data_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `teachers_students`
--
ALTER TABLE `teachers_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `teachers_subjects`
--
ALTER TABLE `teachers_subjects`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
