-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 17, 2024 at 11:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bsms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`category_id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Sample 101', 'This is a sample Category 101', 1, 1, '2022-02-14 09:16:23', '2024-06-17 13:07:31'),
(2, 'Sample 102', 'This is a sample Category 102', 1, 1, '2022-02-14 09:19:04', '2024-06-17 13:10:36'),
(3, 'Sample 103', 'This is a sample Category 103', 1, 1, '2022-02-14 09:19:11', '2024-06-17 13:07:37'),
(4, 'Sample 104', 'This is a sample Category 104', 1, 1, '2022-02-14 09:19:18', '2024-06-17 13:07:41'),
(5, 'Sample 105', 'This is a sample Category 105', 1, 1, '2022-02-14 09:19:24', '2024-06-17 13:07:44'),
(6, 'Sample 106', 'This is a sample Category 106', 1, 1, '2022-02-14 09:19:30', '2024-06-17 13:10:40'),
(7, 'Sample 107', 'This is a sample Category 107', 1, 1, '2022-02-14 09:19:37', '2024-06-17 13:10:44'),
(8, 'Sample 108', 'This is a sample Category 108', 1, 1, '2022-02-14 09:19:43', '2024-06-17 13:07:48'),
(9, 'Sample 109', 'This is a sample Category 109', 1, 1, '2022-02-14 09:19:49', '2024-06-17 13:10:48'),
(10, 'Sample 110', 'This is a sample Category 110', 1, 1, '2022-02-14 09:19:55', '2024-06-17 13:10:52'),
(11, 'Sample 111', 'This is a sample Category 111', 0, 1, '2022-02-14 09:20:11', '2022-02-14 09:23:14'),
(12, 'tamoor', 'fdsfsdfa', 1, 1, '2024-06-17 12:37:46', '2024-06-17 13:11:07'),
(13, 'Sheermal', 'Sheermal is a slightly sweet, saffron-flavored flatbread that is rich and buttery. Made with milk, sugar, and ghee, it has a golden-yellow color and a soft texture. Sheermal is often paired with spicy dishes like nihari (slow-cooked stew) or enjoyed on its own as a sweet treat.', 1, 0, '2024-06-17 12:57:23', NULL),
(14, 'Coconut Macaroons', 'Coconut macaroons are sweet, chewy cookies made with shredded coconut, sugar, and egg whites. They have a crisp exterior and a moist, tender interior. These macaroons are popular as a light dessert or a tea-time snack.', 1, 0, '2024-06-17 12:57:44', NULL),
(15, 'Croissant', 'The croissant is a buttery, flaky, and golden pastry known for its crescent shape. Made from layered yeast-leavened dough, it\'s rolled with butter and folded several times to create a texture that is both crisp on the outside and tender on the inside. Perfect for breakfast or a snack, croissants can be enjoyed plain or filled with chocolate, almond paste, or ham and cheese.', 1, 1, '2024-06-17 12:58:30', '2024-06-17 13:11:04'),
(16, '.. Sourdough Bread', 'Sourdough bread is a rustic, artisanal bread made from naturally fermented dough. Its tangy flavor and chewy texture come from a slow fermentation process using a sourdough starter. The crust is thick and crispy, while the interior is soft and airy, making it an excellent choice for sandwiches, toasts, or simply paired with butter.', 1, 1, '2024-06-17 13:00:18', '2024-06-17 13:11:11'),
(17, 'Naan', 'Naan is a traditional flatbread that\'s soft and fluffy, often served hot. It is typically made from white flour, yeast, and yogurt, giving it a slightly tangy flavor. Naan is cooked in a tandoor (clay oven), resulting in a charred and crispy exterior with a chewy interior. It’s commonly enjoyed with curries, kebabs, and stews.', 1, 0, '2024-06-17 13:03:22', NULL),
(18, 'Roghni Naan', 'Roghni naan is a leavened flatbread enriched with milk and yogurt, often topped with sesame seeds. It\'s soft and fluffy on the inside, with a slightly crispy exterior. Roghni naan is typically served with rich, gravy-based dishes like karahi or qorma.', 1, 1, '2024-06-17 13:06:18', '2024-06-17 13:16:54'),
(19, 'Bakarkhani', 'Bakarkhani is a crispy, flaky flatbread that\'s more like a biscuit or cracker. Made from flour, ghee, sugar, and milk, it has a slightly sweet flavor and a crunchy texture. Bakarkhani is often enjoyed with tea or paired with savory dishes like kebabs.', 1, 0, '2024-06-17 13:07:00', NULL),
(20, 'Kulcha', 'Kulcha is a type of leavened flatbread that is soft and slightly chewy. It is often topped with sesame seeds or nigella seeds and baked until golden. Kulcha is commonly served with chana masala (spiced chickpeas) or other savory dishes.', 1, 0, '2024-06-17 13:11:50', NULL),
(21, '', '', 1, 1, '2024-06-17 13:11:53', '2024-06-17 13:17:08'),
(22, 'Chai Cake', 'Chai cake is a simple, spongy cake flavored with cardamom and sometimes garnished with slivered almonds or pistachios. It has a soft, moist texture and is typically less sweet than other cakes, making it an excellent accompaniment to a cup of chai (tea).', 1, 0, '2024-06-17 13:12:33', NULL),
(23, 'Muffin', 'Muffins are small, cake-like breads that come in a variety of flavors, including blueberry, chocolate chip, banana nut, and more. They are made from a batter that includes flour, sugar, eggs, and baking powder, giving them a moist and tender crumb. Muffins are a popular choice for breakfast or a snack on the go.', 1, 0, '2024-06-17 13:13:20', NULL),
(24, 'Roghni Naan', 'Roghni naan is a leavened flatbread enriched with milk and yogurt, often topped with sesame seeds. It\'s soft and fluffy on the inside, with a slightly crispy exterior. Roghni naan is typically served with rich, gravy-based dishes like karahi or qorma.', 1, 0, '2024-06-17 13:13:51', NULL),
(25, 'Pateesa (Soan Papdi)', 'Pateesa, also known as Soan Papdi, is a popular sweet treat with a flaky and fibrous texture. Made from gram flour, sugar, ghee, and cardamom, it melts in the mouth and has a delicate sweetness. Pateesa is often garnished with pistachios and almonds and is enjoyed during festivals and celebrations.', 1, 0, '2024-06-17 13:15:19', NULL),
(26, 'Shahi Tukra', 'Shahi Tukra, also known as \"Royal Bread Pudding,\" is a rich dessert made from fried bread slices soaked in a mixture of thickened milk (rabri), sugar, and cardamom. It is often garnished with saffron, almonds, and pistachios. This decadent dessert is usually served on special occasions and festivals.', 1, 0, '2024-06-17 13:16:38', NULL),
(27, 'Cake Rusk', 'Cake rusk is a popular tea-time snack, similar to biscotti. It is made by twice-baking slices of plain cake until they become dry and crispy. Cake rusk is typically enjoyed dipped in tea or milk.', 1, 0, '2024-06-17 13:18:00', NULL),
(28, 'Qeema Naan', 'Qeema naan is a type of stuffed naan filled with spiced minced meat (qeema). The filling typically includes ground beef or mutton mixed with onions, green chilies, and various spices. This savory bread is often served with yogurt or chutney and is a hearty meal on its own.', 1, 0, '2024-06-17 13:18:16', NULL),
(29, 'Fruit Cake', 'Fruit cake in Pakistan is a moist, spongy cake studded with dried fruits and nuts. It\'s flavored with spices such as cinnamon and nutmeg, and sometimes includes a splash of rum or brandy. This cake is particularly popular during Christmas and other festive occasions.', 1, 0, '2024-06-17 13:18:34', NULL),
(30, 'Barfi', 'Barfi is a dense, milk-based sweet confectionery made by reducing milk with sugar and ghee, and then flavored with cardamom or rose water. It is often garnished with nuts or silver leaf (varak). There are many varieties, including almond barfi, pistachio barfi, and coconut barfi.', 1, 0, '2024-06-17 13:19:01', NULL),
(31, 'Gajar Ka Halwa', 'Gajar Ka Halwa, or carrot halwa, is a sweet dessert made from grated carrots, milk, sugar, and ghee, flavored with cardamom and garnished with nuts. This rich and creamy dessert is often served during winter months and festive occasions.', 1, 0, '2024-06-17 13:19:41', NULL),
(32, 'Jalebi', 'Jalebi is a sweet, deep-fried treat made from a fermented batter of flour and yogurt. The batter is piped into hot oil in a spiral shape and then soaked in sugar syrup, resulting in a crispy, sugary dessert. Jalebi is enjoyed both as a street food and at festive events.', 1, 0, '2024-06-17 13:19:53', NULL),
(33, 'Rusks', 'Rusks are dry, hard biscuits or twice-baked bread, often enjoyed with tea or as a snack. They come in various flavors and can be plain, sweetened, or spiced. Rusks are known for their long shelf life and crunchy texture.', 1, 0, '2024-06-17 13:20:12', NULL),
(34, 'Khopra Biscuits', 'Khopra biscuits are coconut-flavored cookies that are light and crispy. Made from flour, sugar, butter, and desiccated coconut, they have a delightful crunch and a rich coconut taste. Khopra biscuits are perfect for enjoying with a cup of tea.', 1, 0, '2024-06-17 13:33:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `product_id` int(30) NOT NULL,
  `product_code` text NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `alert_restock` double NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`product_id`, `product_code`, `category_id`, `name`, `description`, `price`, `alert_restock`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, '23141506', 1, 'Product 101', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 10, 20, 1, 1, '2022-02-14 09:42:00', '2024-06-17 13:29:41'),
(2, '123456', 2, 'Product 102', 'Cras eget maximus nunc, id hendrerit dui. Donec auctor mauris ac augue aliquam gravida vel sit amet libero. Proin tempor eu augue id aliquet.', 15, 20, 1, 1, '2022-02-14 09:42:00', '2024-06-17 13:29:45'),
(3, '231415', 2, 'Product 103', 'Vivamus commodo purus a dolor pretium interdum. Pellentesque bibendum lacus sed tortor mollis varius. Etiam sed odio felis. Nam nec erat eu metus feugiat aliquam. Aenean id semper ex. Nulla nec euismod tellus. Maecenas pellentesque ipsum sit amet augue scelerisque ultrices.', 45, 50, 1, 1, '2022-02-14 09:42:00', '2024-06-17 13:29:49'),
(4, '123654789', 3, 'Product 104', 'Sed sit amet pharetra metus, sed posuere nibh. Nam at sapien enim. Pellentesque pretium scelerisque turpis, in rhoncus sapien tempor sed.', 20, 30, 1, 1, '2022-02-14 09:42:00', '2024-06-17 13:29:53'),
(5, '987545', 3, 'Product 105', 'Curabitur imperdiet cursus auctor. Donec tristique nulla non porta lobortis. Nulla malesuada sapien lacus, nec rhoncus leo porta vitae. Pellentesque semper rhoncus tellus a pulvinar. Morbi nec tortor ut lorem laoreet vulputate', 50, 30, 1, 0, '2022-02-14 09:46:59', '2022-02-14 11:52:50'),
(6, '5489879', 6, 'Product 105', 'Fusce dui augue, porttitor at est a, commodo lacinia mauris. Etiam quis nulla maximus, fermentum tortor quis, suscipit neque. Curabitur leo ligula, tristique eu placerat sit amet, euismod non ligula.', 50, 0, 1, 1, '2022-02-14 09:47:22', '2022-02-14 09:48:32'),
(7, '101', 19, 'Bakarkhani', 'Roghni naan is a leavened flatbread enriched with milk and yogurt, often topped with sesame seeds. It\'s soft and fluffy on the inside, with a slightly crispy exterior. Roghni naan is typically served with rich, gravy-based dishes like karahi or qorma.', 80, 50, 1, 0, '2024-06-17 13:29:30', NULL),
(8, '102', 30, 'Bafi 1-Kg', 'Barfi is a dense, milk-based sweet confectionery made by reducing milk with sugar and ghee, and then flavored with cardamom or rose water. It is often garnished with nuts or silver leaf (varak). There are many varieties, including almond barfi, pistachio barfi, and coconut barfi.', 800, 50, 1, 0, '2024-06-17 13:34:45', NULL),
(9, '103', 27, 'Cake Rush 1 kg', 'Cake rusk is a popular tea-time snack, similar to biscotti. It is made by twice-baking slices of plain cake until they become dry and crispy. Cake rusk is typically enjoyed dipped in tea or milk.', 400, 50, 1, 0, '2024-06-17 13:37:15', NULL),
(10, '104', 22, 'Chai Cake  per  kg', 'Chai cake is a simple, spongy cake flavored with cardamom and sometimes garnished with slivered almonds or pistachios. It has a soft, moist texture and is typically less sweet than other cakes, making it an excellent accompaniment to a cup of chai (tea).', 200, 50, 1, 0, '2024-06-17 13:40:01', NULL),
(11, '105', 14, 'Coconut Macaroons per kg', 'Coconut macaroons are sweet, chewy cookies made with shredded coconut, sugar, and egg whites. They have a crisp exterior and a moist, tender interior. These macaroons are popular as a light dessert or a tea-time snack.', 400, 50, 1, 0, '2024-06-17 13:41:49', NULL),
(12, '106', 29, 'Fruit Cake per kg', 'Fruit cake in Pakistan is a moist, spongy cake studded with dried fruits and nuts. It\'s flavored with spices such as cinnamon and nutmeg, and sometimes includes a splash of rum or brandy. This cake is particularly popular during Christmas and other festive occasions.', 400, 50, 1, 0, '2024-06-17 13:43:17', NULL),
(13, '107', 31, 'Gajar Ka Halwa per kg', 'Gajar Ka Halwa, or carrot halwa, is a sweet dessert made from grated carrots, milk, sugar, and ghee, flavored with cardamom and garnished with nuts. This rich and creamy dessert is often served during winter months and festive occasions.', 1000, 50, 1, 0, '2024-06-17 13:44:20', NULL),
(14, '108', 20, 'Kulcha', 'Kulcha is a type of leavened flatbread that is soft and slightly chewy. It is often topped with sesame seeds or nigella seeds and baked until golden. Kulcha is commonly served with chana masala (spiced chickpeas) or other savory dishes.', 100, 50, 1, 0, '2024-06-17 13:46:25', NULL),
(15, '109', 17, 'naan', 'Naan is a traditional flatbread that\'s soft and fluffy, often served hot. It is typically made from white flour, yeast, and yogurt, giving it a slightly tangy flavor. Naan is cooked in a tandoor (clay oven), resulting in a charred and crispy exterior with a chewy interior. It’s commonly enjoyed with curries, kebabs, and stews.', 100, 50, 1, 0, '2024-06-17 13:47:50', NULL),
(16, '110', 25, 'pasteesa', 'Pateesa, also known as Soan Papdi, is a popular sweet treat with a flaky and fibrous texture. Made from gram flour, sugar, ghee, and cardamom, it melts in the mouth and has a delicate sweetness. Pateesa is often garnished with pistachios and almonds and is enjoyed during festivals and celebrations.', 500, 50, 1, 0, '2024-06-17 13:48:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_list`
--

CREATE TABLE `stock_list` (
  `stock_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `expiry_date` datetime NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_list`
--

INSERT INTO `stock_list` (`stock_id`, `product_id`, `quantity`, `expiry_date`, `date_added`) VALUES
(1, 1, 20, '2022-02-17 00:00:00', '2022-02-14 02:04:29'),
(2, 2, 200, '2022-02-18 00:00:00', '2022-02-14 02:05:18'),
(3, 3, 350, '2022-02-18 00:00:00', '2022-02-14 02:05:33'),
(4, 4, 500, '2022-02-25 00:00:00', '2022-02-14 02:05:45'),
(6, 4, 100, '2024-06-18 00:00:00', '2024-06-17 08:28:08'),
(7, 7, 1000, '2024-06-30 00:00:00', '2024-06-17 08:30:17'),
(8, 8, 100, '2024-06-18 00:00:00', '2024-06-17 08:35:14'),
(9, 5, 100, '2024-06-30 00:00:00', '2024-06-17 08:35:52'),
(10, 9, 1000, '2024-06-30 00:00:00', '2024-06-17 08:49:10'),
(11, 10, 1000, '2024-06-30 00:00:00', '2024-06-17 08:49:25'),
(12, 11, 1000, '2024-06-30 00:00:00', '2024-06-17 08:49:39'),
(13, 12, 1000, '2024-06-30 00:00:00', '2024-06-17 08:49:50'),
(14, 13, 1000, '2024-06-30 00:00:00', '2024-06-17 08:50:09'),
(15, 14, 1000, '2024-06-30 00:00:00', '2024-06-17 08:50:23'),
(16, 15, 1000, '2024-06-30 00:00:00', '2024-06-17 08:50:36'),
(17, 16, 1000, '2024-06-30 00:00:00', '2024-06-17 08:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_items`
--

CREATE TABLE `transaction_items` (
  `transaction_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_items`
--

INSERT INTO `transaction_items` (`transaction_id`, `product_id`, `quantity`, `price`, `date_added`) VALUES
(1, 1, 4, 10, '2022-02-14 02:12:39'),
(1, 2, 2, 15, '2022-02-14 02:12:39'),
(1, 4, 2, 20, '2022-02-14 02:12:39'),
(1, 3, 1, 45, '2022-02-14 02:12:39'),
(1, 5, 1, 50, '2022-02-14 02:12:39'),
(2, 5, 20, 50, '2022-02-14 02:14:41'),
(4, 3, 1, 45, '2022-02-14 02:38:38'),
(4, 5, 1, 50, '2022-02-14 02:38:38'),
(4, 2, 2, 15, '2022-02-14 02:38:38'),
(5, 2, 1, 15, '2022-02-14 02:57:53'),
(5, 5, 1, 50, '2022-02-14 02:57:53'),
(5, 1, 2, 10, '2022-02-14 02:57:53'),
(6, 7, 3, 80, '2024-06-17 08:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_list`
--

CREATE TABLE `transaction_list` (
  `transaction_id` int(30) NOT NULL,
  `receipt_no` text NOT NULL,
  `total` double NOT NULL DEFAULT 0,
  `tendered_amount` double NOT NULL DEFAULT 0,
  `change` double NOT NULL DEFAULT 0,
  `user_id` int(30) DEFAULT 1,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_list`
--

INSERT INTO `transaction_list` (`transaction_id`, `receipt_no`, `total`, `tendered_amount`, `change`, `user_id`, `date_added`) VALUES
(1, '1644804759', 205, 300, 95, 1, '2022-02-14 02:12:39'),
(2, '1644804881', 1000, 1000, 0, 1, '2022-02-14 02:14:41'),
(4, '1644806318', 125, 150, 25, NULL, '2022-02-14 02:38:38'),
(5, '1644807473', 85, 100, 15, NULL, '2022-02-14 02:57:53'),
(6, '1718613054', 240, 1000, 760, 1, '2024-06-17 08:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user_list` (
  `user_id` int(30) NOT NULL,
  `fullname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `type` int(30) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`user_id`, `fullname`, `username`, `password`, `type`, `status`, `date_created`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', 1, 1, '2022-02-14 00:44:30'),
(6, 'Tamoor', 'Tamoor123', '623de8bc00ce11f5d2ba1a74884b067a', 1, 1, '2024-06-17 08:24:45'),
(7, 'akbar', 'akbar123', 'f039e5f60e85d10bf7b742e65ad931ca', 0, 1, '2024-06-17 08:25:23'),
(8, 'Saleem', 'saleem123', '084e81943af5fbd3af855f808ee45d4b', 0, 1, '2024-06-17 08:25:44'),
(9, 'ali', 'ali123', 'ali123', 0, 1, '2024-06-17 08:52:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `transaction_list`
--
ALTER TABLE `transaction_list`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `category_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `product_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stock_list`
--
ALTER TABLE `stock_list`
  MODIFY `stock_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transaction_list`
--
ALTER TABLE `transaction_list`
  MODIFY `transaction_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `user_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD CONSTRAINT `stock_list_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD CONSTRAINT `transaction_items_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_items_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `transaction_list` (`transaction_id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_list`
--
ALTER TABLE `transaction_list`
  ADD CONSTRAINT `transaction_list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_list` (`user_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
