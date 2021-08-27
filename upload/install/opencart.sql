SET SQL_MODE = '';
--
-- Структура таблицы `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(7, 'Banner Sale', 1),
(9, 'Banners', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `description`, `link`, `image`, `sort_order`) VALUES
(184, 7, 3, 'banner-1', '&lt;h2&gt;Special offer&lt;/h2&gt;\r\n&lt;div class=&quot;banner-bottom&quot;&gt;\r\n	&lt;h2&gt;Save up to 30%&lt;/h2&gt;\r\n	&lt;h4&gt;on BRAKE SYSTEMS&lt;/h4&gt;\r\n&lt;/div&gt;', 'index.php?route=product/special', 'catalog/banner-sale.jpg', 0),
(183, 7, 2, 'banner-1', '&lt;h2&gt;Special offer&lt;/h2&gt;\r\n&lt;div class=&quot;banner-bottom&quot;&gt;\r\n	&lt;h2&gt;Save up to 30%&lt;/h2&gt;\r\n	&lt;h4&gt;on BRAKE SYSTEMS&lt;/h4&gt;\r\n&lt;/div&gt;', 'index.php?route=product/special', 'catalog/banner-sale.jpg', 0),
(182, 7, 1, 'banner-1', '&lt;h2&gt;Special offer&lt;/h2&gt;\r\n&lt;div class=&quot;banner-bottom&quot;&gt;\r\n	&lt;h2&gt;Save up to 30%&lt;/h2&gt;\r\n	&lt;h4&gt;on BRAKE SYSTEMS&lt;/h4&gt;\r\n&lt;/div&gt; \r\n					 \r\n					', 'index.php?route=product/special', 'catalog/banner-sale.jpg', 0),
(199, 9, 3, 'banner-3', '						&lt;h2&gt;HALO&lt;/h2&gt;\r\n&lt;h4&gt;HEADLIGHTS&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt; \r\n					', 'index.php?route=product/category&amp;path=58', 'catalog/banner-3.jpg', 2),
(198, 9, 3, 'banner-2', '						&lt;h2&gt;BRAKE&lt;/h2&gt;\r\n&lt;h4&gt;SYSTEMS&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt;  \r\n					', 'index.php?route=product/category&amp;path=47', 'catalog/banner-2.jpg', 1),
(197, 9, 3, 'banner-1', '						&lt;h2&gt;SUSPENSION&lt;/h2&gt;\r\n&lt;h4&gt;SYSTEMS&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt;  \r\n					', 'index.php?route=product/category&amp;path=48', 'catalog/banner-1.jpg', 0),
(196, 9, 2, 'banner-6', '						&lt;h2&gt;EXHAUST&lt;/h2&gt;\r\n&lt;h4&gt;SYSTEMS&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt;  \r\n					', 'index.php?route=product/category&amp;path=42', 'catalog/banner-6.jpg', 5),
(195, 9, 2, 'banner-5', '						&lt;h2&gt;turbine&lt;/h2&gt;\r\n&lt;h4&gt;SYSTEMS&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt; \r\n					', 'index.php?route=product/category&amp;path=64', 'catalog/banner-5.jpg', 4),
(194, 9, 2, 'banner-4', '						&lt;h2&gt;AIR&lt;/h2&gt;\r\n&lt;h4&gt;INTAKES&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt;  \r\n					', 'index.php?route=product/category&amp;path=56', 'catalog/banner-4.jpg', 3),
(193, 9, 2, 'banner-3', '						&lt;h2&gt;HALO&lt;/h2&gt;\r\n&lt;h4&gt;HEADLIGHTS&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt; \r\n					', 'index.php?route=product/category&amp;path=58', 'catalog/banner-3.jpg', 2),
(192, 9, 2, 'banner-2', '						&lt;h2&gt;BRAKE&lt;/h2&gt;\r\n&lt;h4&gt;SYSTEMS&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt;  \r\n					', 'index.php?route=product/category&amp;path=47', 'catalog/banner-2.jpg', 1),
(191, 9, 2, 'banner-1', '						&lt;h2&gt;SUSPENSION&lt;/h2&gt;\r\n&lt;h4&gt;SYSTEMS&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt;  \r\n					', 'index.php?route=product/category&amp;path=48', 'catalog/banner-1.jpg', 0),
(190, 9, 1, 'banner-6', '						&lt;h2&gt;EXHAUST&lt;/h2&gt;\r\n&lt;h4&gt;SYSTEMS&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt; \r\n					 \r\n					', 'index.php?route=product/category&amp;path=42', 'catalog/banner-6.jpg', 5),
(189, 9, 1, 'banner-5', '						&lt;h2&gt;turbine&lt;/h2&gt;\r\n&lt;h4&gt;SYSTEMS&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt; \r\n					 \r\n					', 'index.php?route=product/category&amp;path=64', 'catalog/banner-5.jpg', 4),
(188, 9, 1, 'banner-4', '						&lt;h2&gt;AIR&lt;/h2&gt;\r\n&lt;h4&gt;INTAKES&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt; \r\n					 \r\n					', 'index.php?route=product/category&amp;path=56', 'catalog/banner-4.jpg', 3),
(186, 9, 1, 'banner-2', '						&lt;h2&gt;BRAKE&lt;/h2&gt;\r\n&lt;h4&gt;SYSTEMS&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt; \r\n					 \r\n					', 'index.php?route=product/category&amp;path=47', 'catalog/banner-2.jpg', 1),
(187, 9, 1, 'banner-3', '						&lt;h2&gt;HALO&lt;/h2&gt;\r\n&lt;h4&gt;HEADLIGHTS&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt; \r\n					 \r\n					', 'index.php?route=product/category&amp;path=58', 'catalog/banner-3.jpg', 2),
(185, 9, 1, 'banner-1', '						&lt;h2&gt;SUSPENSION&lt;/h2&gt;\r\n&lt;h4&gt;SYSTEMS&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt; \r\n					 \r\n					', 'index.php?route=product/category&amp;path=48', 'catalog/banner-1.jpg', 0),
(200, 9, 3, 'banner-4', '						&lt;h2&gt;AIR&lt;/h2&gt;\r\n&lt;h4&gt;INTAKES&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt;  \r\n					', 'index.php?route=product/category&amp;path=56', 'catalog/banner-4.jpg', 3),
(201, 9, 3, 'banner-5', '						&lt;h2&gt;turbine&lt;/h2&gt;\r\n&lt;h4&gt;SYSTEMS&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt; \r\n					', 'index.php?route=product/category&amp;path=64', 'catalog/banner-5.jpg', 4),
(202, 9, 3, 'banner-6', '						&lt;h2&gt;EXHAUST&lt;/h2&gt;\r\n&lt;h4&gt;SYSTEMS&lt;/h4&gt;\r\n&lt;p&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/p&gt;  \r\n					', 'index.php?route=product/category&amp;path=42', 'catalog/banner-6.jpg', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(45, 'module', 'jetimpex_megamenu'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(44, 'module', 'jetimpex_layout_builder'),
(43, 'module', 'featured'),
(64, 'theme', 'jetimpex783'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(56, 'module', 'jetimpex_google_map'),
(47, 'module', 'jetimpex_slideshow'),
(50, 'module', 'latest'),
(51, 'module', 'jetimpex_newsletter'),
(52, 'module', 'jetimpex_footer_links'),
(53, 'module', 'jetimpex_social_list'),
(54, 'module', 'banner'),
(55, 'module', 'jetimpex_color_switcher'),
(57, 'module', 'jetimpex_category'),
(59, 'module', 'filter'),
(60, 'module', 'special'),
(61, 'module', 'bestseller');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_install`
--

DROP TABLE IF EXISTS `oc_extension_install`;
CREATE TABLE IF NOT EXISTS `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(42, 0, 'jetimpex_product_hover.ocmod.zip', '2017-08-23 17:00:00'),
(41, 0, 'jetimpex_product.ocmod.zip', '2017-08-23 16:59:58'),
(88, 0, 'jetimpex_positions.ocmod.zip', '2018-06-01 12:50:49'),
(39, 0, 'jetimpex_path_theme.ocmod.zip', '2017-08-23 16:59:49'),
(85, 0, 'jetimpex_header.ocmod.zip', '2017-09-21 16:12:55'),
(37, 0, 'jetimpex_page_direction.ocmod.zip', '2017-08-23 16:59:44'),
(66, 0, 'jetimpex_live_search.ocmod.zip', '2017-08-29 18:18:47'),
(35, 0, 'jetimpex_lazy_load.ocmod.zip', '2017-08-23 16:59:41'),
(34, 0, 'jetimpex_labels.ocmod.zip', '2017-08-23 16:59:38'),
(32, 0, 'jetimpex_gtmetrix.ocmod.zip', '2017-08-23 16:59:34'),
(31, 0, 'jetimpex_footer.ocmod.zip', '2017-08-23 16:59:32'),
(30, 0, 'jetimpex_description_banner.ocmod.zip', '2017-08-23 16:59:31'),
(29, 0, 'jetimpex_cart.ocmod.zip', '2017-08-23 16:59:29'),
(28, 0, 'jetimpex_ajax_quickview.ocmod.zip', '2017-08-23 16:59:27'),
(91, 0, 'jetimpex_blog_catalog.ocmod.zip', '2018-06-01 12:53:03'),
(93, 0, 'jetimpex_theme783.ocmod.zip', '2018-06-01 13:05:48'),
(43, 0, 'jetimpex_product_zoom.ocmod.zip', '2017-08-23 17:00:09'),
(44, 0, 'jetimpex_responsive.ocmod.zip', '2017-08-23 17:00:12'),
(46, 0, 'JETIMPEX Layout Builder.ocmod.zip', '2017-08-23 17:40:02'),
(69, 0, 'JETIMPEX Megamenu.ocmod.zip', '2017-08-31 14:11:17'),
(62, 0, 'JETIMPEX Slideshow (Swiper).ocmod.zip', '2017-08-29 15:54:31'),
(64, 0, 'JETIMPEX Parallax.ocmod.zip', '2017-08-29 16:07:04'),
(63, 0, 'JETIMPEX Blog Articles.ocmod.zip', '2017-08-29 15:57:59'),
(86, 0, 'jetimpex_pages.ocmod.zip', '2017-09-21 16:13:00'),
(67, 0, 'JETIMPEX Newsletter.ocmod.zip', '2017-08-30 15:01:14'),
(84, 0, 'jetimpex_ajax_add_to_cart.ocmod.zip', '2017-09-20 15:14:10'),
(72, 0, 'jetimpex_ajax_add_to_cart.ocmod.zip', '2017-08-31 18:25:23'),
(74, 0, 'jetimpex_cart.ocmod.zip', '2017-08-31 18:27:33'),
(79, 0, 'JETIMPEX Color Switcher.ocmod.zip', '2017-09-18 15:56:36'),
(80, 0, 'jetimpex_ajax_quickview.ocmod.zip', '2017-09-18 18:42:45'),
(81, 0, 'ExportImportTool.ocmod.zip', '2017-09-19 14:18:08'),
(82, 0, 'jetimpex_header.ocmod.zip', '2017-09-19 15:52:37'),
(83, 0, 'JETIMPEX Category.ocmod.zip', '2017-09-20 15:03:56'),
(89, 0, 'jetimpex_installer.ocmod.zip', '2018-06-01 12:51:54'),
(90, 0, 'jetimpex_positions.ocmod.zip', '2018-06-01 12:52:24');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_path`
--

DROP TABLE IF EXISTS `oc_extension_path`;
CREATE TABLE IF NOT EXISTS `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1699 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1689, 91, 'catalog/view/theme/default/template/simple_blog/article_info.twig', '2018-06-01 12:53:04'),
(1690, 91, 'catalog/view/theme/default/template/extension/module/jetimpex_blog_articles.twig', '2018-06-01 12:53:04'),
(1688, 91, 'catalog/view/theme/default/template/simple_blog/article_comment.twig', '2018-06-01 12:53:04'),
(1696, 93, 'admin/controller/extension/theme/jetimpex783.php', '2018-06-01 13:05:48'),
(1697, 93, 'admin/language/en-gb/extension/theme/jetimpex783.php', '2018-06-01 13:05:48'),
(1698, 93, 'admin/view/template/extension/theme/jetimpex783.twig', '2018-06-01 13:05:48'),
(1645, 91, 'admin/controller/simple_blog', '2018-06-01 12:53:03'),
(1646, 91, 'admin/model/simple_blog', '2018-06-01 12:53:03'),
(1647, 91, 'catalog/controller/simple_blog', '2018-06-01 12:53:03'),
(1648, 91, 'catalog/model/simple_blog', '2018-06-01 12:53:03'),
(1649, 91, 'admin/controller/simple_blog/article.php', '2018-06-01 12:53:04'),
(1650, 91, 'admin/controller/simple_blog/author.php', '2018-06-01 12:53:04'),
(1651, 91, 'admin/controller/simple_blog/category.php', '2018-06-01 12:53:04'),
(1652, 91, 'admin/controller/simple_blog/comment.php', '2018-06-01 12:53:04'),
(1653, 91, 'admin/controller/simple_blog/install.php', '2018-06-01 12:53:04'),
(1654, 91, 'admin/controller/simple_blog/report.php', '2018-06-01 12:53:04'),
(1655, 91, 'admin/language/en-gb/simple_blog', '2018-06-01 12:53:04'),
(1656, 91, 'admin/model/simple_blog/article.php', '2018-06-01 12:53:04'),
(1657, 91, 'admin/model/simple_blog/author.php', '2018-06-01 12:53:04'),
(1658, 91, 'admin/model/simple_blog/category.php', '2018-06-01 12:53:04'),
(1659, 91, 'admin/model/simple_blog/comment.php', '2018-06-01 12:53:04'),
(1660, 91, 'admin/model/simple_blog/install.php', '2018-06-01 12:53:04'),
(1661, 91, 'admin/model/simple_blog/report.php', '2018-06-01 12:53:04'),
(1662, 91, 'admin/view/template/simple_blog', '2018-06-01 12:53:04'),
(1663, 91, 'catalog/controller/simple_blog/article.php', '2018-06-01 12:53:04'),
(1664, 91, 'catalog/controller/simple_blog/author.php', '2018-06-01 12:53:04'),
(1665, 91, 'catalog/controller/simple_blog/category.php', '2018-06-01 12:53:04'),
(1666, 91, 'catalog/controller/simple_blog/search.php', '2018-06-01 12:53:04'),
(1667, 91, 'catalog/language/en-gb/simple_blog', '2018-06-01 12:53:04'),
(1668, 91, 'catalog/model/simple_blog/article.php', '2018-06-01 12:53:04'),
(1669, 91, 'admin/language/en-gb/simple_blog/article.php', '2018-06-01 12:53:04'),
(1670, 91, 'admin/language/en-gb/simple_blog/author.php', '2018-06-01 12:53:04'),
(1671, 91, 'admin/language/en-gb/simple_blog/category.php', '2018-06-01 12:53:04'),
(1672, 91, 'admin/language/en-gb/simple_blog/comment.php', '2018-06-01 12:53:04'),
(1673, 91, 'admin/language/en-gb/simple_blog/install.php', '2018-06-01 12:53:04'),
(1674, 91, 'admin/language/en-gb/simple_blog/report.php', '2018-06-01 12:53:04'),
(1675, 91, 'admin/view/template/simple_blog/article_form.twig', '2018-06-01 12:53:04'),
(1676, 91, 'admin/view/template/simple_blog/article_list.twig', '2018-06-01 12:53:04'),
(1677, 91, 'admin/view/template/simple_blog/author_form.twig', '2018-06-01 12:53:04'),
(1678, 91, 'admin/view/template/simple_blog/author_list.twig', '2018-06-01 12:53:04'),
(1679, 91, 'admin/view/template/simple_blog/category_form.twig', '2018-06-01 12:53:04'),
(1680, 91, 'admin/view/template/simple_blog/category_list.twig', '2018-06-01 12:53:04'),
(1681, 91, 'admin/view/template/simple_blog/comment_form.twig', '2018-06-01 12:53:04'),
(1682, 91, 'admin/view/template/simple_blog/comment_list.twig', '2018-06-01 12:53:04'),
(1683, 91, 'admin/view/template/simple_blog/notification.twig', '2018-06-01 12:53:04'),
(1684, 91, 'admin/view/template/simple_blog/report.twig', '2018-06-01 12:53:04'),
(1685, 91, 'catalog/language/en-gb/simple_blog/article.php', '2018-06-01 12:53:04'),
(1686, 91, 'catalog/view/theme/default/template/simple_blog', '2018-06-01 12:53:04'),
(1687, 91, 'catalog/view/theme/default/template/simple_blog/article.twig', '2018-06-01 12:53:04'),
(115, 28, 'catalog/controller/extension/module/jetimpex_ajax_quick_view.php', '2017-08-23 16:59:27'),
(116, 28, 'catalog/view/theme/jetimpex/template/extension/module/jetimpex_ajax_quick_view_popup.twig', '2017-08-23 16:59:27'),
(1636, 90, 'catalog/controller/common/footer_1.php', '2018-06-01 12:52:24'),
(1637, 90, 'catalog/controller/common/footer_2.php', '2018-06-01 12:52:24'),
(1638, 90, 'catalog/controller/common/footer_3.php', '2018-06-01 12:52:24'),
(1639, 90, 'catalog/controller/common/footer_4.php', '2018-06-01 12:52:24'),
(1640, 90, 'catalog/controller/common/header_top.php', '2018-06-01 12:52:24'),
(1641, 90, 'catalog/controller/common/navigation.php', '2018-06-01 12:52:24'),
(1642, 90, 'catalog/controller/common/top.php', '2018-06-01 12:52:24'),
(1643, 90, 'catalog/view/theme/default/template/common/position.twig', '2018-06-01 12:52:24'),
(126, 46, 'admin/view/javascript/layout_builder', '2017-08-23 17:40:03'),
(127, 46, 'admin/view/stylesheet/layout_builder', '2017-08-23 17:40:03'),
(128, 46, 'admin/controller/extension/module/jetimpex_layout_builder.php', '2017-08-23 17:40:03'),
(129, 46, 'admin/view/javascript/layout_builder/script.js', '2017-08-23 17:40:03'),
(130, 46, 'admin/view/javascript/layout_builder/sortable.js', '2017-08-23 17:40:03'),
(131, 46, 'admin/view/stylesheet/layout_builder/Edit_Notepad_Icon.svg.png', '2017-08-23 17:40:03'),
(132, 46, 'admin/view/stylesheet/layout_builder/Trash_font_awesome.svg.png', '2017-08-23 17:40:03'),
(133, 46, 'admin/view/stylesheet/layout_builder/grid_1200.png', '2017-08-23 17:40:03'),
(134, 46, 'admin/view/stylesheet/layout_builder/grid_991.png', '2017-08-23 17:40:03'),
(135, 46, 'admin/view/stylesheet/layout_builder/images', '2017-08-23 17:40:03'),
(136, 46, 'admin/view/stylesheet/layout_builder/preload.gif', '2017-08-23 17:40:03'),
(137, 46, 'admin/view/stylesheet/layout_builder/preload_old.gif', '2017-08-23 17:40:03'),
(138, 46, 'admin/view/stylesheet/layout_builder/style.css', '2017-08-23 17:40:03'),
(139, 46, 'catalog/controller/extension/module/jetimpex_layout_builder.php', '2017-08-23 17:40:03'),
(140, 46, 'admin/language/en-gb/extension/module/jetimpex_layout_builder.php', '2017-08-23 17:40:03'),
(141, 46, 'admin/view/stylesheet/layout_builder/images/add_column.png', '2017-08-23 17:40:03'),
(142, 46, 'admin/view/stylesheet/layout_builder/images/add_row.gif', '2017-08-23 17:40:03'),
(143, 46, 'admin/view/stylesheet/layout_builder/images/add_row.png', '2017-08-23 17:40:03'),
(144, 46, 'admin/view/stylesheet/layout_builder/images/add_widget.png', '2017-08-23 17:40:03'),
(145, 46, 'admin/view/stylesheet/layout_builder/images/bg-resize.png', '2017-08-23 17:40:03'),
(146, 46, 'admin/view/stylesheet/layout_builder/images/bg.png', '2017-08-23 17:40:03'),
(147, 46, 'admin/view/stylesheet/layout_builder/images/bg_hover.png', '2017-08-23 17:40:03'),
(148, 46, 'admin/view/stylesheet/layout_builder/images/bg_hover.psd', '2017-08-23 17:40:03'),
(149, 46, 'admin/view/stylesheet/layout_builder/images/close.png', '2017-08-23 17:40:03'),
(150, 46, 'admin/view/stylesheet/layout_builder/images/col_add.png', '2017-08-23 17:40:03'),
(151, 46, 'admin/view/stylesheet/layout_builder/images/col_config.png', '2017-08-23 17:40:03'),
(152, 46, 'admin/view/stylesheet/layout_builder/images/col_delete.png', '2017-08-23 17:40:03'),
(153, 46, 'admin/view/stylesheet/layout_builder/images/config.png', '2017-08-23 17:40:03'),
(154, 46, 'admin/view/stylesheet/layout_builder/images/copy.png', '2017-08-23 17:40:03'),
(155, 46, 'admin/view/stylesheet/layout_builder/images/drag.png', '2017-08-23 17:40:03'),
(156, 46, 'admin/view/stylesheet/layout_builder/images/pattern.png', '2017-08-23 17:40:03'),
(157, 46, 'admin/view/stylesheet/layout_builder/images/preload.gif', '2017-08-23 17:40:03'),
(158, 46, 'admin/view/stylesheet/layout_builder/images/preload__.gif', '2017-08-23 17:40:03'),
(159, 46, 'admin/view/stylesheet/layout_builder/images/remove_row.png', '2017-08-23 17:40:03'),
(160, 46, 'admin/view/stylesheet/layout_builder/images/widget_copy.png', '2017-08-23 17:40:03'),
(161, 46, 'admin/view/stylesheet/layout_builder/images/widget_del.png', '2017-08-23 17:40:03'),
(162, 46, 'admin/view/stylesheet/layout_builder/images/widget_edit.png', '2017-08-23 17:40:03'),
(163, 46, 'admin/view/template/extension/module/layout_builder', '2017-08-23 17:40:03'),
(164, 46, 'catalog/view/theme/default/stylesheet/homebuilder.css', '2017-08-23 17:40:03'),
(165, 46, 'admin/view/template/extension/module/layout_builder/modulestwig.twig', '2017-08-23 17:40:03'),
(166, 46, 'admin/view/template/extension/module/layout_builder/ocmodules.twig', '2017-08-23 17:40:03'),
(167, 46, 'catalog/view/theme/default/template/extension/module/jetimpex_layout_builder.twig', '2017-08-23 17:40:03'),
(168, 46, 'catalog/view/theme/jetimpex/template/extension/module/jetimpex_layout_builder.twig', '2017-08-23 17:40:03'),
(1607, 69, 'admin/controller/extension/module/jetimpex_megamenu.php', '2017-08-31 14:11:17'),
(1608, 69, 'catalog/controller/extension/module/jetimpex_megamenu.php', '2017-08-31 14:11:17'),
(1609, 69, 'catalog/model/extension/module/jetimpex_megamenu.php', '2017-08-31 14:11:17'),
(1610, 69, 'admin/language/en-gb/extension/module/jetimpex_megamenu.php', '2017-08-31 14:11:17'),
(1611, 69, 'admin/view/template/extension/module/jetimpex_megamenu.twig', '2017-08-31 14:11:17'),
(1612, 69, 'catalog/view/theme/jetimpex/js/jetimpex_megamenu/jquery.rd-navbar.min.js', '2017-08-31 14:11:17'),
(1613, 69, 'catalog/view/theme/jetimpex/js/jetimpex_megamenu/superfish.min.js', '2017-08-31 14:11:17'),
(1614, 69, 'catalog/view/theme/default/template/extension/module/jetimpex_megamenu.twig', '2017-08-31 14:11:17'),
(1615, 69, 'catalog/view/theme/jetimpex/template/extension/module/jetimpex_megamenu.twig', '2017-08-31 14:11:17'),
(1340, 62, 'catalog/view/javascript/jetimpex', '2017-08-29 15:54:32'),
(1341, 62, 'admin/controller/extension/module/jetimpex_slideshow.php', '2017-08-29 15:54:32'),
(1342, 62, 'catalog/controller/extension/module/jetimpex_slideshow.php', '2017-08-29 15:54:32'),
(1343, 62, 'catalog/view/javascript/jetimpex/slideshow', '2017-08-29 15:54:32'),
(1344, 62, 'admin/language/de-DE/extension/module/jetimpex_slideshow.php', '2017-08-29 15:54:32'),
(1345, 62, 'admin/language/en-gb/extension/module/jetimpex_slideshow.php', '2017-08-29 15:54:32'),
(1346, 62, 'admin/language/ru-ru/extension/module/jetimpex_slideshow.php', '2017-08-29 15:54:32'),
(1347, 62, 'admin/view/template/extension/module/jetimpex_slideshow.twig', '2017-08-29 15:54:32'),
(1348, 62, 'catalog/view/javascript/jetimpex/slideshow/css', '2017-08-29 15:54:32'),
(1349, 62, 'catalog/view/javascript/jetimpex/slideshow/js', '2017-08-29 15:54:32'),
(1350, 62, 'catalog/view/javascript/jetimpex/slideshow/css/slideshow.css', '2017-08-29 15:54:32'),
(1351, 62, 'catalog/view/javascript/jetimpex/slideshow/js/jquery.vide.min.js', '2017-08-29 15:54:32'),
(1352, 62, 'catalog/view/javascript/jetimpex/slideshow/js/swiper.init.js', '2017-08-29 15:54:32'),
(1361, 64, 'admin/controller/extension/module/jetimpex_parallax.php', '2017-08-29 16:07:04'),
(1362, 64, 'catalog/controller/extension/module/jetimpex_parallax.php', '2017-08-29 16:07:04'),
(1363, 64, 'catalog/model/extension/module/jetimpex_parallax.php', '2017-08-29 16:07:04'),
(1364, 64, 'admin/language/de-DE/extension/module/jetimpex_parallax.php', '2017-08-29 16:07:04'),
(1365, 64, 'admin/language/en-gb/extension/module/jetimpex_parallax.php', '2017-08-29 16:07:04'),
(1366, 64, 'admin/language/ru-ru/extension/module/jetimpex_parallax.php', '2017-08-29 16:07:04'),
(1367, 64, 'admin/view/template/extension/module/jetimpex_parallax.twig', '2017-08-29 16:07:04'),
(1368, 64, 'catalog/view/theme/default/template/extension/module/jetimpex_parallax.twig', '2017-08-29 16:07:04'),
(1369, 67, 'admin/model/extension/module', '2017-08-30 15:01:15'),
(1370, 67, 'admin/controller/extension/module/jetimpex_newsletter.php', '2017-08-30 15:01:15'),
(1371, 67, 'admin/model/extension/module/jetimpex_newsletter.php', '2017-08-30 15:01:15'),
(1355, 63, 'admin/controller/extension/module/jetimpex_blog_articles.php', '2017-08-29 15:57:59'),
(1356, 63, 'catalog/controller/extension/module/jetimpex_blog_articles.php', '2017-08-29 15:57:59'),
(1357, 63, 'admin/view/template/extension/module/jetimpex_blog_articles.twig', '2017-08-29 15:57:59'),
(1358, 63, 'catalog/language/en-gb/extension/module/jetimpex_blog_articles.php', '2017-08-29 15:57:59'),
(1359, 63, 'catalog/language/ru-ru/extension/module/jetimpex_blog_articles.php', '2017-08-29 15:57:59'),
(1353, 62, 'catalog/view/javascript/jetimpex/slideshow/js/swiper.min.js', '2017-08-29 15:54:32'),
(1354, 62, 'catalog/view/theme/default/template/extension/module/jetimpex_slideshow.twig', '2017-08-29 15:54:32'),
(1360, 63, 'catalog/view/theme/default/template/extension/module/jetimpex_blog_articles.twig', '2017-08-29 15:57:59'),
(1372, 67, 'catalog/controller/extension/module/jetimpex_newsletter.php', '2017-08-30 15:01:15'),
(1373, 67, 'catalog/model/extension/module/jetimpex_newsletter.php', '2017-08-30 15:01:15'),
(1374, 67, 'catalog/view/javascript/jetimpex/newsletter', '2017-08-30 15:01:15'),
(1375, 67, 'admin/language/de-DE/extension/module/jetimpex_newsletter.php', '2017-08-30 15:01:15'),
(1376, 67, 'admin/language/en-gb/extension/module/jetimpex_newsletter.php', '2017-08-30 15:01:15'),
(1377, 67, 'admin/language/ru-ru/extension/module/jetimpex_newsletter.php', '2017-08-30 15:01:15'),
(1378, 67, 'admin/view/template/extension/module/jetimpex_newsletter.twig', '2017-08-30 15:01:15'),
(1379, 67, 'catalog/language/de-DE/extension/module/jetimpex_newsletter.php', '2017-08-30 15:01:15'),
(1380, 67, 'catalog/language/en-gb/extension/module/jetimpex_newsletter.php', '2017-08-30 15:01:15'),
(1381, 67, 'catalog/language/ru-ru/extension/module/jetimpex_newsletter.php', '2017-08-30 15:01:15'),
(1382, 67, 'catalog/view/javascript/jetimpex/newsletter/css', '2017-08-30 15:01:15'),
(1383, 67, 'catalog/view/javascript/jetimpex/newsletter/css/newsletter.css', '2017-08-30 15:01:15'),
(1384, 67, 'catalog/view/theme/default/template/extension/module/jetimpex_newsletter.twig', '2017-08-30 15:01:15'),
(1616, 79, 'admin/controller/extension/module/jetimpex_color_switcher.php', '2017-09-18 15:56:37'),
(1617, 79, 'catalog/controller/extension/module/jetimpex_color_switcher.php', '2017-09-18 15:56:37'),
(1618, 79, 'catalog/model/extension/module/jetimpex_color_switcher.php', '2017-09-18 15:56:37'),
(1619, 79, 'admin/language/en-gb/extension/module/jetimpex_color_switcher.php', '2017-09-18 15:56:37'),
(1620, 79, 'admin/view/template/extension/module/jetimpex_color_switcher.twig', '2017-09-18 15:56:37'),
(1621, 79, 'catalog/language/en-gb/extension/module/jetimpex_color_switcher.php', '2017-09-18 15:56:37'),
(1622, 79, 'catalog/view/theme/jetimpex/js/jetimpex_colorswitcher/jquery.cookies.js', '2017-09-18 15:56:37'),
(1623, 79, 'catalog/view/theme/jetimpex/js/jetimpex_colorswitcher/style_switcher.js', '2017-09-18 15:56:37'),
(1624, 79, 'catalog/view/theme/jetimpex/js/jetimpex_colorswitcher/style_switcher_demo.js', '2017-09-18 15:56:37'),
(1625, 79, 'catalog/view/theme/jetimpex/stylesheet/color_schemes/color_scheme_1.css', '2017-09-18 15:56:37'),
(1626, 79, 'catalog/view/theme/jetimpex/stylesheet/color_schemes/color_scheme_2.css', '2017-09-18 15:56:37'),
(1627, 79, 'catalog/view/theme/jetimpex/stylesheet/color_schemes/color_scheme_3.css', '2017-09-18 15:56:37'),
(1628, 79, 'catalog/view/theme/jetimpex/stylesheet/color_schemes/color_scheme_4.css', '2017-09-18 15:56:37'),
(1629, 79, 'catalog/view/theme/default/template/extension/module/jetimpex_color_switcher.twig', '2017-09-18 15:56:37'),
(1630, 79, 'catalog/view/theme/jetimpex/template/extension/module/jetimpex_color_switcher.twig', '2017-09-18 15:56:37'),
(1631, 80, 'catalog/controller/extension/module/jetimpex_ajax_quick_view.php', '2017-09-18 18:42:46'),
(1632, 80, 'catalog/view/theme/jetimpex/template/extension/module/jetimpex_ajax_quick_view_popup.twig', '2017-09-18 18:42:46'),
(1644, 90, 'catalog/view/theme/jetimpex783/template/common/position.twig', '2018-06-01 12:52:24'),
(1691, 91, 'catalog/view/theme/default/template/extension/module/jetimpex_blog_category.twig', '2018-06-01 12:53:04'),
(1692, 91, 'catalog/view/theme/jetimpex783/template/extension/module/jetimpex_blog_category.twig', '2018-06-01 12:53:04');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(14, 'Blog');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=479 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(360, 10, 'jetimpex_social_list.44', 'footer_3', 0),
(381, 3, 'jetimpex_social_list.44', 'footer_3', 0),
(387, 7, 'jetimpex_social_list.44', 'footer_3', 0),
(393, 12, 'jetimpex_social_list.44', 'footer_3', 0),
(415, 11, 'jetimpex_footer_links.43', 'footer_4', 0),
(414, 11, 'jetimpex_social_list.44', 'footer_3', 0),
(426, 2, 'jetimpex_social_list.44', 'footer_3', 0),
(430, 13, 'bestseller.50', 'column_left', 1),
(440, 9, 'jetimpex_social_list.44', 'footer_3', 0),
(247, 1, 'jetimpex_social_list.44', 'footer_3', 0),
(248, 1, 'jetimpex_footer_links.43', 'footer_4', 0),
(245, 1, 'jetimpex_footer_links.41', 'footer_1', 0),
(365, 6, 'jetimpex_footer_links.42', 'footer_2', 0),
(364, 6, 'jetimpex_footer_links.41', 'footer_1', 0),
(363, 6, 'jetimpex_color_switcher', 'content_top', 0),
(362, 6, 'jetimpex_megamenu.34', 'navigation', 0),
(359, 10, 'jetimpex_footer_links.42', 'footer_2', 0),
(358, 10, 'jetimpex_footer_links.41', 'footer_1', 0),
(357, 10, 'jetimpex_color_switcher', 'content_top', 0),
(356, 10, 'jetimpex_megamenu.34', 'navigation', 0),
(376, 3, 'bestseller.50', 'column_left', 1),
(377, 3, 'filter', 'column_left', 2),
(378, 3, 'jetimpex_color_switcher', 'content_top', 0),
(379, 3, 'jetimpex_footer_links.41', 'footer_1', 0),
(386, 7, 'jetimpex_footer_links.42', 'footer_2', 0),
(385, 7, 'jetimpex_footer_links.41', 'footer_1', 0),
(384, 7, 'jetimpex_color_switcher', 'content_top', 0),
(383, 7, 'jetimpex_megamenu.34', 'navigation', 0),
(392, 12, 'jetimpex_footer_links.42', 'footer_2', 0),
(391, 12, 'jetimpex_footer_links.41', 'footer_1', 0),
(390, 12, 'jetimpex_color_switcher', 'content_top', 0),
(389, 12, 'jetimpex_megamenu.34', 'navigation', 0),
(472, 8, 'jetimpex_footer_links.43', 'footer_4', 0),
(471, 8, 'jetimpex_social_list.44', 'footer_3', 0),
(470, 8, 'jetimpex_footer_links.42', 'footer_2', 0),
(469, 8, 'jetimpex_footer_links.41', 'footer_1', 0),
(458, 4, 'jetimpex_footer_links.43', 'footer_4', 0),
(457, 4, 'jetimpex_social_list.44', 'footer_3', 0),
(456, 4, 'jetimpex_footer_links.42', 'footer_2', 0),
(413, 11, 'jetimpex_footer_links.42', 'footer_2', 0),
(412, 11, 'jetimpex_footer_links.41', 'footer_1', 0),
(411, 11, 'jetimpex_color_switcher', 'content_top', 0),
(410, 11, 'jetimpex_megamenu.34', 'navigation', 0),
(420, 5, 'jetimpex_social_list.44', 'footer_3', 0),
(419, 5, 'jetimpex_footer_links.42', 'footer_2', 0),
(418, 5, 'jetimpex_footer_links.41', 'footer_1', 0),
(417, 5, 'jetimpex_color_switcher', 'content_top', 0),
(425, 2, 'jetimpex_footer_links.42', 'footer_2', 0),
(424, 2, 'jetimpex_footer_links.41', 'footer_1', 0),
(423, 2, 'jetimpex_color_switcher', 'content_top', 0),
(422, 2, 'jetimpex_megamenu.34', 'navigation', 0),
(435, 13, 'jetimpex_footer_links.43', 'footer_4', 0),
(434, 13, 'jetimpex_social_list.44', 'footer_3', 0),
(432, 13, 'jetimpex_footer_links.41', 'footer_1', 0),
(439, 9, 'jetimpex_footer_links.42', 'footer_2', 0),
(438, 9, 'jetimpex_footer_links.41', 'footer_1', 0),
(437, 9, 'jetimpex_color_switcher', 'content_top', 0),
(436, 9, 'jetimpex_megamenu.34', 'navigation', 0),
(416, 5, 'jetimpex_megamenu.34', 'navigation', 0),
(468, 8, 'jetimpex_color_switcher', 'content_top', 1),
(467, 8, 'jetimpex_google_map.47', 'content_top', 0),
(466, 8, 'jetimpex_megamenu.34', 'navigation', 0),
(246, 1, 'jetimpex_footer_links.42', 'footer_2', 0),
(244, 1, 'jetimpex_color_switcher', 'content_top', 0),
(243, 1, 'jetimpex_layout_builder.33', 'top', 0),
(242, 1, 'jetimpex_megamenu.34', 'navigation', 0),
(380, 3, 'jetimpex_footer_links.42', 'footer_2', 0),
(374, 3, 'jetimpex_megamenu.34', 'navigation', 0),
(375, 3, 'jetimpex_category.48', 'column_left', 0),
(454, 4, 'jetimpex_color_switcher', 'content_top', 0),
(382, 3, 'jetimpex_footer_links.43', 'footer_4', 0),
(455, 4, 'jetimpex_footer_links.41', 'footer_1', 0),
(453, 4, 'banner.45', 'column_left', 1),
(433, 13, 'jetimpex_footer_links.42', 'footer_2', 0),
(431, 13, 'jetimpex_color_switcher', 'content_top', 0),
(429, 13, 'jetimpex_category.48', 'column_left', 0),
(428, 13, 'jetimpex_megamenu.34', 'navigation', 0),
(366, 6, 'jetimpex_social_list.44', 'footer_3', 0),
(361, 10, 'jetimpex_footer_links.43', 'footer_4', 0),
(367, 6, 'jetimpex_footer_links.43', 'footer_4', 0),
(478, 14, 'jetimpex_footer_links.43', 'footer_4', 0),
(477, 14, 'jetimpex_social_list.44', 'footer_3', 0),
(476, 14, 'jetimpex_footer_links.42', 'footer_2', 0),
(475, 14, 'jetimpex_footer_links.41', 'footer_1', 0),
(474, 14, 'jetimpex_color_switcher', 'content_top', 0),
(473, 14, 'jetimpex_megamenu.34', 'navigation', 0),
(388, 7, 'jetimpex_footer_links.43', 'footer_4', 0),
(394, 12, 'jetimpex_footer_links.43', 'footer_4', 0),
(421, 5, 'jetimpex_footer_links.43', 'footer_4', 0),
(427, 2, 'jetimpex_footer_links.43', 'footer_4', 0),
(441, 9, 'jetimpex_footer_links.43', 'footer_4', 0),
(452, 4, 'jetimpex_category.48', 'column_left', 0),
(451, 4, 'jetimpex_megamenu.34', 'navigation', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(113, 6, 0, 'account/%'),
(112, 10, 0, 'affiliate/%'),
(116, 3, 0, 'product/category'),
(94, 1, 0, 'common/home'),
(123, 2, 0, 'product/product'),
(121, 11, 0, 'information/information'),
(117, 7, 0, 'checkout/%'),
(133, 14, 0, 'information/contact/success'),
(125, 9, 0, 'information/sitemap'),
(127, 4, 0, ''),
(122, 5, 0, 'product/manufacturer'),
(118, 12, 0, 'product/compare'),
(124, 13, 0, 'product/search'),
(132, 14, 0, 'simple_blog/article'),
(131, 14, 0, 'simple_blog/article/view'),
(130, 8, 0, 'information/contact');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(32, 'Featured', 'featured', '{\"name\":\"Featured\",\"product_name\":\"\",\"product\":[\"29\",\"40\",\"35\"],\"limit\":\"3\",\"width\":\"270\",\"height\":\"300\",\"status\":\"1\"}'),
(33, 'Home Page', 'jetimpex_layout_builder', '{\"status\":\"1\",\"name\":\"Home Page\",\"class\":\"\",\"id\":\"\",\"layout\":\"[{\\\"cls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"fullwidth\\\":\\\"0\\\",\\\"sfxcls\\\":null,\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":null,\\\"iattachment\\\":null,\\\"cols\\\":[{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"sfxcls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"inrow\\\":0,\\\"lgcol\\\":12,\\\"mdcol\\\":12,\\\"smcol\\\":12,\\\"xscol\\\":12,\\\"widgets\\\":[{\\\"name\\\":\\\"JETIMPEX Slideshow > Slideshow\\\",\\\"module\\\":\\\"jetimpex_slideshow.36\\\",\\\"tyle\\\":\\\"module\\\"}],\\\"rows\\\":[]}]},{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"fullwidth\\\":0,\\\"parallax\\\":0,\\\"sfxcls\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"cols\\\":[{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"sfxcls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"inrow\\\":0,\\\"lgcol\\\":3,\\\"mdcol\\\":3,\\\"smcol\\\":3,\\\"xscol\\\":12,\\\"widgets\\\":[{\\\"name\\\":\\\"Jetimpex Category > Category\\\",\\\"module\\\":\\\"jetimpex_category.48\\\",\\\"tyle\\\":\\\"module\\\"},{\\\"name\\\":\\\"Banner > Banner Sale\\\",\\\"module\\\":\\\"banner.45\\\",\\\"tyle\\\":\\\"module\\\"}],\\\"rows\\\":[]},{\\\"index\\\":0,\\\"cls\\\":\\\"\\\",\\\"sfxcls\\\":\\\"\\\",\\\"bgcolor\\\":\\\"\\\",\\\"bgimage\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"iposition\\\":\\\"\\\",\\\"iattachment\\\":\\\"\\\",\\\"inrow\\\":0,\\\"lgcol\\\":9,\\\"mdcol\\\":9,\\\"smcol\\\":9,\\\"xscol\\\":12,\\\"widgets\\\":[{\\\"name\\\":\\\"Banner > Banners\\\",\\\"module\\\":\\\"banner.46\\\",\\\"tyle\\\":\\\"module\\\"},{\\\"name\\\":\\\"Featured > Featured\\\",\\\"module\\\":\\\"featured.32\\\",\\\"tyle\\\":\\\"module\\\"}],\\\"rows\\\":[]}]}]\"}'),
(34, 'Megamenu', 'jetimpex_megamenu', '{\"name\":\"Megamenu\",\"status\":\"1\",\"menu_item\":{\"0\":{\"type\":\"1\",\"1\":{\"title\":\"Home\"},\"link\":\"index.php?route=common\\/home\",\"submenu_show\":\"0\",\"submenu_type\":\"0\",\"columns\":\"4\",\"columns-per-row\":\"4\",\"image\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"column\":[{\"width\":\"20%\",\"content\":\"3\",\"limit\":\"6\",\"prod_limit\":\"0\",\"module_id\":\"32\",\"category_id\":\"42\",\"category_show\":\"0\"},{\"width\":\"23%\",\"content\":\"3\",\"limit\":\"6\",\"prod_limit\":\"0\",\"module_id\":\"32\",\"category_id\":\"42\",\"category_show\":\"0\"},{\"width\":\"19.8%\",\"content\":\"3\",\"limit\":\"6\",\"prod_limit\":\"0\",\"module_id\":\"32\",\"category_id\":\"42\",\"category_show\":\"0\"},{\"width\":\"37.2%\",\"content\":\"0\",\"limit\":\"6\",\"prod_limit\":\"0\",\"module_id\":\"45\",\"category_id\":\"42\",\"category_show\":\"0\"}]},\"2\":{\"type\":\"1\",\"1\":{\"title\":\"Specials\"},\"link\":\"index.php?route=product\\/special\",\"submenu_show\":\"0\",\"submenu_type\":\"0\",\"columns\":\"0\",\"columns-per-row\":\"0\",\"image\":\"\",\"image_width\":\"\",\"image_height\":\"\"},\"5\":{\"type\":\"1\",\"1\":{\"title\":\"Contact Us\"},\"link\":\"index.php?route=information\\/contact\",\"submenu_show\":\"0\",\"submenu_type\":\"0\",\"columns\":\"0\",\"columns-per-row\":\"0\",\"image\":\"\",\"image_width\":\"\",\"image_height\":\"\"}}}'),
(47, 'Google Map', 'jetimpex_google_map', '{\"name\":\"Google Map\",\"jetimpex_google_map_key\":\"\",\"status\":\"1\",\"jetimpex_google_map_zoom\":\"14\",\"jetimpex_google_map_type\":\"1\",\"jetimpex_google_map_sensor\":\"true\",\"jetimpex_google_map_width\":\"100%\",\"jetimpex_google_map_height\":\"400px\",\"jetimpex_google_map_styles\":\"[\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;water&quot;,\\r\\n        &quot;elementType&quot;: &quot;all&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;hue&quot;: &quot;#7fc8ed&quot;\\r\\n            },\\r\\n            {\\r\\n                &quot;saturation&quot;: 55\\r\\n            },\\r\\n            {\\r\\n                &quot;lightness&quot;: -6\\r\\n            },\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;on&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;water&quot;,\\r\\n        &quot;elementType&quot;: &quot;labels&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;hue&quot;: &quot;#7fc8ed&quot;\\r\\n            },\\r\\n            {\\r\\n                &quot;saturation&quot;: 55\\r\\n            },\\r\\n            {\\r\\n                &quot;lightness&quot;: -6\\r\\n            },\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;off&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;poi.park&quot;,\\r\\n        &quot;elementType&quot;: &quot;geometry&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;hue&quot;: &quot;#83cead&quot;\\r\\n            },\\r\\n            {\\r\\n                &quot;saturation&quot;: 1\\r\\n            },\\r\\n            {\\r\\n                &quot;lightness&quot;: -15\\r\\n            },\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;on&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;landscape&quot;,\\r\\n        &quot;elementType&quot;: &quot;geometry&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;hue&quot;: &quot;#f3f4f4&quot;\\r\\n            },\\r\\n            {\\r\\n                &quot;saturation&quot;: -84\\r\\n            },\\r\\n            {\\r\\n                &quot;lightness&quot;: 59\\r\\n            },\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;on&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;landscape&quot;,\\r\\n        &quot;elementType&quot;: &quot;labels&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;hue&quot;: &quot;#ffffff&quot;\\r\\n            },\\r\\n            {\\r\\n                &quot;saturation&quot;: -100\\r\\n            },\\r\\n            {\\r\\n                &quot;lightness&quot;: 100\\r\\n            },\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;off&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;road&quot;,\\r\\n        &quot;elementType&quot;: &quot;geometry&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;hue&quot;: &quot;#ffffff&quot;\\r\\n            },\\r\\n            {\\r\\n                &quot;saturation&quot;: -100\\r\\n            },\\r\\n            {\\r\\n                &quot;lightness&quot;: 100\\r\\n            },\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;on&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;road&quot;,\\r\\n        &quot;elementType&quot;: &quot;labels&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;hue&quot;: &quot;#bbbbbb&quot;\\r\\n            },\\r\\n            {\\r\\n                &quot;saturation&quot;: -100\\r\\n            },\\r\\n            {\\r\\n                &quot;lightness&quot;: 26\\r\\n            },\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;on&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;road.arterial&quot;,\\r\\n        &quot;elementType&quot;: &quot;geometry&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;hue&quot;: &quot;#ffcc00&quot;\\r\\n            },\\r\\n            {\\r\\n                &quot;saturation&quot;: 100\\r\\n            },\\r\\n            {\\r\\n                &quot;lightness&quot;: -35\\r\\n            },\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;simplified&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;road.highway&quot;,\\r\\n        &quot;elementType&quot;: &quot;geometry&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;hue&quot;: &quot;#ffcc00&quot;\\r\\n            },\\r\\n            {\\r\\n                &quot;saturation&quot;: 100\\r\\n            },\\r\\n            {\\r\\n                &quot;lightness&quot;: -22\\r\\n            },\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;on&quot;\\r\\n            }\\r\\n        ]\\r\\n    },\\r\\n    {\\r\\n        &quot;featureType&quot;: &quot;poi.school&quot;,\\r\\n        &quot;elementType&quot;: &quot;all&quot;,\\r\\n        &quot;stylers&quot;: [\\r\\n            {\\r\\n                &quot;hue&quot;: &quot;#d7e4e4&quot;\\r\\n            },\\r\\n            {\\r\\n                &quot;saturation&quot;: -60\\r\\n            },\\r\\n            {\\r\\n                &quot;lightness&quot;: 23\\r\\n            },\\r\\n            {\\r\\n                &quot;visibility&quot;: &quot;on&quot;\\r\\n            }\\r\\n        ]\\r\\n    }\\r\\n]\",\"jetimpex_google_map_disable_ui\":\"false\",\"jetimpex_google_map_scrollwheel\":\"false\",\"jetimpex_google_map_draggable\":\"false\",\"jetimpex_google_map_marker\":\"catalog\\/marker_map.png\",\"jetimpex_google_map_marker_active\":\"catalog\\/marker_map_active.png\",\"jetimpex_google_map_marker_width\":\"45\",\"jetimpex_google_map_marker_height\":\"45\"}'),
(36, 'Slideshow', 'jetimpex_slideshow', '{\"name\":\"Slideshow\",\"status\":\"1\",\"width\":\"1170\",\"height\":\"303\",\"min_height\":\"303\",\"effect\":\"1\",\"speed\":\"800\",\"autoplay\":\"1\",\"keyboard_control\":\"0\",\"mousewheel_control\":\"0\",\"mousewheel_release_on_edges\":\"0\",\"next_button\":\"0\",\"prev_button\":\"0\",\"pagination\":\"1\",\"pagination_clickable\":\"1\",\"pagination_bullet_render\":\"0\",\"scrollbar\":\"0\",\"scrollbar_draggable\":\"0\",\"loop\":\"1\",\"slides\":[{\"slide_type\":\"0\",\"video_loop\":\"0\",\"video_autoplay\":\"0\",\"video_playback_rate\":\"\",\"video_muted\":\"1\",\"video_volume\":\"\",\"image\":\"catalog\\/slide-1.jpg\",\"title\":{\"1\":\"slide-1\",\"2\":\"slide-1\",\"3\":\"slide-1\"},\"description\":{\"1\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"2\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"3\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"},\"link\":\"\"},{\"slide_type\":\"0\",\"video_loop\":\"0\",\"video_autoplay\":\"0\",\"video_playback_rate\":\"\",\"video_muted\":\"1\",\"video_volume\":\"\",\"image\":\"catalog\\/slide-2.jpg\",\"title\":{\"1\":\"slide-2\",\"2\":\"slide-2\",\"3\":\"slide-2\"},\"description\":{\"1\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"2\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"3\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"},\"link\":\"\"},{\"slide_type\":\"0\",\"video_loop\":\"0\",\"video_autoplay\":\"0\",\"video_playback_rate\":\"\",\"video_muted\":\"1\",\"video_volume\":\"\",\"image\":\"catalog\\/slide-3.jpg\",\"title\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"},\"description\":{\"1\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"2\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"3\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"},\"link\":\"\"}]}'),
(46, 'Banners', 'banner', '{\"name\":\"Banners\",\"banner_id\":\"9\",\"width\":\"418\",\"height\":\"128\",\"status\":\"1\"}'),
(48, 'Category', 'jetimpex_category', '{\"name\":\"Category\",\"status\":\"1\"}'),
(39, 'Latest', 'latest', '{\"name\":\"Latest\",\"limit\":\"3\",\"width\":\"270\",\"height\":\"300\",\"status\":\"1\"}'),
(40, 'Newsletter', 'jetimpex_newsletter', '{\"name\":\"Newsletter\",\"status\":\"1\",\"jetimpex_newsletter_description\":{\"1\":{\"description\":\"\"},\"2\":{\"description\":\"\"},\"3\":{\"description\":\"\"}}}'),
(41, 'Footer Links Information', 'jetimpex_footer_links', '{\"name\":\"Footer Links Information\",\"type\":\"0\",\"status\":\"1\"}'),
(42, 'Footer Links My account', 'jetimpex_footer_links', '{\"name\":\"Footer Links My account\",\"type\":\"1\",\"status\":\"1\"}'),
(43, 'Footer Links Contact us', 'jetimpex_footer_links', '{\"name\":\"Footer Links Contact us\",\"type\":\"2\",\"status\":\"1\"}'),
(44, 'Social List', 'jetimpex_social_list', '{\"name\":\"Social List\",\"status\":\"1\",\"title\":{\"1\":\"Follow Us\",\"2\":\"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\\u043a\\u0430\",\"3\":\"Folge uns\"},\"description\":{\"1\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"2\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"3\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"},\"socials\":{\"1\":{\"1\":{\"name\":\"Facebook\",\"link\":\"\\/\\/www.facebook.com\\/TemplateMonster\",\"css\":\"\"},\"2\":{\"name\":\"Twitter\",\"link\":\"\\/\\/twitter.com\\/templatemonster\",\"css\":\"\"},\"3\":{\"name\":\"Rss\",\"link\":\"\\/\\/www.templatemonster.com\\/rss-survey.php#gref\",\"css\":\"\"}},\"2\":{\"1\":{\"name\":\"Facebook\",\"link\":\"\\/\\/www.facebook.com\\/TemplateMonster\",\"css\":\"\"},\"2\":{\"name\":\"Twitter\",\"link\":\"\\/\\/twitter.com\\/templatemonster\",\"css\":\"\"},\"3\":{\"name\":\"Rss\",\"link\":\"\\/\\/www.templatemonster.com\\/rss-survey.php#gref\",\"css\":\"\"}},\"3\":{\"1\":{\"name\":\"Facebook\",\"link\":\"\\/\\/www.facebook.com\\/TemplateMonster\",\"css\":\"\"},\"2\":{\"name\":\"Twitter\",\"link\":\"\\/\\/twitter.com\\/templatemonster\",\"css\":\"\"},\"3\":{\"name\":\"Rss\",\"link\":\"\\/\\/www.templatemonster.com\\/rss-survey.php#gref\",\"css\":\"\"}}}}'),
(49, 'Specials', 'special', '{\"name\":\"Specials\",\"limit\":\"1\",\"width\":\"270\",\"height\":\"300\",\"status\":\"1\"}'),
(50, 'Bestsellers', 'bestseller', '{\"name\":\"Bestsellers\",\"limit\":\"1\",\"width\":\"270\",\"height\":\"300\",\"status\":\"1\"}'),
(45, 'Banner Sale', 'banner', '{\"name\":\"Banner Sale\",\"banner_id\":\"7\",\"width\":\"270\",\"height\":\"287\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2923 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(2831, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_cart_height', '50', 0),
(2829, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_wishlist_height', '50', 0),
(2917, 0, 'config', 'config_error_display', '1', 0),
(2916, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(2907, 0, 'config', 'config_seo_url', '0', 0),
(2908, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(2914, 0, 'config', 'config_file_max_size', '300000', 0),
(2915, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(2909, 0, 'config', 'config_compression', '0', 0),
(2910, 0, 'config', 'config_secure', '0', 0),
(2911, 0, 'config', 'config_password', '1', 0),
(2912, 0, 'config', 'config_shared', '0', 0),
(2921, 0, 'config', 'config_encryption', 'Ayo58gSdguO3drxt0QDo841qi00quSjJn0Rg32pQ7qE63NQaBiOMTU2L9NNNZmmQtDDhbkKPoIaZpRODHpRaBJKYjRcH5SXhKWnZfS9OHn9fHEHnel1uHxsuRhOTq1mJm6IWOstYxv3w8AXivMslcqZNgpj6EXX2jFsFbcuKacF2KvYmVl90oBMBKvsJ1vE3T8xXwzLNn1oDFYnf4zNCX0fZZT2FLVbczSwpSI7INpk9lkYhtvg7429iobsuyBvG9vOlKFJzCYFcpK1EP9WGn3sqtebZEkIBMzOxPLyqSjDZPp7GBQyNpaGWALogphUWZslABhuzl5A9LLnAQtVeWSQhMiYujgqow13VIPmLoc4YJZN2P8yzgNawQ1p74wsIKkBAdNz7rBucpopEYQosTTtmroIgEQmdD5fWxmPd399c7QPhrrBVutrE9jq2AGQ5Ax4UdN6DnkAaKvOn8AQIRHRLrRL0kiCPpUx9OM7unczJkGsx80V3bOorgQxkkHDxuTiyewwUm3XS6tkPRvtU60JuWllmXHbj7MU4JZBbLwraLTze2nz48Jd3XXgSQFNaDwFIBPBUDdXN1WnDCPxBjwl4rznfMF2RIRS68HMgxustHZAfHSjXl2y529QJdYS7MmQARdNw8ZsLsgttheEVgiFcotVBTQ94Ill6lbOCvJD3LxFaIXdmDhYmX5p8a9GTbYfoFPmja15Ofw9isz5O6wn76XuLdP6S05HJWZf8rVBgwiIh07wnX8up26duU7DYe8eCdXBOiC5vNJuitBJZbrf40UGwvhB0YA7oX8SbUCFzoDOJ5C0GreYajaXLSPh2Xc9w6NBprTb96grbCgntRPE8y5kwhBIgoZhHkkzhetbNlLpi51vWAENWP98YVTLbS62ujTcNDuJxxrxndgJJbc1wrqteRAiAxVALjYk7scNT2RUjiq9gXeXW4dTNgKdKaYJjbmGbiyCsXYaaACbf9F53fQyXkRHueNco50aBDvEoAJd7qpOCVxCS8Zm720Zc', 0),
(2906, 0, 'config', 'config_maintenance', '0', 0),
(2905, 0, 'config', 'config_mail_alert_email', '', 0),
(2904, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(2903, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(2902, 0, 'config', 'config_mail_smtp_port', '25', 0),
(2901, 0, 'config', 'config_mail_smtp_password', '', 0),
(2900, 0, 'config', 'config_mail_smtp_username', '', 0),
(2899, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(2898, 0, 'config', 'config_mail_parameter', '', 0),
(2897, 0, 'config', 'config_mail_engine', 'mail', 0),
(2896, 0, 'config', 'config_icon', 'catalog/favicon.png', 0),
(2895, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(2893, 0, 'config', 'config_captcha', '', 0),
(2894, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(2892, 0, 'config', 'config_return_status_id', '2', 0),
(2891, 0, 'config', 'config_return_id', '0', 0),
(2890, 0, 'config', 'config_affiliate_id', '4', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(2830, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_cart_width', '50', 0),
(2828, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_wishlist_width', '50', 0),
(2827, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_compare_height', '300', 0),
(2826, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_compare_width', '270', 0),
(2825, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_related_height', '300', 0),
(2824, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_related_width', '270', 0),
(2823, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_additional_height', '133', 0),
(2822, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_additional_width', '133', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(228, 0, 'developer', 'developer_theme', '0', 0),
(2821, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_product_height', '300', 0),
(2820, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_product_width', '270', 0),
(229, 0, 'developer', 'developer_sass', '1', 0),
(2819, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_popup_height', '1000', 0),
(2818, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_popup_width', '1000', 0),
(2817, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_thumb_height', '637', 0),
(2816, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_thumb_width', '637', 0),
(2815, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_category_height', '225', 0),
(2889, 0, 'config', 'config_affiliate_commission', '5', 0),
(2888, 0, 'config', 'config_affiliate_auto', '0', 0),
(2887, 0, 'config', 'config_affiliate_approval', '0', 0),
(2886, 0, 'config', 'config_affiliate_group_id', '1', 0),
(2885, 0, 'config', 'config_stock_checkout', '0', 0),
(2884, 0, 'config', 'config_stock_warning', '0', 0),
(2814, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_category_width', '225', 0),
(2813, 0, 'theme_jetimpex783', 'theme_jetimpex783_simple_blog_share_social_site', '1', 0),
(2883, 0, 'config', 'config_stock_display', '0', 0),
(2922, 0, 'config', 'config_api_id', '6', 0),
(2880, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(2881, 0, 'config', 'config_fraud_status_id', '7', 0),
(2878, 0, 'config', 'config_order_status_id', '1', 0),
(2879, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(2877, 0, 'config', 'config_checkout_id', '5', 0),
(2876, 0, 'config', 'config_checkout_guest', '1', 0),
(2875, 0, 'config', 'config_cart_weight', '1', 0),
(2874, 0, 'config', 'config_invoice_prefix', 'INV-2019-00', 0),
(2873, 0, 'config', 'config_account_id', '3', 0),
(2872, 0, 'config', 'config_login_attempts', '5', 0),
(2871, 0, 'config', 'config_customer_price', '0', 0),
(2870, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(2868, 0, 'config', 'config_customer_search', '0', 0),
(2812, 0, 'theme_jetimpex783', 'theme_jetimpex783_simple_blog_related_articles', '1', 0),
(2869, 0, 'config', 'config_customer_group_id', '1', 0),
(1963, 0, 'module_jetimpex_color_switcher', 'module_jetimpex_color_switcher_status', '1', 0),
(1964, 0, 'module_jetimpex_color_switcher', 'module_jetimpex_color_switcher_scheme', 'color_scheme_1', 0),
(2866, 0, 'config', 'config_customer_online', '0', 0),
(2867, 0, 'config', 'config_customer_activity', '0', 0),
(2865, 0, 'config', 'config_tax_customer', 'shipping', 0),
(2864, 0, 'config', 'config_tax_default', 'shipping', 0),
(2863, 0, 'config', 'config_tax', '0', 0),
(2862, 0, 'config', 'config_voucher_max', '1000', 0),
(2861, 0, 'config', 'config_voucher_min', '1', 0),
(2860, 0, 'config', 'config_review_guest', '1', 0),
(2858, 0, 'config', 'config_limit_admin', '30', 0),
(2859, 0, 'config', 'config_review_status', '1', 0),
(2857, 0, 'config', 'config_product_count', '0', 0),
(2856, 0, 'config', 'config_weight_class_id', '1', 0),
(2855, 0, 'config', 'config_length_class_id', '1', 0),
(2854, 0, 'config', 'config_currency_auto', '1', 0),
(2853, 0, 'config', 'config_currency', 'USD', 0),
(2851, 0, 'config', 'config_language', 'en-gb', 0),
(2852, 0, 'config', 'config_admin_language', 'en-gb', 0),
(2138, 0, 'module_filter', 'module_filter_status', '1', 0),
(2811, 0, 'theme_jetimpex783', 'theme_jetimpex783_simple_blog_author_information', '1', 0),
(2810, 0, 'theme_jetimpex783', 'theme_jetimpex783_simple_blog_comment_auto_approval', '0', 0),
(2808, 0, 'theme_jetimpex783', 'theme_jetimpex783_simple_blog_limit', '5', 0),
(2809, 0, 'theme_jetimpex783', 'theme_jetimpex783_simple_blog_description_limit', '200', 0),
(2807, 0, 'theme_jetimpex783', 'theme_jetimpex783_simple_blog_status', '1', 0),
(2806, 0, 'theme_jetimpex783', 'theme_jetimpex783_product_description_length', '100', 0),
(2805, 0, 'theme_jetimpex783', 'theme_jetimpex783_product_limit', '6', 0),
(2804, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_quickview_height', '1108', 0),
(2803, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_quickview_width', '868', 0),
(2801, 0, 'theme_jetimpex783', 'theme_jetimpex783_label_new_limit', '5', 0),
(2802, 0, 'theme_jetimpex783', 'theme_jetimpex783_product_zoom_type', '0', 0),
(2848, 0, 'config', 'config_comment', 'We are glad to hear from you', 0),
(2849, 0, 'config', 'config_country_id', '222', 0),
(2850, 0, 'config', 'config_zone_id', '3563', 0),
(2847, 0, 'config', 'config_open', '7 Days a week from 9:00 am to 7:00 pm', 0),
(2846, 0, 'config', 'config_image', 'catalog/logo.png', 0),
(2845, 0, 'config', 'config_fax', '800-2345-6790', 0),
(2844, 0, 'config', 'config_telephone', '0123-456-789', 0),
(2842, 0, 'config', 'config_geocode', '40.6700, -73.9400', 0),
(2920, 0, 'config', 'config_email', 'admin@admin.com', 0),
(2841, 0, 'config', 'config_address', 'My Company , 4578 Marmora Road,\r\nGlasgow D04 89GR', 0),
(2840, 0, 'config', 'config_owner', 'Auto Point', 0),
(2839, 0, 'config', 'config_name', 'Auto Point', 0),
(2836, 0, 'config', 'config_meta_keyword', '', 0),
(2837, 0, 'config', 'config_theme', 'jetimpex783', 0),
(2838, 0, 'config', 'config_layout_id', '4', 0),
(2835, 0, 'config', 'config_meta_description', 'Auto Point', 0),
(2834, 0, 'config', 'config_meta_title', 'Auto Point', 0),
(2800, 0, 'theme_jetimpex783', 'theme_jetimpex783_label_new', '1', 0),
(2799, 0, 'theme_jetimpex783', 'theme_jetimpex783_label_discount', '0', 0),
(2798, 0, 'theme_jetimpex783', 'theme_jetimpex783_label_sale', '1', 0),
(2797, 0, 'theme_jetimpex783', 'theme_jetimpex783_page_direction', 'ltr', 0),
(2796, 0, 'theme_jetimpex783', 'theme_jetimpex783_responsive', '0', 0),
(2795, 0, 'theme_jetimpex783', 'theme_jetimpex783_status', '1', 0),
(2794, 0, 'theme_jetimpex783', 'theme_jetimpex783_directory', 'jetimpex783', 0),
(2832, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_location_width', '199', 0),
(2833, 0, 'theme_jetimpex783', 'theme_jetimpex783_image_location_height', '25', 0),
(2918, 0, 'config', 'config_error_log', '1', 0),
(2919, 0, 'config', 'config_error_filename', 'error.log', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_article`
--

DROP TABLE IF EXISTS `oc_simple_blog_article`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article` (
  `simple_blog_article_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_author_id` int(16) NOT NULL,
  `allow_comment` tinyint(1) NOT NULL,
  `image` mediumtext NOT NULL,
  `featured_image` mediumtext NOT NULL,
  `article_related_method` varchar(64) NOT NULL,
  `article_related_option` mediumtext NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_article`
--

INSERT INTO `oc_simple_blog_article` (`simple_blog_article_id`, `simple_blog_author_id`, `allow_comment`, `image`, `featured_image`, `article_related_method`, `article_related_option`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(1, 1, 1, '', 'catalog/blog/post-1.jpg', 'product_wise', '', 0, 1, '2015-09-16 17:26:55', '2017-09-22 14:44:13'),
(2, 1, 1, '', 'catalog/blog/post-2.jpg', 'product_wise', '', 1, 1, '2015-09-17 10:25:42', '2017-09-22 14:44:47'),
(3, 2, 1, '', 'catalog/blog/post-3.jpg', 'category_wise', '', 2, 1, '2015-09-17 10:28:08', '2017-09-22 14:45:08'),
(4, 3, 1, '', 'catalog/blog/post-4.jpg', 'manufacturer_wise', '', 3, 1, '2015-09-21 16:51:28', '2017-09-22 14:45:28'),
(5, 3, 1, '', 'catalog/blog/post-5.jpg', 'category_wise', '', 4, 1, '2015-09-21 16:53:36', '2017-09-22 14:45:56'),
(6, 4, 1, '', 'catalog/blog/post-6.jpg', 'product_wise', '', 5, 1, '2015-09-21 16:55:11', '2017-09-22 14:46:34'),
(7, 4, 1, '', 'catalog/blog/post-7.jpg', 'product_wise', '', 6, 1, '2015-09-21 16:57:06', '2017-09-22 14:47:00'),
(8, 2, 1, '', 'catalog/blog/post-8.jpg', 'product_wise', '', 7, 1, '2015-09-21 16:59:22', '2017-09-22 14:47:20'),
(9, 1, 1, '', 'catalog/blog/post-9.jpg', 'product_wise', '', 8, 1, '2015-09-21 17:01:01', '2017-09-22 16:35:08'),
(10, 1, 1, '', 'catalog/blog/post-10.jpg', 'product_wise', '', 9, 1, '2015-10-13 15:07:26', '2017-09-22 14:49:42');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_article_description`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_description`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_description` (
  `simple_blog_article_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `article_title` varchar(256) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  PRIMARY KEY (`simple_blog_article_description_id`)
) ENGINE=MyISAM AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_article_description`
--

INSERT INTO `oc_simple_blog_article_description` (`simple_blog_article_description_id`, `simple_blog_article_id`, `language_id`, `article_title`, `description`, `meta_description`, `meta_keyword`) VALUES
(266, 2, 2, 'Believe in the Business of Your Dreams  ', '&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;  ', '  ', ''),
(272, 4, 2, 'Beautiful Rumi Quotes that are Worth Reading ', '&lt;p&gt;Rumi, is the most popular Sufi poet in the world. His work is not only deep and intense, but also very ethereal. His poetry often stirs an emotion never touched and shows a facet never seen. This Buzzle article has a collection of some beautiful Rumi quotes that are worth reading, without which, life would literally feel quite disregarded.&lt;/p&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;As you start to walk on the way, the way appears.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Let yourself be silently drawn by the strange pull of what you really love. It will not lead you astray.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Two there are who are never satisfied -- the lover of the world and the lover of knowledge.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;What you seek is seeking you.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t be satisfied with stories, how things have gone with others. Unfold your own myth.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Raise your words, not voice. It is rain that grows flowers, not thunder.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;You are not a drop in the ocean. You are the entire ocean in a drop.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Do you know what you are? You are a manuscript oƒ a divine letter. You are a mirror reflecting a noble face. This universe is not outside of you. Look inside yourself; everything that you want, you are already that.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t grieve. Anything you lose comes round in another form.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.&quot;\r\n&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Stop acting so small. You are the universe in ecstatic motion.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Forget safety. Live where you fear to live. Destroy your reputation. Be notorious.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Start a huge, foolish project, like Noah...it makes absolutely no difference what people think of you.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;When you go through a hard period, when everything seems to oppose you, ... When you feel you cannot even bear one more minute, NEVER GIVE UP! Because it is the time and place that the course will divert!&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n\r\n ', ' ', ''),
(278, 6, 2, 'Four Types of Verbal Communication ', '&lt;p&gt;Verbal communication include sounds, words, language, and speech. Speaking is an effective way of communicating\r\n       and helps in expressing our emotions in words. This form of communication is further classified into four types,\r\n       which are:\r\n    &lt;/p&gt;\r\n    &lt;ol&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Intrapersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication is extremely private and restricted to ourselves. It includes the silent\r\n               conversations we have with ourselves, wherein we juggle roles between the sender and receiver who are\r\n               processing our thoughts and actions. This process of communication when analyzed can either be conveyed\r\n               verbally to someone or stay confined as thoughts.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Interpersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication takes place between two individuals and is thus a one-on-one conversation.\r\n               Here, the two individuals involved will swap their roles of sender and receiver in order to communicate\r\n               in a clearer manner.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Small Group Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication can take place only when there are more than two people involved. Here the\r\n               number of people will be small enough to allow each participant to interact and converse with the rest.\r\n               Press conferences, board meetings, and team meetings are examples of group communication. Unless a\r\n               specific issue is being discussed, small group discussions can become chaotic and difficult to interpret\r\n               by everybody. This lag in understanding information completely can result in miscommunication.\r\n            &lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Public Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication takes place when one individual addresses a large gathering of people.\r\n               Election campaigns and public speeches are example of this type of communication. In such cases, there is\r\n               usually a single sender of information and several receivers who are being addressed.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n    &lt;/ol&gt; ', ' ', ''),
(277, 6, 1, 'Four Types of Verbal Communication ', '&lt;p&gt;Verbal communication include sounds, words, language, and speech. Speaking is an effective way of communicating\r\n       and helps in expressing our emotions in words. This form of communication is further classified into four types,\r\n       which are:\r\n    &lt;/p&gt;\r\n    &lt;ol&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Intrapersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication is extremely private and restricted to ourselves. It includes the silent\r\n               conversations we have with ourselves, wherein we juggle roles between the sender and receiver who are\r\n               processing our thoughts and actions. This process of communication when analyzed can either be conveyed\r\n               verbally to someone or stay confined as thoughts.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Interpersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication takes place between two individuals and is thus a one-on-one conversation.\r\n               Here, the two individuals involved will swap their roles of sender and receiver in order to communicate\r\n               in a clearer manner.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Small Group Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication can take place only when there are more than two people involved. Here the\r\n               number of people will be small enough to allow each participant to interact and converse with the rest.\r\n               Press conferences, board meetings, and team meetings are examples of group communication. Unless a\r\n               specific issue is being discussed, small group discussions can become chaotic and difficult to interpret\r\n               by everybody. This lag in understanding information completely can result in miscommunication.\r\n            &lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Public Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication takes place when one individual addresses a large gathering of people.\r\n               Election campaigns and public speeches are example of this type of communication. In such cases, there is\r\n               usually a single sender of information and several receivers who are being addressed.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n    &lt;/ol&gt; ', ' ', ''),
(269, 3, 2, 'Impact - The Heart of Business ', '&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt; ', ' ', ''),
(268, 3, 1, 'Impact - The Heart of Business ', '&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt; ', ' ', ''),
(281, 7, 2, 'Proper color solutions for the office ', '&lt;p&gt;When it comes to remodeling an office, one of the most important aspects is painting. Any shade of paint can\r\n       change the complete look of a room as a color has an ability to change a drab and boring room into a stunning\r\n       one. Many people prefer to paint their homes in serene colors as it relaxes the mind. There are many hues of\r\n       colors to choose from that match the atmosphere of a room.&lt;/p&gt;\r\n\r\n    &lt;p&gt;An office is a place where many people come and go. Choose some paint colors that will stimulate the employees,\r\n       relax the customers and make them feel welcome. Here are some ideas for interior paint colors and combinations to\r\n       remodel your office and make it look more appealing to the vision.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Avoid using white, as this color gives a very sterile look to the walls. Remember a shade of color can make a\r\n       room look large or small. So, it is better to avoid black or dark colors that will give off a repulsive look to\r\n       your office.&lt;/p&gt;\r\n\r\n    &lt;p&gt;The popular choice of paint colors that will give a soothing and inviting look to your office are beige, tan,\r\n       light yellow and some shades of blue.&lt;/p&gt;\r\n\r\n    &lt;p&gt;When you choose paint colors for your office make sure that these colors have a resemblance to the flooring and\r\n       office furniture.&lt;/p&gt;\r\n\r\n    &lt;p&gt;These were some tips for choosing paint colors. Before you paint the walls of the room, always paint a small\r\n       portion of the wall to check how it looks. If you are satisfied with the result, you can go ahead with the task,\r\n       or else you can always try other combinations. Whatever color you choose, make sure that it serves its purpose\r\n       and brightens up the atmosphere of the room. Happy painting!&lt;/p&gt; ', ' ', ''),
(280, 7, 1, 'Proper color solutions for the office ', '&lt;p&gt;When it comes to remodeling an office, one of the most important aspects is painting. Any shade of paint can\r\n       change the complete look of a room as a color has an ability to change a drab and boring room into a stunning\r\n       one. Many people prefer to paint their homes in serene colors as it relaxes the mind. There are many hues of\r\n       colors to choose from that match the atmosphere of a room.&lt;/p&gt;\r\n\r\n    &lt;p&gt;An office is a place where many people come and go. Choose some paint colors that will stimulate the employees,\r\n       relax the customers and make them feel welcome. Here are some ideas for interior paint colors and combinations to\r\n       remodel your office and make it look more appealing to the vision.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Avoid using white, as this color gives a very sterile look to the walls. Remember a shade of color can make a\r\n       room look large or small. So, it is better to avoid black or dark colors that will give off a repulsive look to\r\n       your office.&lt;/p&gt;\r\n\r\n    &lt;p&gt;The popular choice of paint colors that will give a soothing and inviting look to your office are beige, tan,\r\n       light yellow and some shades of blue.&lt;/p&gt;\r\n\r\n    &lt;p&gt;When you choose paint colors for your office make sure that these colors have a resemblance to the flooring and\r\n       office furniture.&lt;/p&gt;\r\n\r\n    &lt;p&gt;These were some tips for choosing paint colors. Before you paint the walls of the room, always paint a small\r\n       portion of the wall to check how it looks. If you are satisfied with the result, you can go ahead with the task,\r\n       or else you can always try other combinations. Whatever color you choose, make sure that it serves its purpose\r\n       and brightens up the atmosphere of the room. Happy painting!&lt;/p&gt; ', ' ', ''),
(284, 8, 2, '5 Most Common Mistakes New Managers Make ', '&lt;p&gt;Learn which five most common mistakes a new manager is likely to make, and how to avoid them.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No.1 - Who\'s the Boss?&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;Some of your subordinates will be young and new, eager to follow you. But, the experienced ones might be more\r\n       resistant to your directives. especially if it comes across as an order, disregarding their experience or\r\n       suggestions. Though, being the one with the responsibility, you also need to assert your authority, and make sure\r\n       your employees respect you and follow you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Your subordinates have a working style of their own, and it will not work well to dictate your ways on them. Stay\r\n       cool as long as they are committed to the work, compliance is another matter. Set targets and deadlines, but do\r\n       not interfere in their work, especially if they are long-standing employees in the company, even though you are\r\n       the one in the upper position.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 2 - I Want to Be the Cool Guy&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;While understanding your subordinates\' viewpoint and respecting their opinions is important, it is another thing\r\n       if you are letting them run the show or take it easy. It is you, after all, who will have to explain things when\r\n       the performance falls.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Everyone hates to be the bad guy, that too, when you are new. But you have to find a balance between\r\n       micromanaging and giving no direction at all. Keep your mind open for suggestions, listen to everyone, but\r\n       ultimately you have to decide on the final direction your team/company takes. Also, do not excuse any slack\r\n       behavior. Tardiness or frequent leaves should not be taken lightly.&lt;/p&gt;\r\n\r\n\r\n    &lt;h5&gt;Mistake No. 3 - Setting Uniform, Inflexible Rules&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;If an employee is frequently late or absent, take him/her to task, but first, do understand the reasons behind\r\n       this issue. Some of them might be suffering from a health condition, or they might have a sick relative at home.\r\n       Same goes for other aspects of the job too.\r\n       While focusing on performance and target, it is easy to forget that you are dealing with people - not processes\r\n       or software which are programmed to run in a certain way. &lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Understand that every employee is different, and will respond differently to authority or pressure. Rather than\r\n       take offense, it is best to find a way around.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 4 - Not Being Clear With Instructions&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;A few months? What exactly do you mean by few - is it two or six? As the planner, you might have a clear, precise\r\n       idea of what you want. But you also need to convey that to your subordinates. Being too vague can leave them\r\n       confused and lose trust in you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Make a clear, concise, and precise guideline. Give the employees fixed goals and targets. Numbers, not\r\n       approximates. They need to have a proper idea of how their performance will be measured, to stay motivated and\r\n       work efficiently and smartly.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 5 - Overestimating Yourself and Your Team&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;New managers are often eager and overenthusiastic. Free from the crutches of their B-school or the restrictions\r\n       of their previous job, they want to prove a lot. Brimming with new ideas, they just can\'t wait to implement them\r\n       and the processes that they learned. They want to bring about a positive change, and fast.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;This enthusiasm is very infectious, affecting the entire team, resulting in a boost in productivity and morale.\r\n       But, unfortunately, it also means that the goals they set are also unrealistically high. Other employees may take\r\n       time adjusting to the sudden changes a new manager and his new processes demand. Add to that, they both will need\r\n       to be perfected and tweaked till you get the expected results. So, set realistic goals, and accept that the new\r\n       processes might also result in losses.&lt;/p&gt; ', ' ', ''),
(300, 9, 3, 'Feeling Stressed? Try the One Joke per Day Therapy   ', '&lt;p&gt;There are so many elements today in our lives that make things more and more hectic by the day, and there hardly\r\n       seems to be any respite from the constantly mounting pressures and tough competition to stay ahead of everybody,\r\n       plan for the future, etc. However, this has also led to rising stress-related issues, blood pressure, etc. While\r\n       one cannot simply sit at home to avoid all this, a bit of humor has always helped in bringing cheer to one’s day.\r\n    &lt;/p&gt;\r\n\r\n    &lt;p&gt;Yes, it is true. Just one good joke in a day can actually relieve a high amount of stress, and make your hormones\r\n       come to their normal levels despite all the anxiety and pressures of the professional life. Think of it this way,\r\n       has not there been a day when you were told a joke by a friend or relative on the phone or via SMS, and you kept\r\n       on thinking about the same throughout the day, and had a great, stress-free working experience. You might also\r\n       have spread the cheer by telling the joke to your colleagues, thereby also brightening their day and bringing\r\n       some laughter in their lives. Is not this proof enough of what a great joke can do to your entire day?&lt;/p&gt;\r\n\r\n    &lt;p&gt;Presently, there are many sources from where one can get funny jokes, with the best one being the internet.\r\n       Clearly, there are quite a few of those who like to share their humorous side online, which is visible from the\r\n       great compilation of jokes that are available online. There are many kinds of redhead jokes, lawyer jokes, doctor\r\n       jokes, and so on, giving you ample variety in terms of choosing the kind of laugh you want to have according to\r\n       your taste.&lt;/p&gt;\r\n\r\n    &lt;p&gt;But one thing that must be kept in mind is that these jokes are completely in the spirit of humor, and should be\r\n       taken sportingly, and not personally. Remember, it takes only 7 muscles to smile, and 32 to frown, and the former\r\n       always gets a better reaction from the other person.&lt;/p&gt;   ', '          ', ''),
(275, 5, 2, 'How to Keep Your Heart Healthy ', '&lt;p&gt;So how to keep your heart healthy? With so many heart diseases on the rise, most health-conscious people strive\r\n       to\r\n       seek the answer to this question. This article attempts to help you find the answer.&lt;/p&gt;\r\n    &lt;h5&gt;Go Green&lt;/h5&gt;\r\n\r\n    &lt;p&gt;When we speak of heart, we cannot miss out on the importance and benefits of plant foods. Vegetables are an\r\n       excellent source of glutamic acid. It is a class of amino acid which helps keeping blood pressure at lower\r\n       levels; safe levels, so to say. What\'s more? Veggies lack cholesterol, fat and even calories, which otherwise\r\n       tend to be the common culprits for causing heart diseases. Not to mention, the amount of vitamins and minerals\r\n       that vegetables provide to the body do the most for health.\r\n\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Be Active&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Without the aid of daily exercise, maintaining a good overall health is just more than a daunting task. Exercises\r\n       not\r\n       only improve heart function, but also help in bringing down blood pressure, and cholesterol levels in the body. A\r\n       mere 30 minutes stroll daily does good for the heart, if not much. It is recommended that sprinting is more\r\n       beneficial for the heart, than jogging.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Reduce Oil&lt;/h5&gt;\r\n\r\n    &lt;p&gt;The next tip is about keeping oil from your diet. Although, you cannot avoid oil completely,\r\n       you can keep its consumption to a small amount. Oils are a storehouse of calories and contain\r\n       little nutrition. As they mostly comprise fat, they have all chances to lead to the\r\n       development of plaque in the arteries thus, giving rise to some nasty heart problems. However,\r\n       not all types of oil are unhealthy. Fish oil contains omega-3 fatty acids, which not only help\r\n       in preventing cardiovascular diseases, but also reduce instances of heart attack. According to\r\n       a study published in the Journal of the American College of Cardiology, a group of patients\r\n       with cardiovascular disease had 30% less likelihood of heart attack because of omega-3 fatty\r\n       acids. Best sources include salmon, mackerel and herring. Flaxseed, walnuts, and soybeans are\r\n       also good sources.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Cut the Smoke&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If you think you cannot shun the habit of smoking, then you might as well know that you\r\n       cannot do anything good for your heart. One of the most severe risks of smoking relates to\r\n       heart diseases in almost every smoker. Quit smoking, and you have done half the job in\r\n       keeping your heart healthy!&lt;/p&gt;\r\n    &lt;h5&gt;Lose Weight&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If your figure is slim, and belly\r\n       flat, then you may have less things\r\n       to worry about heart diseases. I am\r\n       talking about weight loss. Being\r\n       overweight puts extra load on the\r\n       heart thus, increases the risk of\r\n       heart conditions. So, consume less\r\n       sugary foods and more of fiber and\r\n       complex carbohydrates, and fruits and\r\n       vegetables. Maintaining a healthy\r\n       weight is one of the basic\r\n       necessities for a healthy heart\r\n       today.&lt;/p&gt;\r\n    &lt;h5&gt;Add More Fiber&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        Fiber exists in two major groups; soluble (dissolves in water) and insoluble (does not dissolve in water).\r\n        Although\r\n        both the types are beneficial to health, it is the former type that does way better to reduce cholesterol levels\r\n        in\r\n        the body. Due to its soluble nature, it binds with the cholesterol in the intestines thus, keep it from being\r\n        absorbed. This keeps the level of LDL and total cholesterol down, while not affecting the HDL cholesterol level\r\n        in\r\n        any way. All a healthy person requires is a serving of 5 to 10 grams or more of soluble fiber in a day to avail\r\n        this\r\n        benefit of low cholesterol. Foods rich in this fiber include apples, peas, kidney beans, prunes, etc.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Beware of Saturated Fats&lt;/h5&gt;\r\n\r\n    &lt;p&gt;It is important that you limit the amount of saturated and trans fats you consume\r\n       from your food. These spike cholesterol levels in the body thus, increasing the risk\r\n       of coronary artery disease. So avoid or limit consumption of food such as red meat,\r\n       dairy products, coconut oil, palm oil. These are rich in saturated fatty acids. To\r\n       avoid trans fats, eat less of fast foods, bakery products, snacks, crackers, and\r\n       margarines. Go for foods rich in healthy fats such as polyunsaturated and\r\n       monounsaturated fats.&lt;/p&gt;\r\n    &lt;h5&gt;Eat Less Salt&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Sodium is good for the body, but\r\n       in petty amounts. High salt intake\r\n       means high blood pressure, which\r\n       eventually points out to heart\r\n       conditions. When sodium starts\r\n       accumulating in the blood, it\r\n       attracts water which in turn,\r\n       increases the blood volume. Now to\r\n       keep this blood circulating\r\n       through the blood vessels, the\r\n       heart has to work harder thus,\r\n       causing high blood pressure. The\r\n       recommended amount of sodium in\r\n       the food per day must be less than\r\n       2300 milligrams.&lt;/p&gt;\r\n    &lt;h5&gt;Take the\r\n        Right\r\n        Medication&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        In most cases, heart diseases are also related to the use of drugs. So, it is important that you take medicines\r\n        as\r\n        prescribed by the doctors, or get them altered if necessary.&lt;/p&gt;&lt;h5&gt;Moderate Alcohol&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Drinking alcohol in moderate amounts does not harm the body. In fact, some studies show that moderate consumption\r\n       provides some benefits for the heart. However, the habit of drinking is analogous to walking on thin ice. It is\r\n       not\r\n       difficult for any one to step out of his limit, and become a heavy drinker. So, ensure that either you stick to\r\n       moderate drinking or you don\'t drink at all.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Manage Stress&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Stress has also been known to be one of the common culprits of heart problems. Any stressful\r\n       situation elevates blood pressure and this response takes its toll on the heart. So, keep\r\n       yourself relaxed by practicing meditation, yoga, and other relaxation techniques.&lt;/p&gt;\r\n\r\n    &lt;p&gt;\r\n        To conclude, make a note of the above methods, and keep them handy in case you find it difficult to recall them.\r\n        And\r\n        now I would like to take your leave, as I have some sprinting to do! Take care!&lt;/p&gt; ', ' ', ''),
(263, 1, 2, 'Establishing Your Brand on College Campuses  ', '&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;  ', '  ', ''),
(262, 1, 1, 'Establishing Your Brand on College Campuses  ', '&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;  ', '  ', ''),
(265, 2, 1, 'Believe in the Business of Your Dreams  ', '&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;  ', '  ', ''),
(271, 4, 1, 'Beautiful Rumi Quotes that are Worth Reading ', '&lt;p&gt;Rumi, is the most popular Sufi poet in the world. His work is not only deep and intense, but also very ethereal. His poetry often stirs an emotion never touched and shows a facet never seen. This Buzzle article has a collection of some beautiful Rumi quotes that are worth reading, without which, life would literally feel quite disregarded.&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;&lt;p&gt;&quot;As you start to walk on the way, the way appears.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Let yourself be silently drawn by the strange pull of what you really love. It will not lead you astray.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Two there are who are never satisfied -- the lover of the world and the lover of knowledge.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;What you seek is seeking you.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t be satisfied with stories, how things have gone with others. Unfold your own myth.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Raise your words, not voice. It is rain that grows flowers, not thunder.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;You are not a drop in the ocean. You are the entire ocean in a drop.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Do you know what you are? You are a manuscript oƒ a divine letter. You are a mirror reflecting a noble face. This universe is not outside of you. Look inside yourself; everything that you want, you are already that.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t grieve. Anything you lose comes round in another form.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.&quot;\r\n&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Stop acting so small. You are the universe in ecstatic motion.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Forget safety. Live where you fear to live. Destroy your reputation. Be notorious.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Start a huge, foolish project, like Noah...it makes absolutely no difference what people think of you.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;When you go through a hard period, when everything seems to oppose you, ... When you feel you cannot even bear one more minute, NEVER GIVE UP! Because it is the time and place that the course will divert!&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt; ', ' ', ''),
(274, 5, 1, 'How to Keep Your Heart Healthy ', '&lt;p&gt;So how to keep your heart healthy? With so many heart diseases on the rise, most health-conscious people strive\r\n       to\r\n       seek the answer to this question. This article attempts to help you find the answer.&lt;/p&gt;\r\n    &lt;h5&gt;Go Green&lt;/h5&gt;\r\n\r\n    &lt;p&gt;When we speak of heart, we cannot miss out on the importance and benefits of plant foods. Vegetables are an\r\n       excellent source of glutamic acid. It is a class of amino acid which helps keeping blood pressure at lower\r\n       levels; safe levels, so to say. What\'s more? Veggies lack cholesterol, fat and even calories, which otherwise\r\n       tend to be the common culprits for causing heart diseases. Not to mention, the amount of vitamins and minerals\r\n       that vegetables provide to the body do the most for health.\r\n\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Be Active&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Without the aid of daily exercise, maintaining a good overall health is just more than a daunting task. Exercises\r\n       not\r\n       only improve heart function, but also help in bringing down blood pressure, and cholesterol levels in the body. A\r\n       mere 30 minutes stroll daily does good for the heart, if not much. It is recommended that sprinting is more\r\n       beneficial for the heart, than jogging.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Reduce Oil&lt;/h5&gt;\r\n\r\n    &lt;p&gt;The next tip is about keeping oil from your diet. Although, you cannot avoid oil completely,\r\n       you can keep its consumption to a small amount. Oils are a storehouse of calories and contain\r\n       little nutrition. As they mostly comprise fat, they have all chances to lead to the\r\n       development of plaque in the arteries thus, giving rise to some nasty heart problems. However,\r\n       not all types of oil are unhealthy. Fish oil contains omega-3 fatty acids, which not only help\r\n       in preventing cardiovascular diseases, but also reduce instances of heart attack. According to\r\n       a study published in the Journal of the American College of Cardiology, a group of patients\r\n       with cardiovascular disease had 30% less likelihood of heart attack because of omega-3 fatty\r\n       acids. Best sources include salmon, mackerel and herring. Flaxseed, walnuts, and soybeans are\r\n       also good sources.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Cut the Smoke&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If you think you cannot shun the habit of smoking, then you might as well know that you\r\n       cannot do anything good for your heart. One of the most severe risks of smoking relates to\r\n       heart diseases in almost every smoker. Quit smoking, and you have done half the job in\r\n       keeping your heart healthy!&lt;/p&gt;\r\n    &lt;h5&gt;Lose Weight&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If your figure is slim, and belly\r\n       flat, then you may have less things\r\n       to worry about heart diseases. I am\r\n       talking about weight loss. Being\r\n       overweight puts extra load on the\r\n       heart thus, increases the risk of\r\n       heart conditions. So, consume less\r\n       sugary foods and more of fiber and\r\n       complex carbohydrates, and fruits and\r\n       vegetables. Maintaining a healthy\r\n       weight is one of the basic\r\n       necessities for a healthy heart\r\n       today.&lt;/p&gt;\r\n    &lt;h5&gt;Add More Fiber&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        Fiber exists in two major groups; soluble (dissolves in water) and insoluble (does not dissolve in water).\r\n        Although\r\n        both the types are beneficial to health, it is the former type that does way better to reduce cholesterol levels\r\n        in\r\n        the body. Due to its soluble nature, it binds with the cholesterol in the intestines thus, keep it from being\r\n        absorbed. This keeps the level of LDL and total cholesterol down, while not affecting the HDL cholesterol level\r\n        in\r\n        any way. All a healthy person requires is a serving of 5 to 10 grams or more of soluble fiber in a day to avail\r\n        this\r\n        benefit of low cholesterol. Foods rich in this fiber include apples, peas, kidney beans, prunes, etc.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Beware of Saturated Fats&lt;/h5&gt;\r\n\r\n    &lt;p&gt;It is important that you limit the amount of saturated and trans fats you consume\r\n       from your food. These spike cholesterol levels in the body thus, increasing the risk\r\n       of coronary artery disease. So avoid or limit consumption of food such as red meat,\r\n       dairy products, coconut oil, palm oil. These are rich in saturated fatty acids. To\r\n       avoid trans fats, eat less of fast foods, bakery products, snacks, crackers, and\r\n       margarines. Go for foods rich in healthy fats such as polyunsaturated and\r\n       monounsaturated fats.&lt;/p&gt;\r\n    &lt;h5&gt;Eat Less Salt&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Sodium is good for the body, but\r\n       in petty amounts. High salt intake\r\n       means high blood pressure, which\r\n       eventually points out to heart\r\n       conditions. When sodium starts\r\n       accumulating in the blood, it\r\n       attracts water which in turn,\r\n       increases the blood volume. Now to\r\n       keep this blood circulating\r\n       through the blood vessels, the\r\n       heart has to work harder thus,\r\n       causing high blood pressure. The\r\n       recommended amount of sodium in\r\n       the food per day must be less than\r\n       2300 milligrams.&lt;/p&gt;\r\n    &lt;h5&gt;Take the\r\n        Right\r\n        Medication&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        In most cases, heart diseases are also related to the use of drugs. So, it is important that you take medicines\r\n        as\r\n        prescribed by the doctors, or get them altered if necessary.&lt;/p&gt;&lt;h5&gt;Moderate Alcohol&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Drinking alcohol in moderate amounts does not harm the body. In fact, some studies show that moderate consumption\r\n       provides some benefits for the heart. However, the habit of drinking is analogous to walking on thin ice. It is\r\n       not\r\n       difficult for any one to step out of his limit, and become a heavy drinker. So, ensure that either you stick to\r\n       moderate drinking or you don\'t drink at all.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Manage Stress&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Stress has also been known to be one of the common culprits of heart problems. Any stressful\r\n       situation elevates blood pressure and this response takes its toll on the heart. So, keep\r\n       yourself relaxed by practicing meditation, yoga, and other relaxation techniques.&lt;/p&gt;\r\n\r\n    &lt;p&gt;\r\n        To conclude, make a note of the above methods, and keep them handy in case you find it difficult to recall them.\r\n        And\r\n        now I would like to take your leave, as I have some sprinting to do! Take care!&lt;/p&gt; ', ' ', '');
INSERT INTO `oc_simple_blog_article_description` (`simple_blog_article_description_id`, `simple_blog_article_id`, `language_id`, `article_title`, `description`, `meta_description`, `meta_keyword`) VALUES
(283, 8, 1, '5 Most Common Mistakes New Managers Make ', '&lt;p&gt;Learn which five most common mistakes a new manager is likely to make, and how to avoid them.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No.1 - Who\'s the Boss?&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;Some of your subordinates will be young and new, eager to follow you. But, the experienced ones might be more\r\n       resistant to your directives. especially if it comes across as an order, disregarding their experience or\r\n       suggestions. Though, being the one with the responsibility, you also need to assert your authority, and make sure\r\n       your employees respect you and follow you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Your subordinates have a working style of their own, and it will not work well to dictate your ways on them. Stay\r\n       cool as long as they are committed to the work, compliance is another matter. Set targets and deadlines, but do\r\n       not interfere in their work, especially if they are long-standing employees in the company, even though you are\r\n       the one in the upper position.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 2 - I Want to Be the Cool Guy&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;While understanding your subordinates\' viewpoint and respecting their opinions is important, it is another thing\r\n       if you are letting them run the show or take it easy. It is you, after all, who will have to explain things when\r\n       the performance falls.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Everyone hates to be the bad guy, that too, when you are new. But you have to find a balance between\r\n       micromanaging and giving no direction at all. Keep your mind open for suggestions, listen to everyone, but\r\n       ultimately you have to decide on the final direction your team/company takes. Also, do not excuse any slack\r\n       behavior. Tardiness or frequent leaves should not be taken lightly.&lt;/p&gt;\r\n\r\n\r\n    &lt;h5&gt;Mistake No. 3 - Setting Uniform, Inflexible Rules&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;If an employee is frequently late or absent, take him/her to task, but first, do understand the reasons behind\r\n       this issue. Some of them might be suffering from a health condition, or they might have a sick relative at home.\r\n       Same goes for other aspects of the job too.\r\n       While focusing on performance and target, it is easy to forget that you are dealing with people - not processes\r\n       or software which are programmed to run in a certain way. &lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Understand that every employee is different, and will respond differently to authority or pressure. Rather than\r\n       take offense, it is best to find a way around.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 4 - Not Being Clear With Instructions&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;A few months? What exactly do you mean by few - is it two or six? As the planner, you might have a clear, precise\r\n       idea of what you want. But you also need to convey that to your subordinates. Being too vague can leave them\r\n       confused and lose trust in you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Make a clear, concise, and precise guideline. Give the employees fixed goals and targets. Numbers, not\r\n       approximates. They need to have a proper idea of how their performance will be measured, to stay motivated and\r\n       work efficiently and smartly.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 5 - Overestimating Yourself and Your Team&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;New managers are often eager and overenthusiastic. Free from the crutches of their B-school or the restrictions\r\n       of their previous job, they want to prove a lot. Brimming with new ideas, they just can\'t wait to implement them\r\n       and the processes that they learned. They want to bring about a positive change, and fast.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;This enthusiasm is very infectious, affecting the entire team, resulting in a boost in productivity and morale.\r\n       But, unfortunately, it also means that the goals they set are also unrealistically high. Other employees may take\r\n       time adjusting to the sudden changes a new manager and his new processes demand. Add to that, they both will need\r\n       to be perfected and tweaked till you get the expected results. So, set realistic goals, and accept that the new\r\n       processes might also result in losses.&lt;/p&gt; ', ' ', ''),
(289, 10, 1, 'Going Green Is So Much Simpler Than Most People Think', '&lt;p&gt;An increasing number of people now want to do their part to save the planet due to the worsening problems caused by\r\n   global warming. Unfortunately, numerous people assume that going green is costly and time consuming. Read on to\r\n   discover several immediate things you can do to get on the path to living green.&lt;/p&gt;\r\n&lt;p&gt;Recycling is the top way to start. A lot of people continue to place glass and aluminum items in their normal garbage\r\n   even though recycling is not that hard to do today. In the US, it\'s not hard to locate a trash service that offers\r\n   glass and aluminum recycling choices. Many people still continue to discard these items even though recycling bins\r\n   are not hard to find. It merely takes a few minutes to wash off the cans and bottles before placing them into the\r\n   recycle bin.&lt;/p&gt;\r\n&lt;p&gt;Newspapers are other items that overburden our landfills. Virtually all people will merely take their daily paper and\r\n   toss it in the garbage when they are done with it. But, there are many other uses that you can get out of your\r\n   newsprint other than poring over it. Did you know that you can keep your windows clean using newspapers? If you\'re\r\n   tired of seeing small white fragments and streaks on your windowpanes after you clean them with paper towels and\r\n   cleaner, try to use old newspapers instead. Several community groups run regular paper drives. Merely compile all of\r\n   your old newspapers, put them in a stack, and see if the paper drive organizers will come to your location and pick\r\n   them up.&lt;/p&gt;\r\n&lt;p&gt;One more thing that could help you to start to live green is to begin walking a bit more. Lots of people routinely\r\n   drive short distances merely to buy one thing at their local corner market. If you just walk to the store, it can\r\n   take less time, because you won\'t have to locate a parking spot, but you will be saving money on gas and helping to\r\n   save planet Earth by not burning those fuels.&lt;/p&gt;\r\n&lt;p&gt;If you wish to save even more on gas, take the chance to carpool when you can and only mow your lawn two times a\r\n   month instead of weekly. A gorgeous lawn is good to have but skipping an additional week before you mow again\r\n   shouldn\'t significantly affect it. Using a manual push mower like those more normally used many, many years ago will\r\n   help to save the environment even more. Numerous hardware shops still carry this type of mower.\r\n&lt;/p&gt;\r\n&lt;p&gt;When people make up their mind to try green living, it\'s easy to make a few lifestyle modifications that will benefit\r\n   our environment. Likewise, you can find lots of info all over the Internet on other ways to start living green, you\r\n   only have to look for it.&lt;/p&gt;', '   ', ''),
(298, 9, 1, 'Feeling Stressed? Try the One Joke per Day Therapy   ', '&lt;p&gt;There are so many elements today in our lives that make things more and more hectic by the day, and there hardly\r\n       seems to be any respite from the constantly mounting pressures and tough competition to stay ahead of everybody,\r\n       plan for the future, etc. However, this has also led to rising stress-related issues, blood pressure, etc. While\r\n       one cannot simply sit at home to avoid all this, a bit of humor has always helped in bringing cheer to one’s day.\r\n    &lt;/p&gt;\r\n\r\n    &lt;p&gt;Yes, it is true. Just one good joke in a day can actually relieve a high amount of stress, and make your hormones\r\n       come to their normal levels despite all the anxiety and pressures of the professional life. Think of it this way,\r\n       has not there been a day when you were told a joke by a friend or relative on the phone or via SMS, and you kept\r\n       on thinking about the same throughout the day, and had a great, stress-free working experience. You might also\r\n       have spread the cheer by telling the joke to your colleagues, thereby also brightening their day and bringing\r\n       some laughter in their lives. Is not this proof enough of what a great joke can do to your entire day?&lt;/p&gt;\r\n\r\n    &lt;p&gt;Presently, there are many sources from where one can get funny jokes, with the best one being the internet.\r\n       Clearly, there are quite a few of those who like to share their humorous side online, which is visible from the\r\n       great compilation of jokes that are available online. There are many kinds of redhead jokes, lawyer jokes, doctor\r\n       jokes, and so on, giving you ample variety in terms of choosing the kind of laugh you want to have according to\r\n       your taste.&lt;/p&gt;\r\n\r\n    &lt;p&gt;But one thing that must be kept in mind is that these jokes are completely in the spirit of humor, and should be\r\n       taken sportingly, and not personally. Remember, it takes only 7 muscles to smile, and 32 to frown, and the former\r\n       always gets a better reaction from the other person.&lt;/p&gt;   ', '          ', ''),
(299, 9, 2, 'Feeling Stressed? Try the One Joke per Day Therapy   ', '&lt;p&gt;There are so many elements today in our lives that make things more and more hectic by the day, and there hardly\r\n       seems to be any respite from the constantly mounting pressures and tough competition to stay ahead of everybody,\r\n       plan for the future, etc. However, this has also led to rising stress-related issues, blood pressure, etc. While\r\n       one cannot simply sit at home to avoid all this, a bit of humor has always helped in bringing cheer to one’s day.\r\n    &lt;/p&gt;\r\n\r\n    &lt;p&gt;Yes, it is true. Just one good joke in a day can actually relieve a high amount of stress, and make your hormones\r\n       come to their normal levels despite all the anxiety and pressures of the professional life. Think of it this way,\r\n       has not there been a day when you were told a joke by a friend or relative on the phone or via SMS, and you kept\r\n       on thinking about the same throughout the day, and had a great, stress-free working experience. You might also\r\n       have spread the cheer by telling the joke to your colleagues, thereby also brightening their day and bringing\r\n       some laughter in their lives. Is not this proof enough of what a great joke can do to your entire day?&lt;/p&gt;\r\n\r\n    &lt;p&gt;Presently, there are many sources from where one can get funny jokes, with the best one being the internet.\r\n       Clearly, there are quite a few of those who like to share their humorous side online, which is visible from the\r\n       great compilation of jokes that are available online. There are many kinds of redhead jokes, lawyer jokes, doctor\r\n       jokes, and so on, giving you ample variety in terms of choosing the kind of laugh you want to have according to\r\n       your taste.&lt;/p&gt;\r\n\r\n    &lt;p&gt;But one thing that must be kept in mind is that these jokes are completely in the spirit of humor, and should be\r\n       taken sportingly, and not personally. Remember, it takes only 7 muscles to smile, and 32 to frown, and the former\r\n       always gets a better reaction from the other person.&lt;/p&gt;   ', '          ', ''),
(264, 1, 3, ' Establishing Your Brand on College Campuses  ', '&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;  ', '  ', ''),
(267, 2, 3, ' Believe in the Business of Your Dreams  ', '&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;  ', '  ', ''),
(270, 3, 3, ' Impact - The Heart of Business ', '&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt; ', ' ', ''),
(273, 4, 3, ' Beautiful Rumi Quotes that are Worth Reading ', '&lt;p&gt;Rumi, is the most popular Sufi poet in the world. His work is not only deep and intense, but also very ethereal. His poetry often stirs an emotion never touched and shows a facet never seen. This Buzzle article has a collection of some beautiful Rumi quotes that are worth reading, without which, life would literally feel quite disregarded.&lt;/p&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;As you start to walk on the way, the way appears.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Let yourself be silently drawn by the strange pull of what you really love. It will not lead you astray.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Two there are who are never satisfied -- the lover of the world and the lover of knowledge.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;What you seek is seeking you.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t be satisfied with stories, how things have gone with others. Unfold your own myth.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Raise your words, not voice. It is rain that grows flowers, not thunder.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;You are not a drop in the ocean. You are the entire ocean in a drop.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Do you know what you are? You are a manuscript oƒ a divine letter. You are a mirror reflecting a noble face. This universe is not outside of you. Look inside yourself; everything that you want, you are already that.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t grieve. Anything you lose comes round in another form.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.&quot;\r\n&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Stop acting so small. You are the universe in ecstatic motion.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Forget safety. Live where you fear to live. Destroy your reputation. Be notorious.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Start a huge, foolish project, like Noah...it makes absolutely no difference what people think of you.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;When you go through a hard period, when everything seems to oppose you, ... When you feel you cannot even bear one more minute, NEVER GIVE UP! Because it is the time and place that the course will divert!&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n\r\n ', ' ', ''),
(276, 5, 3, ' How to Keep Your Heart Healthy ', '&lt;p&gt;So how to keep your heart healthy? With so many heart diseases on the rise, most health-conscious people strive\r\n       to\r\n       seek the answer to this question. This article attempts to help you find the answer.&lt;/p&gt;\r\n    &lt;h5&gt;Go Green&lt;/h5&gt;\r\n\r\n    &lt;p&gt;When we speak of heart, we cannot miss out on the importance and benefits of plant foods. Vegetables are an\r\n       excellent source of glutamic acid. It is a class of amino acid which helps keeping blood pressure at lower\r\n       levels; safe levels, so to say. What\'s more? Veggies lack cholesterol, fat and even calories, which otherwise\r\n       tend to be the common culprits for causing heart diseases. Not to mention, the amount of vitamins and minerals\r\n       that vegetables provide to the body do the most for health.\r\n\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Be Active&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Without the aid of daily exercise, maintaining a good overall health is just more than a daunting task. Exercises\r\n       not\r\n       only improve heart function, but also help in bringing down blood pressure, and cholesterol levels in the body. A\r\n       mere 30 minutes stroll daily does good for the heart, if not much. It is recommended that sprinting is more\r\n       beneficial for the heart, than jogging.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Reduce Oil&lt;/h5&gt;\r\n\r\n    &lt;p&gt;The next tip is about keeping oil from your diet. Although, you cannot avoid oil completely,\r\n       you can keep its consumption to a small amount. Oils are a storehouse of calories and contain\r\n       little nutrition. As they mostly comprise fat, they have all chances to lead to the\r\n       development of plaque in the arteries thus, giving rise to some nasty heart problems. However,\r\n       not all types of oil are unhealthy. Fish oil contains omega-3 fatty acids, which not only help\r\n       in preventing cardiovascular diseases, but also reduce instances of heart attack. According to\r\n       a study published in the Journal of the American College of Cardiology, a group of patients\r\n       with cardiovascular disease had 30% less likelihood of heart attack because of omega-3 fatty\r\n       acids. Best sources include salmon, mackerel and herring. Flaxseed, walnuts, and soybeans are\r\n       also good sources.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Cut the Smoke&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If you think you cannot shun the habit of smoking, then you might as well know that you\r\n       cannot do anything good for your heart. One of the most severe risks of smoking relates to\r\n       heart diseases in almost every smoker. Quit smoking, and you have done half the job in\r\n       keeping your heart healthy!&lt;/p&gt;\r\n    &lt;h5&gt;Lose Weight&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If your figure is slim, and belly\r\n       flat, then you may have less things\r\n       to worry about heart diseases. I am\r\n       talking about weight loss. Being\r\n       overweight puts extra load on the\r\n       heart thus, increases the risk of\r\n       heart conditions. So, consume less\r\n       sugary foods and more of fiber and\r\n       complex carbohydrates, and fruits and\r\n       vegetables. Maintaining a healthy\r\n       weight is one of the basic\r\n       necessities for a healthy heart\r\n       today.&lt;/p&gt;\r\n    &lt;h5&gt;Add More Fiber&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        Fiber exists in two major groups; soluble (dissolves in water) and insoluble (does not dissolve in water).\r\n        Although\r\n        both the types are beneficial to health, it is the former type that does way better to reduce cholesterol levels\r\n        in\r\n        the body. Due to its soluble nature, it binds with the cholesterol in the intestines thus, keep it from being\r\n        absorbed. This keeps the level of LDL and total cholesterol down, while not affecting the HDL cholesterol level\r\n        in\r\n        any way. All a healthy person requires is a serving of 5 to 10 grams or more of soluble fiber in a day to avail\r\n        this\r\n        benefit of low cholesterol. Foods rich in this fiber include apples, peas, kidney beans, prunes, etc.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Beware of Saturated Fats&lt;/h5&gt;\r\n\r\n    &lt;p&gt;It is important that you limit the amount of saturated and trans fats you consume\r\n       from your food. These spike cholesterol levels in the body thus, increasing the risk\r\n       of coronary artery disease. So avoid or limit consumption of food such as red meat,\r\n       dairy products, coconut oil, palm oil. These are rich in saturated fatty acids. To\r\n       avoid trans fats, eat less of fast foods, bakery products, snacks, crackers, and\r\n       margarines. Go for foods rich in healthy fats such as polyunsaturated and\r\n       monounsaturated fats.&lt;/p&gt;\r\n    &lt;h5&gt;Eat Less Salt&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Sodium is good for the body, but\r\n       in petty amounts. High salt intake\r\n       means high blood pressure, which\r\n       eventually points out to heart\r\n       conditions. When sodium starts\r\n       accumulating in the blood, it\r\n       attracts water which in turn,\r\n       increases the blood volume. Now to\r\n       keep this blood circulating\r\n       through the blood vessels, the\r\n       heart has to work harder thus,\r\n       causing high blood pressure. The\r\n       recommended amount of sodium in\r\n       the food per day must be less than\r\n       2300 milligrams.&lt;/p&gt;\r\n    &lt;h5&gt;Take the\r\n        Right\r\n        Medication&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        In most cases, heart diseases are also related to the use of drugs. So, it is important that you take medicines\r\n        as\r\n        prescribed by the doctors, or get them altered if necessary.&lt;/p&gt;&lt;h5&gt;Moderate Alcohol&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Drinking alcohol in moderate amounts does not harm the body. In fact, some studies show that moderate consumption\r\n       provides some benefits for the heart. However, the habit of drinking is analogous to walking on thin ice. It is\r\n       not\r\n       difficult for any one to step out of his limit, and become a heavy drinker. So, ensure that either you stick to\r\n       moderate drinking or you don\'t drink at all.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Manage Stress&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Stress has also been known to be one of the common culprits of heart problems. Any stressful\r\n       situation elevates blood pressure and this response takes its toll on the heart. So, keep\r\n       yourself relaxed by practicing meditation, yoga, and other relaxation techniques.&lt;/p&gt;\r\n\r\n    &lt;p&gt;\r\n        To conclude, make a note of the above methods, and keep them handy in case you find it difficult to recall them.\r\n        And\r\n        now I would like to take your leave, as I have some sprinting to do! Take care!&lt;/p&gt; ', ' ', ''),
(279, 6, 3, ' Four Types of Verbal Communication ', '&lt;p&gt;Verbal communication include sounds, words, language, and speech. Speaking is an effective way of communicating\r\n       and helps in expressing our emotions in words. This form of communication is further classified into four types,\r\n       which are:\r\n    &lt;/p&gt;\r\n    &lt;ol&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Intrapersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication is extremely private and restricted to ourselves. It includes the silent\r\n               conversations we have with ourselves, wherein we juggle roles between the sender and receiver who are\r\n               processing our thoughts and actions. This process of communication when analyzed can either be conveyed\r\n               verbally to someone or stay confined as thoughts.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Interpersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication takes place between two individuals and is thus a one-on-one conversation.\r\n               Here, the two individuals involved will swap their roles of sender and receiver in order to communicate\r\n               in a clearer manner.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Small Group Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication can take place only when there are more than two people involved. Here the\r\n               number of people will be small enough to allow each participant to interact and converse with the rest.\r\n               Press conferences, board meetings, and team meetings are examples of group communication. Unless a\r\n               specific issue is being discussed, small group discussions can become chaotic and difficult to interpret\r\n               by everybody. This lag in understanding information completely can result in miscommunication.\r\n            &lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Public Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication takes place when one individual addresses a large gathering of people.\r\n               Election campaigns and public speeches are example of this type of communication. In such cases, there is\r\n               usually a single sender of information and several receivers who are being addressed.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n    &lt;/ol&gt; ', ' ', ''),
(282, 7, 3, ' Proper color solutions for the office ', '&lt;p&gt;When it comes to remodeling an office, one of the most important aspects is painting. Any shade of paint can\r\n       change the complete look of a room as a color has an ability to change a drab and boring room into a stunning\r\n       one. Many people prefer to paint their homes in serene colors as it relaxes the mind. There are many hues of\r\n       colors to choose from that match the atmosphere of a room.&lt;/p&gt;\r\n\r\n    &lt;p&gt;An office is a place where many people come and go. Choose some paint colors that will stimulate the employees,\r\n       relax the customers and make them feel welcome. Here are some ideas for interior paint colors and combinations to\r\n       remodel your office and make it look more appealing to the vision.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Avoid using white, as this color gives a very sterile look to the walls. Remember a shade of color can make a\r\n       room look large or small. So, it is better to avoid black or dark colors that will give off a repulsive look to\r\n       your office.&lt;/p&gt;\r\n\r\n    &lt;p&gt;The popular choice of paint colors that will give a soothing and inviting look to your office are beige, tan,\r\n       light yellow and some shades of blue.&lt;/p&gt;\r\n\r\n    &lt;p&gt;When you choose paint colors for your office make sure that these colors have a resemblance to the flooring and\r\n       office furniture.&lt;/p&gt;\r\n\r\n    &lt;p&gt;These were some tips for choosing paint colors. Before you paint the walls of the room, always paint a small\r\n       portion of the wall to check how it looks. If you are satisfied with the result, you can go ahead with the task,\r\n       or else you can always try other combinations. Whatever color you choose, make sure that it serves its purpose\r\n       and brightens up the atmosphere of the room. Happy painting!&lt;/p&gt; ', ' ', ''),
(285, 8, 3, ' 5 Most Common Mistakes New Managers Make ', '&lt;p&gt;Learn which five most common mistakes a new manager is likely to make, and how to avoid them.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No.1 - Who\'s the Boss?&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;Some of your subordinates will be young and new, eager to follow you. But, the experienced ones might be more\r\n       resistant to your directives. especially if it comes across as an order, disregarding their experience or\r\n       suggestions. Though, being the one with the responsibility, you also need to assert your authority, and make sure\r\n       your employees respect you and follow you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Your subordinates have a working style of their own, and it will not work well to dictate your ways on them. Stay\r\n       cool as long as they are committed to the work, compliance is another matter. Set targets and deadlines, but do\r\n       not interfere in their work, especially if they are long-standing employees in the company, even though you are\r\n       the one in the upper position.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 2 - I Want to Be the Cool Guy&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;While understanding your subordinates\' viewpoint and respecting their opinions is important, it is another thing\r\n       if you are letting them run the show or take it easy. It is you, after all, who will have to explain things when\r\n       the performance falls.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Everyone hates to be the bad guy, that too, when you are new. But you have to find a balance between\r\n       micromanaging and giving no direction at all. Keep your mind open for suggestions, listen to everyone, but\r\n       ultimately you have to decide on the final direction your team/company takes. Also, do not excuse any slack\r\n       behavior. Tardiness or frequent leaves should not be taken lightly.&lt;/p&gt;\r\n\r\n\r\n    &lt;h5&gt;Mistake No. 3 - Setting Uniform, Inflexible Rules&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;If an employee is frequently late or absent, take him/her to task, but first, do understand the reasons behind\r\n       this issue. Some of them might be suffering from a health condition, or they might have a sick relative at home.\r\n       Same goes for other aspects of the job too.\r\n       While focusing on performance and target, it is easy to forget that you are dealing with people - not processes\r\n       or software which are programmed to run in a certain way. &lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Understand that every employee is different, and will respond differently to authority or pressure. Rather than\r\n       take offense, it is best to find a way around.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 4 - Not Being Clear With Instructions&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;A few months? What exactly do you mean by few - is it two or six? As the planner, you might have a clear, precise\r\n       idea of what you want. But you also need to convey that to your subordinates. Being too vague can leave them\r\n       confused and lose trust in you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Make a clear, concise, and precise guideline. Give the employees fixed goals and targets. Numbers, not\r\n       approximates. They need to have a proper idea of how their performance will be measured, to stay motivated and\r\n       work efficiently and smartly.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 5 - Overestimating Yourself and Your Team&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;New managers are often eager and overenthusiastic. Free from the crutches of their B-school or the restrictions\r\n       of their previous job, they want to prove a lot. Brimming with new ideas, they just can\'t wait to implement them\r\n       and the processes that they learned. They want to bring about a positive change, and fast.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;This enthusiasm is very infectious, affecting the entire team, resulting in a boost in productivity and morale.\r\n       But, unfortunately, it also means that the goals they set are also unrealistically high. Other employees may take\r\n       time adjusting to the sudden changes a new manager and his new processes demand. Add to that, they both will need\r\n       to be perfected and tweaked till you get the expected results. So, set realistic goals, and accept that the new\r\n       processes might also result in losses.&lt;/p&gt; ', ' ', ''),
(290, 10, 2, 'Going Green Is So Much Simpler Than Most People Think', '&lt;p&gt;An increasing number of people now want to do their part to save the planet due to the worsening problems caused by\r\n   global warming. Unfortunately, numerous people assume that going green is costly and time consuming. Read on to\r\n   discover several immediate things you can do to get on the path to living green.&lt;/p&gt;\r\n&lt;p&gt;Recycling is the top way to start. A lot of people continue to place glass and aluminum items in their normal garbage\r\n   even though recycling is not that hard to do today. In the US, it\'s not hard to locate a trash service that offers\r\n   glass and aluminum recycling choices. Many people still continue to discard these items even though recycling bins\r\n   are not hard to find. It merely takes a few minutes to wash off the cans and bottles before placing them into the\r\n   recycle bin.&lt;/p&gt;\r\n&lt;p&gt;Newspapers are other items that overburden our landfills. Virtually all people will merely take their daily paper and\r\n   toss it in the garbage when they are done with it. But, there are many other uses that you can get out of your\r\n   newsprint other than poring over it. Did you know that you can keep your windows clean using newspapers? If you\'re\r\n   tired of seeing small white fragments and streaks on your windowpanes after you clean them with paper towels and\r\n   cleaner, try to use old newspapers instead. Several community groups run regular paper drives. Merely compile all of\r\n   your old newspapers, put them in a stack, and see if the paper drive organizers will come to your location and pick\r\n   them up.&lt;/p&gt;\r\n&lt;p&gt;One more thing that could help you to start to live green is to begin walking a bit more. Lots of people routinely\r\n   drive short distances merely to buy one thing at their local corner market. If you just walk to the store, it can\r\n   take less time, because you won\'t have to locate a parking spot, but you will be saving money on gas and helping to\r\n   save planet Earth by not burning those fuels.&lt;/p&gt;\r\n&lt;p&gt;If you wish to save even more on gas, take the chance to carpool when you can and only mow your lawn two times a\r\n   month instead of weekly. A gorgeous lawn is good to have but skipping an additional week before you mow again\r\n   shouldn\'t significantly affect it. Using a manual push mower like those more normally used many, many years ago will\r\n   help to save the environment even more. Numerous hardware shops still carry this type of mower.\r\n&lt;/p&gt;\r\n&lt;p&gt;When people make up their mind to try green living, it\'s easy to make a few lifestyle modifications that will benefit\r\n   our environment. Likewise, you can find lots of info all over the Internet on other ways to start living green, you\r\n   only have to look for it.&lt;/p&gt;', '   ', ''),
(291, 10, 3, 'Going Green Is So Much Simpler Than Most People Think', '&lt;p&gt;An increasing number of people now want to do their part to save the planet due to the worsening problems caused by\r\n   global warming. Unfortunately, numerous people assume that going green is costly and time consuming. Read on to\r\n   discover several immediate things you can do to get on the path to living green.&lt;/p&gt;\r\n&lt;p&gt;Recycling is the top way to start. A lot of people continue to place glass and aluminum items in their normal garbage\r\n   even though recycling is not that hard to do today. In the US, it\'s not hard to locate a trash service that offers\r\n   glass and aluminum recycling choices. Many people still continue to discard these items even though recycling bins\r\n   are not hard to find. It merely takes a few minutes to wash off the cans and bottles before placing them into the\r\n   recycle bin.&lt;/p&gt;\r\n&lt;p&gt;Newspapers are other items that overburden our landfills. Virtually all people will merely take their daily paper and\r\n   toss it in the garbage when they are done with it. But, there are many other uses that you can get out of your\r\n   newsprint other than poring over it. Did you know that you can keep your windows clean using newspapers? If you\'re\r\n   tired of seeing small white fragments and streaks on your windowpanes after you clean them with paper towels and\r\n   cleaner, try to use old newspapers instead. Several community groups run regular paper drives. Merely compile all of\r\n   your old newspapers, put them in a stack, and see if the paper drive organizers will come to your location and pick\r\n   them up.&lt;/p&gt;\r\n&lt;p&gt;One more thing that could help you to start to live green is to begin walking a bit more. Lots of people routinely\r\n   drive short distances merely to buy one thing at their local corner market. If you just walk to the store, it can\r\n   take less time, because you won\'t have to locate a parking spot, but you will be saving money on gas and helping to\r\n   save planet Earth by not burning those fuels.&lt;/p&gt;\r\n&lt;p&gt;If you wish to save even more on gas, take the chance to carpool when you can and only mow your lawn two times a\r\n   month instead of weekly. A gorgeous lawn is good to have but skipping an additional week before you mow again\r\n   shouldn\'t significantly affect it. Using a manual push mower like those more normally used many, many years ago will\r\n   help to save the environment even more. Numerous hardware shops still carry this type of mower.\r\n&lt;/p&gt;\r\n&lt;p&gt;When people make up their mind to try green living, it\'s easy to make a few lifestyle modifications that will benefit\r\n   our environment. Likewise, you can find lots of info all over the Internet on other ways to start living green, you\r\n   only have to look for it.&lt;/p&gt;', '   ', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_article_description_additional`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_description_additional`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_description_additional` (
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `additional_description` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_article_description_additional`
--

INSERT INTO `oc_simple_blog_article_description_additional` (`simple_blog_article_id`, `language_id`, `additional_description`) VALUES
(9, 2, '																																																																																																																																																There are so many elements today in our lives that make things more and more hectic by the day, and there hardly seems to be any respite from the constantly mounting pressures and tough competition to stay ahead of everybody, plan for the future, etc. However, this has also led to rising stress-related issues, blood pressure, etc. While one cannot simply sit at home to avoid all this, a bit of humor has always helped in bringing cheer to one’s day.\r\n																															\r\n																															\r\n																															\r\n																															\r\n																															\r\n																															\r\n																															\r\n																															\r\n																															'),
(9, 3, '																																																																																																																																																There are so many elements today in our lives that make things more and more hectic by the day, and there hardly seems to be any respite from the constantly mounting pressures and tough competition to stay ahead of everybody, plan for the future, etc. However, this has also led to rising stress-related issues, blood pressure, etc. While one cannot simply sit at home to avoid all this, a bit of humor has always helped in bringing cheer to one’s day.\r\n																															\r\n																															\r\n																															\r\n																															\r\n																															\r\n																															\r\n																															\r\n																															\r\n																															'),
(9, 1, '																																																																																																																																																There are so many elements today in our lives that make things more and more hectic by the day, and there hardly seems to be any respite from the constantly mounting pressures and tough competition to stay ahead of everybody, plan for the future, etc. However, this has also led to rising stress-related issues, blood pressure, etc. While one cannot simply sit at home to avoid all this, a bit of humor has always helped in bringing cheer to one’s day.\r\n																															\r\n																															\r\n																															\r\n																															\r\n																															\r\n																															\r\n																															\r\n																															\r\n																															');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_article_product_related`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_product_related`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_product_related` (
  `simple_blog_article_id` int(16) NOT NULL,
  `product_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_article_product_related`
--

INSERT INTO `oc_simple_blog_article_product_related` (`simple_blog_article_id`, `product_id`) VALUES
(9, 28),
(9, 29);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_article_to_category`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_to_category`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_to_category` (
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_category_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_article_to_category`
--

INSERT INTO `oc_simple_blog_article_to_category` (`simple_blog_article_id`, `simple_blog_category_id`) VALUES
(2, 2),
(4, 4),
(4, 2),
(6, 2),
(6, 1),
(3, 2),
(7, 4),
(7, 3),
(8, 4),
(8, 1),
(9, 4),
(9, 2),
(9, 1),
(5, 2),
(5, 3),
(1, 1),
(10, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_article_to_layout`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_to_layout` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_article_to_store`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_to_store`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_to_store` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_article_to_store`
--

INSERT INTO `oc_simple_blog_article_to_store` (`simple_blog_article_id`, `store_id`) VALUES
(2, 0),
(4, 0),
(6, 0),
(3, 0),
(7, 0),
(8, 0),
(9, 0),
(5, 0),
(1, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_author`
--

DROP TABLE IF EXISTS `oc_simple_blog_author`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_author` (
  `simple_blog_author_id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `image` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_author`
--

INSERT INTO `oc_simple_blog_author` (`simple_blog_author_id`, `name`, `image`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Jessica Prinston', 'catalog/avatar.jpg', 1, '2015-09-16 17:26:04', '2015-09-29 17:51:00'),
(2, 'Sam Kromstain', 'catalog/avatar.jpg', 1, '2015-09-17 10:26:40', '2015-09-29 17:52:05'),
(3, 'Robert Johnson', 'catalog/avatar.jpg', 1, '2015-09-21 16:32:38', '2015-09-29 17:51:32'),
(4, 'Edna Barton', 'catalog/avatar.jpg', 1, '2015-09-21 16:34:45', '2015-09-29 17:52:34');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_author_description`
--

DROP TABLE IF EXISTS `oc_simple_blog_author_description`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_author_description` (
  `simple_blog_author_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_author_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_author_description_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_author_description`
--

INSERT INTO `oc_simple_blog_author_description` (`simple_blog_author_description_id`, `simple_blog_author_id`, `language_id`, `description`, `meta_description`, `meta_keyword`, `date_added`) VALUES
(34, 1, 1, '&lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(35, 1, 2, '&lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(40, 2, 1, '&lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(41, 2, 2, '&lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(37, 3, 1, '&lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(38, 3, 2, '&lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(43, 4, 1, '&lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(44, 4, 2, '&lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_category`
--

DROP TABLE IF EXISTS `oc_simple_blog_category`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category` (
  `simple_blog_category_id` int(16) NOT NULL AUTO_INCREMENT,
  `image` mediumtext NOT NULL,
  `parent_id` int(16) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `blog_category_column` int(16) NOT NULL,
  `column` int(8) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_category`
--

INSERT INTO `oc_simple_blog_category` (`simple_blog_category_id`, `image`, `parent_id`, `top`, `blog_category_column`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(1, '', 0, 1, 0, 3, 0, 1, '2015-09-16 17:23:22', '2016-04-15 15:55:44'),
(2, 'catalog/product-1.png', 0, 1, 0, 5, 2, 1, '2015-09-17 10:24:12', '2016-04-15 15:56:04'),
(3, '', 0, 1, 0, 5, 1, 1, '2015-09-21 16:44:25', '2016-04-15 15:55:52'),
(4, '', 0, 1, 0, 5, 3, 1, '2015-09-28 17:06:19', '2016-04-15 15:56:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_category_description`
--

DROP TABLE IF EXISTS `oc_simple_blog_category_description`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category_description` (
  `simple_blog_category_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_category_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  PRIMARY KEY (`simple_blog_category_description_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_category_description`
--

INSERT INTO `oc_simple_blog_category_description` (`simple_blog_category_description_id`, `simple_blog_category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(68, 2, 2, 'Customer Service', '', '', ''),
(67, 2, 1, 'Customer Service', '', '', ''),
(71, 4, 2, 'Management', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(70, 4, 1, 'Management', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(65, 3, 2, 'Consulting', '', '', ''),
(64, 3, 1, 'Consulting', '&lt;br&gt;', '', ''),
(62, 1, 2, 'Branding', '', '', ''),
(61, 1, 1, 'Branding', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_category_to_layout`
--

DROP TABLE IF EXISTS `oc_simple_blog_category_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category_to_layout` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_category_to_store`
--

DROP TABLE IF EXISTS `oc_simple_blog_category_to_store`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category_to_store` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_category_to_store`
--

INSERT INTO `oc_simple_blog_category_to_store` (`simple_blog_category_id`, `store_id`) VALUES
(2, 0),
(3, 0),
(1, 0),
(4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_comment`
--

DROP TABLE IF EXISTS `oc_simple_blog_comment`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_comment` (
  `simple_blog_comment_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_reply_id` int(16) NOT NULL,
  `author` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_comment`
--

INSERT INTO `oc_simple_blog_comment` (`simple_blog_comment_id`, `simple_blog_article_id`, `simple_blog_article_reply_id`, `author`, `comment`, `status`, `date_added`, `date_modified`) VALUES
(1, 1, 0, 'Bernard Show', 'That’s awesome! Future belongs to youngsters, so businessmen can’t ignore their needs in any case.', 1, '2015-09-17 10:05:35', '2015-09-28 17:18:32'),
(16, 2, 0, 'Max Harris', 'Will try to repeat your mantras every day. Hopefully they will help in my current project.', 1, '2015-09-28 17:20:59', '2015-09-28 17:20:59'),
(2, 3, 0, 'Zack Hernandez', 'The success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot; – very true to life statement', 1, '2015-09-18 11:39:25', '2015-09-28 17:19:38'),
(3, 3, 0, 'James Anderson', ' I am thinking of starting my own business and will ponder on the author’s notes. Concise and understandable, good job.', 1, '2015-09-18 11:48:36', '2015-09-28 17:20:05'),
(15, 2, 0, 'Taylor Miller', 'Follow your dream and it will turn to reality. A very inspiring article. Thanks for sharing!', 1, '2015-09-28 17:20:34', '2015-09-28 17:20:34'),
(4, 3, 0, 'Greg Wilson', 'Unbelievable… Three simple guidelines to follow that can change your life. Worth trying out, sure they will work as everything genius is simple.', 1, '2015-09-18 12:08:42', '2015-09-28 17:19:53'),
(6, 1, 0, 'Michael Ventura', 'Completely agree with the author. Modern businessmen should involve young people, introduce brands to them, socialize… Looks like a fresh product market!', 1, '2015-09-21 18:18:56', '2015-09-28 17:18:47'),
(14, 1, 1, 'Sarah Cole', 'The author did a great job with all these research work. Really valuable information, thank you!', 1, '2015-09-28 17:18:32', '2015-09-28 17:18:32'),
(17, 2, 0, 'Sidney Garcia', 'I thought I am just a dreamer, but now I know how to become a doer. That’s cool, appreciate it!', 1, '2015-09-28 17:21:18', '2015-09-28 17:21:18'),
(18, 4, 0, 'Joe Lee', 'Very inspiring! So much wisdom in simple words…', 1, '2015-10-13 12:37:35', '2015-10-13 14:27:08'),
(19, 4, 0, 'Kate Taylor', 'Love this poet! Absolutely brilliant quotes!', 1, '2015-10-13 12:37:45', '2015-10-13 14:27:02'),
(20, 4, 0, 'Kim Martin', 'He is phenomenal! Rumi is considered to be the most popular poet in America.', 1, '2015-10-13 12:37:54', '2015-10-13 14:26:57'),
(21, 5, 0, 'Rob Gonzalez', 'Thanks for your pieces of advice. Will try to stick to them.', 1, '2015-10-13 12:56:02', '2015-10-13 14:26:52'),
(22, 5, 0, 'Paul Young', 'Gosh! I have been slowly damaging my heart all these years! It’s time to stop ruining myself.', 1, '2015-10-13 12:56:12', '2015-10-13 14:26:47'),
(23, 5, 0, 'Sandy Hill', 'Human life is the most precious thing in this world. It’s really time to stop committing lazy suicides.', 1, '2015-10-13 12:56:22', '2015-10-13 14:26:41'),
(24, 6, 0, 'Libi Ramirez', 'Communication is the process of exchanging information in the form of messages, symbols, thoughts, signs, and opinions. It’s utterly important for such social beings like people', 1, '2015-10-13 13:01:26', '2015-10-13 14:26:35'),
(25, 6, 0, 'Kirsten Evans', 'Indeed, it would be extremely hard to imagine a world without some form of interpersonal interaction.', 1, '2015-10-13 13:01:32', '2015-10-13 14:26:30'),
(26, 6, 0, 'Brook Murphy', 'Some of the basic ways by which we communicate with one another is through speech, sign language, body language, touch, and eye contact. So, waiting for the sequel of your post.\r\n', 1, '2015-10-13 13:01:40', '2015-10-13 14:26:25'),
(27, 7, 0, 'Ashley Cooper', 'Now I know what colors to choose for me office, thank you!', 1, '2015-10-13 13:05:32', '2015-10-13 14:26:21'),
(28, 7, 0, 'Gomez Bell', 'The repairing does not seem that challenging any more. Great tips!', 1, '2015-10-13 13:05:39', '2015-10-13 14:26:16'),
(29, 7, 0, 'Morgan Cook', 'Colors that stimulate the employees, relax the customers and make them feel welcome… Cool! That’s a dream!', 1, '2015-10-13 13:05:45', '2015-10-13 14:26:10'),
(30, 8, 0, 'Nancy Long', 'Thanks for sharing! Will try to avoid the listed mistakes.', 1, '2015-10-13 14:16:59', '2015-10-13 14:26:06'),
(31, 8, 0, 'Eva Reed', 'I wish I’ve read this article earlier… Useful tips for all young managers.', 1, '2015-10-13 14:17:05', '2015-10-13 14:23:53'),
(32, 8, 0, 'Betty Butler', 'Just got my new position. The discussed matter is really urgent for me.', 1, '2015-10-13 14:17:14', '2015-10-13 14:23:48'),
(33, 9, 0, 'Melany Wood', 'Smile, the depression will think you are an idiot and go away', 1, '2015-10-13 14:22:47', '2015-10-13 14:23:26'),
(34, 9, 0, 'York Cruz', 'BTW, your smiling face looks much more appealing and beautiful too.', 1, '2015-10-13 14:22:56', '2015-10-13 14:23:20'),
(35, 9, 0, 'Vivien Foster', 'I like to spread my laughter around as it\'s contagious', 1, '2015-10-13 14:23:05', '2015-10-13 14:23:16'),
(36, 10, 0, 'Mark Jenkins', 'You’ve raised an important topic. Hopefully many people will at least consider shifting to green life.', 1, '2015-10-13 15:31:41', '2016-08-11 18:43:36'),
(37, 10, 0, 'Dudley Diaz', 'Going green turned out to be really simple. Let’s go green, guys!', 1, '2015-10-13 15:31:51', '2015-10-13 15:32:13'),
(38, 10, 0, 'Meril Ward', 'Preserving our planet for future generation is a necessity. So, go green now while it’s not too late.\r\n', 1, '2015-10-13 15:31:58', '2015-10-13 15:32:08');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_related_article`
--

DROP TABLE IF EXISTS `oc_simple_blog_related_article`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_related_article` (
  `simple_blog_related_article_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_related_id` int(16) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_related_article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_related_article`
--

INSERT INTO `oc_simple_blog_related_article` (`simple_blog_related_article_id`, `simple_blog_article_id`, `simple_blog_article_related_id`, `sort_order`, `status`, `date_added`) VALUES
(52, 2, 1, 0, 1, '2017-09-22 14:44:47'),
(55, 4, 1, 0, 1, '2017-09-22 14:45:28'),
(54, 3, 2, 1, 1, '2017-09-22 14:45:08'),
(53, 3, 1, 2, 1, '2017-09-22 14:45:08'),
(51, 1, 7, 0, 1, '2017-09-22 14:44:13'),
(59, 9, 3, 0, 1, '2017-09-22 16:35:08');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_blog_view`
--

DROP TABLE IF EXISTS `oc_simple_blog_view`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_view` (
  `simple_blog_view_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `view` int(16) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_view_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_simple_blog_view`
--

INSERT INTO `oc_simple_blog_view` (`simple_blog_view_id`, `simple_blog_article_id`, `view`, `date_added`, `date_modified`) VALUES
(1, 1, 81, '2015-09-16 18:15:21', '2016-08-25 13:57:52'),
(2, 3, 189, '2015-09-17 10:28:27', '2016-04-15 15:57:10'),
(3, 2, 7, '2015-09-21 16:08:28', '2016-03-16 16:47:17'),
(10, 6, 14, '2015-09-29 10:44:23', '2017-09-01 13:00:51'),
(5, 7, 20, '2015-09-21 17:30:47', '2017-09-05 11:35:34'),
(6, 5, 25, '2015-09-21 17:53:05', '2017-08-23 17:21:55'),
(7, 8, 29, '2015-09-22 12:42:49', '2016-08-12 19:49:19'),
(8, 4, 12, '2015-09-23 17:59:14', '2016-03-16 16:42:28'),
(9, 9, 75, '2015-09-25 17:55:16', '2017-09-25 18:06:02'),
(11, 10, 58, '2015-10-13 15:31:30', '2017-09-22 14:32:29');
COMMIT;
