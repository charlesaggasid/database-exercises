USE codeup_test_db;

-- The name of all albums by Pink Floyd.
SELECT name as 'The name of all albums by Pink Floyd.' from ALBUMS WHERE ARTIST = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums where name like 'Sgt. Pepper';

-- The genre for Nevermind
SELECT genre FROM albums where name = 'Nevermind';

-- Which albums were released in the 1990s
SELECT name AS 'These are the albums release in the 90s' FROM albums WHERE release_date = 1990;

-- Which albums had less than 20 million certified sales.
SELECT name AS 'Albums that had less than 20 million certified sales' FROM albums where sales < 20;

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT name AS 'Albums with a genre of "Rock"' FROM albums where genre = 'Rock';