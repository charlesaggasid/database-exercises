USE regulus_db;

# get all players who play for the 49ers
# what we want

SELECT CONCAT(players.first_name, ' ', players.last_name) AS full_name
FROM players
WHERE team_id IN (
    SELECT team_id
    FROM teams
    WHERE name = '49ers'
);

#  GET team for specific player

SELECT CONCAT(teams.city, ' ', teams.name) AS Team
FROM teams WHERE id IN (
    SELECT team_id
    FROM players
    WHERE first_name = 'Patrick'
);

# get all qbs
SELECT CONCAT(players.first_name, ' ', players.last_name) AS QBs
FROM players
# getting ID from player_position
WHERE id IN (
    SELECT player_id
    FROM player_position
# GEtting postion DI from positions with where defining QBs
    WHERE position_id IN (
        SELECT id
        FROM positions
        WHERE name = 'QB'
    )

);

# using emloyees

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

INSERT INTO players (first_name, last_name, team_id)
VALUES('Eva', 'Brechum',
       (SELECT id FROM teams WHERE name = 'Bengals'));

UPDATE players
SET team_id (SELECT id FROM teams WHERE name = 'Rams')
WHERE last_name = 'Brechum';