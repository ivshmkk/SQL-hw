CREATE TABLE IF NOT EXISTS Genre (
	Genre_id SERIAL PRIMARY KEY,
	Genre_title VARCHAR(255) NOT NULL
	);

CREATE TABLE IF NOT EXISTS Musician (
	Musician_id SERIAL PRIMARY KEY,
	Name_Surname VARCHAR(100) NOT NULL
	);

CREATE TABLE IF NOT EXISTS Album (
	Album_id SERIAL PRIMARY KEY,
	Album_title VARCHAR(255) NOT NULL,
	Year_of_release DATE
	);

CREATE TABLE IF NOT EXISTS Genre_musician (
	Genre_musician_id SERIAL PRIMARY KEY,
	Genre_id INT REFERENCES Genre(Genre_id),
	Musician_id INT REFERENCES Musician(Musician_id)
	);

CREATE TABLE IF NOT EXISTS Musician_album (
	Musician_album_id SERIAL PRIMARY KEY,
	Musician_id INT REFERENCES Musician(Musician_id),
	Album_id INT REFERENCES Album(Album_id)
	);

CREATE TABLE IF NOT EXISTS Track (
	Track_id SERIAL PRIMARY KEY,
	Album_id INT REFERENCES Album(Album_id),
	Track_title VARCHAR(255) NOT NULL,
	Track_duration time
	);
	
CREATE TABLE IF NOT EXISTS Collection (
	Collection_id SERIAL PRIMARY KEY,
	Collection_title VARCHAR(255) NOT NULL,
	Year_of_release DATE
	);

CREATE TABLE IF NOT EXISTS Track_collection (
	Track_collection_id SERIAL PRIMARY KEY,
	Collection_id INT REFERENCES Collection(Collection_id),
	Track_id INT REFERENCES Track(Track_id)
	);


