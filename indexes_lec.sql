CREATE DATABASE IF NOT EXISTS regulus_db;
USE regulus_db;

CREATE TABLE IF NOT EXISTS players
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    first_name VARCHAR(50),
    last_name VARCHAR(100),
    team VARCHAR(50),
    position VARCHAR(50)
#    or PRIMARY KEY (id)
);

describe players;

INSERT INTO players(first_name, last_name, team, position)
VALUES ('Joe', 'Burrow', 'Cincinnati', 'Quarterback' ),
       ('Bicker', 'Ballow', 'Maine', 'Forward' );

select * from players;

# UNIQUE

CREATE TABLE IF NOT EXISTS teams
(
    id INT UNSIGNED NOT NULL  AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(50),
    name VARCHAR(50)
);

ALTER TABLE teams
ADD UNIQUE (name);

DESCRIBE teams;

INSERT INTO teams (city, name)
VALUES ('Cin', 'Bengals'),
        ('Kansas City', 'Chiefs');

#         Foreign keys

DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS teams;

CREATE TABLE IF NOT EXISTS teams
(
    id INT UNSIGNED NOT NULL  AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(50),
    name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS players
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    first_name VARCHAR(50),
    last_name VARCHAR(100),
    team_id INT UNSIGNED NOT NULL ,
    position VARCHAR(50),
    FOREIGN KEY (team_id) REFERENCES teams(id)
);

INSERT INTO teams (city, name)
VALUES ('Cin', 'Bengals'),
       ('Kansas City', 'Chiefs');

select * from players;

INSERT INTO players(first_name, last_name, team_id, position)
VALUES ('Joe', 'Burrow', 1, 'Quarterback' ),
       ('Bicker', 'Ballow', 2, 'Forward' );

# uniqueness of all four items below. if all same entered, it will not continue
       ALTER TABLE players
       ADD UNIQUE (first_name, last_name, team_id, position);

       describe players;

       describe employees;