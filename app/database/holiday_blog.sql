-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 08 nov. 2020 à 23:15
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `holiday_blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`) VALUES
(25, 31, 8, 'test', '1604846275_1604692321_1604674436_barcelonaflat1.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', 1, '2020-11-08 13:00:34'),
(26, 31, 8, 'test 2', '1604866800_italy4.jpg', '&lt;p&gt;test&lt;/p&gt;', 1, '2020-11-08 14:15:55'),
(27, 31, 8, 'Test anais', '1604843668_bedroom4.jpg', '&lt;p&gt;test&lt;/p&gt;', 1, '2020-11-08 14:54:28'),
(28, 31, 8, 'Test anais 2', '1604844547_italy2.jpg', '&lt;p&gt;test&lt;/p&gt;', 1, '2020-11-08 15:09:07'),
(29, 31, 10, 'test sunday 15h40', '1604846620_italy5.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', 1, '2020-11-08 15:43:40'),
(30, 31, 9, 'Fresh Cumin-Spiced Salad with Lentils', '1604862538_1604862281_1604862142_salad1.jpg', '&lt;h2&gt;Ingredients&lt;/h2&gt;&lt;ul&gt;&lt;li&gt;2-1/4 cups water, divided&lt;/li&gt;&lt;li&gt;1 cup dried red lentils, rinsed&lt;/li&gt;&lt;li&gt;1 cup bulgur (fine grind)&lt;/li&gt;&lt;li&gt;1-1/2 teaspoons salt, divided&lt;/li&gt;&lt;li&gt;6 tablespoons canola oil, divided&lt;/li&gt;&lt;li&gt;1 large onion, chopped&lt;/li&gt;&lt;li&gt;1 tablespoon ground cumin&lt;/li&gt;&lt;li&gt;1 tablespoon chili powder&lt;/li&gt;&lt;li&gt;1 large egg, lightly beaten&lt;/li&gt;&lt;li&gt;6 green onions, sliced&lt;/li&gt;&lt;li&gt;3 tablespoons chopped fresh parsley&lt;/li&gt;&lt;li&gt;8 flatbreads wraps&lt;/li&gt;&lt;li&gt;8 tablespoons Sriracha mayonnaise&lt;/li&gt;&lt;li&gt;TOPPINGS: lettuce leaves, sliced tomato and sliced onions&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;h2&gt;Directions&lt;/h2&gt;&lt;ul&gt;&lt;li&gt;Place 2 cups water and lentils in a large saucepan. Bring to a boil. Reduce heat; simmer, uncovered, until lentils are tender, 15-20 minutes, stirring occasionally. Remove from heat; stir in bulgur and 1 teaspoon salt. Cover and let stand until tender and liquid is absorbed, 15-20 minutes.&lt;/li&gt;&lt;li&gt;&amp;nbsp;Meanwhile, in a &lt;a href=&quot;https://amzn.to/2Lmzyjb&quot;&gt;large nonstick skillet&lt;/a&gt;, heat 2 tablespoons oil over medium-high heat. Add onion; cook and stir until tender, 8-10 minutes. Add cumin and chili powder; cook 1 minute longer. Remove from heat. Add onion mixture to lentil mixture. Stir in egg, green onions, parsley and remaining 1/2 teaspoon salt, mixing lightly but thoroughly. If needed, add remining 1/4-cup water, one tablespoon at a time to help mixture stay together when squeezed; shape into eight 1/2-in.-thick patties.&lt;/li&gt;&lt;li&gt;&amp;nbsp;In the same skillet, heat remaining 4 tablespoons oil over medium heat. Add burgers in batches; cook until golden brown, 3-5 minutes on each side. Serve in wraps with Sriracha mayonnaise and toppings of your choice.&lt;/li&gt;&lt;/ul&gt;', 1, '2020-11-08 18:54:39'),
(31, 31, 11, 'Grounding Meditation', '1604863522_1604670627_flatmarseille1.jpg', '&lt;p&gt;&lt;a href=&quot;https://www.youtube.com/watch?v=XO822EvhmH0&quot;&gt;https://www.youtube.com/watch?v=XO822EvhmH0&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2020-11-08 20:21:08'),
(32, 31, 14, 'Our Deepest Fear By Marianne Williamson', '1604864846_italy1.jpg', '&lt;p&gt;Our deepest fear is not that we are inadequate.&amp;nbsp;&lt;br&gt;Our deepest fear is that we are powerful beyond measure.&amp;nbsp;&lt;br&gt;It is our light, not our darkness&lt;br&gt;That most frightens us.&lt;/p&gt;&lt;p&gt;We ask ourselves&lt;br&gt;Who am I to be brilliant, gorgeous, talented, fabulous?&lt;br&gt;Actually, who are you &lt;i&gt;not&lt;/i&gt; to be?&amp;nbsp;&lt;br&gt;You are a child of God.&lt;/p&gt;&lt;p&gt;Your playing small&amp;nbsp;&lt;br&gt;Does not serve the world.&amp;nbsp;&lt;br&gt;There\'s nothing enlightened about shrinking&amp;nbsp;&lt;br&gt;So that other people won\'t feel insecure around you.&lt;/p&gt;&lt;p&gt;We are all meant to shine,&amp;nbsp;&lt;br&gt;As children do.&amp;nbsp;&lt;br&gt;We were born to make manifest&amp;nbsp;&lt;br&gt;The glory of God that is within us.&lt;/p&gt;&lt;p&gt;It\'s not just in some of us;&amp;nbsp;&lt;br&gt;It\'s in everyone.&lt;/p&gt;&lt;p&gt;And as we let our own light shine,&amp;nbsp;&lt;br&gt;We unconsciously give other people permission to do the same.&amp;nbsp;&lt;br&gt;As we\'re liberated from our own fear,&amp;nbsp;&lt;br&gt;Our presence automatically liberates others.&lt;/p&gt;', 1, '2020-11-08 20:47:26'),
(33, 31, 10, '\"Ships in harbour are safe...\"', '1604866163_Inspirational-Quotes-About-Life-drawing.jpg', '&lt;p&gt;This quote sounds true and that\'s why i wanted to share it with you.&lt;/p&gt;', 1, '2020-11-08 21:09:23'),
(34, 29, 14, 'The Feathery Hill in the Golden Meadow', '1604869804_golden_meadow.jpg', '&lt;p&gt;Com\'on, hurry,&lt;/p&gt;&lt;p&gt;catch the ice cream truck.&lt;/p&gt;&lt;p&gt;We\'ll eat our treats&amp;nbsp;&lt;/p&gt;&lt;p&gt;as we walk&amp;nbsp;to the feathery hill&lt;/p&gt;&lt;p&gt;in the golden meadow.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;I got a fudgicle.&lt;/p&gt;&lt;p&gt;Did you get a&amp;nbsp;creamsicle?&lt;/p&gt;&lt;p&gt;Com\'on, hurry,&amp;nbsp;&lt;/p&gt;&lt;p&gt;let\'s eat them&amp;nbsp;before they melt.&lt;/p&gt;&lt;p&gt;Then we\'ll skip up the path&lt;/p&gt;&lt;p&gt;leading to&amp;nbsp;the feathery hill&lt;/p&gt;&lt;p&gt;in the golden meadow.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Just a little spooky&amp;nbsp;here in this part.&lt;/p&gt;&lt;p&gt;It\'s not long though.&lt;/p&gt;&lt;p&gt;Here hold my hand,&amp;nbsp;&lt;/p&gt;&lt;p&gt;we\'ll kick&amp;nbsp;like the&amp;nbsp;Rockets&lt;/p&gt;&lt;p&gt;to the&amp;nbsp;feathery hill&amp;nbsp;in the golden meadow.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;The light,&amp;nbsp;see it?&lt;/p&gt;&lt;p&gt;It\'s not far now. &amp;nbsp;C\'mon run, run&lt;/p&gt;&lt;p&gt;through the filtering mystical veil&lt;/p&gt;&lt;p&gt;into the feathery hill&amp;nbsp;in the golden meadow.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Swaying hay,&amp;nbsp;dancing luminescence&amp;nbsp;bursts of warmth&amp;nbsp;hugged by a&amp;nbsp;breeze&lt;/p&gt;&lt;p&gt;caressing wildflowers,&lt;/p&gt;&lt;p&gt;dotting color&amp;nbsp;through the expanse.&lt;/p&gt;&lt;p&gt;Spread your arms and twirl&lt;/p&gt;&lt;p&gt;through the meadow&amp;nbsp;to the feathery hill.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Long laden blades of grass,&amp;nbsp;pick one.&lt;/p&gt;&lt;p&gt;Glide it through your teeth&amp;nbsp;and taste its sweetness.&lt;/p&gt;&lt;p&gt;Inhale the scent&amp;nbsp;of Mother Nature . . .&lt;/p&gt;&lt;p&gt;the hay,&amp;nbsp;wild mint, and the musk.&lt;/p&gt;&lt;p&gt;Listen to her voice&amp;nbsp;chirping,&lt;/p&gt;&lt;p&gt;tweeting&amp;nbsp;and yes, cawing.&lt;/p&gt;&lt;p&gt;Hear her whooshing&amp;nbsp;and rustling&lt;/p&gt;&lt;p&gt;with the leaves&amp;nbsp;telling secrets.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Atop the feathery hill,&amp;nbsp;&lt;/p&gt;&lt;p&gt;a panorama of colors,&amp;nbsp;and of textures.&lt;/p&gt;&lt;p&gt;Emerald green carpets,&amp;nbsp;long golden grasses,&lt;/p&gt;&lt;p&gt;windswept silhouettes&amp;nbsp;cascading, dancing,&lt;/p&gt;&lt;p&gt;miming the feeling&amp;nbsp;of paradise.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Ah, basking in nature\'s&amp;nbsp;pulsating womb.&lt;/p&gt;&lt;p&gt;C\'mon, relax,&amp;nbsp;enjoy the feathery hill&lt;/p&gt;&lt;p&gt;in the golden meadow.&lt;/p&gt;', 1, '2020-11-08 22:03:05'),
(35, 29, 14, 'An Outdoor happening', '1604869891_mountain_meadow.jpg', '&lt;p&gt;We took to the road from everywhere&lt;/p&gt;&lt;p&gt;we were having so much fun&lt;/p&gt;&lt;p&gt;singing protest songs in painted vans&lt;/p&gt;&lt;p&gt;somewhere the Hippi kids had called&lt;/p&gt;&lt;p&gt;by the time we reached Woodstock&lt;/p&gt;&lt;p&gt;we heard the acid sounds in roaring ears&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;and Jimi sang the watchtower&lt;/p&gt;&lt;p&gt;setting fire to his guitar&lt;/p&gt;&lt;p&gt;Have you ever been experienced&lt;/p&gt;&lt;p&gt;under a rainbow sun&lt;/p&gt;&lt;p&gt;Crosby joined with Stills harmonizing with Young&lt;/p&gt;&lt;p&gt;Upon the outdoor stage they raged and rocked all night&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;we sat in the rain and sang in the sun&lt;/p&gt;&lt;p&gt;we bathed in the old dam naked to the world&lt;/p&gt;&lt;p&gt;The who screamed my generation&lt;/p&gt;&lt;p&gt;And Joe Fish said next stop Vietnam&lt;/p&gt;&lt;p&gt;CCR showed us their travelin band&lt;/p&gt;&lt;p&gt;Joe Cocker was helped by his friends&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Arlo sang a restaurant song&lt;/p&gt;&lt;p&gt;Bob sang songs that made us think&lt;/p&gt;&lt;p&gt;Joan Baez took us for a ride in the yellow taxi&lt;/p&gt;&lt;p&gt;so many bands to listen to the revolution begun&lt;/p&gt;&lt;p&gt;a happening in the open air in stoned tents and beer&lt;/p&gt;&lt;p&gt;somewhere in amongst it all we all became children of the earth&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Its over now and a long time ago but the ghosts they still remain&lt;/p&gt;&lt;p&gt;a few days in the open air we let down all and hair&lt;/p&gt;&lt;p&gt;echos still ring in our ears but everything has changed&lt;/p&gt;&lt;p&gt;for now its manufactured sound and pop stars all around&lt;/p&gt;&lt;p&gt;We miss the days when Rock was still so young&lt;/p&gt;&lt;p&gt;a time of great love and peace an new age had begun&lt;/p&gt;', 1, '2020-11-08 22:08:00');

-- --------------------------------------------------------

--
-- Structure de la table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(8, 'Travels', ''),
(9, 'Recipes', ''),
(10, 'Quotes', ''),
(11, 'Meditations', ''),
(12, 'Fitness', ''),
(13, 'Philosophy', ''),
(14, 'Poems', '');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created_at`) VALUES
(27, 1, 'Ruggero', 'ruggero@italia.it', '$2y$10$IMfAW7GkXfxBIPASESIXlOO1Z7YwSoGYJpdPC7NV6xWnEVH2E9wQW', '2020-11-06 23:24:24'),
(29, 1, 'Michel', 'michel@test.fr', '$2y$10$dvC1eOLtcWaSmlqCLreiV.hr1D.t.v9HZ92tpwmnc3sKBanrvgrUC', '2020-11-08 11:35:52'),
(30, 1, 'Sophie Woodland', 'sophie@woodland.co.uk', '$2y$10$3/ou8xlXc7Ec7jYFrvL7v.pO2bOeaZf1a.mUVdZlDxGcKgQJLcgzi', '2020-11-08 11:42:37'),
(31, 1, 'Anais', 'anais@vidal.fr', '$2y$10$97091YKNqB1MxpYM0lA0su98dQK0qzcvR3MpNCe8q1P7c0kNJEQyy', '2020-11-08 13:47:37'),
(32, 1, 'Fred', 'fred@astaire.com', '$2y$10$yKN8zXQ9kmJS7HJ2X0fR9.THnfQN0pK/ol/iW3gLa.OivQWicyloi', '2020-11-08 20:01:14'),
(33, 0, 'RÃ©mi ', 'remi@fasol.fr', '$2y$10$iRRQVr3oHcBhvZlOvDZNvOj63HVftATSPygtnQxz91DtS6v8ObOI2', '2020-11-08 23:14:36');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
