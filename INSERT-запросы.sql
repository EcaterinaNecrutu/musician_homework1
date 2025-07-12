INSERT INTO Musician (name) 
VALUES ('Nirvana'), ('Эминем'), ('Мадонна'), ('Джастин Бибр');

INSERT INTO Genre (name) 
VALUES ('Рок'), ('Рэп'), ('Поп'), ('R&B');

INSERT INTO Album (name,year_of_release) 
VALUES ('Альбом 1','2021-01-01'),('Альбом 2','2020-01-01'),('Альбом 3','2018-01-01'), ('Альбом 4','2019-01-01');

INSERT INTO Track (name,length,id_album) 
VALUES ('Rape me',169,1),('Superman',350,2),('Frozen',120,3),('Baby',336,4),('My family',200,4);

INSERT INTO collection (name,year_of_release) 
VALUES ('Сборник-1','2017-01-01'),('Сборник-2','2018-01-01'),('Сборник-3','2019-01-01'),('Сборник-4','2020-03-01');

INSERT INTO S_Musician_Genres (id_musician,id_genres) 
VALUES (1,1), (2,2), (3,3), (4,4);

INSERT INTO S_Musician_Album (id_musician,id_album)
VALUES (1,1), (2,2), (3,3), (4,4);

INSERT INTO S_Collection_Track (id_collection, id_track) 
VALUES (1,1), (2,2), (3,3), (4,4), (5,4);