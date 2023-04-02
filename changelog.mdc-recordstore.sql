--liquibase formatted sql

--changeset chatGPT:1
-- comment: create records table
CREATE TABLE records (
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255) NOT NULL,
year_published int,
genre VARCHAR(255),
artist_id BIGINT NOT NULL,
price_id BIGINT NOT NULL
);
--rollback DROP TABLE records;

--changeset chatGPT:2
-- comment: create artists table
CREATE TABLE artists (
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
country_id BIGINT NOT NULL,
song_id BIGINT NOT NULL
);
--rollback DROP TABLE artists;

--changeset chatGPT:3
-- comment: create songs table
CREATE TABLE songs (
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255) NOT NULL,
duration TIME,
record_id BIGINT NOT NULL
);
--rollback DROP TABLE songs;

--changeset chatGPT:4
-- comment: create customers table
CREATE TABLE customers (
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
address VARCHAR(255) NOT NULL,
email VARCHAR(255),
phone VARCHAR(20)
);
--rollback DROP TABLE customers;

--changeset chatGPT:5
-- comment: create prices table
CREATE TABLE prices (
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
usd DECIMAL(10,2) NOT NULL,
pesos DECIMAL(10,2) NOT NULL,
euros DECIMAL(10,2) NOT NULL
);
--rollback DROP TABLE prices;

--changeset chatGPT:6
-- comment: create music_prices table
CREATE TABLE music_prices (
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
music_id BIGINT NOT NULL,
price_id BIGINT NOT NULL
);
--rollback DROP TABLE music_prices;

--changeset chatGPT:7
-- comment: create customer_music table
CREATE TABLE customer_music (
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
customer_id BIGINT NOT NULL,
music_id BIGINT NOT NULL
);
--rollback DROP TABLE customer_music;

--changeset chatGPT:8
-- comment: add foreign key to records table
ALTER TABLE records ADD CONSTRAINT fk_records_artist FOREIGN KEY (artist_id) REFERENCES artists(id);
--rollback ALTER TABLE records DROP CONSTRAINT fk_records_artist;

--changeset chatGPT:9
-- comment: add foreign key to records table
ALTER TABLE records ADD CONSTRAINT fk_records_price FOREIGN KEY (price_id) REFERENCES prices(id);
--rollback ALTER TABLE records DROP CONSTRAINT fk_records_price;

--changeset chatGPT:10
-- comment: add foreign key to artists table
ALTER TABLE artists ADD CONSTRAINT fk_artists_song FOREIGN KEY (song_id) REFERENCES songs(id);
--rollback ALTER TABLE artists DROP CONSTRAINT fk_artists_song;