DROP TABLE IF EXISTS `etape`;
DROP TABLE IF EXISTS `vol`;
DROP TABLE IF EXISTS `passager`;
DROP TABLE IF EXISTS `reservation`;
DROP TABLE IF EXISTS `client`;
DROP TABLE IF EXISTS `avion`;
DROP TABLE IF EXISTS `aeroport`;
DROP TABLE IF EXISTS `ville`;
DROP TABLE IF EXISTS `pays`;

CREATE TABLE IF NOT EXISTS `pays` (
  `idPays` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) DEFAULT NULL,
  `nom` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPays`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ville` (
  `idVille` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `pays_idPays` int(11) NOT NULL,
  PRIMARY KEY (`idVille`),
  KEY `fk_ville_pays1_idx` (`pays_idPays`),
  CONSTRAINT `fk_ville_pays1` FOREIGN KEY (`pays_idPays`) REFERENCES `pays` (`idPays`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `aeroport` (
  `idAeroport` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(15) DEFAULT NULL,
  `ville_idVille` int(11) NOT NULL,
  PRIMARY KEY (`idAeroport`),
  KEY `fk_aeroport_ville1_idx` (`ville_idVille`),
  CONSTRAINT `fk_aeroport_ville1` FOREIGN KEY (`ville_idVille`) REFERENCES `ville` (`idVille`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `avion` (
  `idAvion` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nb_place` int(11) DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idAvion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `prenom` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `mail` varchar(80) CHARACTER SET utf8 UNIQUE NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `telephone` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `adresse` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idClient`),
  UNIQUE KEY `mail_UNIQUE` (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `reservation` (
  `idReservation` int(11) NOT NULL AUTO_INCREMENT,
  `date_depart` date DEFAULT NULL,
  `date_retour` date DEFAULT NULL,
  `classe` enum('economie','premiere','business') COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_idClient` int(11) NOT NULL,
  PRIMARY KEY (`idReservation`),
  KEY `fk_reservation_client1_idx` (`client_idClient`),
  CONSTRAINT `fk_reservation_client1` FOREIGN KEY (`client_idClient`) REFERENCES `client` (`idClient`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `passager` (
  `idPassager` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `categorie` enum('enfant','adulte','senior') CHARACTER SET latin1 DEFAULT NULL,
  `reservation_idReservation` int(11) NOT NULL,
  PRIMARY KEY (`idPassager`),
  KEY `fk_passager_reservation1_idx` (`reservation_idReservation`),
  CONSTRAINT `fk_passager_reservation1` FOREIGN KEY (`reservation_idReservation`) REFERENCES `reservation` (`idReservation`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `vol` (
  `idVol` int(11) NOT NULL AUTO_INCREMENT,
  `date_depart` date DEFAULT NULL,
  `date_arrive` date DEFAULT NULL,
  `heure_depart`  TIME DEFAULT NULL,
  `heure_arrivee`  TIME DEFAULT NULL,
  `nb_place_reservee` int(11) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `avion_idAvion` int(11) NOT NULL,
  `id_aeroport_depart` int(11) NOT NULL,
  `id_aeroport_arrivee` int(11) NOT NULL,
  PRIMARY KEY (`idVol`),
  KEY `fk_vol_avion_idx` (`avion_idAvion`),
  KEY `fk_vol_aeroport1_idx` (`id_aeroport_depart`),
  KEY `fk_vol_aeroport2_idx` (`id_aeroport_arrivee`),
  CONSTRAINT `fk_vol_aeroport` FOREIGN KEY (`id_aeroport_depart`) REFERENCES `aeroport` (`idAeroport`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vol_aeroport1` FOREIGN KEY (`id_aeroport_arrivee`) REFERENCES `aeroport` (`idAeroport`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vol_avion1` FOREIGN KEY (`avion_idAvion`) REFERENCES `avion` (`idAvion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `etape` (
  `idReservation` int(11) NOT NULL,
  `idVol` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `type` enum('aller','retour') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idReservation`,`idVol`),
  KEY `fk_etape_vol1_idx` (`idVol`),
  CONSTRAINT `fk_etape_reservation1` FOREIGN KEY (`idReservation`) REFERENCES `reservation` (`idReservation`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_etape_vol1` FOREIGN KEY (`idVol`) REFERENCES `vol` (`idVol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
