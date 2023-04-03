--------Исполнители---------------------

INSERT INTO Perfomers
VALUES(1, 'Макс Корж');

INSERT INTO Perfomers
VALUES(2, 'Баста');

INSERT INTO Perfomers
VALUES(3, 'Григорий Лепс');

INSERT INTO Perfomers
VALUES(4, 'Полина Гагарина');

INSERT INTO Perfomers
VALUES(5, 'Клава Кока');

INSERT INTO Perfomers
VALUES(6, 'МОТ');

INSERT INTO Perfomers
VALUES(7, 'Король и шут');

INSERT INTO Perfomers
VALUES(8, 'Тимати');

--------------Жанры--------------------------------

INSERT INTO Genres
VALUES(1, 'Хип-хоп');

INSERT INTO Genres
VALUES(2, 'Поп-музыка');

INSERT INTO Genres
VALUES(3, 'Шансон');

INSERT INTO Genres
VALUES(4, 'Рок');

INSERT INTO Genres
VALUES(5, 'Рэп');


----------------связь между жанрами и исполнителями------------------------------

INSERT INTO genresperfomers
VALUES(1, 4);

INSERT INTO genresperfomers
VALUES(1, 5);

INSERT INTO genresperfomers
VALUES(2, 4);

INSERT INTO genresperfomers
VALUES(2, 5);

INSERT INTO genresperfomers
VALUES(2, 6);

INSERT INTO genresperfomers
VALUES(2, 1);

INSERT INTO genresperfomers
VALUES(3, 3);

INSERT INTO genresperfomers
VALUES(4, 7);

INSERT INTO genresperfomers
VALUES(5, 2);

INSERT INTO genresperfomers
VALUES(5, 8);

----------Альбомы--------------------

INSERT INTO Albums(album_id, album_title, release_date)
VALUES(1, 'Транзит', '2022-02-02');

INSERT INTO Albums(album_id, album_title, release_date)
VALUES(2, 'Ты была права', '2018-02-02');


INSERT INTO Albums(album_id, album_title, release_date)
VALUES(3, 'The best', '2020-02-02');


INSERT INTO Albums(album_id, album_title, release_date)
VALUES(4, 'Жить в кайф', '2012-02-02');


INSERT INTO Albums(album_id, album_title, release_date)
VALUES(5, 'Вдох', '2013-02-02');


INSERT INTO Albums(album_id, album_title, release_date)
VALUES(6, 'Сопранно', '2014-02-02');


INSERT INTO Albums(album_id, album_title, release_date)
VALUES(7, 'Как в старой сказке', '2001-02-02');


INSERT INTO Albums(album_id, album_title, release_date)
VALUES(8, 'Краш', '2016-02-02');

----------------связь между альбомами и исполнителями------------------------------

INSERT INTO albumsperfomers
VALUES(1, 8);

INSERT INTO albumsperfomers
VALUES(2, 5);

INSERT INTO albumsperfomers
VALUES(3, 4);

INSERT INTO albumsperfomers
VALUES(4, 5);

INSERT INTO albumsperfomers
VALUES(5, 6);

INSERT INTO albumsperfomers
VALUES(6, 1);

INSERT INTO albumsperfomers
VALUES(7, 3);

INSERT INTO albumsperfomers
VALUES(8, 7);

INSERT INTO albumsperfomers
VALUES(5, 2);

INSERT INTO albumsperfomers
VALUES(5, 8);

----------------Треки------------------------------

INSERT INTO tracks
VALUES(1, 1, 'Locomy', 4.0);

INSERT INTO tracks
VALUES(2, 1, 'Харлей', 3.34);

INSERT INTO tracks
VALUES(3, 1, 'Звездопад', 2.50);

INSERT INTO tracks
VALUES(4, 2, 'Ты была права', 1.58);

INSERT INTO tracks
VALUES(5, 3, 'Рюмка водка на столе', 4.23);

INSERT INTO tracks
VALUES(6, 3, 'Водопадом', 4.19);

INSERT INTO tracks
VALUES(7, 3, 'Натали', 4.48);

INSERT INTO tracks
VALUES(8, 3, 'Лондон', 4.23);

INSERT INTO tracks
VALUES(9, 4, 'Жить в кайф', 2.54);

INSERT INTO tracks
VALUES(10, 4, 'Амстердам', 4.06);

INSERT INTO tracks
VALUES(11, 4, 'Мотылек', 3.56);

INSERT INTO tracks
VALUES(12, 5, 'Вдох', 3.01);

INSERT INTO tracks
VALUES(13, 6, 'Сопранно', 3.11);

INSERT INTO tracks
VALUES(14, 7, 'Гимн шута', 5.00);

INSERT INTO tracks
VALUES(15, 8, 'Краш мой', 3.23);


-------сборники--------------------------

INSERT INTO Collections
VALUES(1,'Лучшее рок', '2019-02-02');

INSERT INTO Collections
VALUES(2,'Хиты', '2003-12-02');

INSERT INTO Collections
VALUES(3,'Новые хиты', '2006-02-02');

INSERT INTO Collections
VALUES(4,'Старые хиты', '2012-12-22');

INSERT INTO Collections
VALUES(5,'Новинки', '2002-02-02');

INSERT INTO Collections
VALUES(6,'Новая эра', '2013-02-01');

INSERT INTO Collections
VALUES(7,'Лучшее', '2020-01-02');

INSERT INTO Collections
VALUES(8,'Русский рэп', '2018-12-02');

--------------------cвязь между сборниками и треками----------------------------

INSERT INTO collectiontracks
VALUES(1, 14);

INSERT INTO collectiontracks
VALUES(3, 15);

INSERT INTO collectiontracks
VALUES(4, 5);

INSERT INTO collectiontracks
VALUES(5, 10);

INSERT INTO collectiontracks
VALUES(6, 8);

INSERT INTO collectiontracks
VALUES(7, 7);

INSERT INTO collectiontracks
VALUES(8, 1);

INSERT INTO collectiontracks
VALUES(8, 4);

INSERT INTO collectiontracks
VALUES(2, 3);