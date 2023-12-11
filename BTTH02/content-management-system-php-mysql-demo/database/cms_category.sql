SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `phpzag_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_category`
--

CREATE TABLE `cms_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_category`
--

INSERT INTO `cms_category` (`id`, `name`) VALUES
(1, 'PHP'),
(2, 'jQuery'),
(3, 'JavaScript'),
(5, 'HTML'),
(6, 'Java');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_category`
--
ALTER TABLE `cms_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_category`
--
ALTER TABLE `cms_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;
