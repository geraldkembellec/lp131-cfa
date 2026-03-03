-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mar. 03 mars 2026 à 14:07
-- Version du serveur : 8.0.44
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lp131_26`
--

-- --------------------------------------------------------

--
-- Structure de la table `promo`
--

CREATE TABLE `promo` (
  `id_personne` tinyint NOT NULL,
  `nom` varchar(16) COLLATE utf8mb3_unicode_ci NOT NULL,
  `prenom` varchar(16) COLLATE utf8mb3_unicode_ci NOT NULL,
  `mail` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `id_ville` varchar(5) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `promo`
--

INSERT INTO `promo` (`id_personne`, `nom`, `prenom`, `mail`, `id_ville`) VALUES
(1, 'de Rochebouët', 'Gaspard', 'derochebouetgaspard@gmail.com', '80021'),
(2, 'Alves De Matos ', 'Elina ', 'elinaadm07@gmail.com', '76057'),
(3, 'Saintemarie', 'Jeanne', 'jeanne.saintemarie@hotmail.com', '76540'),
(4, 'Fourmont', 'Alice', 'alice.fourmont@outlook.fr', '75056'),
(5, 'Souque', 'Agnès', 'asouque@gmail.com', '38185'),
(6, 'Bocquier', 'Jeanne', 'jeanne.bocquier@hotmail.fr', '75056'),
(7, 'Le Reun', 'Betty', 'bettylereun@gmail.com', '78146'),
(8, 'Guillou', 'Killian', 'killiou@orange.fr', '76351'),
(9, 'Gazzola', 'Elodie', 'elodiegazzola@hotmail.fr', '64348'),
(10, 'Evrard', 'Elisabeth', 'Evrard.elisa@orange.fr', '57012'),
(11, 'Ntezihigo', 'Marie-Clarisse', 'Mclarisse.ntezihigo@gmail.com', '67482'),
(12, 'Prost', 'Amélie', 'amelieprost85@gmail.com', '76217'),
(14, 'Kembellec', 'Gérald', 'gerald.kembellec@lecnam.net', '60282');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id_ville` varchar(5) COLLATE utf8mb3_unicode_ci NOT NULL,
  `nom` varchar(10) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `code_postal` varchar(5) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id_ville`, `nom`, `code_postal`) VALUES
('38185', 'Grenoble', '38000'),
('57012', 'Algrange', '57440'),
('60282', 'Gouvieux', '60270'),
('64348', 'Lons', '64140'),
('67482', 'Strasbourg', '67100'),
('75056', 'Paris', '75000'),
('76057', 'Barentin', '76360'),
('76217', 'Dieppe', '76200'),
('76351', 'Le Havre', '76600'),
('76540', 'Rouen', '76000'),
('78146', 'Chatou', '78400'),
('80021', 'Amiens', '80000');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id_personne`),
  ADD KEY `id_ville` (`id_ville`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id_ville`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `promo`
--
ALTER TABLE `promo`
  MODIFY `id_personne` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `promo`
--
ALTER TABLE `promo`
  ADD CONSTRAINT `promo_ibfk_1` FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id_ville`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
