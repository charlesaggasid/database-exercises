USE codeup_test_db;



SELECT * FROM albums;
UPDATE albums SET sales = (sales * 10);

SELECT * FROM albums where release_date < 1980;
Update albums Set release_date = 1800 Where release_date = 1980;

SELECT name AS 'All albums by Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';
Update albums Set artist = 'Peter Jackson' where artist = 'Michael Jackson';



Select sales As 'Customer Sales x 10' From albums;
SELECT release_date AS 'Albums before 1980 back to the 1800s' FROM albums WHERE release_date = 1800;
SELECT artist AS 'Michael Jackson to Peter Jackson', name, genre FROM albums WHERE artist = 'Peter Jackson';


