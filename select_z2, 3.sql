SELECT Track_title, Track_duration FROM Track
ORDER BY track_duration DESC LIMIT 1;

SELECT Track_title, track_duration FROM Track
WHERE track_duration >= '00:03:30'

SELECT collection_title, year_of_release from collection
WHERE year_of_release BETWEEN '2018-01-01' AND '2020-01-01';

SELECT name_surname FROM musician
WHERE name_surname ILIKE '%';

SELECT Track_title FROM track
WHERE track_title ILIKE 'my'
OR track_title ILIKE '% my'
OR track_title ILIKE '% my %'
OR track_title ILIKE 'my %'
OR track_title ILIKE 'мой'
OR track_title ILIKE '% мой'
OR track_title ILIKE '% мой %'
OR track_title ILIKE 'мой %';




SELECT Genre_id, COUNT(DISTINCT Musician_id) AS Number_of_musicians FROM Genre_musician
GROUP BY Genre_id;

SELECT count(Track_id) AS tracks_in_albums FROM Track
JOIN Album ON Track.Album_id = Album.album_id
WHERE Album.Year_of_release BETWEEN '2019-01-01' AND '2020-12-31';

SELECT Album_title, AVG(track.Track_duration) AS Tr_dur FROM Album
JOIN Track ON Track.album_id = Album.album_id 
GROUP BY Album_title;

SELECT Name_surname FROM musician
WHERE Name_surname NOT IN
(SELECT Name_surname FROM musician
JOIN Musician_album ON Musician.Musician_id = Musician_album.Musician_id 
JOIN Album ON Album.album_id = Musician_album.album_id
WHERE DATE_PART('YEAR', Album.year_of_release::date) = 2020)
GROUP BY Name_surname;


SELECT Collection_title FROM Collection
JOIN Track_collection ON Collection.Collection_id = Track_collection.Collection_id
JOIN Track ON Track.Track_id = Track_collection.Track_id
JOIN Album ON Album.Album_id = Track.Album_id
JOIN Musician_album ON Musician_album.Album_id = Album.album_id
JOIN Musician ON Musician.musician_id = Musician_album.musician_id
WHERE Musician.Musician_id = 1
ORDER BY Collection_title;


