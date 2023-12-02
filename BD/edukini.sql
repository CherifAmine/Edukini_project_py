-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 14 avr. 2021 à 22:07
-- Version du serveur :  5.7.17
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `edukini`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `Login_Admin` int(8) NOT NULL,
  `Mdp` varchar(30) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `N_tel` int(11) NOT NULL,
  `Code` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`Login_Admin`, `Mdp`, `Nom`, `Prenom`, `Email`, `N_tel`, `Code`) VALUES
(9865112, 'Admin2021', 'Mohamed', 'Ben Abdallah', 'cherifmin0@gmail.com', 55124587, 'Mohamed123');

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `Nom_Classe` varchar(100) NOT NULL,
  `Login_Admin` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`Nom_Classe`, `Login_Admin`) VALUES
('DIIDWM 70', 9865112),
('DIIDWM 260', 9865112),
('DIIDWM 27', 9865112),
('DIIDWM 28', 9865112),
('DIIDWM 29', 9865112),
('DIIDWM 20', 9865112),
('DIIDWM 31', 9865112),
('DIIDWM 11', 9865112),
('DIIDWM 100', 9865112);

-- --------------------------------------------------------

--
-- Structure de la table `compte_rendu`
--

CREATE TABLE `compte_rendu` (
  `Nom_Compte_rendu` varchar(200) NOT NULL,
  `Nom_matiere` varchar(200) NOT NULL,
  `Nom_classe` varchar(200) NOT NULL,
  `Login_Etudiant` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compte_rendu`
--

INSERT INTO `compte_rendu` (`Nom_Compte_rendu`, `Nom_matiere`, `Nom_classe`, `Login_Etudiant`) VALUES
('Compte-rendu-TP2 (11).docx', 'python 3', 'DIIDWM 260', 9865115),
('Capture.png', 'python 3', 'DIIDWM 260', 9865115),
('testpy.py', 'python 3', 'DIIDWM 260', 9865115),
('Compte-rendu-TP2 (11) (7).docx', 'python 3.1', 'DIIDWM 260', 9865114);

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

CREATE TABLE `document` (
  `Nom_Document` varchar(200) NOT NULL,
  `Nom_matiere` varchar(200) NOT NULL,
  `Nom_classe` varchar(200) NOT NULL,
  `Login_Prof` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `document`
--

INSERT INTO `document` (`Nom_Document`, `Nom_matiere`, `Nom_classe`, `Login_Prof`) VALUES
('bienvenue.gif', 'python 3', 'DIIDWM 260', 9865119),
('Compte-rendu-TP2 (11).docx', 'python 3', 'DIIDWM 260', 9865115),
('151832712_262765425255619_3942103205503745180_n.jpg', 'python 3', 'DIIDWM 260', 9865115),
('mojo_core.dll', 'c#', 'DIIDWM 100', 9835199),
('c.html', 'python 3.1', 'DIIDWM 260', 9865113),
('resources.pak', 'c#', 'DIIDWM 100', 9835199);

-- --------------------------------------------------------

--
-- Structure de la table `emploi_de_temps`
--

CREATE TABLE `emploi_de_temps` (
  `id` int(11) NOT NULL,
  `Heures` varchar(200) NOT NULL,
  `Lundi` varchar(200) NOT NULL,
  `Mardi` varchar(200) NOT NULL,
  `Mercredi` varchar(200) NOT NULL,
  `Jeudi` varchar(200) NOT NULL,
  `Vendredi` varchar(200) NOT NULL,
  `Samedi` varchar(200) NOT NULL,
  `Nom_Classe` varchar(200) NOT NULL,
  `Login_Admin` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `emploi_de_temps`
--

INSERT INTO `emploi_de_temps` (`id`, `Heures`, `Lundi`, `Mardi`, `Mercredi`, `Jeudi`, `Vendredi`, `Samedi`, `Nom_Classe`, `Login_Admin`) VALUES
(70, '17h à 18h', '', '', '', 'python 3.1', '', '', 'DIIDWM 100', '9865112'),
(68, '15h à 16h', '', '', '', 'c#', '', '', 'DIIDWM 100', '9865112'),
(69, '16h à 17h', '', '', '', 'python 4', '', '', 'DIIDWM 100', '9865112'),
(30, '17h à 18h', '', '', '', '', '', '', 'DIIDWM 11', '9865112'),
(29, '16h à 17h', '', '', '', 'python 3.1', '', '', 'DIIDWM 11', '9865112'),
(28, '15h à 16h', '', '', '', '', '', '', 'DIIDWM 11', '9865112'),
(27, '14h à 15h', '', '', '', '', '', '', 'DIIDWM 11', '9865112'),
(26, '13h à 14h', '', '', '', '', 'python 3.1', '', 'DIIDWM 11', '9865112'),
(25, '12h à 13h', '', '', 'python 4', '', 'python 3.1', '', 'DIIDWM 11', '9865112'),
(24, '11h à 12h', '', 'python 3.1', 'python 4', '', '', '', 'DIIDWM 11', '9865112'),
(23, '10h à 11h', '', '', '', '', '', '', 'DIIDWM 11', '9865112'),
(66, '13h à 14h', '', '', '', '', '', '', 'DIIDWM 100', '9865112'),
(22, '09h à 10h', 'python 4', 'python 3.1', '', '', '', '', 'DIIDWM 11', '9865112'),
(67, '14h à 15h', '', '', '', '', '', '', 'DIIDWM 100', '9865112'),
(21, '08h à 09h', '', '', '', '', '', '', 'DIIDWM 11', '9865112'),
(65, '12h à 13h', '', '', '', '', '', '', 'DIIDWM 100', '9865112'),
(64, '11h à 12h', '', '', '', '', '', '', 'DIIDWM 100', '9865112'),
(63, '10h à 11h', '', 'python 3.1', '', '', '', '', 'DIIDWM 100', '9865112'),
(62, '09h à 10h', 'c#', '', '', '', '', '', 'DIIDWM 100', '9865112'),
(61, '08h à 09h', 'python 4', '', '', '', '', '', 'DIIDWM 100', '9865112');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `Login_Etudiant` int(8) NOT NULL,
  `Mdp` varchar(30) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `N_tel` int(11) NOT NULL,
  `Code` varchar(30) NOT NULL,
  `Nom_Classe` varchar(200) NOT NULL,
  `Login_Admin` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`Login_Etudiant`, `Mdp`, `Nom`, `Prenom`, `Email`, `N_tel`, `Code`, `Nom_Classe`, `Login_Admin`) VALUES
(9835166, '123', 'chouchou', 'bougofa', 'chiraz@gmail.com', 55127789, '123', 'DIIDWM 70', 9865112),
(9865333, '', '', '', '', 0, '', 'DIIDWM 260', 9865112),
(9865115, '', '', '', '', 0, '', 'DIIDWM 29', 9865112),
(8849833, '', '', '', '', 0, '', 'DIIDWM 31', 9865112),
(9865114, '123', 'cherif', 'Amine', 'amine@gmail.com', 55127798, '123', 'DIIDWM 260', 9865112),
(9835177, '123', 'chouchou', 'bougofa', 'chiraz@gmail.com', 22569854, '123', 'DIIDWM 100', 9865112);

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `Nom_matiere` varchar(200) NOT NULL,
  `Nom_classe` varchar(200) NOT NULL,
  `Login_Admin` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`Nom_matiere`, `Nom_classe`, `Login_Admin`) VALUES
('python 4', 'DIIDWM 260', 9865112),
('python 3.1', 'DIIDWM 260', 9865112),
('c#', 'DIIDWM 100', 9865112),
('programmation', 'DIIDWM 100', 9865112);

-- --------------------------------------------------------

--
-- Structure de la table `prof`
--

CREATE TABLE `prof` (
  `Login_Prof` int(8) NOT NULL,
  `Mdp` varchar(30) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `N_tel` int(11) NOT NULL,
  `Code` varchar(30) NOT NULL,
  `Login_Admin` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `prof`
--

INSERT INTO `prof` (`Login_Prof`, `Mdp`, `Nom`, `Prenom`, `Email`, `N_tel`, `Code`, `Login_Admin`) VALUES
(9865118, '', '', '', '', 0, '', 9865112),
(9835199, '123', 'Anwar', 'wali', 'anwar@gmail.com', 22926204, '123', 9865112),
(9865113, '123', 'karim', 'cherif', 'amine@gmail.com', 55127798, '123', 9865112);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`Login_Admin`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`Nom_Classe`);

--
-- Index pour la table `compte_rendu`
--
ALTER TABLE `compte_rendu`
  ADD PRIMARY KEY (`Nom_Compte_rendu`);

--
-- Index pour la table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`Nom_Document`);

--
-- Index pour la table `emploi_de_temps`
--
ALTER TABLE `emploi_de_temps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`Login_Etudiant`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`Nom_matiere`);

--
-- Index pour la table `prof`
--
ALTER TABLE `prof`
  ADD PRIMARY KEY (`Login_Prof`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `emploi_de_temps`
--
ALTER TABLE `emploi_de_temps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
