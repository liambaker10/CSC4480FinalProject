--DROP TABLE song CASCADE CONSTRAINTS;
CREATE TABLE song (
  title    varchar2(50) not null, 
  artistID    number(4) not null,
  songID    number(4) not null,
  releaseDate      date,
  primary key (songID, title)

);

-- DROP TABLE artist CASCADE CONSTRAINTS;
CREATE TABLE artist (
  name    varchar2(50) not null, 
  artistID    number(4) not null,
  primary key (name, artistID)

);

-- DROP TABLE album CASCADE CONSTRAINTS;
CREATE TABLE album (
  name        varchar2(50) not null, 
  albumID     number(4) not null,
  artistID    number(4) not null,
  primary key (name, albumID)

);

-- DROP TABLE applicationUser CASCADE CONSTRAINTS;
CREATE TABLE applicationUser (
  fname    varchar2(15) not null, 
  lname    varchar2(15) not null,
  userID   number(4) not null,
  username varchar(30) not null,
  primary key (userID)
);

-- DROP TABLE genre CASCADE CONSTRAINTS;
CREATE TABLE genre (
  name       varchar2(20) not null,
  bpm       number(10,2),
  primary key (name)
);