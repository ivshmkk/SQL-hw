INSERT INTO Genre(Genre_title)
VALUES ('Рок'), ('Поп'), ('Рэп');

INSERT INTO Musician(Name_surname)
VALUES ('Morgenshtern'), ('Винтаж'), ('Серебро'), ('Ария');

INSERT INTO Album(album_title, year_of_release)
VALUES ('1', '2004-03-12'), ('2', '2013-01-02'), ('3', '2022-09-25');

INSERT INTO Track(album_id, track_title, track_duration)
VALUES ('1', 'One', '00:04:34'), ('2', 'two', '00:02:37'), ('2', 'three', '00:03:20'), ('2', 'four', '00:03:56'),
('3', 'five', '00:06:02'), ('3', 'six', '00:04:11');

INSERT INTO Collection(collection_title, year_of_release)
VALUES ('COL1', '2018-05-15'), ('COL2', '2019-01-29'), ('COL3', '2021-04-12'),
('COL4', '2022-02-21');

INSERT INTO Genre_musician
VALUES (1, 1, 4), (2, 2, 2), (3, 2, 3), (4, 3, 1);

INSERT INTO Musician_album
VALUES (1,1,2), (2,2,1), (3,3,3);

INSERT INTO Musician_album
VALUES (4,4,2);

INSERT INTO track_collection
VALUES (1, 3, 1), (2,3,2), (3,1,3), (4,2,5), (5,4,4), (6,4,6);