-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : lun. 14 nov. 2022 à 16:57
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `brief`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'karim', 'mykarim'),
(2, 'imad', 'myimad');

-- --------------------------------------------------------

--
-- Structure de la table `clubs`
--

CREATE TABLE `clubs` (
  `Name` varchar(200) NOT NULL,
  `Description` longtext NOT NULL,
  `Mission` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `categorie` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `clubs`
--

INSERT INTO `clubs` (`Name`, `Description`, `Mission`, `image`, `id`, `categorie`) VALUES
('Association Sportive YouCode', 'L’objectif l’association Sportive YouCode est de participer aux différentes activités parascolaires à l\'école , et il a un  plan d’action bien défini qui s’inscrit dans une démarche globale d’éducation au sport qui vient s’allier à la vocation pédagogique de l’école.\r\nYouCode dispose des équipements pour toutes les disciplines sportives masculines et féminines. la chose qui permet de bien veiller à l’organisation de ses activités et à participer aux différents championnats universitaires régionaux et nationaux.', '-Instaurer une culture Sport-Etude au sein de l\'école afin d’accompagner la volonté royale de développement du sport.\r\n-Organiser des événements sportifs au sein de l’école pour ses étudiants afin de développer des liens, des échanges conviviaux lors de ces rencontres sportives.\r\n-Redynamiser la pratique du sport au paysage universitaire et l’imposer comme nouveau levier du développement sportif .\r\n', 'https://img.freepik.com/vecteurs-libre/illustration-concept-abstrait-equipe-sport-scolaire-club-scolaire-pour-enfants-sports-equipe-competitifs-pour-enfants-activite-parascolaire-tournoi-local-exercic', 1, 'Sport'),
('Association des Arts et Métiers', 'l\'Association des Arts et Métiers (ADAM) est une association à but non lucratif à vocation artistique qui a pour objet l\'encadrement et le perfectionnement des activités artistiques, elle siège à YouCode.\r\nL\'Association des arts et métiers est composée d\'ateliers qui sont à la disposition des étudiants de l\'école : Ateliers musique et chant, danse, design, théâtre, photographie, infographie….\r\nC\'est ainsi que l\'ADAM offre à ses membres l\'opportunité de joindre l\'utile à l\'agréable, en accompagnant ses artistes en herbe dans leur épanouissement artistique, et en offrant aux futurs managers la possibilité de mettre en pratique leur acquis.', '-Offrir aux membres l\'opportunité de s\'exprimer en toute liberté.\r\n-Organiser des événements culturels pour l\'échange des acquis artistique\r\n', 'https://www.cma-hautesavoie.fr/sites/cma-74/files/metiers_dart_0.jpg', 2, 'Art'),
('Green Invest', '« Green Invest » Ou L’association de Protection de l’Environnement est une association structurée en club environnemental de l’Ecole YouCode. Ses actions sont dédiées à la sensibilisation des étudiants, ménages et entreprises par rapport à la protection de l’environnement et de l’adoption des différents principes du développement durable. ', '- Organiser des événements de haut calibre qui relève du professionnel à travers des conférences et des séminaires notamment la conférence POSTCOP22.\r\n- Organiser des actions caritatives et s’engager dans des initiatives vertes (GREEN INITITATIVES) à travers lesquelles les membres du club réaménagent des espaces verts, des écoles, etc.', 'https://www.gpbatteries.fr/wp-content/uploads/sites/20/2020/12/green-investment-1024x853.jpg', 3, 'Environnement');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `classe` varchar(200) NOT NULL,
  `age` int(5) NOT NULL,
  `club` varchar(200) NOT NULL,
  `image` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id`, `name`, `classe`, `age`, `club`, `image`) VALUES
(1, 'Aayne Alhayate Yassine', 'ADA LOVELACE', 20, 'Green Invest', 'https://intranet.youcode.ma/storage/users/profile/471-1664881329.JPG'),
(2, 'Abdallah Bouzhar', 'ADA LOVELACE', 30, 'Green Invest', 'https://intranet.youcode.ma/storage/users/profile/421-1664881339.JPG'),
(3, 'Abdelaziz Elbarbouchi', 'ADA LOVELACE', 26, 'Green Invest', 'https://intranet.youcode.ma/storage/users/profile/428-1664881348.JPG'),
(4, 'Abdelghani Jelouani\r\n', 'ADA LOVELACE', 22, 'Association Sportive YouCode', 'https://intranet.youcode.ma/storage/users/profile/494-1664881360.JPG'),
(5, 'Abdelillah Elasri\r\n', 'ADA LOVELACE', 22, 'Association Sportive YouCode', 'https://intranet.youcode.ma/storage/users/profile/507-1664881372.JPG'),
(6, 'Achchaimae Khalaf', 'ADA LOVELACE', 19, 'Association Sportive YouCode', 'https://intranet.youcode.ma/storage/users/profile/474-1664881385.JPG'),
(7, 'Aymane Belassiria', 'ADA LOVELACE', 23, 'Association des Arts et Métiers', 'https://intranet.youcode.ma/storage/users/profile/467-1664881404.JPG'),
(8, 'Ayoub Elgountari\r\n', 'ADA LOVELACE', 21, 'Association des Arts et Métiers', 'https://intranet.youcode.ma/storage/users/profile/484-1664881412.JPG'),
(9, 'Bayroune Chaima\r\n', 'ADA LOVELACE', 20, 'Association des Arts et Métiers', 'https://intranet.youcode.ma/storage/users/profile/477-1664881423.JPG');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
