/* INsertion pays */
INSERT INTO `bdairfrance`.`pays`
(`code`,
`nom`)
VALUES
("FRA",
"France");

INSERT INTO `bdairfrance`.`pays`
(`code`,
`nom`)
VALUES
("UK",
"Angletterre");

INSERT INTO `bdairfrance`.`pays`
(`code`,
`nom`)
VALUES
("USA",
"Etats Unis");

INSERT INTO `bdairfrance`.`pays`
(`code`,
`nom`)
VALUES
("DE",
"Allemagne");

/* Insertion ville */
INSERT INTO `bdairfrance`.`ville`
(`nom`,
`pays_idPays`)
VALUES
("Paris",
"1"
);

INSERT INTO `bdairfrance`.`ville`
(`nom`,
`pays_idPays`)
VALUES
("Toulouse",
"1"
);

INSERT INTO `bdairfrance`.`ville`
(`nom`,
`pays_idPays`)
VALUES
("Londres",
"2"
);

INSERT INTO `bdairfrance`.`ville`
(`nom`,
`pays_idPays`)
VALUES
("New York",
"3"
);

INSERT INTO `bdairfrance`.`ville`
(`nom`,
`pays_idPays`)
VALUES
("Los Angeles",
"3"
);

INSERT INTO `bdairfrance`.`ville`
(`nom`,
`pays_idPays`)
VALUES
("Boston",
"3"
);

INSERT INTO `bdairfrance`.`ville`
(`nom`,
`pays_idPays`)
VALUES
("Berlin",
"4"
);

/* insertion aeroport */
INSERT INTO `bdairfrance`.`aeroport`
(`nom`,
`code`,
`ville_idVille`)
VALUES
("Aï¿½roport de Paris-Charles-de-Gaulle",
"CDG",
"1");

INSERT INTO `bdairfrance`.`aeroport`
(`nom`,
`code`,
`ville_idVille`)
VALUES
("Aï¿½roport de Paris-Orly",
"ORY",
"1");

INSERT INTO `bdairfrance`.`aeroport`
(`nom`,
`code`,
`ville_idVille`)
VALUES
("Aï¿½roport de Toulouse-Blagnac",
"TLS",
"2");

INSERT INTO `bdairfrance`.`aeroport`
(`nom`,
`code`,
`ville_idVille`)
VALUES
("Aï¿½roport de Londres-Heathrow",
"LHR",
"3");

INSERT INTO `bdairfrance`.`aeroport`
(`nom`,
`code`,
`ville_idVille`)
VALUES
("Aï¿½roport international de New York-John F. Kennedy",
"JFK",
"4");

INSERT INTO `bdairfrance`.`aeroport`
(`nom`,
`code`,
`ville_idVille`)
VALUES
("Aï¿½roport de New York-LaGuardia",
"LGA",
"4");

INSERT INTO `bdairfrance`.`aeroport`
(`nom`,
`code`,
`ville_idVille`)
VALUES
("Aï¿½roport international de Los Angeles",
"LAX",
"5");

INSERT INTO `bdairfrance`.`aeroport`
(`nom`,
`code`,
`ville_idVille`)
VALUES
("Aï¿½roport international de Boston-Logan",
"BOS",
"6");

INSERT INTO `bdairfrance`.`aeroport`
(`nom`,
`code`,
`ville_idVille`)
VALUES
("Aï¿½roport de Berlin-Schï¿½nefeld",
"SFX",
"7");

/* avion */
INSERT INTO `bdairfrance`.`avion`
(`matricule`,
`nb_place`,
`type`)
VALUES
("XBENCH-033",
850,
"A380");

INSERT INTO `bdairfrance`.`avion`
(`matricule`,
`nb_place`,
`type`)
VALUES
("STARX-22",
5,
"ULM");

INSERT INTO `bdairfrance`.`avion`
(`matricule`,
`nb_place`,
`type`)
VALUES
("B-FKUCK-90D",
400,
"Boeing 747");

/* client */
INSERT INTO `bdairfrance`.`client`
(`nom`,
`prenom`,
`mail`,
`password`,
`telephone`,
`adresse`)
VALUES
("babar",
"le roi",
"babar@skyblog.fr",
"babar",
null,
"L'ile aux enfants");

INSERT INTO `bdairfrance`.`client`
(`nom`,
`prenom`,
`mail`,
`password`,
`telephone`,
`adresse`)
VALUES
("Roger",
"Roger",
"roger@gmail.com",
"roger",
"0180345656",
"44 quai de Jemmapes");

/* Reservation */
INSERT INTO `bdairfrance`.`reservation`
(`date_depart`,
`date_retour`,
`classe`,
`client_idClient`)
VALUES
("2016-01-14",
"2016-01-23",
"economie",
"1");

/* Passager */
INSERT INTO `bdairfrance`.`passager`
(`nom`,
`categorie`,
`reservation_idReservation`)
VALUES
("Babar le roi des elephants",
"adulte",
"1");

INSERT INTO `bdairfrance`.`passager`
(`nom`,
`categorie`,
`reservation_idReservation`)
VALUES
("Badou",
"enfant",
"1");

/* Vol */
INSERT INTO `bdairfrance`.`vol`
(`date_depart`,
`date_arrive`,
`heure_depart`,
`heure_arrivee`,
`nb_place_reservee`,
`prix`,
`avion_idAvion`,
`id_aeroport_depart`,
`id_aeroport_arrivee`)
VALUES
("2016-01-15",
"2016-01-15",
"00:22:00",
"01:22:00",
50,
200,
"1",
"1",
"5");

INSERT INTO `bdairfrance`.`vol`
(`date_depart`,
`date_arrive`,
`heure_depart`,
`heure_arrivee`,
`nb_place_reservee`,
`prix`,
`avion_idAvion`,
`id_aeroport_depart`,
`id_aeroport_arrivee`)
VALUES
("2016-01-15",
"2016-01-15",
"01:25:00",
"01:22:00",
1,
5000,
"2",
"5",
"1");

INSERT INTO `bdairfrance`.`vol`
(`date_depart`,
`date_arrive`,
`heure_depart`,
`heure_arrivee`,
`nb_place_reservee`,
`avion_idAvion`,
`id_aeroport_depart`,
`id_aeroport_arrivee`)
VALUES
("2016-02-15",
"2016-02-15",
"03:04:00",
"04:24:00",
2,
"1",
"3",
"1");

INSERT INTO `bdairfrance`.`vol`
(`date_depart`,
`date_arrive`,
`heure_depart`,
`heure_arrivee`,
`nb_place_reservee`,
`avion_idAvion`,
`id_aeroport_depart`,
`id_aeroport_arrivee`)
VALUES
("2016-02-15",
"2016-02-15",
"06:05:00",
"06:50:00",
3,
"1",
"1",
"4");

INSERT INTO `bdairfrance`.`vol`
(`date_depart`,
`date_arrive`,
`heure_depart`,
`heure_arrivee`,
`nb_place_reservee`,
`avion_idAvion`,
`id_aeroport_depart`,
`id_aeroport_arrivee`)
VALUES
("2016-02-15",
"2016-02-15",
"06:05:00",
"06:50:00",
10,
"1",
"4",
"5");

INSERT INTO `bdairfrance`.`vol`
(`date_depart`,
`date_arrive`,
`heure_depart`,
`heure_arrivee`,
`nb_place_reservee`,
`avion_idAvion`,
`id_aeroport_depart`,
`id_aeroport_arrivee`)
VALUES
("2016-02-15",
"2016-02-15",
"07:40:00",
"14:32:00",
10,
"1",
"4",
"5");

INSERT INTO `bdairfrance`.`vol`
(`date_depart`,
`date_arrive`,
`heure_depart`,
`heure_arrivee`,
`nb_place_reservee`,
`avion_idAvion`,
`id_aeroport_depart`,
`id_aeroport_arrivee`)
VALUES
("2016-02-15",
"2016-02-15",
"16:40:00",
"19:47:00",
14,
"2",
"5",
"7");

INSERT INTO `bdairfrance`.`vol`
(`date_depart`,
`date_arrive`,
`heure_depart`,
`heure_arrivee`,
`nb_place_reservee`,
`avion_idAvion`,
`id_aeroport_depart`,
`id_aeroport_arrivee`)
VALUES
("2016-02-15",
"2016-02-15",
"11:30:00",
"18:47:00",
14,
"2",
"1",
"5");

INSERT INTO `bdairfrance`.`vol`
(`date_depart`,
`date_arrive`,
`heure_depart`,
`heure_arrivee`,
`nb_place_reservee`,
`avion_idAvion`,
`id_aeroport_depart`,
`id_aeroport_arrivee`)
VALUES
("2016-02-15",
"2016-02-16",
"20:40:00",
"00:53:00",
2,
"1",
"5",
"7");

INSERT INTO `bdairfrance`.`vol`
(`date_depart`,
`date_arrive`,
`heure_depart`,
`heure_arrivee`,
`nb_place_reservee`,
`avion_idAvion`,
`id_aeroport_depart`,
`id_aeroport_arrivee`)
VALUES
("2016-02-15",
"2016-02-15",
"20:12:00",
"21:13:00",
12,
"2",
"5",
"8");

INSERT INTO `bdairfrance`.`vol`
(`date_depart`,
`date_arrive`,
`heure_depart`,
`heure_arrivee`,
`nb_place_reservee`,
`avion_idAvion`,
`id_aeroport_depart`,
`id_aeroport_arrivee`)
VALUES
("2016-02-15",
"2016-02-16",
"22:02:00",
"06:50:00",
12,
"2",
"5",
"9");

INSERT INTO `bdairfrance`.`vol`
(`date_depart`,
`date_arrive`,
`heure_depart`,
`heure_arrivee`,
`nb_place_reservee`,
`avion_idAvion`,
`id_aeroport_depart`,
`id_aeroport_arrivee`)
VALUES
("2016-02-15",
"2016-02-15",
"08:18:00",
"10:20:00",
12,
"2",
"1",
"9");

INSERT INTO `bdairfrance`.`vol`
(`date_depart`,
`date_arrive`,
`heure_depart`,
`heure_arrivee`,
`nb_place_reservee`,
`avion_idAvion`,
`id_aeroport_depart`,
`id_aeroport_arrivee`)
VALUES
("2016-02-15",
"2016-02-15",
"10:58:00",
"18:40:00",
23,
"1",
"9",
"5");

INSERT INTO `bdairfrance`.`vol`
(`date_depart`,
`date_arrive`,
`heure_depart`,
`heure_arrivee`,
`nb_place_reservee`,
`avion_idAvion`,
`id_aeroport_depart`,
`id_aeroport_arrivee`)
VALUES
("2016-02-15",
"2016-02-15",
"10:32:00",
"18:20:00",
23,
"1",
"1",
"5");

/* etape */
INSERT INTO `bdairfrance`.`etape`
(`idReservation`,
`idVol`,
`numero`,
`type`)
VALUES
("1",
"1",
1,
"aller");

INSERT INTO `bdairfrance`.`etape`
(`idReservation`,
`idVol`,
`numero`,
`type`)
VALUES
("1",
"2",
1,
"retour");



/* Nouvelle Reservation */
INSERT INTO `bdairfrance`.`reservation`
(`date_depart`,
`date_retour`,
`classe`,
`client_idClient`)
VALUES
("2016-02-14",
"2016-02-23",
"economie",
"1");

/* Passager */
INSERT INTO `bdairfrance`.`passager`
(`nom`,
`categorie`,
`reservation_idReservation`)
VALUES
("Babar le roi des elephants",
"adulte",
"2");

INSERT INTO `bdairfrance`.`passager`
(`nom`,
`categorie`,
`reservation_idReservation`)
VALUES
("Céleste",
"adulte",
"2");


/* etape */
INSERT INTO `bdairfrance`.`etape`
(`idReservation`,
`idVol`,
`numero`,
`type`)
VALUES
("2",
"5",
1,
"aller");

INSERT INTO `bdairfrance`.`etape`
(`idReservation`,
`idVol`,
`numero`,
`type`)
VALUES
("2",
"6",
2,
"aller");

INSERT INTO `bdairfrance`.`etape`
(`idReservation`,
`idVol`,
`numero`,
`type`)
VALUES
("2",
"7",
3,
"aller");


