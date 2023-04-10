DROP DATABASE IF EXISTS Assignment2;

CREATE DATABASE IF NOT EXISTS Assignment2;

USE Assignment2;

CREATE TABLE IF NOT EXISTS song (
song_title VARCHAR(255) NOT NULL,
song_artist_first_name VARCHAR(255) NOT NULL,
song_duration INT NOT NULL,
genre_name VARCHAR(255),
song_explicit BOOL NOT NULL DEFAULT TRUE,
song_link VARCHAR(255),

PRIMARY KEY (song_title),
FOREIGN KEY (artist_first_name) REFERENCES artist(artist_first_name),
FOREIGN KEY (genre_name) REFERENCES genre(genre_name)

);

CREATE TABLE IF NOT EXISTS artist (
artist_first_name VARCHAR(255) NOT NULL,
artist_last_name VARCHAR(255) ,
artist_bdate DATE,
artist_songs VARCHAR(255),
PRIMARY KEY (artist_first_name),
FOREIGN KEY (song_title) REFERENCES song(song_name)
);

CREATE TABLE IF NOT EXISTS genre (
genre_name VARCHAR(255) NOT NULL,
PRIMARY KEY (genre_name),
FOREIGN KEY (genre_name) REFERENCES song(genre_name)
);

CREATE TABLE IF NOT EXISTS user (
user_email VARCHAR(255) NOT NULL UNIQUE,
user_first_name VARCHAR(255) NOT NULL,
user_last_name VARCHAR(255),
user_password VARCHAR(20) NOT NULL,
user_favorites VARCHAR(255),
PRIMARY KEY (user_email),
FOREIGN KEY (song_order) REFERENCES playlist(song_order)
);

CREATE TABLE IF NOT EXISTS playlist (
song_order INT AUTO_INCREMENT, 
song_name VARCHAR(255) NOT NULL,
PRIMARY KEY (song_order),
FOREIGN KEY (song_title) REFERENCES song(song_title)
);