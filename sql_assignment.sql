SQL Assignment
Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

Provide one or more SQL queries that retrieve the requested data
below each of the following questions:

1) Find the albums recorded by the artist Queen.

SELECT * FROM artists WHERE name = 'queen';

2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".

SELECT COUNT (*) FROM tracks WHERE media_type_id = 3;

3) Find the least expensive track that has the genre "Electronica/Dance".

SELECT name FROM tracks WHERE unit_price = .99 AND genre_id = 15;

4) Find the all the artists whose names start with A.

SELECT id, name FROM tracks WHERE name LIKE 'A%';

5) Find all the tracks that belong to playlist 1.
