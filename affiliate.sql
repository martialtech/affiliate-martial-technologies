-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2017 at 10:13 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `affiliate`
--

-- --------------------------------------------------------

--
-- Table structure for table `ap_banners`
--

CREATE TABLE `ap_banners` (
  `id` int(15) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filetype` varchar(50) NOT NULL,
  `adsize` int(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_banners`
--

INSERT INTO `ap_banners` (`id`, `filename`, `filetype`, `adsize`, `url`, `description`) VALUES
(5, 'aplogo_0.png', 'png', 2, 'http://mycustomlink.com', ''),
(10, 'http://localhost?ref=ID', 'customlink', 0, 'http://localhost?ref=ID', 'this is for testing page '),
(11, '<iframe width="560" height="315" src="https://www.youtube.com/embed/w3ugHP-yZXw" frameborder="0" allowfullscreen></iframe>', 'video', 0, '', ''),
(12, '<iframe width="560" height="315" src="https://www.youtube.com/embed/w3ugHP-yZXw" frameborder="0" allowfullscreen></iframe>', 'video', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ap_commission_settings`
--

CREATE TABLE `ap_commission_settings` (
  `id` int(15) NOT NULL,
  `percentage` int(3) NOT NULL,
  `sales_from` decimal(10,2) NOT NULL,
  `sales_to` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_commission_settings`
--

INSERT INTO `ap_commission_settings` (`id`, `percentage`, `sales_from`, `sales_to`) VALUES
(1, 5, '0.00', '200.00'),
(5, 12, '200.00', '201.00'),
(6, 15, '201.00', '202.00'),
(7, 20, '202.00', '299.00'),
(8, 3, '0.01', '50.00'),
(9, 20, '299.00', '300.00'),
(10, 20, '300.00', '301.00');

-- --------------------------------------------------------

--
-- Table structure for table `ap_earnings`
--

CREATE TABLE `ap_earnings` (
  `id` int(15) NOT NULL,
  `affiliate_id` int(15) NOT NULL,
  `product` varchar(255) NOT NULL,
  `comission` int(3) NOT NULL,
  `sale_amount` decimal(8,2) NOT NULL,
  `net_earnings` decimal(8,2) NOT NULL,
  `recurring` varchar(15) NOT NULL,
  `recurring_fee` int(10) NOT NULL,
  `last_reoccurance` datetime NOT NULL,
  `stop_recurring` int(1) NOT NULL,
  `country` varchar(2) NOT NULL,
  `datetime` datetime NOT NULL,
  `void` int(1) NOT NULL,
  `refund` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_earnings`
--

INSERT INTO `ap_earnings` (`id`, `affiliate_id`, `product`, `comission`, `sale_amount`, `net_earnings`, `recurring`, `recurring_fee`, `last_reoccurance`, `stop_recurring`, `country`, `datetime`, `void`, `refund`) VALUES
(1, 6, 'test', 2, '85.50', '2.02', '1.1', 1, '2017-01-28 00:00:00', 1, 'US', '2017-01-28 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ap_leads`
--

CREATE TABLE `ap_leads` (
  `id` int(15) NOT NULL,
  `affiliate_id` int(15) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `epl` decimal(10,6) NOT NULL,
  `converted` int(1) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_leads`
--

INSERT INTO `ap_leads` (`id`, `affiliate_id`, `fullname`, `email`, `phone`, `message`, `epl`, `converted`, `datetime`) VALUES
(1, 3, 'sadsa', 'mark@gmail.com', '4165550149', 'testsadasdsadasd', '1.000000', 0, '2017-01-26 21:56:30'),
(2, 0, 'sadsa', 'mark@gmail.com', '4165550149', 'testsadasdsadasd', '1.000000', 0, '2017-01-26 21:56:30'),
(3, 0, 'sadsa', 'mark@gmail.com', '4165550149', 'testsadasdsadasd', '1.000000', 0, '2017-01-26 21:56:30');

-- --------------------------------------------------------

--
-- Table structure for table `ap_members`
--

CREATE TABLE `ap_members` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `forgot_pin` varchar(255) NOT NULL,
  `forgot_key` varchar(60) NOT NULL,
  `terms` int(1) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `balance` decimal(20,6) NOT NULL,
  `sponsor` int(15) NOT NULL,
  `admin_user` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_members`
--

INSERT INTO `ap_members` (`id`, `username`, `fullname`, `email`, `password`, `forgot_pin`, `forgot_key`, `terms`, `browser`, `balance`, `sponsor`, `admin_user`) VALUES
(1, 'demo', 'Admin', 'tehseenullah92@gmail.com', '$2y$10$5dEfCStEuUlB3k54ZDxqlOUwfT.3r3qYp12JNAnmVJPazQw.UP1ae', '', '', 1, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '510.348000', 5, 1),
(3, 'affiliate', 'Affiliate', 'affiliate@affiliate.com', '$2y$10$6G5WgoFibUxxmtc.uAL6lOsBuCF/ryUb48R41fZxzll7trLdBHtBC', '', '', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '120.000000', 3, 0),
(5, 'test1', 'test1', 'tehseen.iplex@gmail.com', '$2y$10$sYuhDy0ZtEeKIgt3o.5Jlu/vCEpVVwvAedgJ7PGjGyAHUmMoMdb6i', '', '', 1, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '10.000000', 1, 0),
(6, 'mark', 'mark', 'mark@mark.com', '$2y$10$gDoBhpLhumy4ffknutRy3uIiy6h2pNfUJM1IfW4dWGqHkbHja.tbW', '', '', 1, '', '0.000000', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ap_multi_tier_transactions`
--

CREATE TABLE `ap_multi_tier_transactions` (
  `id` int(15) NOT NULL,
  `affiliate_id` int(15) NOT NULL,
  `transaction_id` int(15) NOT NULL,
  `tier` int(2) NOT NULL,
  `commission` int(3) NOT NULL,
  `mt_earnings` decimal(10,2) NOT NULL,
  `datetime` datetime NOT NULL,
  `reversed` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ap_other_commissions`
--

CREATE TABLE `ap_other_commissions` (
  `id` int(1) NOT NULL,
  `sv_on` int(1) NOT NULL,
  `cpc_on` int(1) NOT NULL,
  `rc_on` int(1) NOT NULL,
  `mt_on` int(1) NOT NULL,
  `epc` decimal(10,6) NOT NULL,
  `lc_on` int(1) NOT NULL,
  `epl` decimal(10,6) NOT NULL,
  `tier2` int(3) NOT NULL,
  `tier3` int(3) NOT NULL,
  `tier4` int(3) NOT NULL,
  `tier5` int(3) NOT NULL,
  `tier6` int(3) NOT NULL,
  `tier7` int(3) NOT NULL,
  `tier8` int(3) NOT NULL,
  `tier9` int(3) NOT NULL,
  `tier10` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_other_commissions`
--

INSERT INTO `ap_other_commissions` (`id`, `sv_on`, `cpc_on`, `rc_on`, `mt_on`, `epc`, `lc_on`, `epl`, `tier2`, `tier3`, `tier4`, `tier5`, `tier6`, `tier7`, `tier8`, `tier9`, `tier10`) VALUES
(1, 1, 1, 1, 1, '0.004000', 1, '1.000000', 4, 2, 1, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ap_payouts`
--

CREATE TABLE `ap_payouts` (
  `id` int(15) NOT NULL,
  `affiliate_id` int(15) NOT NULL,
  `payment_method` int(1) NOT NULL,
  `payment_email` varchar(255) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `bn` varchar(255) NOT NULL,
  `an` varchar(255) NOT NULL,
  `rn` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ap_products`
--

CREATE TABLE `ap_products` (
  `id` int(15) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(16,2) NOT NULL,
  `commission` int(3) NOT NULL,
  `recurring` varchar(10) NOT NULL,
  `recurring_fee` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_products`
--

INSERT INTO `ap_products` (`id`, `product_img`, `name`, `price`, `commission`, `recurring`, `recurring_fee`) VALUES
(1, 'n.png', 'test', '20.50', 2, 'daily', 2),
(2, 'n_0.png', 'test', '25.25', 0, '', 2),
(3, '_0.', 'test', '25.25', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ap_recurring_history`
--

CREATE TABLE `ap_recurring_history` (
  `id` int(15) NOT NULL,
  `affiliate_id` int(15) NOT NULL,
  `transaction_id` int(15) NOT NULL,
  `recurring_earnings` decimal(10,2) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ap_referral_traffic`
--

CREATE TABLE `ap_referral_traffic` (
  `id` int(15) NOT NULL,
  `affiliate_id` int(15) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `host_name` varchar(255) NOT NULL,
  `device_type` int(1) NOT NULL,
  `browser` varchar(20) NOT NULL,
  `os` varchar(20) NOT NULL,
  `country` varchar(3) NOT NULL,
  `landing_page` varchar(255) NOT NULL,
  `cpc_earnings` decimal(10,6) NOT NULL,
  `void` int(1) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_referral_traffic`
--

INSERT INTO `ap_referral_traffic` (`id`, `affiliate_id`, `agent`, `ip`, `host_name`, `device_type`, `browser`, `os`, `country`, `landing_page`, `cpc_earnings`, `void`, `datetime`) VALUES
(17, 3, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '41.151.84.142', 'fios.verizon.net', 1, 'Chrome', 'Mac OS X', 'US', 'http://jdwebdesigner.com/affiliate-pro16/demo_landing?ref=3', '0.004000', 0, '2016-02-06 04:56:24'),
(18, 2, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '51.191.24.145', 'fios.verizon.net', 2, 'Chrome', 'Mac OS X', 'US', 'http://jdwebdesigner.com/affiliate-pro16/demo_landing?ref=2', '0.004000', 0, '2016-03-06 04:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `ap_settings`
--

CREATE TABLE `ap_settings` (
  `id` int(1) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `site_title` varchar(255) NOT NULL,
  `site_email` varchar(255) NOT NULL,
  `site_logo` varchar(255) NOT NULL,
  `default_commission` int(3) NOT NULL,
  `min_payout` decimal(8,2) NOT NULL,
  `currency_fmt` varchar(3) NOT NULL,
  `paypal` int(1) NOT NULL,
  `stripe` int(1) NOT NULL,
  `skrill` int(1) NOT NULL,
  `wire` int(1) NOT NULL,
  `checks` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ap_settings`
--

INSERT INTO `ap_settings` (`id`, `meta_title`, `meta_description`, `site_title`, `site_email`, `site_logo`, `default_commission`, `min_payout`, `currency_fmt`, `paypal`, `stripe`, `skrill`, `wire`, `checks`) VALUES
(1, 'Affiliate System', 'Affiliate System | PHP Affiliate Tracking Software', 'Affiliate System', 'tehseenullah92@gmail.com', 'mtlogo.png', 7, '25.00', 'USD', 1, 1, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ap_banners`
--
ALTER TABLE `ap_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_commission_settings`
--
ALTER TABLE `ap_commission_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_earnings`
--
ALTER TABLE `ap_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_leads`
--
ALTER TABLE `ap_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_members`
--
ALTER TABLE `ap_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_multi_tier_transactions`
--
ALTER TABLE `ap_multi_tier_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_other_commissions`
--
ALTER TABLE `ap_other_commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_payouts`
--
ALTER TABLE `ap_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_products`
--
ALTER TABLE `ap_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_recurring_history`
--
ALTER TABLE `ap_recurring_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_referral_traffic`
--
ALTER TABLE `ap_referral_traffic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_settings`
--
ALTER TABLE `ap_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ap_banners`
--
ALTER TABLE `ap_banners`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ap_commission_settings`
--
ALTER TABLE `ap_commission_settings`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ap_earnings`
--
ALTER TABLE `ap_earnings`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ap_leads`
--
ALTER TABLE `ap_leads`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ap_members`
--
ALTER TABLE `ap_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ap_multi_tier_transactions`
--
ALTER TABLE `ap_multi_tier_transactions`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ap_payouts`
--
ALTER TABLE `ap_payouts`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ap_products`
--
ALTER TABLE `ap_products`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ap_recurring_history`
--
ALTER TABLE `ap_recurring_history`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ap_referral_traffic`
--
ALTER TABLE `ap_referral_traffic`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `ap_settings`
--
ALTER TABLE `ap_settings`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
