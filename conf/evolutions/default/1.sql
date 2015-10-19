# --- !Ups

CREATE TABLE PACIENTES (
  id         INTEGER AUTO_INCREMENT PRIMARY KEY,
  nombre     VARCHAR,
  apellido   VARCHAR,
  dni        INTEGER,
  obrasocial INT
);

CREATE TABLE RECEPCIONES (
  id          INTEGER AUTO_INCREMENT PRIMARY KEY,
  idMedico    INTEGER,
  idPaciente  INTEGER,
  diagnostico VARCHAR,
  estado      INT,
  prioridad   VARCHAR,
  fecha       DATETIME,
  FOREIGN KEY (idMedico) REFERENCES USUARIOS (id),
  FOREIGN KEY (idPaciente) REFERENCES PACIENTES (id)
);

CREATE TABLE USUARIOS (
  id        INTEGER AUTO_INCREMENT PRIMARY KEY,
  matricula INTEGER,
  nombre    VARCHAR,
  apellido  VARCHAR,
  usuario   VARCHAR,
  password  VARCHAR,
  rol       VARCHAR
);

# --- !Downs

DROP TABLE IF EXISTS PACIENTES;
DROP TABLE IF EXISTS USUARIOS;
DROP TABLE IF EXISTS RECEPCIONES;