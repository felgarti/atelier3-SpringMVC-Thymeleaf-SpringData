-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 27 avr. 2022 à 02:15
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pat_db`
--
CREATE DATABASE IF NOT EXISTS `pat_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pat_db`;

-- --------------------------------------------------------

--
-- Structure de la table `app_role`
--

CREATE TABLE `app_role` (
  `role_id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `app_role`
--

INSERT INTO `app_role` (`role_id`, `description`, `role_name`) VALUES
(1, ' une desc ', 'USER'),
(2, '', 'ADMIN');

-- --------------------------------------------------------

--
-- Structure de la table `app_user`
--

CREATE TABLE `app_user` (
  `user_id` varchar(255) NOT NULL,
  `active` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `app_user`
--

INSERT INTO `app_user` (`user_id`, `active`, `password`, `username`) VALUES
('13af16ed-6e6d-434e-9e78-b1ac4eea437e', b'1', '$2a$10$/ZZl7tZURbHJbBfpT.xh8eH5yVL70iu6UOWl9lu0e00wtgOoBdWau', 'yousra'),
('f2c2f1a5-9f11-4c15-8673-60a0000ee8d8', b'1', '$2a$10$wrP1P4T81ePgE4fI1fv1ne41lB2sKH0Vu4Z.yUgfW6v2J.88RooI2', 'fatima');

-- --------------------------------------------------------

--
-- Structure de la table `app_user_app_roles`
--

CREATE TABLE `app_user_app_roles` (
  `app_user_user_id` varchar(255) NOT NULL,
  `app_roles_role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `app_user_app_roles`
--

INSERT INTO `app_user_app_roles` (`app_user_user_id`, `app_roles_role_id`) VALUES
('f2c2f1a5-9f11-4c15-8673-60a0000ee8d8', 2),
('13af16ed-6e6d-434e-9e78-b1ac4eea437e', 1);

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE `medecin` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `specialite` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`id`, `email`, `nom`, `specialite`) VALUES
(1, ' mail@email.com', 'medecin1', 'cardio'),
(2, ' bro@email.com', 'medecin2', 'neuro'),
(3, ' test@email.com', 'medecin3', 'famille'),
(4, ' ik@email.com', 'medecin4', 'traumato'),
(5, ' mail@email.com', 'medecin1', 'cardio'),
(6, ' bro@email.com', 'medecin2', 'neuro'),
(7, ' test@email.com', 'medecin3', 'famille'),
(8, ' ik@email.com', 'medecin4', 'traumato'),
(9, ' mail@email.com', 'medecin1', 'cardio'),
(10, ' bro@email.com', 'medecin2', 'neuro'),
(11, ' test@email.com', 'medecin3', 'famille'),
(12, ' ik@email.com', 'medecin4', 'traumato'),
(13, ' mail@email.com', 'medecin1', 'cardio'),
(14, ' bro@email.com', 'medecin2', 'neuro'),
(15, ' test@email.com', 'medecin3', 'famille'),
(16, ' ik@email.com', 'medecin4', 'traumato'),
(17, ' mail@email.com', 'medecin1', 'cardio'),
(18, ' bro@email.com', 'medecin2', 'neuro'),
(19, ' test@email.com', 'medecin3', 'famille'),
(20, ' ik@email.com', 'medecin4', 'traumato'),
(21, ' mail@email.com', 'medecin1', 'cardio'),
(22, ' bro@email.com', 'medecin2', 'neuro'),
(23, ' test@email.com', 'medecin3', 'famille'),
(24, ' ik@email.com', 'medecin4', 'traumato'),
(25, ' mail@email.com', 'medecin1', 'cardio'),
(26, ' bro@email.com', 'medecin2', 'neuro'),
(27, ' test@email.com', 'medecin3', 'famille'),
(28, ' ik@email.com', 'medecin4', 'traumato'),
(29, ' mail@email.com', 'medecin1', 'cardio'),
(30, ' bro@email.com', 'medecin2', 'neuro'),
(31, ' test@email.com', 'medecin3', 'famille'),
(32, ' ik@email.com', 'medecin4', 'traumato'),
(33, ' mail@email.com', 'medecin1', 'cardio'),
(34, ' bro@email.com', 'medecin2', 'neuro'),
(35, ' test@email.com', 'medecin3', 'famille'),
(36, ' ik@email.com', 'medecin4', 'traumato'),
(37, ' mail@email.com', 'medecin1', 'cardio'),
(38, ' bro@email.com', 'medecin2', 'neuro'),
(39, ' test@email.com', 'medecin3', 'famille'),
(40, ' ik@email.com', 'medecin4', 'traumato'),
(41, ' mail@email.com', 'medecin1', 'cardio'),
(42, ' bro@email.com', 'medecin2', 'neuro'),
(43, ' test@email.com', 'medecin3', 'famille'),
(44, ' ik@email.com', 'medecin4', 'traumato'),
(45, ' mail@email.com', 'medecin1', 'cardio'),
(46, ' bro@email.com', 'medecin2', 'neuro'),
(47, ' test@email.com', 'medecin3', 'famille'),
(48, ' ik@email.com', 'medecin4', 'traumato'),
(49, ' mail@email.com', 'medecin1', 'cardio'),
(50, ' bro@email.com', 'medecin2', 'neuro'),
(51, ' test@email.com', 'medecin3', 'famille'),
(52, ' ik@email.com', 'medecin4', 'traumato'),
(53, ' mail@email.com', 'medecin1', 'cardio'),
(54, ' bro@email.com', 'medecin2', 'neuro'),
(55, ' test@email.com', 'medecin3', 'famille'),
(56, ' ik@email.com', 'medecin4', 'traumato'),
(57, ' mail@email.com', 'medecin1', 'cardio'),
(58, ' bro@email.com', 'medecin2', 'neuro'),
(59, ' test@email.com', 'medecin3', 'famille'),
(60, ' ik@email.com', 'medecin4', 'traumato'),
(61, ' mail@email.com', 'medecin1', 'cardio'),
(62, ' bro@email.com', 'medecin2', 'neuro'),
(63, ' test@email.com', 'medecin3', 'famille'),
(64, ' ik@email.com', 'medecin4', 'traumato'),
(65, ' mail@email.com', 'medecin1', 'cardio'),
(66, ' bro@email.com', 'medecin2', 'neuro'),
(67, ' test@email.com', 'medecin3', 'famille'),
(68, ' ik@email.com', 'medecin4', 'traumato'),
(69, ' mail@email.com', 'medecin1', 'cardio'),
(70, ' bro@email.com', 'medecin2', 'neuro'),
(71, ' test@email.com', 'medecin3', 'famille'),
(72, ' ik@email.com', 'medecin4', 'traumato'),
(73, 'elgartifatima@gmail.com', 'El garti', 'pediatre');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `id` bigint(20) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `malade` bit(1) NOT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`id`, `date_naissance`, `malade`, `nom`, `score`) VALUES
(1, '2022-04-26', b'0', 'Fatima ', 15),
(2, '2022-04-26', b'1', 'Hamza ', 18),
(3, '2022-04-26', b'0', 'Manal ', 17),
(4, '2022-04-26', b'1', 'Yousra ', 16),
(5, '2022-04-26', b'0', 'Fatima ', 15),
(6, '2022-04-26', b'1', 'Hamza ', 18),
(7, '2022-04-26', b'0', 'Manal ', 17),
(8, '2022-04-26', b'1', 'Yousra ', 16),
(9, '2022-04-26', b'0', 'Fatima ', 15),
(10, '2022-04-26', b'1', 'Hamza ', 18),
(11, '2022-04-26', b'0', 'Manal ', 17),
(12, '2022-04-26', b'1', 'Yousra ', 16),
(13, '2022-04-26', b'0', 'Fatima ', 15),
(14, '2022-04-26', b'1', 'Hamza ', 18),
(15, '2022-04-26', b'0', 'Manal ', 17),
(16, '2022-04-26', b'1', 'Yousra ', 16),
(17, '2022-04-26', b'0', 'Fatima ', 15),
(18, '2022-04-26', b'1', 'Hamza ', 18),
(19, '2022-04-26', b'0', 'Manal ', 17),
(20, '2022-04-26', b'1', 'Yousra ', 16),
(21, '2022-04-26', b'0', 'Fatima ', 15),
(22, '2022-04-26', b'1', 'Hamza ', 18),
(23, '2022-04-26', b'0', 'Manal ', 17),
(24, '2022-04-26', b'1', 'Yousra ', 16),
(25, '2022-04-26', b'0', 'Fatima ', 15),
(26, '2022-04-26', b'1', 'Hamza ', 18),
(27, '2022-04-26', b'0', 'Manal ', 17),
(28, '2022-04-26', b'1', 'Yousra ', 16),
(29, '2022-04-26', b'0', 'Fatima ', 15),
(30, '2022-04-26', b'1', 'Hamza ', 18),
(31, '2022-04-26', b'0', 'Manal ', 17),
(32, '2022-04-26', b'1', 'Yousra ', 16),
(33, '2022-04-26', b'0', 'Fatima ', 15),
(34, '2022-04-26', b'1', 'Hamza ', 18),
(35, '2022-04-26', b'0', 'Manal ', 17),
(36, '2022-04-26', b'1', 'Yousra ', 16),
(37, '2022-04-26', b'0', 'Fatima ', 15),
(38, '2022-04-26', b'1', 'Hamza ', 18),
(39, '2022-04-26', b'0', 'Manal ', 17),
(40, '2022-04-26', b'1', 'Yousra ', 16),
(41, '2022-04-26', b'0', 'Fatima ', 15),
(42, '2022-04-26', b'1', 'Hamza ', 18),
(43, '2022-04-26', b'0', 'Manal ', 17),
(44, '2022-04-26', b'1', 'Yousra ', 16),
(45, '2022-04-26', b'0', 'Fatima ', 15),
(46, '2022-04-26', b'1', 'Hamza ', 18),
(47, '2022-04-26', b'0', 'Manal ', 17),
(48, '2022-04-26', b'1', 'Yousra ', 16),
(49, '2022-04-26', b'0', 'Fatima ', 15),
(50, '2022-04-26', b'1', 'Hamza ', 18),
(51, '2022-04-26', b'0', 'Manal ', 17),
(52, '2022-04-26', b'1', 'Yousra ', 16),
(53, '2022-04-26', b'0', 'Fatima ', 15),
(54, '2022-04-26', b'1', 'Hamza ', 18),
(55, '2022-04-26', b'0', 'Manal ', 17),
(56, '2022-04-26', b'1', 'Yousra ', 16),
(57, '2022-04-26', b'0', 'Fatima ', 15),
(58, '2022-04-26', b'1', 'Hamza ', 18),
(59, '2022-04-26', b'0', 'Manal ', 17),
(60, '2022-04-26', b'1', 'Yousra ', 16),
(61, '2022-04-27', b'0', 'Fatima ', 15),
(62, '2022-04-27', b'1', 'Hamza ', 18),
(63, '2022-04-27', b'0', 'Manal ', 17),
(64, '2022-04-27', b'1', 'Yousra ', 16),
(65, '2022-04-27', b'0', 'Fatima ', 15),
(66, '2022-04-27', b'1', 'Hamza ', 18),
(67, '2022-04-27', b'0', 'Manal ', 17),
(68, '2022-04-27', b'1', 'Yousra ', 16),
(69, '2022-04-04', b'1', 'hamzawa3', 12),
(70, '2022-04-27', b'0', 'Fatima ', 15),
(71, '2022-04-27', b'1', 'Hamza ', 18),
(72, '2022-04-27', b'0', 'Manal ', 17),
(73, '2022-04-27', b'1', 'Yousra ', 16);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`role`) VALUES
('ADMIN'),
('USER');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `username` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`username`, `password`, `active`) VALUES
('admin', '$2a$12$2mnb3r6RFqDd3iKHXeAaL.QnpLv4N7ttnouMBiC4CEIc6Ybvn7.eG', 1),
('user1', '$2a$12$2mnb3r6RFqDd3iKHXeAaL.QnpLv4N7ttnouMBiC4CEIc6Ybvn7.eG', 1),
('user2', '$2a$12$2mnb3r6RFqDd3iKHXeAaL.QnpLv4N7ttnouMBiC4CEIc6Ybvn7.eG', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE `users_roles` (
  `username` varchar(15) NOT NULL,
  `role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users_roles`
--

INSERT INTO `users_roles` (`username`, `role`) VALUES
('admin', 'ADMIN'),
('admin', 'USER'),
('user1', 'ADMIN'),
('user1', 'USER'),
('user2', 'USER');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `app_role`
--
ALTER TABLE `app_role`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `UK_c9vam58sxsparp1djngaittd6` (`role_name`);

--
-- Index pour la table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UK_3k4cplvh82srueuttfkwnylq0` (`username`);

--
-- Index pour la table `app_user_app_roles`
--
ALTER TABLE `app_user_app_roles`
  ADD KEY `FKhvbph50p74vrde5kfjjlq3297` (`app_roles_role_id`),
  ADD KEY `FK5vfowd6g3wbl0y2tpl98bvnpg` (`app_user_user_id`);

--
-- Index pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`username`,`role`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `app_role`
--
ALTER TABLE `app_role`
  MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `medecin`
--
ALTER TABLE `medecin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `app_user_app_roles`
--
ALTER TABLE `app_user_app_roles`
  ADD CONSTRAINT `FK5vfowd6g3wbl0y2tpl98bvnpg` FOREIGN KEY (`app_user_user_id`) REFERENCES `app_user` (`user_id`),
  ADD CONSTRAINT `FKhvbph50p74vrde5kfjjlq3297` FOREIGN KEY (`app_roles_role_id`) REFERENCES `app_role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
