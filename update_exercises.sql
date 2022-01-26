--2. Write SELECT statements to output each of the following with a caption:
--3. After each SELECT add an UPDATE statement to:

--All albums in your table.
SELECT * FROM albums;
--      Make all the albums 10 times more popular (sales * 10)
UPDATE albums SET sales = (sales * 10);
--All albums released before 1980
SELECT * FROM albums where release_date < 1980;
--      Move all the albums before 1980 back to the 1800s.
Update albums Set release_date = 1800 Where release_date = 1980;
--All albums by Michael Jackson
SELECT name AS 'All albums by Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';
--      Change 'Michael Jackson' to 'Peter Jackson'
Update albums Set artist = 'Peter Jackson' where artist = 'Michael Jackson';

--4. Add SELECT statements after each UPDATE so you can see the results of your handiwork.

Select sales As 'Customer Sales x 10' From albums;
SELECT release_date AS 'Albums before 1980 back to the 1800s' FROM albums WHERE release_date = 1800;
SELECT artist AS 'Michael Jackson to Peter Jackson', name, genre FROM albums WHERE artist = 'Peter Jackson';


