create database encuentro;
use encuentro;

create table Jugador(
  idJugador varchar(5) primary key,
  Nombre varchar(20),
  ApellidoP varchar(20),
  ApellidoM varchar(20),
  Telefono varchar(10),
  Direccion varchar(20),
  Puntos integer);

create table Campeon(
  idCampeon varchar(5) primary key,
  Nombre varchar(20),
  ApellidoP varchar(20),
  ApellidoM varchar(20),
  Telefono varchar(10),
  Direccion varchar(20),
  Puntos integer);

create table Enfreta(
  NoEncuentros integer,
  idJugador varchar(5),
  idCampeon varchar(5),
  foreign key (idJugador) references Jugador(idJugador),
  foreign key (idCampeon) references Campeon(idCampeon));