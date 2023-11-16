-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 16 nov. 2023 à 10:32
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `triproduits`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`) VALUES
(1, 'humain'),
(2, 'animaux'),
(3, 'objets'),
(4, 'vegetaux');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `quantite` int NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `id_sousCategorie` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `description`, `quantite`, `prix`, `id_sousCategorie`) VALUES
(1, 'Ségolène ROYAL', 'Ségolène Royal, née Marie Ségolène Royal le 22 septembre 1953 à Dakar, est une haute fonctionnaire et femme politique française.', 50, '99.99', 1),
(2, 'Philippe GARCIA', 'Philippe GARCIA est un formateur AFPA en développement web.', 50, '199.99', 2),
(3, 'Gregory BOURG', 'Gregory BOURG est un formateur AFPA en développement web.', 50, '199.99', 2),
(4, 'Jeanne d\'ARC', 'Jeanne d\'Arc, dite « la Pucelle », née vers 1412 à renommé en Domrémy-la-Pucelle, village du duché de Bar, et morte sur le bûcher le 30 mai 1431 à Rouen.', 50, '299.99', 1),
(5, 'Rex', 'Rex est un berger Allemand.', 50, '299.99', 3),
(6, 'Medor', 'Medorest un labrador.', 50, '299.99', 3),
(7, 'Villa de Luxe', 'A l\'instar du marché haut-de-gamme dans son ensemble, l\'immobilier de luxe connote la qualité, le raffinement et l\'exclusivité. Ces notions sont changeantes et prennent en compte les tendances, les évolutions économiques et culturelles.', 50, '1999999.00', 5),
(8, 'Felix', 'Felix est un siamois', 50, '399.00', 4),
(9, 'Garfield', 'Garfield est un Exotic Shorthair', 50, '399.00', 4),
(10, 'Lamborghini', 'Lamborghini est un constructeur automobile fondé en 1963 par l\'industriel Ferruccio Lamborghini et installé à Sant\'Agata Bolognese en Italie.', 50, '200000.00', 6),
(11, 'Maison en ruine', 'La maison tient à peine debout.', 50, '50.00', 5),
(12, 'Volvo d\'occasion', 'Volvo Cars est un constructeur suédois d\'automobiles. Fondé en 1927, le siège social de la marque se trouve à Göteborg, en Suède.', 50, '7000.00', 6),
(13, 'Rose', 'Fleur du rosier, décorative et odorante', 50, '5.00', 7),
(14, 'Violette', 'La Violette odorante (Viola odorata) est une espèce de petites plantes vivaces de la famille des Violaceae.', 50, '5.00', 7),
(15, 'Pommier', 'Il produit des pommes, c\'est magique', 50, '70.00', 8),
(16, 'Poirier', 'Il produit des poires, c\'est magique', 50, '70.00', 8);

-- --------------------------------------------------------

--
-- Structure de la table `souscategories`
--

DROP TABLE IF EXISTS `souscategories`;
CREATE TABLE IF NOT EXISTS `souscategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `id_categorie` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `souscategories`
--

INSERT INTO `souscategories` (`id`, `nom`, `id_categorie`) VALUES
(1, 'femme', 1),
(2, 'homme', 1),
(3, 'chien', 2),
(4, 'chat', 2),
(5, 'maison', 3),
(6, 'voiture', 3),
(7, 'fleurs', 4),
(8, 'arbres', 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
