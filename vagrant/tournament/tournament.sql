-- Copyright 2015 Troy Mullins
-- Licensed under MIT (https://github.com/Mullinst/fullstack-nanodegree-vm/blob/master/LICENSE)
--
-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
CREATE DATABASE tournament; 

-- Remove drop when schema set
DROP TABLE IF EXISTS players CASCADE;
DROP TABLE IF EXISTS tournaments CASCADE;
DROP TABLE IF EXISTS matches CASCADE;
DROP TABLE IF EXISTS results table_name CASCADE;

-- Define tables
CREATE TABLE players (
	player_id SERIAL PRIMARY KEY,
	name TEXT
);

CREATE TABLE tournaments (
	tournament_id INTEGER PRIMARY KEY,
	participant INTEGER REFERENCES players (player_id)
);

CREATE TABLE matches (
	match_id SERIAL PRIMARY KEY,
	tournament_id INTEGEREGER REFERENCES tournaments (tournament_id),
	player1 INTEGER REFERENCES players (player_id),
	player2 INTEGER REFERENCES players (player_id)
);

CREATE TABLE results (
	player_id INTEGER REFERENCES players (player_id),
	match_id INTEGER REFERENCES matches (player_id),
	result TEXT
);
