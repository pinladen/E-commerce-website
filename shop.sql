-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 10, 2022 lúc 08:57 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `name`, `status`, `image`) VALUES
(2, 'Men Clothes', 1, 'c59f7fbcf30049a4a23c70db434d1254.jpg'),
(3, 'Women Clothes', 1, '1db20a58f0864a82a2287a642caf1568.jpg'),
(4, 'Mobile & Gadgets', 1, 'bc93a600d0664755ae4a0cb026e279a8.jpg'),
(5, 'Consumer & Electronics', 1, '873897446aae4761a45cb9a496ee2314.jpg'),
(6, 'Home & Living', 1, '8a76c806d3e24979b8cc3f419c8e0260.jpg'),
(7, 'Computer & Accessories', 1, '4438ad90a4ee481aafbac76987059c3b.jpg'),
(8, 'Beauty', 1, '5b4ed878735d49108b774ce6287ae2ba.jpg'),
(9, 'Cameras', 1, 'fe083ddef55140d58b95047754da01f3.jpg'),
(10, 'Health', 1, '9e945bd267ba4e81867d855ae7e7131d.jpg'),
(11, 'Watches', 1, '95f2355c581a4dfdae4d6eae79ed96e6.jpg'),
(12, 'Men Shoes', 1, '12e1a68a8aa2476db10c6aacf700580f.jpg'),
(13, 'Women Shoes', 1, '3f30e90837e147f4ab610790c6b276f8.jpg'),
(14, 'Women Bags', 1, 'a3e3a0e8d7cc49a4aebefb971c273e74.jpg'),
(15, 'Home Appliances', 1, 'cb728e9d44114916a1ac97f9299b0009.jpg'),
(16, 'Fashion Accessories', 1, 'f7f29f2e7bc64ebdb2d83bd6c3ccd83d.jpg'),
(17, 'Sport Outdoor', 1, '2853ca011c9c4888993e44d2b3b9e080.jpg'),
(18, 'Grocery', 1, 'd29862c125314fed8d834da5b7662d53.jpg'),
(19, 'Automotive', 1, '9d979129e8124cde98cbb6edf82bbd0d.jpg'),
(20, 'Books & Stationery', 1, '73d29cf0efe84f0aacd31c82080f06b0.jpg'),
(21, 'Men Bags', 1, 'b5f77b0126954617bb4136e3f9efe84c.jpg'),
(22, 'Pets', 1, 'efd4587f177c42b4af7f98fe9f4f98fe.jpg'),
(23, 'Home care', 1, 'f5887f92ac3f403883bd4665c093d28b.jpg'),
(24, 'Clothin', 1, 'fa0cdecb02054c79b7111ef6c55e1da0.jpg'),
(27, 'Baby ', 1, '47a305228f734a5f9916858f123def3b.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `messenger` varchar(1000) NOT NULL,
  `user_id_send` int(11) NOT NULL,
  `user_id_get` int(11) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `discout_percent` int(11) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `discount`
--

INSERT INTO `discount` (`id`, `name`, `discout_percent`, `created`, `status`) VALUES
(1, 'No product discount', 0, '2022-01-08', 1),
(2, 'Lunar New Year 50% off for each product', 50, '2022-01-21', 1),
(3, 'Sale 10%', 10, '2022-01-21', 1),
(4, 'Sale 20%', 20, '2022-01-21', 1),
(5, 'Sale 25%', 25, '2022-01-21', 1),
(6, 'Sale 30%', 30, '2022-01-21', 0),
(7, 'Sale 5%', 5, '2022-01-21', 0),
(8, 'Sale 50%', 50, '2022-01-21', 1),
(9, 'Sale 70%', 70, '2022-01-21', 1),
(10, 'Sale 80%', 80, '2022-01-21', 0),
(11, 'Sale 90%', 90, '2022-01-21', 0),
(12, 'Sale 65%', 65, '2022-01-21', 1),
(13, 'Sale 100% ', 100, '2022-01-21', 1),
(14, 'Back school', 50, '2022-01-21', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `image_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created` date NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `image`
--

INSERT INTO `image` (`image_id`, `name`, `created`, `product_id`) VALUES
(127, 'b7f1193d05fb48d88df04be86f73593f.jpg', '2022-01-25', 4),
(128, 'dcd73319d47543d0932c2e761334ac57.jpg', '2022-01-25', 4),
(129, 'dde77c15ef894375bc771b9ff6e1024f.jpg', '2022-01-25', 4),
(136, 'fe4f8b03f2e6490da003fdfbf6db01e3.jpg', '2022-01-25', 5),
(137, '86c2d55d25f940f5aeff08c729cf1f43.jpg', '2022-01-25', 5),
(138, '28e7b7b41ef84f5eacf2993a82dc7b6b.jpg', '2022-01-25', 5),
(139, '61ce67808e774a159c204f33ca953636.jpg', '2022-01-25', 12),
(140, '580e713d224d40f1bd6a53710e1194b6.jpg', '2022-01-25', 12),
(141, '0884fc5bfd2b463284937c876862e8e5.jpg', '2022-01-25', 12),
(142, 'abe55be72c2b4ead9e7737febc495670.jpg', '2022-01-25', 12),
(143, 'a5a7d252b27445d0b26e4b51122cde6e.jpg', '2022-01-25', 8),
(144, '2d59ad614f1547b2849d422314e3f887.jpg', '2022-01-25', 8),
(145, '7831f16a50464526bd59dc81daa84be5.jpg', '2022-01-25', 8),
(146, '3f2c90bfd9484f3498664160b7631379.jpg', '2022-01-25', 8),
(147, '6875fed6607046f59e8ca8984d24b760.jpg', '2022-01-25', 9),
(148, 'a31ce0837e12420eba534c0e5ee618b7.jpg', '2022-01-25', 9),
(149, '6f104a9eefba4eac9a3b859007dcee39.jpg', '2022-01-25', 9),
(150, '98f05b54e6d946098a08941c4d62d9b5.jpg', '2022-01-25', 10),
(151, '91b7c8cc2a7a4d529f3d74e798e8d740.jpg', '2022-01-25', 10),
(152, '3c1e16c4d45b4852bce4c05e75b53b12.jpg', '2022-01-25', 10),
(153, '0144c53808de4e0e9fec6bc5d2258b28.png', '2022-01-30', 13),
(154, '2015ba82aba14c9e9066d47ff1a7c013.png', '2022-01-30', 13),
(155, 'ab2292d8a01a4e408a471df69f507e82.png', '2022-01-30', 13),
(156, 'bcb447b1163445cba47c43fabb4f9e0a.png', '2022-01-30', 13),
(157, '1cdac358925c4617a6ac4848faf5f3ac.jpg', '2022-02-07', 14),
(158, '61ac39c46c07443b84ac29acfd1022fd.jpg', '2022-02-07', 14),
(159, '48228ea611c545e2a6b2c301f65a1f08.jpg', '2022-02-07', 14),
(160, '90394c29f92a4052b57f8c70df839767.jpg', '2022-02-07', 15),
(161, '690b03d576e14f59826342a13d12d262.jpg', '2022-02-07', 15),
(162, 'c6e7fdb0009843f681cc5ef896ed6527.jpg', '2022-02-07', 16),
(163, 'aa0512545c3b407e9379bda116caab43.jpg', '2022-02-07', 16),
(164, '0754593a10d846579efc913320459ba4.jpg', '2022-02-07', 17),
(165, 'f0eff2da662440ea9ee984c69bbf4373.jpg', '2022-02-07', 17),
(166, '35dd6505e70b4e35a966feb274634f4c.jpg', '2022-02-07', 18),
(167, 'eb4d465af84e46b2ab7004aac006f717.jpg', '2022-02-07', 18),
(168, '63cc4a27bc8a4f0d8cd5686e30bc6ffc.jpg', '2022-02-07', 19),
(169, '28feb332b1094e5d951121b2265a0a6b.jpg', '2022-02-07', 19),
(170, 'c6bc280dba0b490788ae0ba2eecd16f7.jpg', '2022-02-07', 20),
(171, '7eed6f4a76db439692704d664c517809.jpg', '2022-02-07', 20),
(172, '85c50bb453964ed8a86e486599c8622b.jpg', '2022-02-08', 21),
(173, '64a6df53926f4b3992b2bdb57d61a11b.jpg', '2022-02-08', 21),
(174, '83d76b2ddd3b4b55b5da6d15e6516d46.jpg', '2022-02-08', 21),
(175, 'da5a1c2ff2864e54a2973fe84485ce15.jpg', '2022-02-08', 21),
(176, '2901af2c34474575813f2614320924ec.jpg', '2022-02-08', 11),
(177, '783219d5160b46428d6dc097b33ee835.jpg', '2022-02-08', 11),
(178, 'db7ddce196954648bd763d56713d003f.jpg', '2022-02-08', 11),
(179, 'a9b6b47a24bc435fb8bc7f1eb7ff861d.jpg', '2022-02-08', 11),
(180, '9f01c66babba48e1a50ab8dac798f4a0.jpg', '2022-02-08', 11),
(181, 'aaa2e83be1b947b7b83461aa96da938f.jpg', '2022-02-08', 22),
(182, '84b38c518a1545c49abbdf8e83c22903.jpg', '2022-02-08', 22),
(183, 'f2db380f138b431e9a164861e0825aa9.jpg', '2022-02-08', 22),
(184, '6403ac81252f44ef8d68f47c219ebac4.jpg', '2022-02-08', 23),
(185, '9cca7bf66b8041fb90b6e2c8dfb3d7c3.jpg', '2022-02-08', 23),
(186, 'd777829267ba45fa9a55ff6fae4ece79.jpg', '2022-02-08', 23),
(187, 'd218463f9aa74e90be5f45b0ce08c658.jpg', '2022-02-08', 24),
(188, 'fd0b38c3b5a44f19826ce458de1f7bf1.jpg', '2022-02-08', 24),
(189, 'b0b179e4e91946acb3a05a0c1451a9b3.jpg', '2022-02-08', 24),
(190, 'f3f8a1ae0d8e44f39469e42b7ac81e81.jpg', '2022-02-08', 24),
(191, 'f548230d48a044b487319b06b3e1a011.jpg', '2022-02-08', 27),
(192, '2d230f9bc4cc47df93e8874db1c92a67.jpg', '2022-02-08', 27),
(193, '867a05eac3884ac9aab2a3971027f47f.jpg', '2022-02-08', 27),
(194, '76b8c600a1a5490c808a6a2e4bd38e90.jpg', '2022-02-08', 27),
(195, 'e447d1034bda44de853fca186ea39551.jpg', '2022-02-08', 25),
(196, 'd0496c8763ac48f4b959ecaa57d5d9eb.jpg', '2022-02-08', 25),
(197, '0bc7123473224d51bd83cbb0455d1640.jpg', '2022-02-08', 25),
(198, '19a22eca8a7548a990ff2ac60ff072ed.jpg', '2022-02-08', 25),
(199, '861ad9b0c3d24484b0ce8c9d68b0c4e5.jpg', '2022-02-08', 28),
(200, '23d5c2daea924cd7964af0d4d2aa5b99.jpg', '2022-02-08', 28),
(201, '844694b6f058428ba21a0e3475eee39e.jpg', '2022-02-08', 28),
(202, '59d11786edd146c4ad85e2d7b3897752.jpg', '2022-02-08', 28),
(203, '150fe70c885c4ff6b4718be5578c28f3.jpg', '2022-02-08', 29),
(204, 'a6235aef841d456d8eca6cd61a0d9fec.jpg', '2022-02-08', 29),
(205, '86c903bb33304c3b8cceb3792c9a1ec3.jpg', '2022-02-08', 29),
(206, '4f7e5d97b6ad4084aae6eeaa22c64cf9.jpg', '2022-02-08', 29),
(207, '95c0a202955e473e8c99f4c6a2122822.jpg', '2022-02-08', 30),
(208, 'ce93ea43b65c4595b410acbaf576b430.jpg', '2022-02-08', 30),
(209, 'ba9d9569746347fca9ed252962474c44.jpg', '2022-02-08', 30),
(210, '682eca719b194f91b4caf005cb9425b3.jpg', '2022-02-08', 26),
(211, '8b9717f534dc4c7c8d40bf61895fd44a.jpg', '2022-02-08', 26),
(212, '03186da6dced40e3be2624737fae71fb.jpg', '2022-02-08', 26),
(213, '07288a5aa14c4ed2a73cb3f99a7072bc.jpg', '2022-02-08', 26),
(214, 'c3ccc6e9b540400abe1b709866d32704.jpg', '2022-02-08', 31),
(215, '07c7283ca1c14c70af55afcad46ba96e.jpg', '2022-02-08', 31),
(216, '3e1162e8c33d43daaf98643ea28c29eb.jpg', '2022-02-08', 31),
(217, '0b14c7ac94ff428196b001ca281f41e7.jpg', '2022-02-08', 31),
(218, 'a2a5fe771f044a2db185d6a3a487d1c8.jpg', '2022-02-08', 32),
(219, 'a02c2e77c77a433baae742e110c21c1c.jpg', '2022-02-08', 32),
(220, 'abaf7e8aa5934a2e93cebfad4396a006.jpg', '2022-02-08', 32),
(221, '66489dede61e4406b20d184563807c2f.jpg', '2022-02-08', 33),
(222, '8a8f5e70f1fa43e3ac89fbb093e88dee.jpg', '2022-02-08', 33),
(223, 'dcca9a59b0bb48cbb6b216a8ba78abfe.jpg', '2022-02-08', 33),
(224, '7dcee030aa474dbca9b4cc6f499a7a07.jpg', '2022-02-08', 33),
(225, 'a3c14a2171714007bb22439623541091.jpg', '2022-02-08', 34),
(226, '44ba148174234b8d884e47be9257f6c7.jpg', '2022-02-08', 34),
(227, 'e6acacfb72f441509b3d770ddd8b7fcd.jpg', '2022-02-08', 34),
(228, '60fd54722fc844dcac22a24b940fdc02.jpg', '2022-02-08', 35),
(229, '9642a3fd21c4486981141ef9bdadf121.jpg', '2022-02-08', 35),
(230, 'af006e36358c482d9f58abc85aaf80f2.jpg', '2022-02-08', 35),
(231, '38c1bd08e5154bcf93f0543f660256e7.jpg', '2022-02-08', 36),
(232, 'f6747b1c35224537a2f8518134e4738f.jpg', '2022-02-08', 36),
(233, '9da434cdd8494ba7bfbfcb4c2e701751.jpg', '2022-02-08', 36),
(234, '2cd6f8201ccf41e6991a7824e2aacc7d.jpg', '2022-02-08', 36),
(235, 'febed686fb82417fb44a4763012deb2a.jpg', '2022-02-08', 37),
(236, '6ce9a912c7904249b312a976475cd84b.jpg', '2022-02-08', 37),
(237, 'ea6b26db572544d7aad0ef90e8691782.jpg', '2022-02-08', 37),
(238, '417e328b027244f396d9f18e5b28b919.jpg', '2022-02-08', 38),
(239, '6e0e8e62b91d48afa4d4025bb1824388.jpg', '2022-02-08', 38),
(240, '3a6b8514b09d4042945f037278c6c3eb.jpg', '2022-02-08', 38),
(241, 'c5e32b754bc34586b2a709b52ce8a69b.jpg', '2022-02-08', 39),
(242, 'e623d4ccea9841938bef9c29b89511d0.jpg', '2022-02-08', 39),
(243, '55bee289ce5244efb851687689e457be.jpg', '2022-02-08', 39),
(244, '5b66ac25d21a45eeb29579f6b7561bb0.jpg', '2022-02-08', 40),
(245, '18c44c8102c64748b3ed454d0a1c1f2a.jpg', '2022-02-08', 40),
(246, '3981ccd28a16400c987f93fc09029e70.jpg', '2022-02-08', 40),
(247, 'd2b1217d9016497c8c78904ae0b99003.jpg', '2022-02-08', 41),
(248, 'a101e902bc0d4c5c8468f49be27c0cb4.jpg', '2022-02-08', 41),
(249, '015cd6bdd0114e8c8d38db1af873b035.jpg', '2022-02-08', 42),
(250, '98bc88b048674e32be682a91834ab2d4.jpg', '2022-02-08', 42),
(251, 'c33a0b6a2e2249d8a1f047f77ed5b0bb.jpg', '2022-02-08', 42),
(252, '8d7cd7e0f63b4d66b3ae1b3547a4c804.jpg', '2022-02-08', 43),
(253, 'e759dfd0a7a5413fbc07f82a1d8ca8b9.jpg', '2022-02-08', 43),
(254, 'd20f22ac92d9473cb49e2391d52badfe.jpg', '2022-02-08', 43),
(255, '2acfe077d0974bfd89233aad8ad85b34.jpg', '2022-02-08', 44),
(256, '9f248d27c074441d94c365ce64e67a16.jpg', '2022-02-08', 44),
(257, 'f0bdbc9f6f7e461a87b26c01517f73fd.jpg', '2022-02-08', 44),
(258, 'e1195b3cf97141d68fcf48d82e068cf6.jpg', '2022-02-08', 44),
(259, '2e8cf96004e5434fa5e4ee27ff804fcd.jpg', '2022-02-08', 45),
(260, '4878167c288e454fab36fe0f0ce60be1.jpg', '2022-02-08', 45),
(261, 'f558e3b18fe84f46b82183aa9d616019.jpg', '2022-02-08', 45),
(262, '68791204195f414da5c786e8f6098d86.jpg', '2022-02-08', 46),
(263, 'ba2e5a7187de47d0846ed6005886ae35.jpg', '2022-02-08', 46),
(264, 'ce51fecec7984e7da967a7e55d9a16a7.jpg', '2022-02-08', 46),
(265, 'b20fc22e212146d1bbf1070c6b93c57c.jpg', '2022-02-08', 47),
(266, 'd8a77cd9b0d747bba738abbc479c6ed7.jpg', '2022-02-08', 47),
(267, 'f8e4e90a91984280ae6e0350a87ae444.jpg', '2022-02-08', 47),
(268, 'fd5068d434324f33a2bfb7354f32bc52.jpg', '2022-02-08', 48),
(269, 'df040735076d40cf88e4bc2b8a4d9f0e.jpg', '2022-02-08', 48),
(270, '46d378b000264ad89cc42f2683bb185f.jpg', '2022-02-08', 48),
(271, '05f0ab2db24f45db99687652c8c3f1ed.jpg', '2022-02-08', 48),
(286, 'fc46471cd24b4f449dd7c6fb0e97ae98.jpg', '2022-02-08', 57),
(287, 'db262ad5017a4990b86058500c1879b5.jpg', '2022-02-08', 57),
(288, '318f036efce34043a10c9c88cc6bd4c8.jpg', '2022-02-08', 58),
(289, '4deef705ba1d4d3191a9823487c2cb0a.jpg', '2022-02-08', 58),
(290, 'b9542ddcc6db497bb80350fd8d86dac9.jpg', '2022-02-08', 59),
(291, '87b9566b6f124fdfb2556fd860bc4dac.jpg', '2022-02-08', 59),
(292, '6c6e47b6e85d4ffa9aa726a88eaaca40.jpg', '2022-02-08', 60),
(293, '35a572bfc4f942daafdafe645378fd91.jpg', '2022-02-08', 60),
(294, 'a27849101dbc4ab9bb0b2d141b8794e6.jpg', '2022-02-08', 49),
(295, '88d175988d254a5aa96b56f89441ba43.jpg', '2022-02-08', 49),
(296, 'd45dcc6717c74c60a96ed376d975ac52.jpg', '2022-02-08', 49),
(297, '1cb81802a4854940a0132f233aa5617b.jpg', '2022-02-09', 61),
(298, 'd528a7ba1c7245eeb969c308d604fa7a.jpg', '2022-02-09', 61),
(299, 'be9f30b9e2484c6cbb9635150fbabcbb.jpg', '2022-02-09', 61),
(300, '3705bf6e11b841c69385ff154939620a.jpg', '2022-02-09', 62),
(301, 'b3fe36c0e8504368842b60a2b5a129da.jpg', '2022-02-09', 62),
(302, '46c65537ad654fb2b226f779b09f8dfc.jpg', '2022-02-09', 62);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `shipper_id` int(11) NOT NULL,
  `created` date NOT NULL,
  `order_of_start` date NOT NULL,
  `order_of_finish` date NOT NULL,
  `address` varchar(250) NOT NULL,
  `payment` varchar(250) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `store_id`, `shipper_id`, `created`, `order_of_start`, `order_of_finish`, `address`, `payment`, `status_id`) VALUES
(5, 49, 29, 1, '2022-01-24', '2022-01-25', '2022-01-26', 'Ho Chi Minh', 'Payment on delivery', 2),
(6, 29, 30, 1, '2022-01-29', '2022-01-30', '2022-02-01', 'Ho Chi Minh', 'Payment on delivery', 3),
(7, 29, 29, 1, '2022-01-29', '2022-01-30', '2022-02-01', 'Ho Chi Minh', 'Payment on delivery', 2),
(8, 29, 29, 1, '2022-01-29', '2022-01-30', '2022-02-01', 'Ho Chi Minh', 'Payment on delivery', 1),
(9, 29, 30, 1, '2022-01-29', '2022-01-30', '2022-02-01', 'Ho Chi Minh', 'Payment on delivery', 9),
(10, 30, 30, 1, '2022-01-29', '2022-01-30', '2022-02-01', 'Ha Noi', 'Payment on delivery', 9),
(11, 29, 30, 1, '2022-01-29', '2022-01-30', '2022-02-01', 'Ho Chi Minh', 'Payment on delivery', 4),
(12, 30, 30, 1, '2022-01-29', '2022-01-30', '2022-02-01', 'Ha Noi', 'Payment on delivery', 9),
(13, 29, 30, 1, '2022-01-30', '2022-01-31', '2022-02-02', 'Ho Chi Minh', 'Payment on delivery', 7),
(14, 29, 29, 1, '2022-01-30', '2022-01-31', '2022-02-02', 'Ho Chi Minh', 'Payment on delivery', 8),
(15, 29, 29, 1, '2022-01-30', '2022-01-31', '2022-02-02', 'Ho Chi Minh', 'Payment on delivery', 9),
(16, 29, 29, 1, '2022-01-30', '2022-01-31', '2022-02-02', 'Ho Chi Minh', 'Payment on delivery', 9),
(17, 29, 30, 1, '2022-01-30', '2022-01-31', '2022-02-02', 'Ho Chi Minh', 'Payment on delivery', 9),
(18, 29, 29, 1, '2022-01-30', '2022-01-31', '2022-02-02', 'Ho Chi Minh', 'Payment on delivery', 9),
(19, 29, 29, 1, '2022-01-30', '2022-01-31', '2022-02-02', 'Ho Chi Minh', 'Payment on delivery', 2),
(20, 29, 29, 1, '2022-01-30', '2022-01-31', '2022-02-02', 'Ho Chi Minh', 'Payment on delivery', 9),
(21, 29, 30, 1, '2022-01-30', '2022-01-31', '2022-02-02', 'Ho Chi Minh', 'Payment on delivery', 2),
(22, 30, 30, 1, '2022-01-30', '2022-01-31', '2022-02-02', 'Ha Noi', 'Payment on delivery', 9),
(23, 29, 29, 1, '2022-01-30', '2022-01-31', '2022-02-02', 'Ho Chi Minh', 'Payment on delivery', 1),
(24, 29, 29, 1, '2022-01-31', '2022-02-01', '2022-02-03', 'Ho Chi Minh', 'Payment on delivery', 1),
(25, 29, 30, 1, '2022-01-31', '2022-02-01', '2022-02-03', 'Ho Chi Minh', 'Payment on delivery', 2),
(26, 29, 29, 1, '2022-02-05', '2022-02-06', '2022-02-08', 'Ho Chi Minh', 'Payment on delivery', 1),
(27, 29, 29, 1, '2022-02-05', '2022-02-06', '2022-02-08', 'Ho Chi Minh', 'Payment on delivery', 9),
(28, 29, 30, 1, '2022-02-05', '2022-02-06', '2022-02-08', 'Ho Chi Minh', 'Payment on delivery', 2),
(29, 29, 29, 1, '2022-02-07', '2022-02-08', '2022-02-10', 'Ho Chi Minh', 'Payment on delivery', 1),
(30, 49, 49, 1, '2022-02-07', '2022-02-08', '2022-02-10', 'Ho Chi Minh', 'Payment on delivery', 2),
(31, 49, 49, 1, '2022-02-07', '2022-02-08', '2022-02-10', 'Ho Chi Minh', 'Payment on delivery', 1),
(32, 49, 49, 1, '2022-02-07', '2022-02-08', '2022-02-10', 'Ho Chi Minh', 'Payment on delivery', 9),
(33, 51, 51, 1, '2022-02-08', '2022-02-09', '2022-02-11', 'Ha Noi', 'Payment on delivery', 2),
(34, 29, 51, 1, '2022-02-09', '2022-02-10', '2022-02-12', 'Ho Chi Minh', 'Payment on delivery', 9),
(35, 29, 51, 1, '2022-02-09', '2022-02-10', '2022-02-12', 'Ho Chi Minh', 'Payment on delivery', 9),
(36, 29, 29, 1, '2022-02-09', '2022-02-10', '2022-02-12', 'Ho Chi Minh', 'Payment on delivery', 9),
(37, 52, 51, 1, '2022-02-09', '2022-02-10', '2022-02-12', 'Ho Chi Minh', 'Payment on delivery', 9),
(38, 52, 29, 1, '2022-02-09', '2022-02-10', '2022-02-12', 'Ho Chi Minh', 'Payment on delivery', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `discount_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `note` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `product_id`, `order_id`, `discount_id`, `quantity`, `unit_price`, `note`, `status`) VALUES
(4, 8, 5, 4, 1, 700, 'birthday gift', 0),
(5, 9, 5, 5, 2, 700, 'birthday gift', 0),
(6, 5, 6, 7, 1, 445.7, 'No Coments', 0),
(7, 8, 7, 1, 3, 2190, 'No Coments', 1),
(8, 10, 7, 7, 1, 650, 'No Coments', 1),
(9, 8, 8, 1, 1, 730, 'No Coments', 0),
(10, 5, 9, 7, 1, 445.7, 'No Coments', 0),
(11, 12, 10, 1, 1, 450, 'No Coments', 0),
(12, 4, 11, 1, 2, 49.52, 'No Coments', 0),
(13, 12, 11, 1, 2, 900, 'No Coments', 0),
(14, 4, 12, 1, 1, 24.76, 'No Coments', 0),
(15, 12, 13, 1, 4, 1800, 'No Coments', 0),
(16, 8, 14, 1, 1, 730, 'No Coments', 0),
(17, 11, 15, 3, 1, 249, 'No Coments', 0),
(18, 11, 16, 3, 2, 498, 'No Coments', 0),
(19, 4, 17, 1, 6, 148.56, 'No Coments', 0),
(20, 8, 18, 1, 4, 2920, 'No Coments', 0),
(21, 8, 19, 1, 1, 730, 'No Coments', 1),
(22, 8, 20, 1, 6, 4380, 'No Coments', 0),
(23, 10, 20, 7, 4, 2600, 'No Coments', 0),
(24, 5, 21, 7, 1, 445.7, 'No Coments', 0),
(25, 12, 22, 11, 5, 2250, 'No Coments', 0),
(26, 13, 23, 3, 2, 1600, 'No Coments', 0),
(27, 8, 24, 1, 3, 2190, 'No Coments', 0),
(28, 11, 24, 3, 1, 249, 'No Coments', 0),
(29, 5, 25, 7, 2, 891.4, 'No Coments', 1),
(30, 11, 26, 3, 1, 249, 'No Coments', 1),
(31, 10, 26, 7, 1, 650, 'No Coments', 1),
(32, 9, 27, 5, 1, 2200, 'No Coments', 1),
(33, 5, 28, 7, 2, 891.4, 'No Coments', 1),
(34, 8, 29, 1, 2, 1460, 'No Coments', 1),
(35, 14, 30, 7, 2, 24, 'No Coments', 1),
(36, 20, 31, 13, 477, 5247, 'No Coments', 1),
(37, 20, 32, 13, 1, 11, 'No Coments', 1),
(38, 36, 33, 7, 1, 39, 'No Coments', 1),
(39, 47, 34, 7, 1, 69, 'No Coments', 0),
(40, 36, 35, 7, 5, 195, 'No Coments', 0),
(41, 13, 36, 3, 3, 2400, 'No Coments', 0),
(42, 47, 37, 7, 7, 483, 'No Coments', 0),
(43, 46, 37, 1, 2, 68, 'No Coments', 0),
(44, 8, 38, 1, 1, 730, 'No Coments', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` double NOT NULL,
  `brand` varchar(250) NOT NULL,
  `made_in` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_on_order` int(11) NOT NULL,
  `created` date NOT NULL,
  `content` varchar(2000) NOT NULL,
  `address` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `discount_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `name`, `price`, `brand`, `made_in`, `quantity`, `unit_on_order`, `created`, `content`, `address`, `status`, `category_id`, `user_id`, `discount_id`) VALUES
(4, 'Wrangler Authentics Men\'s Long Sleeve Quilted Lined Flannel Shirt Jacket with Hood', 24.76, 'Wrangler', 'Amazon', 94, 6, '2022-01-17', 'Wrangler Authentic men\'s quilted long sleeve lined Flannel with hood. This flannel features polyester lined body, interior, two pockets, and brushed flannel exterior making it the perfect jacket for those cold winter nights. The jacket offers versatility, comfort, and warmth, making it a fall and winter essential.', 'USA', 1, 12, 30, 1),
(5, ' Roark x Wrangler', 445.7, 'Wrangler', 'Amazon', 95, 5, '2022-01-17', 'Made for facing new frontiers, the Wrangler? x Roark Roundup Sherpa Lined Jacket will be your best-kept secret on cold days and nights alike. This denim jacket comes with all the classic Wrangler details you know and trust, combined with Roark?s ready-for-anything attitude and fit for a favorite you?ll reach for again and again. It?s made of 14.75 oz. USA-made denim from Mt. Vernon Mills. In the finishing touches, you?ll find the iconic ?W? embroidery on the wearer?s left chest pocket, a full snap front closure, and a metal clasp. This must-have also comes with a fully lined sherpa body and collar made from a wool blend to keep you comfortable no matter what the forecast has in store. Plus, you?ll have lower stow flap pockets and hand-warming pockets for your essentials and your extremities. Wear the Roundup Jacket all season long, paired with the Wrangler x Roark HWY128 Jean and one of the limited-edition t-shirts from this collab.', 'USA', 1, 24, 30, 7),
(8, 'Iphone 11 Pro Max', 730, 'Apple', 'China', 83, 17, '2022-01-19', 'Supper Ido ', 'HO CHI MINH', 1, 4, 29, 1),
(9, 'Iphone X Test ', 2200, 'Apple', 'Armenia', 9, 3, '2022-01-22', 'The iPhone X has to be one of the most-talked about tech products of 2017, and introduces a brand new paradigm for interaction, with gestures replacing buttons and a larger screen than on any previous iPhone. It shares most of its internals with the iPhone 8 and iPhone 8 Plus, including Apple?s own A11 Bionic chip and support for wireless charging. However, the 5.8-inch AMOLED panel is a first for any iPhone. Overall, the iPhone X display is great. The notch at the top contains the front camera and 3D sensors that make Face ID recognition possible. It works seamlessly and reliably on most occasions. Attention detection ensures that no one can unlock your iPhone X by simply pointing the device at your face when you are not looking. Animoji is a cool new feature that lets you pick an emoji and animate it using your own facial movements. You get optical image stabilisation on both rear cameras, and the iPhone X takes great pictures in nearly all scenarios.', 'USA', 0, 4, 29, 5),
(10, 'Iphone XS [ Gold]', 650, 'Apple', 'Vietnam', 25, 5, '2022-01-25', 'iphone Xs Max Gold 256 GB comes with box charger and cable. willing to nego', 'USA', 0, 4, 29, 7),
(11, 'AirPods Pro', 249, 'Apple', 'Vietnam', 426, 5, '2022-01-25', 'The AirPods Pro are the more premium version of Apple\'s standard AirPods. They feature two audio modes for filtering outside sounds, changeable ear tips, and the H1 processor. Gyroscopes in the earpieces enable users to move their head \'around\' within an audio space using a feature called Spatial Audio.', 'USA', 0, 4, 29, 3),
(12, 'MAVERICK CHORE LINED JACKET IN BLACK', 450, 'Wrangler', 'Vietnam', 45, 1, '2022-01-25', 'Purposefully designed and painstakingly crafted, the Wrangler? x Roark Maverick Chore Lined Jacket is one of the most versatile pieces a man can own. This limited-edition style comes with the look and feel of a genuine vintage, thanks to its USA-made 7 oz. waxed cotton canvas construction, complete with a flannel lining and reinforced elbow panels. Plus, it comes fully equipped with the signature two chest pockets and lower patch pockets of a classic chore coat. It only gets better with age. Combining Roark?s eye for utility with the iconic Wrangler markings trusted worldwide since ?47, the Maverick Jacket captures the shared desire for adventure and discovery that waits within all of us. Wear it with the Wrangler x Roark HWY128 jean and a new graphic tee from this exclusive collab to complete the look.', 'USA', 0, 2, 30, 11),
(13, 'Iphone Fake', 800, 'Apple', 'Vietnam', 45, 5, '2022-01-30', 'aasds', 'Ho Chi Minh', 1, 4, 29, 3),
(14, 'Combo candy', 12, 'Store candy', 'Vietnam', 998, 2, '2022-02-07', 'combo of many different candies', 'Da Lat', 1, 18, 49, 7),
(15, 'Twix Salted Caramel Single - Each', 2, 'Store candy', 'Vietnam', 400, 0, '2022-02-07', 'Twix Salted Caramel\r\nMilk Chocolate \r\nCrunchy Cookie Center\r\nSalted Caramel\r\n1.41 oz Bar\r\nTwix Salted Caramel is the new craze!  Sweet and Salty is the perfect candy combo and now you can get it as a delicious TWIX bar. Each bar is 1.41 ounces', 'Da Lat', 1, 18, 49, 1),
(16, 'Gourmet Popcorn Sampler', 26, 'Store candy', 'Vietnam', 900, 0, '2022-02-07', 'Popcorn Sampler by Bulk Candy Store\r\nTwelve 1 1/2 Cup Bags of Popcorn Samples\r\nClassic Flavors and New Tastes\r\nPopcorn Made Fresh - In Store Daily\r\nPopped in Pure Coconut Oil', 'Da Lat', 1, 18, 49, 3),
(17, 'Popcorn - Rainbow Popcorn Tray', 10, 'Store candy', 'Vietnam', 30, 0, '2022-02-07', 'Rainbow Popcorn Tray\r\nAssorted Flavors & Colors\r\nRed - Cherry\r\nOrange - Orange\r\nYellow - Banana\r\nGreen - Green Apple\r\nBlue - Blue Raspberry\r\nPurple - Grape\r\nCrispy Candy Coating\r\nApprox. 6 cups per tray\r\nMade fresh in our Store?�\r\nPopped in Pure Coconut Oil', 'Da Lat', 1, 18, 49, 1),
(18, 'White KitKat Minis', 9, 'Store candy', 'Vietnam', 120, 0, '2022-02-07', 'Kit Kat Mini - White\r\nIndividually Wrapped\r\nCrisp Wafer with White Creme Coating\r\n2 lb Bag\r\nAbout 100 pieces per Bag\r\nMade in USA', 'Ho Chi Minh', 1, 18, 49, 6),
(19, 'Gold Foiled Wrapped Chocolate Coins - Half Dollars', 11, 'Store candy', 'Vietnam', 580, 0, '2022-02-07', 'Gold Foiled Chocolate Coins\r\nMilk Chocolate?�\r\nHalf Dollars\r\nApproximately 62 Coins per bag\r\n1 LB bag?�\r\nMade in USA?�\r\n', 'Da Lat', 1, 18, 49, 13),
(20, 'Gold Foiled Wrapped Chocolate Coins - Half Dollars', 11, 'Store candy', 'Vietnam', 0, 478, '2022-02-07', 'Gold Foiled Chocolate Coins\r\nMilk Chocolate?�\r\nHalf Dollars\r\nApproximately 62 Coins per bag\r\n1 LB bag?�\r\nMade in USA?�', 'Da Lat', 0, 18, 49, 13),
(21, 'Orduroy Shirt Jacket', 34, 'H&M', 'American Samoa', 100, 0, '2022-02-08', 'Shirt jacket in soft cotton corduroy. Collar, buttons at front, and button at cuffs. Open chest pocket, patch front pockets, and a straight-cut hem.', 'London', 1, 2, 51, 3),
(22, 'Relaxed Fit T-shirt', 13, 'H&M', 'American Samoa', 300, 0, '2022-02-08', 'Relaxed-fit, crew-neck T-shirt in heavy cotton jersey.', 'Ho Chi Minh', 1, 2, 51, 7),
(23, 'Freefit� Slim Jeans', 29, 'H&M', 'American Samoa', 100, 0, '2022-02-08', '5-pocket denim jeans with a regular waist, zip fly with button, and slim legs. Made with Lycra� Freefit� technology for soft, super-generous stretch, maximum freedom of movement, and optimal comfort.', 'London', 1, 2, 51, 1),
(24, 'Canvas High Tops', 29, 'H&M', 'American Samoa', 120, 0, '2022-02-08', 'H&M Essentials. No. 6: The Sneakers. High tops in thick cotton canvas with tongue and lacing at front. Metal grommets at one side. Cotton canvas lining and insoles. Patterned rubber soles. Sole thickness 1 1/4 in.', 'Ho Chi Minh', 1, 12, 51, 1),
(25, 'Sneakers', 29, 'H&M', 'American Samoa', 300, 0, '2022-02-08', 'Sneakers with a padded edge at top and lacing at front. Mesh lining, mesh insoles, and rubber soles.', 'Ho Chi Minh', 0, 12, 51, 1),
(26, 'Sneakers', 29, 'H&M', 'American Samoa', 300, 0, '2022-02-08', 'Sneakers with a padded edge at top and lacing at front. Mesh lining, mesh insoles, and rubber soles.', 'Ho Chi Minh', 0, 12, 51, 1),
(27, 'Sneakers', 29, 'H&M', 'American Samoa', 300, 0, '2022-02-08', 'Sneakers with a padded edge at top and lacing at front. Mesh lining, mesh insoles, and rubber soles.', 'Ho Chi Minh', 1, 12, 51, 1),
(28, 'Canvas Sneakers', 29, 'H&M', 'American Samoa', 300, 0, '2022-02-08', 'H&M Essentials. No. 6: The Sneakers. Sneakers in thick cotton canvas with tongue and lacing at front. Cotton canvas lining and insoles. Patterned rubber soles. Sole thickness 1 1/4 in.', 'Ho Chi Minh', 1, 12, 51, 8),
(29, 'Hooded Jacket', 19, 'H&M', 'American Samoa', 300, 0, '2022-02-08', 'Long-sleeved sweatshirt jacket in a soft cotton blend. Lined drawstring hood, zipper at front, and front pockets. Ribbing at cuffs and hem. Soft, brushed inside.', 'Ho Chi Minh', 1, 3, 51, 5),
(30, 'Ribbed Tank Top', 7, 'H&M', 'American Samoa', 30, 0, '2022-02-08', 'Fitted tank top in ribbed cotton jersey with a round neckline.', 'Ho Chi Minh', 1, 3, 51, 3),
(31, 'Oversized Printed T-shirt', 19, 'H&M', 'American Samoa', 300, 0, '2022-02-08', 'Oversized T-shirt in soft cotton jersey with a printed graphic design at front. Ribbed crew neck and gently dropped shoulders.', 'Ho Chi Minh', 1, 3, 51, 1),
(32, 'Printed T-shirt', 9, 'H&M', 'American Samoa', 1000, 0, '2022-02-08', 'Fitted T-shirt in soft cotton jersey with a printed design at front.', 'Ho Chi Minh', 1, 3, 51, 3),
(33, 'Sweatshirt', 19, 'H&M', 'American Samoa', 200, 0, '2022-02-08', 'Relaxed-fit sweatshirt in soft, cotton-blend fabric. Crew neck, dropped shoulders, and long sleeves. Ribbing at neckline, cuffs, and hem. Soft, brushed inside.', 'Ho Chi Minh', 1, 3, 51, 4),
(34, 'Oversized Sweatshirt', 17, 'H&M', 'American Samoa', 300, 0, '2022-02-08', 'Oversized, crew-neck sweatshirt in cotton-blend fabric with a printed design at front. Dropped shoulders, long sleeves, and ribbing at neckline, cuffs, and hem. Soft, brushed inside.', 'Ho Chi Minh', 1, 3, 51, 1),
(35, 'Track Pants', 24, 'H&M', 'American Samoa', 200, 0, '2022-02-08', 'Track pants with contrasting side panels. High waist, waistband with covered elastic, and straight, wide legs with concealed zipper at hems.', 'Ho Chi Minh', 1, 3, 51, 1),
(36, 'Chunky Sneakers', 39, 'H&M', 'American Samoa', 294, 6, '2022-02-08', 'Sneakers in mesh and faux leather with reflective sections. Padded edge and tongue, lacing at front, and loop at back. Mesh lining, mesh insoles, and patterned soles. Sole thickness 2 1/4 in.', 'Ho Chi Minh', 1, 13, 51, 7),
(37, 'Sneakers', 34, 'H&M', 'American Samoa', 300, 0, '2022-02-08', 'Sneakers in faux leather and faux suede. Padded edge, padded tongue, and lacing at front. Terry lining, terry insoles, and patterned soles.', 'Ho Chi Minh', 1, 13, 51, 1),
(38, 'Jacquard-weave Handbag', 34, 'H&M', 'American Samoa', 100, 0, '2022-02-08', 'Handbag in a jacquard-weave cotton blend with two handles. Inner compartment with zipper. Lining in cotton twill. Depth 6 1/4 in. Height 12 1/2 in. Width 16 1/4 in.', 'Ho Chi Minh', 0, 14, 51, 1),
(39, 'Jacquard-weave Handbag', 34, 'H&M', 'American Samoa', 100, 0, '2022-02-08', 'Handbag in a jacquard-weave cotton blend with two handles. Inner compartment with zipper. Lining in cotton twill. Depth 6 1/4 in. Height 12 1/2 in. Width 16 1/4 in.', 'Ho Chi Minh', 1, 14, 51, 1),
(40, 'Padded Shopper with Shoulder Strap', 24, 'H&M', 'American Samoa', 10, 0, '2022-02-08', 'Padded shopper in quilted nylon. Detachable, adjustable shoulder strap with metal carabiner hook at each end. Two handles and a zipper at top. Lined. Depth 3 1/4 in. Width 7 3/4 in. Height 8 1/4 in.', 'Ho Chi Minh', 1, 14, 51, 1),
(41, '3-pack Toiletry Bags', 19, 'H&M', 'American Samoa', 100, 0, '2022-02-08', 'Set with three different-sized toiletry bags in woven fabric, each with a zipper at top. Largest bag with two inner compartments. Lined. Height 4 1/4, 6, and 7 1/2 in. Width 6 1/4, 8 1/4 and 10 1/2 in. Depth 1 1/2, 2 1/4, and 3 1/4 in.', 'Ho Chi Minh', 1, 8, 51, 1),
(42, 'Do-It-All Stick', 9, 'H&M', 'American Samoa', 500, 0, '2022-02-08', 'Versatile Do-It-All stick to add a discreet color to lips, cheeks, and eyes. Creamy, buildable formula provides color in one sweep, while the convenient twist-up stick is perfect for travel or handbag. 0.23 oz.', 'Ho Chi Minh', 1, 8, 51, 7),
(43, 'Gua Sha Tool', 14, 'H&M', 'American Samoa', 900, 0, '2022-02-08', 'A luxurious Gua Sha tool for a cooling and calming massage. Suitable for all skin types. Made from a natural material which means each product is unique, and color may vary slightly.How to useUse on clean skin for at least five minutes at a time. Apply face oil or serum for a gentler massage. Repeat the following motions five times: stroke upwards from middle of chin and out towards earlobes, upwards along forehead, outwards along cheekbones, outwards along lips, and upwards on neck.', 'Ho Chi Minh', 1, 8, 51, 7),
(44, 'Lipstick', 9, 'H&M', 'American Samoa', 100, 0, '2022-02-08', 'Our classic lipstick. Creamy formula is easy to apply, gliding on smoothly for full, plump lips. With an inspiring palette of colors to choose from, it?s easy to find a favorite to match your mood and look. 0.12 oz. Instructions: Wear alone, over lip primer for extra punch and staying power, or underneath a gloss for added shine.', 'Ho Chi Minh', 1, 8, 51, 1),
(45, 'Mascara', 9, 'H&M', 'American Samoa', 100, 0, '2022-02-08', 'Combined with an extra rich formula, the full fiber brush yields intense volume and thickness, maximizing your lashes in one coat. 0.34 fl.oz.', 'Ho Chi Minh', 1, 8, 51, 1),
(46, 'Cotton Twill Overshirt', 34, 'H&M', 'American Samoa', 98, 2, '2022-02-08', 'H&M Essentials. No. 1: The Overshirt. Overshirt in thick cotton twill. Collar, metal buttons at front, and long sleeves with button at cuffs. Chest pocket, large front pockets, and an inner pocket with seams visible from outside. Straight-cut hem. Unlined.', 'Ho Chi Minh', 1, 2, 51, 1),
(47, 'Wool-blend Jacket', 69, 'H&M', 'American Samoa', 292, 8, '2022-02-08', 'Straight-cut jacket in woven wool-blend fabric. Collar, buttons at front, and yoke at back. Chest pockets with flap and button, diagonal side pockets, an inner pocket with button, and button at cuffs. Lined.', 'Ho Chi Minh', 1, 2, 51, 7),
(48, 'Weekend Bag', 29, 'H&M', 'American Samoa', 100, 0, '2022-02-08', 'Weekend bag in woven fabric. Detachable, adjustable shoulder strap, two handles, and zipper at top. Adjustable tabs at short sides to adjust size of bag. One outer compartment with zipper and an inner compartment with zipper. Lined. Depth 8 3/4 in. Width approx. 19 in. Height 12 1/4 in.', 'Ho Chi Minh', 1, 21, 51, 1),
(49, 'Belt Bag', 19, 'H&M', 'American Samoa', 30, 0, '2022-02-08', 'Belt bag in woven fabric. Large compartment at front with zipper, compartment at back with zipper, and an inner compartment. Adjustable waist belt with plastic snap lock. Lined. Size 2 x 7 x 12 1/2 in.', 'Ho Chi Minh', 1, 21, 51, 7),
(57, 'ASD', 1, 'ASD', 'Aruba', 1, 0, '2022-02-08', 'ASD', 'ASD', 0, 27, 51, 1),
(58, 'ASD', 1, 'ASD', 'Aruba', 1, 0, '2022-02-08', 'ASD', 'ASD', 0, 27, 51, 1),
(59, 'ffff', 44, 'H&M', 'Barbados', 4, 0, '2022-02-08', 'ffff', 'sdf', 0, 5, 29, 1),
(60, 'ffff', 44, 'H&M', 'Barbados', 4, 0, '2022-02-08', 'ffff', 'sdf', 0, 5, 29, 1),
(61, 'fff', 32, 'Apple', 'American Samoa', 100, 0, '2022-02-09', 'ffff', 'Ho Chi Minh', 1, 4, 29, 7),
(62, 'new Product', 30, 'Apple', 'American Samoa', 100, 0, '2022-02-09', 'dddd', 'Ho Chi Minh', 1, 2, 29, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_review`
--

CREATE TABLE `product_review` (
  `product_rivew_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `coments` varchar(500) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_review`
--

INSERT INTO `product_review` (`product_rivew_id`, `product_id`, `user_id`, `rating`, `coments`, `created`) VALUES
(4, 4, 29, 5, 'Verry Good ', '2022-01-18'),
(5, 4, 29, 5, 'prefect', '2022-01-18'),
(6, 5, 30, 5, 'Great !', '2022-01-19'),
(7, 4, 31, 3, 'bad', '2022-01-19'),
(8, 8, 31, 5, 'verry bad !!', '2022-01-19'),
(9, 8, 29, 5, 'verry bad', '2022-01-19'),
(10, 9, 29, 4, 'Good', '2022-01-24'),
(11, 10, 29, 5, 'Good', '2022-01-24'),
(12, 36, 29, 5, 'Good !', '2022-02-08'),
(13, 8, 29, 5, 'good', '2022-02-09'),
(14, 8, 29, 5, 'good', '2022-02-09'),
(15, 10, 29, 5, 'good', '2022-02-09'),
(16, 10, 29, 5, 'good', '2022-02-09'),
(17, 10, 29, 5, 'good', '2022-02-09'),
(18, 8, 29, 5, 'good', '2022-02-09'),
(19, 10, 29, 1, 'Good', '2022-02-09'),
(20, 8, 29, 4, 'Good', '2022-02-09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`role_id`, `name`, `status`) VALUES
(3, 'ROLE_SUPER_ADMIN', 1),
(4, 'ROLE_STORE', 1),
(5, 'ROLE_USER', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shippers`
--

CREATE TABLE `shippers` (
  `shipper_id` int(11) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `cost` double NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `shippers`
--

INSERT INTO `shippers` (`shipper_id`, `company_name`, `cost`, `status`) VALUES
(1, 'GrabExpress', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `status`
--

INSERT INTO `status` (`status_id`, `name`) VALUES
(1, 'Cancelled'),
(2, 'Completed'),
(3, 'Failed'),
(4, 'On Hold'),
(5, 'Been picked up'),
(6, 'Ready for pickup'),
(7, 'Refunded'),
(8, 'Been Shipped'),
(9, 'Pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store`
--

CREATE TABLE `store` (
  `user_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `created` date NOT NULL,
  `view` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `store`
--

INSERT INTO `store` (`user_id`, `name`, `address`, `created`, `view`, `status`, `image`) VALUES
(29, 'Apple TEST', 'Ho Chi Minh', '2022-01-17', 1000, 1, 'applestore11.png'),
(30, 'Wrangler TEST', 'USA', '2022-01-17', 1000, 1, 'wranglerstore11.png'),
(31, 'Samsung Test', 'Korean 122', '2022-01-20', 100, 1, 'samsungstore11.png'),
(49, 'Candy ', 'Ho Chi Minh', '2022-02-07', 0, 1, '3838ab9598ed4017a076143de8e7958b.jpg'),
(51, 'H&M TEST', 'Ha Noi', '2022-02-08', 0, 1, '6171d8c8dc6c41dbac0623a5ad9522b1.png'),
(52, 'New Shop', 'Ho Chi Minh', '2022-02-09', 0, 1, '6f72ef707e6e4eeda31dff4cb81183b4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_category`
--

CREATE TABLE `store_category` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `store_category`
--

INSERT INTO `store_category` (`user_id`, `category_id`) VALUES
(29, 4),
(29, 9),
(30, 2),
(31, 24),
(49, 18),
(51, 2),
(51, 8),
(51, 12),
(51, 13),
(51, 14),
(51, 15),
(51, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(250) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `fullname`, `email`, `phone`, `address`, `created`, `status`) VALUES
(29, 'account1', '$2a$10$98JtiDSArEcatu50RxaUxOTPYLYFg8Z/l32uRCG1szNXXZAF.Lt0u', 'SupperAdmin', 'account1@gmail.com', '099995999', 'Ho Chi Minh', '2022-01-17', 1),
(30, 'account2', '$2a$10$42uDCITGXsoiEjg4lLt.quUxO0QqFvhBdrAklj5U9ErUeHuCc6zpS', 'account2 test', 'wrangler1@gmail.com', '0123123123', '33 Da lat , Lam Dong , Viet Nam ', '2022-01-17', 1),
(31, 'account3', '$2a$10$x36Vh5y6gHHzwgo.JJDTIuRgKTXEIRULTSxtIO7sVj64.rVDTzgHS', 'Account34', 'account3@gmail.com', '012312334', 'Ha Noi', '2022-01-18', 1),
(49, 'account4', '$2a$10$TxHm8Ts5mE8NVc1vex1JE.Zfti8HO/gxe3Jz/8bEaiGgEMWiDKLMC', 'Anh Bao', 'anhbao@gmail.com', '12342342', 'Ho Chi Minh', '2022-01-21', 1),
(50, 'account5', '$2a$10$YrbkwIAsH7trPcRcLftQheYWnZEjVjV82TSnQZOxFty.AbESiGV2q', 'Tester', 'account5@gmail.com', '02131231', 'Da Lat', '2022-02-08', 1),
(51, 'account6', '$2a$10$IfgBPey1yJqaadG9KwlyhO29AXgEp6R/453kFYlsFVYF2/hLIQW76', 'Liam', 'Liam@gmail.com', '1232323', 'Ha Noi', '2022-02-08', 1),
(52, 'account10', '$2a$10$NI9BaUX3l3RZNROFfwKCMupkQbPpC1L0pOTg7DTGnKDCgg3J86rrC', 'join', 'account10@gmail.com', '023343423', 'Ho Chi Minh', '2022-02-09', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(29, 3),
(29, 4),
(29, 5),
(30, 4),
(30, 5),
(31, 4),
(31, 5),
(49, 4),
(49, 5),
(50, 5),
(51, 4),
(51, 5),
(52, 4),
(52, 5);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`) USING BTREE;

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `user_id_send` (`user_id_send`),
  ADD KEY `user_id_get` (`user_id_get`);

--
-- Chỉ mục cho bảng `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `shipper_id` (`shipper_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `discount_id` (`discount_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `discount_id` (`discount_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`product_rivew_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`shipper_id`);

--
-- Chỉ mục cho bảng `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Chỉ mục cho bảng `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`user_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `product_review`
--
ALTER TABLE `product_review`
  MODIFY `product_rivew_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `shippers`
--
ALTER TABLE `shippers`
  MODIFY `shipper_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`user_id_send`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `contact_ibfk_2` FOREIGN KEY (`user_id_get`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `store` (`user_id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`shipper_id`) REFERENCES `shippers` (`shipper_id`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_detail_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `order_detail_ibfk_4` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `store` (`user_id`);

--
-- Các ràng buộc cho bảng `product_review`
--
ALTER TABLE `product_review`
  ADD CONSTRAINT `product_review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `product_review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `store_category`
--
ALTER TABLE `store_category`
  ADD CONSTRAINT `store_category_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `store` (`user_id`),
  ADD CONSTRAINT `store_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Các ràng buộc cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
