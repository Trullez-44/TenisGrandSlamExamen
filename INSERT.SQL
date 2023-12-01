INSERT INTO paises VALUES 
(1,'Gran Bretaña'),
(2, 'Estados Unidos'),
(3, 'Francia'),
(4, 'Australia'),
(5, 'Alemania'),
(6, 'Colombia');
INSERT INTO torneos VALUES
(1,1,'Ronald Garros','2015'),
(2,2,'Texas', '1996'),
(3,3,'Paris', '1982'),
(4,4,'Melbourne', '1981'),
(5,1,'Ronald Garros','1979'),
(6,2,'Washington D.C','1999'),
(7,2,'Washington D.C','2002'),
(8,1,'Ronald Garros','1987'),
(9,3,'Wimbledon','1980'),
(10,3,'Wimbledon','1992');
INSERT INTO modalidades VALUES
(1, 'Individual masculino', NULL),
(2,'Individual femenino',NULL),
(3,'Dobles masculino',NULL),
(4,'Dobles femenino',NULL),
(5,'Dobles mixtos',NULL);

INSERT INTO arbitros VALUES
(1,'Wilkinson','Hugeman','1956-05-29'),
(2,'Kevin','Corzo','1960-05-29'),
(3,'Julie','Jerez','1970-05-29'),
(4,'Johan','Pachon','1965-05-29');
INSERT INTO entrenadores VALUES
(1,'Sebastian','Teatino','1956-05-29'),
(2, 'Miguel','Vega','1959-05-29'),
(3, 'Sebastian','Mahecha', '1958-05-29'),
(4, 'Johaneytor', 'Joker', '1967-05-29');
INSERT INTO jugadores VALUES
(1,'Kevin','Connors','1956-05-29',NULL),
(2,'Kevin','Gerulaitis','1958-05-29',NULL),
(3,'Kevin','Borg','1961-05-29',NULL),
(4,'Kevin','Noah','1958-05-29',NULL),
(5,'Kevin','Mandlikova','1959-05-29',NULL);
INSERT INTO nacionalidades VALUES
(1,4,5),
(2,1,2),
(3,1,6),
(4,2,1),
(5,3,5),
(6,4,4),
(7,5,3);

INSERT INTO encuentros VALUES
(1,'1979-05-29',5,1,3,'MARCADOR FINAL: 6-3 4-6/7-5 6-0',1,2,'Cuartos de final'),
(2,'1980-05-29',9,1,2,'MARCADOR FINAL: 7-4 6-3/7-5 5-6',3,5,'Final'),
(3,'1985-07-14',10,1,4,'MARCADOR FINAL: 7-0 6-2/7-5 6-1',4,2,'Final'),
(4,'1987-12-04',8,1,1,'MARCADOR FINAL: 6-5 75/4-6 6-3',3,5,'Final'),
(5,'1979-06-01',5,1,3,'MARCADOR FINAL: 6-3 4-6/7-5 6-0',3,1,'Final'),
(6,'1981-08-12',4,1,4,'MARCADOR FINAL: 6-3 4-6/7-5 6-0',3,5,'FInal'),
(7,'1982-08-12',3,3,2,'MARCADOR FINAL: 7-0 6-2/7-5 6-1',3,4,'Semifinales'),
(8,'1982-08-12',3,3,2,'MARCADOR FINAL: 7-0 6-2/7-5 6-1',1,5,'Semifinales'),
(9,'1992-12-24',10,1,1,'MARCADOR FINAL: 6-5 75/4-6 6-3',3,2,'Final');
INSERT INTO encuentro_jugadores VALUES
(1,1,1,1,NULL),
(2,1,2,2,NULL),
(3,2,3,3,NULL),
(4,2,5,4,NULL),
(5,3,4,1,NULL),
(6,3,2,2,NULL),
(7,4,3,3,NULL),
(8,4,5,4,NULL),
(9,5,3,1,NULL),
(10,5,1,2,NULL),
(11,6,3,3,NULL),
(12,6,5,4,NULL),
(13,7,3,1,1),
(14,7,4,4,2),
(15,8,1,1,1),
(16,8,5,4,2),
(17,9,3,2,NULL),
(18,9,2,3,NULL);

INSERT INTO premios VALUES
(1,2,15000,'Gerulaitis perdedor Roland Garros cuartos de finales 1979, $15,000 como premio',1),
(2,1,20000,'Connors perdedor Roland Garros finales 1979, $20,000 como premio',5),
(3,3,40000,'Borg ganador Roland Garros finales 1979, $40,000 como premio',5),
(4,3,20000,'Borg ganador Roland Garros finales 1987, $20,000 como premio',4),
(5,3,60000,'Borg ganador Roland Garros finales 1980, $60,000 como premio',2),
(6,3,45000,'Borg perdedor Melbourne finales 1981, $45,000 como premio',6),
(7,3,35000,'Borg perdedor Paris semifinales 1982, $35,000 como premio',7),
(8,3,1800000,'Borg GANADOR Wimbledon finales 1992, $1,800,000 como premio',9);
INSERT INTO torneo_arbitro VALUES
(1,),









SELECT t.torneo_id,e.encuentro_id, a.arbitro_id,a.primer_nombre, p.nombre, t.ubicacion
FROM encuentros e
JOIN arbitros a ON e.arbitro_id = a.arbitro_id
JOIN torneos t ON e.torneo_id = t.torneo_id
JOIN paises p ON t.pais_id = p.pais_id
WHERE t.torneo_id = 4;







