
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BugMe Issue Tracker`
--

-- --------------------------------------------------------
DROP DATABASE IF EXISTS db;
CREATE DATABASE db;
USE db;
--
-- Table structure for table `users`
--
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(32) NOT NULL,
  `date_joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users` should go below
--

--
-- This was commented as i need to read up on hashing

INSERT INTO `Users` (`id`, `firstname`, `lastname`, `password`, `email`,`date_joined` ) VALUES
(1, 'Web', 'Dev','password123','admin@bugme.com', '2019-11-20 12:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--


CREATE TABLE `Issues` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `priority` VARCHAR(25),
  `status` varchar(25) NOT NULL,
  `assigned_to` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- INSERT INTO `Issues` (`id`, `title`, `description`, `type`, `priority`, `status`, `assigned_to`,`created_by`, 'created', 'updated' ) VALUES
-- ()--insert filler test data here-- );


--
--

-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `Users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `Issues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
