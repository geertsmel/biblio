-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 01 jan. 2024 à 11:17
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `biblio`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `auteur_id` int(11) NOT NULL,
  `nom` varchar(80) NOT NULL,
  `prenom` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`auteur_id`, `nom`, `prenom`) VALUES
(49, 'Anglade', 'Jean'),
(118, 'Astrabie', 'Sophie'),
(99, 'Atkins', 'Dani'),
(23, 'Bannalec', 'Jean-Luc'),
(9, 'Baron', 'Sylvie'),
(11, 'Benzoni', 'Juliette'),
(91, 'Blaine', 'Emily'),
(63, 'Bodin', 'Nathalie'),
(111, 'Bomann', 'Corina'),
(57, 'Bordes', 'Gilbert'),
(93, 'Borelli', 'Eve'),
(86, 'Boulouri', 'Johanna'),
(6, 'Bourdin', 'Françoise'),
(68, 'Bourdon', 'Françoise'),
(3, 'Brisby', 'Zoé'),
(81, 'Bru', 'Julia\r\n'),
(18, 'Bussi', 'Michel'),
(26, 'Cario', 'Daniel'),
(120, 'Cassegrain', 'Marie Claude'),
(92, 'Chauvy', 'Véronique'),
(78, 'Chavy', 'Isabelle'),
(90, 'Chomin', 'Cécile'),
(46, 'Christie', 'Agatha'),
(28, 'Coffe', 'Jean-Pierre'),
(15, 'Cornaille', 'Didier'),
(52, 'Coulonges', 'Georges'),
(17, 'Courchay', 'Claude'),
(22, 'D\'Onaglia', 'Frédérick'),
(70, 'de Palet', 'Marie'),
(58, 'Delomme', 'Martine'),
(10, 'Delorme', 'Philippe'),
(4, 'Dicker', 'Joël'),
(20, 'Duboscq', 'Geneviève'),
(53, 'Duplessy-Rousée', 'Carole'),
(69, 'Dupuy', 'Marie-Bernadette'),
(39, 'Duquesne', 'Jacques'),
(100, 'Duval', 'Alain'),
(94, 'Duval', 'Chloé'),
(36, 'Ellison', 'Andréa'),
(88, 'Endelys', 'Sophie'),
(60, 'Enders', 'Julia'),
(13, 'Festy', 'Danièle'),
(73, 'Fischer', 'Elise'),
(43, 'Fleming', 'Léah'),
(117, 'Fouchet', 'Lorraine'),
(42, 'Garcia', 'Kami'),
(108, 'Gardner', 'Lisa'),
(77, 'Giraud', 'Delphine'),
(8, 'Gounelle', 'Laurent'),
(12, 'Grimaldi', 'Virginie'),
(104, 'Guérin', 'Anaëlle'),
(54, 'Guyader', 'Nathalie'),
(103, 'Harmon', 'Amy\r\n'),
(48, 'Hendricks', 'Greer'),
(31, 'Higgings Clark', 'Mary'),
(37, 'Humbert', 'Denis'),
(89, 'Ienzer', 'Marine'),
(72, 'Jacobs', 'Anne'),
(34, 'Japrisot', 'Sébastien'),
(14, 'Jeury', 'Michel'),
(41, 'Kinsella', 'Sophie'),
(30, 'Konsalik', 'Heinz'),
(55, 'L.Hay', 'Louise'),
(7, 'Laborie', 'Christian'),
(101, 'Le Goasgoz', 'Marine'),
(109, 'Lebert', 'Karine'),
(16, 'Legardinier', 'Gilles'),
(74, 'Lemaire', 'Philippe'),
(27, 'Levy', 'Marc'),
(82, 'Lorrain', 'France'),
(75, 'Malroux', 'Antonin'),
(85, 'Manuel', 'Marlène'),
(51, 'Martel', 'Jacques'),
(61, 'Masson', 'Arthur'),
(19, 'Mayle', 'Peter'),
(29, 'Mazeau', 'Jacques'),
(24, 'McCoy', 'Sarah'),
(25, 'McKenzie', 'Sophie'),
(96, 'Mcpartlin', 'Anna'),
(35, 'Meyer', 'Stéphanie'),
(62, 'Meyer', 'Stephenie'),
(115, 'Michel', 'Anne'),
(47, 'Münzer', 'Hanni'),
(2, 'Musso', 'Guillaume'),
(67, 'Nelson Spielman', 'Lori'),
(102, 'Néron Morgat', 'Evelyne'),
(84, 'Norton', 'Claire'),
(40, 'Nothomb', 'Amélie'),
(56, 'Orsenna', 'Erik'),
(87, 'Pécassou', 'Bernadette'),
(64, 'Perrin', 'Valérie'),
(21, 'Persson', 'Gunilla Linn'),
(113, 'Peyrin', 'Laurence'),
(59, 'Pion', 'Marylène'),
(38, 'Pisco', 'Cristina'),
(95, 'Pluchard', 'Mireille'),
(116, 'Ponte', 'Carène'),
(97, 'Premoli', 'Anna'),
(110, 'Rees', 'Tracy'),
(71, 'Riley', 'Lucinda'),
(66, 'Roberts', 'Nora'),
(76, 'Roche', 'Florence'),
(83, 'Roussary', 'Jean-Pierre'),
(44, 'Rowling', 'J.K.'),
(112, 'Ryan', 'Jennifer'),
(105, 'Sabard', 'Clarisse'),
(45, 'Sabatier', 'Robert'),
(119, 'Sentenac', 'Victoire'),
(121, 'Sileme', 'Sandrine'),
(98, 'Swan', 'Karen'),
(5, 'Tal Men', 'Sophie'),
(1, 'Valognes', 'Aurélie'),
(65, 'Vareille', 'Marie'),
(33, 'Varel', 'Brigitte'),
(114, 'West', 'Rebecca');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`genre_id`, `nom`) VALUES
(1, 'Policier'),
(2, 'Romance'),
(3, 'Comédie'),
(5, 'Thriller'),
(6, 'Historique'),
(7, 'Santé'),
(8, 'Fantastique');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `livre_id` int(11) NOT NULL,
  `titre` varchar(500) NOT NULL,
  `fk_auteur` int(11) NOT NULL,
  `fk_genre` int(11) NOT NULL,
  `fk_support` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`livre_id`, `titre`, `fk_auteur`, `fk_genre`, `fk_support`) VALUES
(1, 'Mémé dans les orties', 1, 3, 1),
(2, 'En voiture Simone', 1, 3, 1),
(3, 'L\'inconnue de la Seine', 2, 1, 1),
(4, 'Plus on est de fous', 3, 3, 1),
(5, 'L\'affaire Alaska Sanders', 4, 1, 1),
(6, 'De battre la chamade', 5, 2, 1),
(7, 'Qui ne se plante pas ne pousse jamais', 5, 2, 1),
(8, 'Les égarés', 3, 5, 1),
(9, 'Un si bel horizon', 6, 2, 1),
(10, 'Minute, papillon', 1, 3, 1),
(11, 'Le tourbillon de la vie', 1, 3, 1),
(12, 'La cerise sur le gâteau', 1, 3, 1),
(15, 'Le pacte des filles du volcan', 9, 5, 1),
(16, 'Le meilleur est à venir', 6, 2, 1),
(17, 'Le jour où j\'ai appris à vivre', 8, 2, 1),
(18, 'L\'héritier du secret', 7, 2, 1),
(19, 'La guerre des duchesses 1\r\nLa fille du condamné\r\n', 11, 6, 1),
(20, 'Le gerfaut des brumes 2\r\nUne île sous le vent', 11, 6, 1),
(21, 'Le sang des Koenigsmark 2\r\nFils de l\'aurore', 11, 6, 1),
(24, 'Les possibles', 12, 3, 1),
(25, 'Je me soigne avec les huiles essentielles', 13, 7, 1),
(26, 'Le vol de la buse', 15, 2, 1),
(27, 'La grâce et le venin', 14, 2, 1),
(28, 'Quelqu\'un pour qui trembler', 16, 3, 1),
(29, 'Chronique d\'été', 17, 5, 1),
(30, 'Une chance sur un milliard', 16, 3, 1),
(31, 'Sans regrets', 6, 2, 1),
(32, 'Entre mes doigts coule le sable', 5, 2, 1),
(33, 'Gravé dans le sable', 18, 5, 1),
(34, 'Et soudain tout change', 16, 3, 1),
(35, 'Demain j\'arrête', 16, 3, 1),
(36, 'Dans la nuit du débarquement', 20, 6, 1),
(37, 'Par-delà les glaces', 21, 2, 1),
(38, 'Cap Amiral', 22, 2, 1),
(39, 'L\'appel de l\'ange', 2, 5, 1),
(40, 'Embrouille en Provence\r\nChâteau de l\'arnaque', 19, 1, 1),
(41, 'Complètement cramé!', 16, 3, 1),
(42, 'Les coiffes rouges', 26, 2, 1),
(43, 'Arrêtons de manger de la merde!', 28, 7, 1),
(44, 'Les loups de Lauzargues\r\n1 Jean de la nuit\r\n2 Hortense au point du jour\r\n3 Félicia au soleil couchant', 11, 6, 1),
(45, 'Jean des lointains', 17, 2, 1),
(46, 'Le gerfaut des brumes 1\r\nLes canons de Yorktown', 11, 6, 1),
(47, 'Appelle-moi', 25, 5, 1),
(48, 'La bonne étoile d\'Elsie', 24, 2, 1),
(49, 'Étrange printemps aux glénan', 23, 1, 1),
(50, 'La guerre des duchesses 2 Princesse des Vandales', 11, 6, 1),
(51, 'Le faux pas\r\nNoël avant l\'heure', 22, 2, 1),
(52, 'L\'horizon à l\'envers', 27, 2, 1),
(53, 'Le retour tragique', 30, 2, 1),
(54, 'Le retour des hirondelles', 29, 2, 1),
(55, 'Hésitation', 35, 2, 1),
(56, 'Avant de te dire Adieu', 31, 5, 1),
(57, 'Demain', 2, 5, 1),
(58, 'Un long dimanche de fiançailles', 34, 2, 1),
(59, 'Emma', 33, 5, 1),
(60, 'La maison du guet', 31, 5, 1),
(61, 'Mémoire enfouie', 33, 5, 1),
(62, 'Au cabaret des oiseaux', 14, 2, 1),
(63, 'Un cri dans la nuit', 31, 5, 1),
(64, 'Lune de papier', 38, 2, 1),
(65, 'La dent du loup', 37, 5, 1),
(66, 'La Rouvraie', 37, 5, 1),
(67, 'Sous le regard de l\'ange', 36, 1, 1),
(68, 'Ne pleure pas ma belle', 31, 5, 1),
(69, 'La malédiction de Bellary', 29, 5, 1),
(70, 'Catherine courage', 39, 2, 1),
(71, 'Acide sulfurique', 40, 2, 1),
(72, 'Biographie de la faim', 40, 2, 1),
(73, 'Ni vue ni connue', 31, 5, 1),
(74, 'L\'accro du shopping à Hollywood', 41, 2, 1),
(75, 'La fille de Brooklyn', 2, 1, 1),
(76, 'Il est grand temps de rallumer les étoiles', 12, 3, 1),
(77, 'L\'appel du sang', 35, 2, 1),
(78, 'Le premier jour', 27, 2, 1),
(79, 'Mercure', 40, 5, 1),
(80, 'Stupeur et tremblements', 40, 5, 1),
(81, 'Le premier jour du reste de ma vie', 12, 3, 1),
(82, 'Témoin indésirable', 46, 1, 1),
(83, 'La souris verte', 45, 2, 1),
(84, 'L\'enfant du Titanic', 43, 2, 1),
(85, '19 lunes', 42, 5, 1),
(86, 'Né sous une bonne étoile', 1, 3, 1),
(87, 'Le livre des Baltimore', 4, 2, 1),
(88, 'Au nom de ma mère', 47, 2, 1),
(89, 'Le retour de Jean', 29, 2, 1),
(90, 'La disparition de Stéphanie Mailer', 4, 1, 1),
(91, 'Harry Potter à l\'école des sorciers', 44, 8, 1),
(92, 'La jeune fille et la nuit', 2, 1, 1),
(93, 'Pour un instant d\'éternité', 16, 5, 1),
(94, 'Gran Paradiso', 6, 2, 1),
(95, 'L\'instant présent', 2, 5, 1),
(96, 'Chère Mamie', 12, 3, 1),
(97, 'La clinique du Docteur H.', 31, 5, 1),
(98, 'Le démon du passé', 31, 5, 1),
(99, 'Le parfum du bonheur est plus fort sous la pluie', 12, 3, 1),
(100, 'Et que ne durent que les moments doux', 12, 2, 1),
(101, 'La vérité sur l\'affaire Harry Québert', 4, 1, 1),
(102, 'Le grand dictionnaire des malaises et des maladies', 51, 7, 1),
(103, 'Des amants de porcelaine', 52, 2, 1),
(104, 'La soupe à la fourchette', 49, 2, 1),
(105, 'Une femme entre nous', 48, 5, 1),
(111, '7 ans après', 2, 1, 1),
(112, 'Central Park', 2, 1, 1),
(113, 'Vaut-il mieux être toute petite ou abandonné à la naissance', 16, 2, 1),
(114, 'La partition des illusions', 22, 2, 1),
(115, 'l\'exil des anges', 16, 5, 1),
(116, 'Aliénor d\'Aquitaine', 11, 6, 1),
(117, 'Le jeu de l\'amour et de la mort', 11, 6, 1),
(118, 'Le vol du Sancy - Des carats pour Ava?', 11, 1, 1),
(121, 'Le sang des Koeningsmark 1 Aurore', 11, 6, 1),
(122, 'Catherine 1 Il suffit d\'un amour', 11, 6, 1),
(123, 'Catherine 2 Belle Catherine', 11, 6, 1),
(124, 'Catherine 3 Les routes incertaines', 11, 6, 1),
(125, 'Catherine 4 Piège pour Catherine', 11, 6, 1),
(126, 'Catherine 5 La dame de Montsalvy', 11, 6, 1),
(127, 'Le bal des poignards 1 La dague au lys rouge', 11, 6, 1),
(128, 'Ces femmes du grand siècle', 11, 6, 1),
(129, 'La petite peste et le chat botté', 11, 6, 1),
(130, 'Le roman des châteaux de France', 11, 6, 1),
(131, 'Marianne 1 Une étoile pour Napoléon', 11, 6, 1),
(132, 'Marianne 2 Et l\'inconnu de Toscane', 11, 6, 1),
(133, 'Marianne 3 Jason des quatre mers', 11, 6, 1),
(134, 'Marianne 4 Toi, Marianne', 11, 6, 1),
(135, 'Marianne 5 Les lauriers de flammes', 11, 6, 1),
(136, 'Le bal des poignards 2 Le couteau de Ravaillac', 11, 6, 1),
(137, 'Retour aux sources', 22, 2, 1),
(138, 'Le pacte du silence', 58, 5, 1),
(139, 'La disparue de Saint-Sauveur', 57, 5, 1),
(140, 'La révolte des accents', 56, 2, 1),
(141, 'Tout va bien', 55, 7, 1),
(142, 'A corps ouvert', 54, 1, 1),
(143, 'Demain peut-être', 53, 2, 1),
(144, 'Les murmures de l\'olivier', 22, 1, 1),
(145, 'ça peut pas rater', 16, 3, 1),
(148, 'La fille du delta', 22, 2, 1),
(150, 'Les infirmières de Notre-Dame 1,2 et 3', 59, 2, 1),
(151, 'La promesse à Elise', 7, 2, 1),
(152, 'Orage sur la Provençale', 22, 2, 1),
(153, 'Les émeraudes du prophète', 11, 1, 1),
(154, 'Le premier miracle', 16, 1, 1),
(155, 'Mémoires effacées', 22, 1, 1),
(156, 'Le charme discret de l\'intestin', 60, 7, 1),
(157, 'Harry Potter et l\'enfant maudit 1 et 2', 44, 8, 1),
(158, 'L\'honneur des Bastide', 22, 2, 1),
(159, '16 lunes', 42, 8, 1),
(160, 'Toine Culot obèse ardennais', 61, 3, 1),
(161, 'La mémoire des Bastide', 22, 2, 1),
(162, '18 lunes', 42, 8, 1),
(163, 'Harry Potter et les reliques de la mort', 44, 8, 1),
(164, 'Harry Potter et l\'ordre du phénix', 44, 8, 1),
(165, 'Harry Potter et le prince de sang-mélé', 44, 8, 1),
(166, '17 lunes', 42, 8, 1),
(167, 'Twilight, à la vie, à la mort', 62, 8, 1),
(168, 'Twilight, révélation', 62, 8, 1),
(169, 'Vivre avec Ho\'oponopono', 63, 7, 1),
(170, 'Les oubliés du dimanche', 64, 2, 2),
(171, 'Changer l\'eau des fleurs', 64, 2, 2),
(172, 'Chloé, Constance et Jane Austen', 65, 2, 2),
(173, 'Les marais sanglants de Guérande', 23, 1, 2),
(175, 'Les amants de l\'hiver', 66, 2, 2),
(176, 'Tout ce qui nous répare', 67, 3, 2),
(177, 'Retour au pays bleu', 68, 2, 2),
(178, 'La combe aux oliviers', 68, 2, 2),
(179, 'Le vent de l\'aube', 68, 2, 2),
(180, 'La maison de Charlotte', 68, 2, 2),
(181, 'Les héritières de la Salamandre', 68, 2, 2),
(182, 'La saga du moulin du loup\r\n1 Le moulin du loup\r\n2 Le chemin des falaises\r\n3 Les tristes noces\r\n4 La grotte aux fées\r\n5 Les ravages de la passion\r\n6 Les occupants du domaine', 69, 2, 2),
(183, 'Mademoiselle Fine', 70, 2, 2),
(184, 'La demoiselle', 70, 3, 2),
(185, 'Crime gourmand à Saint-Malo', 23, 1, 2),
(186, 'L\'orpheline des neiges \r\n1 L\'orpheline des neiges \r\n4 Les marionnettes du destin \r\n5 Les portes du passé', 69, 2, 2),
(187, 'Serment d\'automne', 6, 2, 2),
(188, 'Les sept soeurs\r\n1 Maïa\r\n2 La soeur de la tempête\r\n3 La soeur de l\'ombre\r\n4 La soeur à la perle\r\n5 La soeur de la lune\r\n6 La soeur du soleil\r\n7 La soeur disparue\r\n8 Atlas l\'histoire de Pa Salt', 71, 2, 2),
(189, 'L\'étrange locataire de Madame Eliot', 9, 2, 2),
(190, 'Les secrets de la Truyère', 9, 2, 2),
(191, 'Impasse des demoiselles', 9, 2, 2),
(192, 'Le destin de Marie', 70, 2, 2),
(194, 'La fontaine aux violettes', 68, 2, 2),
(195, 'Le scandale des eaux folles T1', 69, 2, 2),
(196, 'L\'orpheline de Manhattan Partie 1', 69, 2, 2),
(197, 'Le mystère de Soline\r\n3 Un chalet sous la neige', 69, 2, 2),
(198, 'L\'héritier des Beaulieu', 6, 2, 2),
(199, 'Les chemins de garance', 68, 3, 2),
(200, 'Le moulin des sources', 68, 2, 2),
(201, 'La grange de Rochebrune', 68, 2, 2),
(202, 'Le silence des hautes-terres', 9, 5, 2),
(203, 'Le secret du pressoir', 73, 2, 2),
(204, 'Le Mas Lucille', 74, 2, 2),
(205, 'Compagnons de fortune', 74, 3, 2),
(206, 'Le crépuscule des chimères', 74, 2, 2),
(207, 'Le rêve de Marie-Hélise', 75, 3, 2),
(208, 'La trahison des Combes', 76, 2, 2),
(209, 'L\'héritage maudit', 76, 3, 2),
(210, 'Les hautes terres', 76, 2, 2),
(211, 'La maison du mystère', 66, 1, 2),
(214, 'Eve Dallas\r\n1 Au commencement du crime', 66, 1, 2),
(215, 'Eve Dallas\n2 Crime pour l\'exemple', 66, 1, 2),
(216, 'Eve Dallas\r\n3 Au bénéfice du crime', 66, 1, 2),
(217, 'Eve Dallas\n4 Crimes en cascade', 66, 1, 2),
(218, 'Eve Dallas\r\n5 Cérémonie du crime', 66, 1, 2),
(219, 'Eve Dallas\r\n6 Au coeur du crime', 66, 1, 2),
(220, 'Eve Dallas\r\n7 Les bijoux du crime', 66, 1, 2),
(221, 'Eve Dallas\r\n7.5 Crime de minuit', 66, 1, 2),
(222, 'Eve Dallas\r\n8 Conspiration du crime', 66, 2, 2),
(223, 'Eve Dallas\r\n9 Candidat au crime', 66, 1, 2),
(224, 'Eve Dallas\r\n10 Témoin du crime', 66, 1, 2),
(225, 'Eve Dallas\r\n11 La loi du crime', 66, 1, 2),
(226, 'Eve Dallas\r\n12 Au nom du crime', 66, 1, 2),
(227, 'Eve Dallas\r\n12.5 Interlude du crime', 66, 1, 2),
(228, 'Eve Dallas\r\n13 Fascination du crime', 66, 1, 2),
(229, 'Eve Dallas\r\n14 Réunion du crime', 66, 1, 2),
(230, 'Eve Dallas\r\n15 Pureté du crime', 66, 1, 2),
(231, 'Eve Dallas\r\n16 Portrait du crime', 66, 1, 2),
(232, 'Eve Dallas\r\n17 Imitation du crime', 66, 1, 2),
(233, 'Eve Dallas\r\n18 Division du crime', 66, 1, 2),
(234, 'Eve Dallas\r\n19 Visions du crime', 66, 1, 2),
(235, 'Eve Dallas\r\n20 Sauvée du crime', 66, 1, 2),
(236, 'Eve Dallas\r\n21 Aux sources du crime', 66, 1, 2),
(237, 'Eve Dallas\r\n22 Souvenir du crime', 66, 1, 2),
(238, 'Eve Dallas\r\n22.5 Hanté par le crime', 66, 1, 2),
(239, 'Eve Dallas\r\n23 Naissance du crime', 66, 1, 2),
(240, 'Eve Dallas\r\n24 Candeur du crime', 66, 1, 2),
(241, 'Eve Dallas\r\n24.5 Crimes sans fin, Éternité du crime', 66, 1, 2),
(242, 'Eve Dallas\r\n25 L\'art du crime', 66, 1, 2),
(243, 'Eve Dallas\r\n26 Scandale du crime', 66, 1, 2),
(244, 'Eve Dallas\n27 L\'autel du crime', 66, 2, 2),
(245, 'Eve Dallas\r\n27.5 Crime rituel', 66, 1, 2),
(246, 'Eve Dallas\r\n28 Promesses du crime', 66, 2, 2),
(247, 'Eve Dallas\r\n29 Filiation du crime', 66, 1, 2),
(248, 'Eve Dallas\r\n29.5 Mémoire du crime', 66, 2, 2),
(249, 'Eve Dallas\r\n30 Fantaisie du crime', 66, 2, 2),
(250, 'Eve Dallas\r\n31 Addiction au crime', 66, 1, 2),
(251, 'Eve Dallas\r\n31.5 Addiction et Chaos', 66, 1, 2),
(252, 'Eve Dallas\r\n32 Perfidie du crime', 66, 1, 2),
(253, 'Eve Dallas\r\n33 Crimes de NY à Dallas', 66, 1, 2),
(254, 'Eve Dallas\r\n33.5 Dans l\'enfer du crime', 66, 1, 2),
(255, 'Les fiancés du Rhin', 69, 2, 2),
(256, 'La fille qui n\'aimait pas Noël', 3, 3, 2),
(257, 'L\'amoureuse de Noël', 66, 3, 2),
(258, 'Les 3 soeurs\r\n1 Maggie la rebelle\r\n2 Douce Brianna\r\n3 Shanon apprivoisée\r\n', 66, 2, 2),
(259, '3 rêves\r\n1 Orgueilleuse Margo\r\n2 Kate l\'indomptable\r\n3 La blessure de Laura\r\n', 66, 2, 2),
(260, 'Les frères Quinn\r\n1 Dans l\'océan de tes yeux\r\n2 Sables mouvants\r\n3 A l\'abri des tempêtes\r\n4 Les rivages de l\'amour', 66, 2, 2),
(261, 'L\'île des trois soeurs\r\n1 Nell\r\n2 Ripley\r\n3 Mia', 66, 8, 2),
(262, 'L\'hôtel des souvenirs\r\n1 Un parfum de chèvrefeuille\r\n2 Comme par magie\r\n3 Sous le charme', 66, 8, 2),
(263, 'Les 3 clés\r\n1 La quête de Malory\r\n2 La quête de Diana\r\n3 La quête de Zoé', 66, 8, 2),
(264, 'Le secret des fleurs\r\n1 Le dahlia bleu\r\n2 La rose noire\r\n3 le lys pourpre', 66, 2, 2),
(265, 'Le cercle blanc\r\n1 La croix de Morrigan\r\n2 La danse des dieux\r\n3 La vallée du silence', 66, 8, 2),
(266, 'Quatre saisons de fiançailles\r\n1 Rêves en blanc', 66, 2, 2),
(267, 'Les héritiers de Sorsha\r\n1 A l\'aube du grand amour\r\n2 A l\'heure où les coeurs s\'éveillent\r\n3 Au crépuscule des amants', 66, 8, 2),
(268, 'Les étoiles de la fortune\r\n1 Sasha\r\n2 Annika\r\n3 Riley', 66, 8, 2),
(269, 'Fééries\r\n1 Le château des secrets\r\n2 L\'étoile d\'argent\r\n3 La forêt enchantée', 66, 8, 2),
(270, 'Le destin des Mac Kade', 66, 2, 2),
(271, 'La saga des Stanislaski', 66, 2, 2),
(272, 'Il est temps d\'aimer', 53, 2, 2),
(281, 'Le manège de la vie', 77, 2, 2),
(282, 'Le chant de l\'océan', 69, 2, 2),
(284, 'Lara \r\n1 La ronde des soupçons 1 et 2\r\n2 La valse des suspects 1 et 2\r\n3 La danse macabre 1 et 2', 69, 5, 2),
(285, 'Un jour de neige à Angoulème', 69, 2, 2),
(286, 'Le refuge aux roses', 69, 2, 2),
(287, 'La saga d\'Angélina\r\n1 Les mains de la vie\r\n2 Le temps des délivrances\r\n3 Le souffle de l\'aurore', 69, 2, 2),
(288, 'Amélia au coeur de l\'exil', 69, 2, 2),
(289, 'Les amants du presbytère', 69, 2, 2),
(290, 'Les ravages de la passion', 69, 2, 2),
(291, 'Les disparus de Trégastel', 23, 1, 2),
(292, 'Enquête troublante à Concarneau', 23, 1, 2),
(293, 'Les secrets de Brocéliande', 23, 1, 2),
(294, 'Péril en mer d\'Iroise', 23, 1, 2),
(295, 'Un été à Pont-Aven', 23, 1, 2),
(296, 'Les enquêtes de Maude Delage\r\nNuits à hauts risques', 69, 1, 2),
(297, 'Les enquêtes de Maude Delage\r\n1 Les croix de la pleine lune\r\n2 Drame à Bouteville', 69, 1, 2),
(298, 'Les enquêtes de Maude Delage\n1 Cognac, un festival meurtrier\n2 Vent de terreur sur Baignes', 69, 1, 2),
(299, 'Pain perdu et bachata', 81, 2, 1),
(301, 'Le secret de la cité sans soleil', 16, 2, 2),
(302, 'Le manège de la vie\r\n', 77, 2, 2),
(303, 'Un soupçon d\'interdit', 6, 2, 2),
(304, 'La promesse des Gélinas 1,2', 82, 2, 2),
(305, 'L\'institutrice de Saint-Jean', 83, 2, 2),
(306, 'En ton âme et conscience', 84, 2, 2),
(307, 'Les silences de l\'île', 85, 2, 2),
(308, 'Comment ne pas faire pitié à Noël quand on est célibataire', 86, 3, 2),
(309, 'Dans les yeux d\'Ana', 7, 2, 2),
(310, 'L\'hôtelière de Lourdes', 87, 2, 2),
(311, 'Hors saison', 6, 2, 2),
(312, 'Les gardiennes du silence', 88, 5, 2),
(313, 'Si loin, si proches', 6, 2, 2),
(314, 'Vers un autre rivage', 89, 2, 2),
(315, '7 bonnes raisons de rester célibataire ou pas', 90, 3, 2),
(316, 'All i want for Christmas', 91, 3, 2),
(317, 'Aux douceurs du temps', 92, 2, 2),
(318, 'Comment le faire craquer en 10 leçons', 86, 3, 2),
(319, 'Comment prendre en main sa vie sexuelle', 86, 3, 2),
(320, 'C\'est arrivé la nuit', 27, 2, 2),
(321, 'Coffret de 3 comédies romantiques\r\n1 En plus, il cuisine (Morelli Angéla)\r\n2 Hot love challenge (Chomin cécile)\r\n3 toi, moi, les éléphants et Dark Vador (Borelli Eve)\r\n', 90, 3, 2),
(322, 'Devine qui vient pour Noël', 93, 3, 2),
(323, 'A sa rencontre', 94, 2, 2),
(324, 'Cher père Noël', 94, 2, 2),
(325, 'Parce que c\'est toi\r\n1. Envers et contre toi\r\n2. Au bout du monde', 94, 2, 2),
(326, 'Ghost in love', 27, 2, 2),
(327, 'Hot love', 90, 3, 2),
(328, 'l\'orpheline de Saint-Aubin', 78, 2, 2),
(329, 'La vie est un roman', 2, 2, 2),
(330, 'La vie leur appartient', 22, 2, 2),
(331, 'La vie secrète des écrivains', 2, 2, 2),
(332, 'Le dernier géant', 16, 8, 2),
(333, 'L\'énigme de la chambre 622', 4, 5, 2),
(334, 'Les couleurs du destin', 95, 2, 2),
(336, 'Les enfants du val fleuri', 7, 2, 2),
(337, 'Le sceau des maîtres', 16, 8, 2),
(338, 'Les douze folies d\'Emma', 90, 5, 2),
(339, 'Les yeux couleur de pluie', 5, 2, 2),
(340, 'L\'infini des possibles', 67, 2, 2),
(341, 'Mes voisins, mon fantasme et moi', 90, 3, 2),
(342, 'Mon midi, mon minuit', 96, 3, 2),
(343, 'Parfaitement imparfaite', 91, 3, 2),
(344, 'Pas facile d\'être une fille facile', 97, 3, 2),
(345, 'Pour ton bien', 91, 2, 2),
(346, 'Pretty wife', 90, 3, 2),
(347, 'Rencontre non préméditée', 90, 3, 2),
(348, 'Skidamarink', 2, 2, 2),
(349, 'Toi, moi, maintenant ou jamais', 91, 2, 2),
(350, 'Un été sans toi', 98, 2, 2),
(351, 'Une seconde chance', 99, 2, 2),
(352, 'Un sourire à tomber', 16, 3, 2),
(353, 'A la vie, à la mer', 102, 2, 2),
(354, 'A un souffle de ta voix\r\n', 89, 2, 2),
(355, 'Abigaël, messagère des anges 1, 2, 3, 4, 5 et 6', 66, 2, 2),
(356, 'Ce que murmure le vent', 103, 2, 2),
(357, 'Cinq meurtres pour cinq clochers', 100, 5, 2),
(358, 'Doucement renaît le jour', 77, 2, 2),
(359, 'La fille des pierres\r\n1 La chute du guetteur\r\n2 L\'appel de Tarent\r\n3 Par delà le sang\r\n', 101, 8, 2),
(362, 'Hier ou demain', 104, 2, 2),
(364, 'Le jardin des cyprès', 68, 2, 2),
(374, 'Les couleurs du silence', 77, 2, 2),
(375, 'L\'éclair d\'argent', 92, 2, 2),
(376, 'Une promesse bleu horizon', 92, 2, 2),
(377, 'Le dernier salut de l\'amazone', 92, 2, 2),
(378, 'La villa aux étoffes\r\n1 La villa aux étoffes\r\n2 Les filles de la villa aux étoffes\r\n3 L\'héritage de la villa aux étoffes\r\n4 Retour à la villa aux étoffes\r\n5 Tempête sur la villa aux étoffes\r\n6 Les adieux à la villa aux étoffes', 72, 2, 2),
(379, 'Un ténébreux amant', 66, 2, 2),
(380, 'A travers la nuit et le vent', 68, 2, 2),
(381, 'Piège mortel à Belle Île', 23, 1, 2),
(382, 'L\'homme de leur vie', 6, 2, 2),
(383, 'La maison de l\'orchidée', 71, 2, 2),
(384, 'La vie rêvée des chaussettes orphelines', 65, 2, 2),
(385, 'Le secret d\'Helena', 71, 2, 2),
(386, 'La jeune fille sur la falaise', 71, 2, 2),
(387, 'La femme au manteau violet', 105, 2, 2),
(388, 'La Ritournelle', 1, 1, 1),
(389, 'La promesse d\'une île', 5, 1, 1),
(390, 'L\'enfant oublié', 70, 2, 2),
(391, 'Le secret de Clara\r\nL\'héritage de Clara', 6, 2, 2),
(392, 'Le maître du Castellar', 68, 2, 2),
(393, 'A la lumière de nos jours', 105, 2, 2),
(394, 'Le jardin de l\'oubli', 105, 2, 2),
(395, 'Ceux qui voulaient voir la mer', 105, 2, 2),
(396, 'Et nous danserons sous les flocons', 105, 2, 2),
(398, 'Les feux de Noël', 69, 2, 2),
(399, 'Rendez-vous sous les flocons', 94, 2, 2),
(400, 'Les femmes de Cardabelle', 70, 2, 2),
(401, 'Tistou', 70, 2, 2),
(402, 'On ne meurt que deux fois', 108, 1, 2),
(403, 'Le septième mois', 108, 1, 2),
(404, 'Le moulin du prieuré', 95, 2, 2),
(405, 'Les mystères de Camille', 109, 2, 2),
(406, 'Sidonie des bastides', 70, 2, 2),
(407, 'Dans les pas d\'Ariane', 6, 2, 2),
(408, 'La promesse de l\'océan', 6, 2, 2),
(409, 'Les sirènes de Saint Malo', 6, 2, 2),
(410, 'La camargaise', 6, 2, 2),
(411, 'Un été de canicule', 6, 2, 2),
(412, 'Rendez vous à Kerloc\'h', 6, 2, 2),
(413, 'Le testament d\'Ariane', 6, 2, 2),
(414, 'Quelqu\'un de bien', 6, 2, 2),
(415, 'Eve Dallas\r\n34 Célébrités du crime', 66, 1, 2),
(416, 'Eve Dallas\r\n37 Insolence du crime', 66, 1, 2),
(417, 'Eve Dallas\r\n36 Préméditation du crime', 66, 1, 2),
(418, 'Eve Dallas\r\n37.5 Crimes pour vengeance', 66, 1, 2),
(419, 'Eve Dallas\r\n38 De crime en crime', 66, 1, 2),
(420, 'Eve Dallas\r\n39 Crime en fête', 66, 1, 2),
(421, 'Eve Dallas\r\n40 Obsession du crime', 66, 1, 2),
(422, 'Eve Dallas\r\n35 Démence du crime', 66, 1, 2),
(423, 'Le manoir aux roses', 110, 2, 2),
(424, 'Le mas de la sarrasine', 95, 2, 2),
(425, 'Noa', 27, 5, 1),
(426, 'Istria', 89, 8, 2),
(427, 'Une belle vie', 12, 2, 1),
(428, 'Le pré d\'Anna', 70, 2, 2),
(429, 'Le coeur à l\'envers', 53, 2, 2),
(430, 'L\'île aux papillons', 111, 2, 2),
(431, 'La chorale des dames de Chilbury', 112, 1, 1),
(432, 'Trois cowboys à aimer', 112, 1, 1),
(433, 'Une femme sous la menace', 66, 1, 2),
(434, 'Nom de jeune fille', 6, 2, 2),
(435, 'Le mas des tilleuls', 68, 2, 2),
(436, 'Le sentier aride\r\n', 70, 2, 2),
(437, 'Le valet de pique\r\n', 70, 2, 2),
(438, 'Ma chérie', 113, 2, 2),
(439, 'Sous le soleil de soledad', 113, 2, 2),
(440, 'Les lettres de Rose', 105, 1, 2),
(441, 'L\'amour écorché', 69, 2, 2),
(442, 'Le village retrouvé', 70, 2, 2),
(443, 'Jeanne courage', 70, 2, 2),
(444, 'Le vent sur la vallée', 70, 2, 2),
(445, 'Le temps des aubépines', 70, 2, 2),
(446, 'Une nouvelle vie', 6, 2, 2),
(447, 'Les roses sont éternelles', 68, 2, 2),
(448, 'La nuit de l\'amandier', 68, 2, 2),
(449, 'La famille Aubrey', 114, 2, 2),
(450, 'La plage de la mariée', 105, 2, 2),
(451, 'Matin d\'écume', 115, 2, 2),
(452, 'Lunettes noires, peau de banane et Saint-Valentin', 116, 2, 2),
(453, 'D\'ici là, porte-toi bien', 116, 2, 2),
(454, 'Couleur champagne', 117, 2, 2),
(455, 'Le pacte d\'Avril', 118, 2, 2),
(456, 'Les sortilèges du Tremblay', 109, 2, 2),
(457, 'Le destin d\'une insoumise', 66, 2, 2),
(458, 'Les brumes du Causse', 70, 2, 2),
(459, 'Le chemin de rocailles', 70, 2, 2),
(460, 'Amandine', 70, 2, 2),
(461, 'Céline, une vie toute simple', 70, 2, 2),
(462, 'Les terres bleues', 70, 2, 2),
(463, 'Le fils maudit', 68, 2, 2),
(464, 'La roche au loup', 68, 2, 2),
(465, 'Une si longue haine', 58, 2, 2),
(466, 'De soie et de cendres', 95, 2, 2),
(467, 'Nina et ses soeurs', 109, 2, 2),
(468, 'Mon tour de manège', 16, 3, 1),
(469, 'A faire voler nos âmes', 119, 2, 2),
(470, 'Un camaïeu de gris et de beige', 120, 2, 2),
(471, 'Un jour de plus', 121, 2, 2),
(472, 'Le temps volé', 94, 2, 2),
(473, 'Chère Mamie, tu vas rire...', 12, 3, 1),
(474, 'Eve Dallas\r\n41 Pour l\'amour du crime', 66, 1, 2),
(475, 'Eve Dallas\r\n41.5 Crimes par trois', 66, 1, 2),
(476, 'Eve Dallas\r\n42 Confusion du crime', 66, 1, 2),
(477, 'Eve Dallas\r\n43 Crimes sous silence', 66, 1, 2),
(478, 'Eve Dallas\r\n44 Les noces du crime', 66, 1, 2),
(479, 'Eve Dallas\r\n45 Révélations du crime', 66, 1, 2),
(480, 'Eve Dallas\r\n46 Le crime est une oeuvre', 66, 1, 2),
(481, 'Eve Dallas\r\n47 Crime et complot', 66, 1, 2),
(482, 'Eve Dallas\r\n48 Les dessous du crime', 66, 1, 2),
(483, 'Eve Dallas\r\n49 Crimes pour vendetta', 66, 1, 2),
(484, 'Les enquêtes de Maud Delage\r\n1. Du sang sous les collines\r\n2. Un cri explosif', 69, 1, 2),
(485, 'A feu et à sang', 6, 2, 2),
(486, 'Au nom du père', 6, 2, 2),
(487, 'Berill ou la passion en héritage', 6, 2, 2),
(488, 'BM Blues', 6, 2, 2),
(489, 'La forge au Loup', 68, 2, 2),
(490, 'La cour aux paons', 68, 2, 2),
(491, 'Le bois de lune', 68, 2, 2),
(492, 'Le maitre ardoisier', 68, 2, 2),
(493, 'Les tisserands de la Licorne', 68, 2, 2),
(494, 'Le vent de Laube', 68, 2, 2),
(495, 'Les bateliers du Rhone', 68, 2, 2),
(496, 'Les dames de Meuse', 68, 2, 2),
(497, 'La maison du cap', 68, 2, 2),
(499, 'Le secret de Belle Epine', 68, 2, 2),
(500, 'Retour en Provence', 68, 2, 2),
(502, 'Pour oublier la nuit', 68, 2, 2),
(503, 'A l\'ombre du bonheur', 53, 2, 2),
(504, 'Comme un frère', 6, 2, 2),
(505, 'L\'inconnu de Port Bélon', 23, 1, 2),
(506, 'Dans le silence de l\'aube', 6, 2, 2),
(507, 'D\'eau et de feu', 6, 2, 2),
(508, 'D\'espoir et de promesse', 6, 2, 2),
(509, 'Toutes les dernières fois', 53, 2, 2),
(510, 'Face à la mer', 6, 2, 2),
(511, 'Jack et le grande aventure du cochon de Noël', 44, 3, 2),
(512, 'La maison des Aravis', 6, 2, 2),
(513, 'Le choix d\'une femme libre', 6, 2, 2),
(514, 'La saga du lac Saint-Jean\r\n1. Le scandale des eaux folles\r\n2. Les sortilèges du lac', 69, 2, 2),
(515, 'Le silence d\'Amarine', 53, 2, 2),
(516, 'Les années passion', 6, 2, 2),
(517, 'Le bois de Battandière', 6, 2, 2),
(518, 'Les vendanges de juillet', 6, 2, 2),
(519, 'llckabog', 44, 8, 2),
(520, 'L\'inconnue de Peyrolles', 6, 2, 2),
(521, 'L\'Orpheline de Manhattan\r\n1. L\'Orpheline de Manhattan T1 et 2\r\n2. Les lumières de Brodway T1 et2\r\n3. Les larmes de l\'Hudson', 69, 2, 2),
(522, 'La saga des bories\r\n1. L\'orpheline du bois des loups\r\n2. La demoiselle des bories ', 69, 2, 2),
(523, 'Mano a mano', 6, 2, 2),
(525, 'Objet de toutes les convoitises', 6, 2, 2),
(526, 'Rendez-vous à Pigalle', 94, 2, 2),
(528, 'Un cadeau inespéré', 6, 2, 2),
(529, 'Trois dames de coeur et atout pique', 53, 2, 2),
(530, 'Un mariage d\'amour', 6, 2, 2),
(532, 'Une passion fauve', 6, 2, 2),
(533, 'Le souffle des rêves', 105, 2, 2),
(534, 'Un air d\'éternité', 105, 2, 2),
(535, 'Les chemins de promesse', 95, 2, 2),
(536, 'La belle italienne', 71, 2, 2),
(537, 'La lettre d\'amour interdite', 71, 2, 2),
(538, 'La vie a plus d\'imagination que nous', 105, 2, 2),
(539, 'La vie est belle et drôle à la fois', 105, 2, 2),
(540, 'Le domaine de l\'héritière', 71, 2, 2),
(541, 'Les murmures du château', 71, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `support`
--

CREATE TABLE `support` (
  `support_id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `support`
--

INSERT INTO `support` (`support_id`, `nom`) VALUES
(1, 'Papier'),
(2, 'Ebook');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`auteur_id`),
  ADD UNIQUE KEY `nom` (`nom`,`prenom`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`livre_id`),
  ADD UNIQUE KEY `titre` (`titre`),
  ADD KEY `fk_livre_auteur` (`fk_auteur`),
  ADD KEY `fk_livre_genre` (`fk_genre`),
  ADD KEY `fk_livre_support` (`fk_support`);

--
-- Index pour la table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`support_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `auteur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `livre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=542;

--
-- AUTO_INCREMENT pour la table `support`
--
ALTER TABLE `support`
  MODIFY `support_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `fk_livre_auteur` FOREIGN KEY (`fk_auteur`) REFERENCES `auteur` (`auteur_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_livre_genre` FOREIGN KEY (`fk_genre`) REFERENCES `genre` (`genre_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_livre_support` FOREIGN KEY (`fk_support`) REFERENCES `support` (`support_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
