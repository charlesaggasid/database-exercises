USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id INT UNSIGNED AUTO_INCREMENT NOT NULL primary key,
                        artist VARCHAR(200) NOT NULL,
                        name VARCHAR(200) NOT NULL,
                        release_date INT UNSIGNED,
                        sales FLOAT UNSIGNED,
                        genre VARCHAR(100),
                        UNIQUE unique_name(name)
);

DESCRIBE albums;
SHOW CREATE TABLE albums;

ALTER TABLE albums
ADD UNIQUE unique_name (name, artist);

ALTER TABLE albums
DROP INDEX unique_name;