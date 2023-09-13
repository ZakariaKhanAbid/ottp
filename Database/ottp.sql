-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2023 at 10:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ottp`
--

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `releasedate` date DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `thumbnailpath` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `releasedate`, `description`, `thumbnailpath`) VALUES
(1, 'Dewana', '0000-00-00', 'Coke Studio Bangla | Season 2 | Fuad X Murshidabadi X Tashfee X Shuchona\r\n\r\n#Dewana is for the love and longing for the Divine. The writer, Gani Pagol, through his music has endeavored to transverse into the spiritual world of Divinity. He started writing songs and practiced Qawwali music in Bangladesh. Bangladeshi Qawwali music has a unique sound stamp- while the songs are about devotion, but the way they are sung are celebratory in nature.  Thus the Bangladeshi form of Qawwali – Bangla Qawwali, is uplifting and funky.\r\n\r\nFuad Al Muqtadir cranks up the funk in Bangla Qawwali music in Dewana. The ghazal-like singing of Murshidabadi, along with the duet of Tashfee and Shuchona Shely, stitches tradition into a blanket of funky beats, popping bass lines, and everything contemporary. The master of Bangladeshi pop music has created #RealMagic bringing Qawwali and contemporary music together for a sound that is unheard of.\r\n\r\nSeason Produced & Curated by Shayan Chowdhury Arnob\r\nMusic Composed and Produced by Fuad Al Muqtadir  \r\nAsheqjon Written & Composed by Pagol Goni Mastan \r\nKon Shei Ashiq Written Srijato \r\nMixed and Mastered by Fuad Al Muqtadir  \r\nAdditional Arrangements: Shayan Chowdhury Arnob, Shuvendu Das Shuvo', 'uploads\\thumbnails\\1. Dewana.jpg'),
(2, 'Shondhatara', '0000-00-00', 'Coke Studio Bangla | Season 2 | Arnob X Sunidhi X Adit\r\n\r\n#ShondhaTara is a Bangla Bandish with a twist of new-age music. Bandish means ‘Binding Together’. And this song talks about the magic in the unison of two different worlds, even though they are poles apart. The intertwining of classical melody by Sunidhi with the contemporary tunes of Arnob reflects the magical coexistence of two hearts, that defy logic like #RealMagic \r\n\r\nThe original lyrics of the part Emon-o Hereche are an inspired Bengali version of ‘Main Waari Waari Jayogi’, keeping with the singing style of Agra Gharana, set in Raag Emon (Raga Yamana). It was written by Ustad Vilayat Hussain Khan under the pen name \'Pran Piya\'. The song is penned by Divash Krishna Biswas. We again see the genius of Adit Rahman shine through, as he weaves different worlds of music in a single universal composition. \r\n\r\nMusic composed, Arranged & Produced by Adit Rahman\r\nLyrics by Divash Krishna Biswas (Adapted from Main Vari Vari Jaungi; Composed by Ustad Vilayat Hussain Khan (Pranpiya))\r\nBela Haray Composed, Curated by Shayan Chowdhury Arnob\r\nMixed & Mastered by Saadul Islam\r\nAdditional arrangement Shayan Chowdhury Arnob', 'uploads\\thumbnails\\2. Shondhatara.jpg'),
(3, 'Ghum Ghum', '0000-00-00', 'Coke Studio Bangla | Season 2 | Fairooz Nazifa X Shuvendu Das Shuvo\r\n\r\n#GhumGhum is a jazzy take on the famous song from the film ‘Ghuddi’. The original composer of the song Lucky Akhand is a visionary and a revolutionary for Bangla music culture and industry. He has transformed the musical landscape in Bangladesh and has inspired modern rock bands through his virtuosity, all the while bringing international accolades with Bangla music. The enticing voice of Shahnaz Rahmatullah owned the words of the lyrics and equally adamant, was the performance of Suborna Mustafa whose enchanting choreographed dancing and acting redefined the role of women in films. Truly, this was a testament to the post-independent Bangladeshi youth culture that was emerging at the time.\r\n\r\nFollowing the footsteps of the great maestro Lucky Akhand, we re-imagined what the song would sound like if it was made today. Taking the same spirit of experimentation and going beyond one’s depth, the team came up with a completely new rendition of the song, that still has the touch of #RealMagic bestowed to us by the legend himself. The bold and exciting talent Fairooz Nazifa makes her debut appearance on the stage of Coke Studio Bangla, accompanied by the talented House Band. The music producer of this song, Shuvendu Das Shuvo, has jazzified the nostalgic 70’s tune, taking the younger generation on a trip back to the golden era of Bangla music.\r\n\r\nMusic composed, Arranged & Produced by Shuvendu Das Shuvo\r\nGhum Ghum Written By S.M Hedayat\r\nComposed by Lucky Akhand & Originally Sung by Shahnaz Rahmatullah\r\nMixed & Mastered by Faizan Rashid Ahmad (Buno)\r\nAdditional Arrangement: Shayan Chowdhury Arnob\r\nSpecial Thanks to Syed Salahuddin Zaki', 'uploads\\thumbnails\\3. Ghum Ghum.jpg'),
(4, 'Anondodhara', '0000-00-00', 'Coke Studio Bangla | Season 2 | Adity Mohsin X Bappa Mazumder\r\n\r\nThe infinite rhythms of life take us on a journey that is forever blessed. The Nobel Prize winning Poet,  Bard of Bengal, Rabindranath Tagore wrote this masterpiece as an invitation to embrace the harmonical sphere surrounding us. Through the song the poet urges us to look around the fountain of joy surrounding us in the form of harmony of life, the nature’s conspiracy to create a rhythm so vast that when we appreciate it- our own struggles might seem smaller. \r\nThe timeless creation is a ‘Malkauns’ raag; a pentatonic scale performed by the renowned artiste Bappa Mazumder & esteemed Rabindra Sangeet shilpi Adity Mohsin. This duet has been rearranged by Arnob with an addition of classical & modern instruments that brought more colors to its tapestry. The song not only celebrates the mesmerizing creation of Rabindranath Tagore, it also celebrates the #RealMagic of the universe, a divine symphony that is #Anondodhara aka Fountain of Joy.\r\n\r\nCurated & Produced by Shayan Chowdhury Arnob\r\nAnondodhara Written & Composed by Rabindranath Tagore\r\nMusic Composed, arranged and produced  by Shayan Chowdhury Arnob\r\nMixed by Saadul Islam \r\nMastered by Faizan Rashid Ahmad (Buno)', 'uploads\\thumbnails\\4. Anondodhara.jpg'),
(5, 'Dilaram', '0000-00-00', 'Coke Studio Bangla | Season 2 | Arnob X Hamida Banu\r\n\r\n#Dilaram is an emotion, a plea to keep your loved ones close to your heart. Life comprises moments - some of which at times put our hearts to the test. These are the moments we turn to our Dilarams who appear in the form of a confidant, or inner voice.\r\n\r\nThe great Bangladeshi poet from the 19th century, Hason Raja, pens this emotion in “Dhoro Dilaram”, where in the song, he urges Dilaram, his closest companion to hold on to him tight at times he feels that he is slipping away. The same emotion can be felt in Arnob’s “Amay Dhore Rakho” – a song that was written back in 2009 as the first song to be released by Arnob & Friends as a part of a world tour to raise funds for underprivileged children organized by Dristipath. In the song, Arnob too calls out to anyone who was ever close to him, to stay by his side because at the time life seemed to be struggling.\r\n\r\nMusic composed, Arranged, and produced by Shayan Chowdhury Arnob\r\nDilaram Written by Hason Raja and composed by Shamarin Dewan\r\nAmay Dhore Rakho Written and composed by Shayan Chowdhury Arnob\r\nMixed Mastered by Saadul Islam\r\nSpecial thanks to Shamarin Dewan & Shejul Hussen', 'uploads\\thumbnails\\5. Dilaram.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `videodetails`
--

CREATE TABLE `videodetails` (
  `id` int(11) NOT NULL,
  `contentid` int(11) NOT NULL,
  `videopath` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videodetails`
--

INSERT INTO `videodetails` (`id`, `contentid`, `videopath`) VALUES
(6, 1, 'uploads\\videos\\1. Dewana.mp4'),
(7, 2, 'uploads\\videos\\2. Shondhatara.mp4'),
(8, 3, 'uploads\\videos\\3. Ghum Ghum.mp4'),
(9, 4, 'uploads\\videos\\4. Anondodhara.mp4'),
(10, 5, 'uploads\\videos\\5. Dilaram.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videodetails`
--
ALTER TABLE `videodetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `videodetails`
--
ALTER TABLE `videodetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
