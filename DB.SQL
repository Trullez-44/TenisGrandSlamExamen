DROP DATABASE IF EXISTS TenisGrandSlamExamen;
CREATE DATABASE IF NOT EXISTS TenisGrandSlamExamen;
USE TenisGrandSlamExamen;
CREATE TABLE paises(
pais_id INT UNSIGNED NOT NULL,
nombre VARCHAR(255) NOT NULL
);
CREATE TABLE torneos(
torneo_id INT UNSIGNED NOT NULL,
pais_id INT UNSIGNED NOT NULL,
ubicacion VARCHAR(50) NOT NULL,
anio VARCHAR(4) NOT NULL
);
CREATE TABLE modalidades (
modalidad_id INT UNSIGNED NOT NULL,
nombre VARCHAR(30) NOT NULL,
descripcion VARCHAR(255)
);
CREATE TABLE arbitros (
arbitro_id INT UNSIGNED NOT NULL,
primer_nombre VARCHAR(50)NOT NULL,
primer_apellido VARCHAR(50)NOT NULL,
año_nacimiento DATE NOT NULL
);
CREATE TABLE entrenadores (
entrenador_id INT UNSIGNED NOT NULL,
primer_nombre VARCHAR(50) NOT NULL,
primer_apellido VARCHAR(50) NOT NULL,
año_nacimiento DATE NOT NULL
);
CREATE TABLE jugadores (
jugador_id INT UNSIGNED NOT NULL,
primer_nombre VARCHAR(50) NOT NULL,
primer_apellido VARCHAR(50) NOT NULL,
año_nacimiento DATE NOT NULL,
descripcion VARCHAR(255)
);
CREATE TABLE nacionalidades (
nacionalidad_id INT UNSIGNED NOT NULL,
jugador_id INT UNSIGNED NOT NULL,
pais_id INT UNSIGNED NOT NULL
);
CREATE TABLE encuentros (
encuentro_id INT UNSIGNED NOT NULL,
fecha DATE NOT NULL,
torneo_id INT UNSIGNED NOT NULL,
modalidad_id INT UNSIGNED NOT NULL,
arbitro_id INT UNSIGNED NOT NULL,
resultados VARCHAR(255) NOT NULL,
ganador_id INT UNSIGNED NOT NULL,
perdedor_id INT UNSIGNED NOT NULL,
posicionamiento VARCHAR(30) NOT NULL
);
CREATE TABLE encuentro_jugadores (
id INT UNSIGNED NOT NULL,
encuentro_id INT UNSIGNED NOT NULL,
jugador_id INT UNSIGNED NOT NULL,
entrenador_id INT UNSIGNED NOT NULL
);
CREATE TABLE premios (
premio_id INT UNSIGNED NOT NULL,
jugador_id INT UNSIGNED NOT NULL,
precio_dolares INT UNSIGNED NOT NULL,
descripcion VARCHAR(255),
encuentro_id INT UNSIGNED NOT NULL
);
CREATE TABLE torneo_arbitros (
id INT UNSIGNED NOT NULL,
torneo_id INT UNSIGNED NOT NULL,
arbitro_id INT UNSIGNED NOT NULL
);
/* UNIQUES */
ALTER TABLE
    paises ADD UNIQUE  unique_nombrePais (nombre);
ALTER TABLE
    modalidades ADD UNIQUE  unique_nombreModadalidad (nombre);
/* PRIMARY KEYS */
ALTER TABLE
   paises ADD CONSTRAINT pk_paisId PRIMARY KEY (pais_id);
ALTER TABLE
    torneos ADD CONSTRAINT pk_torneoId PRIMARY KEY (torneo_id);
ALTER TABLE
    modalidades ADD CONSTRAINT pk_modalidadId PRIMARY KEY (modalidad_id);
ALTER TABLE
    arbitros ADD CONSTRAINT pk_arbitroId PRIMARY KEY (arbitro_id); 
ALTER TABLE
    entrenadores ADD CONSTRAINT pk_entrenadorId PRIMARY KEY (entrenador_id); 
ALTER TABLE
    jugadores ADD CONSTRAINT pk_jugadorId PRIMARY KEY (jugador_id); 
ALTER TABLE
    nacionalidades ADD CONSTRAINT pk_nacionalidadId PRIMARY KEY (nacionalidad_id); 
ALTER TABLE
    encuentros ADD CONSTRAINT pk_encuentroId PRIMARY KEY (encuentro_id); 
ALTER TABLE
    encuentro_jugadores ADD CONSTRAINT pk_encuentroJugadoresId PRIMARY KEY (id); 
ALTER TABLE
    premios ADD CONSTRAINT pk_premiosId PRIMARY KEY (premio_id);  
ALTER TABLE
    torneo_arbitros ADD CONSTRAINT pk_torneoArbitrosId PRIMARY KEY (id);  
/* FOREIGN KEYS */
ALTER TABLE
    torneos ADD CONSTRAINT fk_torneo_pais FOREIGN KEY(pais_id) REFERENCES paises(pais_id);
ALTER TABLE
    nacionalidades ADD CONSTRAINT fk_nacionalidad_jugador FOREIGN KEY(jugador_id) REFERENCES jugadores(jugador_id);
ALTER TABLE
   nacionalidades ADD CONSTRAINT fk_nacionalidad_pais FOREIGN KEY(pais_id) REFERENCES paises(pais_id);
ALTER TABLE
    encuentros ADD CONSTRAINT fk_encuentro_torneo FOREIGN KEY(torneo_id) REFERENCES torneos(torneo_id);
ALTER TABLE
    encuentros ADD CONSTRAINT fk_encuentro_modalidad FOREIGN KEY(modalidad_id) REFERENCES modalidades(modalidad_id);
ALTER TABLE
    encuentros ADD CONSTRAINT fk_encuentro_arbitro FOREIGN KEY(arbitro_id) REFERENCES arbitros(arbitro_id);
ALTER TABLE
    encuentros ADD CONSTRAINT fk_encuentro_ganador FOREIGN KEY(ganador_id) REFERENCES jugadores(jugador_id);
ALTER TABLE
    encuentros ADD CONSTRAINT fk_encuentro_perdedor FOREIGN KEY(perdedor_id) REFERENCES jugadores(jugador_id);
ALTER TABLE
    encuentro_jugadores ADD CONSTRAINT fk_encuentroJugador_jugador FOREIGN KEY(jugador_id) REFERENCES jugadores(jugador_id);
ALTER TABLE
    encuentro_jugadores ADD CONSTRAINT fk_encuentroJugador_encuentro FOREIGN KEY(encuentro_id) REFERENCES encuentros(encuentro_id);
ALTER TABLE
    encuentro_jugadores ADD CONSTRAINT fk_encuentroJugador_entrenador FOREIGN KEY(entrenador_id) REFERENCES entrenadores(entrenador_id);
ALTER TABLE
    premios ADD CONSTRAINT fk_premio_jugador FOREIGN KEY(jugador_id) REFERENCES jugadores(jugador_id);
ALTER TABLE
    premios ADD CONSTRAINT fk_premio_encuentro FOREIGN KEY(encuentro_id) REFERENCES encuentros(encuentro_id);     
ALTER TABLE
    torneo_arbitros ADD CONSTRAINT fk_torneoArbitros_torneo FOREIGN KEY(torneo_id) REFERENCES torneos(torneo_id);
ALTER TABLE
    torneo_arbitros ADD CONSTRAINT fk_torneoArbitros_arbitro FOREIGN KEY(arbitro_id) REFERENCES arbitros(arbitro_id);