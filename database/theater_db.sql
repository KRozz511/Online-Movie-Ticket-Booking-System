
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";






CREATE TABLE `books` (
  `id` int(30) NOT NULL,
  `movie_id` int(30) NOT NULL,
  `ts_id` int(30) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `books` (`id`, `movie_id`, `ts_id`, `lastname`, `firstname`, `contact_no`, `qty`, `date`, `time`) VALUES
(1, 7, 1, 'Smith', 'John', '0909505', 1, '2020-12-02', '11:05:00');

-- --------------------------------------------------------


CREATE TABLE `movies` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `cover_img` text NOT NULL,
  `description` text NOT NULL,
  `duration` float NOT NULL,
  `date_showing` date NOT NULL,
  `end_date` date NOT NULL,
  `trailer_yt_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `movies` (`id`, `title`, `cover_img`, `description`, `duration`, `date_showing`, `end_date`, `trailer_yt_link`) VALUES
(1, 'The Matrix', '1600221180_matrix.jpg', 'The Matrix is a 1999 sci-fi action movie about a man who discovers the shocking truth that his life is a simulation of an evil cyber-intelligence.', 2.5, '2023-12-01', '2024-02-28', ''),
(2, 'Oppenheimer', 'oppenheimer.jpg', 'The movie follows the life and biggest achievements of J. Robert Oppenheimer, putting the main focus on the creation of the atomic bomb and his pivotal role in spearheading the Manhattan Project.', 3, '2023-12-01', '2024-02-28', ''),
(3, 'Virus', 'virus.jpg', 'Virus is a 2019 Indian Malayalam-language medical thriller film co-produced and directed by Aashiq Abu set against the backdrop of the 2018 Nipah virus outbreak in Kerala', 2.5, '2023-12-01', '2024-02-28', ''),
(4, 'Interstellar', 'interstellar.jpeg', 'When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.', 2.75, '2023-12-01', '2024-02-28', '' ),
(5, 'The Wolf of Wall Street', '1600221240_img 2.jpg', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 3.75, '2023-12-01', '2024-02-28', ''),
(6, 'Yogi Bear', 'yogibear.jpg', 'The series is set in the fictional town of Jellystone, where the characters live, work, and play together ', 2.5, '2023-12-01', '2024-02-28', ''),
(7, 'Greatest Showman', '1600221900_images.jpg', 'Orphaned, penniless, but ambitious and with a mind crammed with imagination and fresh ideas, the American entertainer, Phineas Taylor Barnum, will always be remembered as the man with the gift to blur the line between reality and fiction.', 3, '2023-12-02', '2024-12-28', ''),
(8, 'Jaws', '1600221900_download.jpg', 'It tells the story of a large great white shark that preys upon a small Long Island resort town and the three men who attempt to kill it.', 2.75, '2023-12-02', '2024-02-28', ''),
(9, 'Home Alone', 'homealone.jpg', 'An eight-year-old troublemaker, mistakenly left home alone, must defend his home against a pair of burglars on Christmas eve. ', 2.5, '2023-12-01', '2024-02-28', ''),
(10, 'Despicable Me', 'despicableme.jpg', 'When a criminal mastermind uses a trio of orphan girls as pawns for a grand scheme, he finds their love is profoundly changing him for the better.', 1.5, '2023-12-02', '2024-02-28', ''),
(11, 'Avengers Endgame', 'endgame.jpg', 'In 2018, twenty-three days after Thanos erased half of all life in the universe, Carol Danvers rescues Tony Stark and Nebula from deep space and they reunite with the remaining Avengers—Bruce Banner, Steve Rogers, Thor, Natasha Romanoff, and James Rhodes—and Rocket on Earth.', 3, '2023-12-01', '2024-02-28', ''),
(12, 'White House Down', '1600237980_download (1).jpg', 'In the film, a divorced US Capitol Police officer attempts to rescue both his daughter and the President of the United States when a destructive terrorist assault occurs in the White House.', 3, '2023-12-01', '2024-02-28', ''),
(13, 'Night At The Museum', 'night.jpeg', '', 2.5, '2023-12-01', '2024-02-28', '');




CREATE TABLE `theater` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `theater` (`id`, `name`) VALUES
(1, 'PVR'),
(2, 'EVM Cinemas'),
(3, 'JM Movies'),
(4, 'Cinepolis');




CREATE TABLE `theater_settings` (
  `id` int(30) NOT NULL,
  `theater_id` int(30) NOT NULL,
  `seat_group` varchar(250) NOT NULL,
  `seat_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




INSERT INTO `theater_settings` (`id`, `theater_id`, `seat_group`, `seat_count`) VALUES
(1, 1, 'Recliner', 20),
(2, 1, 'Prime', 30),
(3, 1, 'Classic Plus', 30),
(4, 2, 'Classic', 30),
(5, 2, 'Golden Circle', 30),
(6, 2, 'Silver Circle', 50),
(7, 3, 'Diamond', 30),
(8, 3, 'Gold', 50),
(9, 4, 'Premium', 20),
(10, 4, 'Executive', 30),
(11, 4, 'Normal', 30);




CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




INSERT INTO `users` (`id`, `name`, `username`, `password`) VALUES
(1, 'Administrator', 'admin', 'admin123');




ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `theater`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `theater_settings`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);




ALTER TABLE `books`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `movies`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;


ALTER TABLE `theater`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `theater_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

