--------------------------1 запрос-------------------------------------------------------------
SELECT g.genre_title Название_жанра , COUNT(p.perfomer_id) Количество_исполнителей
FROM genres g
LEFT JOIN  genresperfomers ge ON ge.genres_id  = g.genres_id
LEFT JOIN perfomers p  ON ge.perfomer_id = p.perfomer_id
GROUP BY g.genre_title;
--------------------------2 запрос-------------------------------------------------------------

SELECT COUNT(t.track_id) AS Количество_треков FROM albums a 
JOIN tracks t ON a.album_id = t.album_id 
WHERE date_part('year', release_date) BETWEEN  2019 AND 2020;

--------------------------3 запрос-------------------------------------------------------------

SELECT album_title AS Название_альбома, ROUND(AVG(t.duration),2) AS Средняя_продолжительность_трека FROM albums a 
JOIN tracks t ON a.album_id = t.album_id 
GROUP BY album_title;

--------------------------4 запрос-------------------------------------------------------------

SELECT p.perfomer_name AS Исполнители
FROM perfomers p 
WHERE p.perfomer_name NOT IN ( 
	SELECT perfomer_name
	FROM perfomers  
	LEFT JOIN  albumsperfomers a  ON a.perfomer_id = p.perfomer_id
	LEFT JOIN albums a2 ON a.album_id = a2.album_id
	WHERE date_part('year', release_date) = 2020
);

--------------------------5 запрос-------------------------------------------------------------

SELECT c.collection_title AS Сборник
FROM collections c 
LEFT JOIN  collectiontracks co  ON co.collection_id = c.collection_id
LEFT JOIN tracks t ON co.track_id = t.track_id
LEFT JOIN albums a   ON t.album_id = a.album_id
LEFT JOIN  albumsperfomers aa  ON aa.album_id = a.album_id
LEFT JOIN perfomers p  ON aa.perfomer_id = p.perfomer_id
WHERE perfomer_name = 'Король и шут';


--------------------------6 запрос-------------------------------------------------------------


SELECT a.album_title AS Название_альбома
FROM albums a
LEFT JOIN  albumsperfomers a1  ON a1.album_id = a.album_id
LEFT JOIN perfomers p  ON a1.perfomer_id = p.perfomer_id
GROUP BY a.album_id
HAVING COUNT(p.perfomer_id) > 1;


--------------------------7 запрос-------------------------------------------------------------

SELECT distinct t.track_title AS Трек_без_сборника
FROM tracks t 
LEFT JOIN  collectiontracks co  ON co.track_id = t.track_id 
WHERE co.track_id IS NULL
ORDER BY t.track_title; 


--------------------------8 запрос-------------------------------------------------------------


SELECT p.perfomer_name AS Исполнитель
FROM perfomers p 
LEFT JOIN  albumsperfomers a ON a.perfomer_id = p.perfomer_id
LEFT JOIN albums a2  ON a.album_id = a2.album_id
LEFT JOIN tracks t  ON a2.album_id = t.album_id
WHERE t.duration = (SELECT MIN(duration) FROM tracks);



--------------------------9 запрос-------------------------------------------------------------

SELECT a.album_title
FROM albums a  JOIN tracks t  ON a.album_id = t.album_id
GROUP BY a.album_id 
HAVING COUNT(track_id) = (
	SELECT COUNT(track_id) FROM tracks 
	GROUP BY album_id 
	ORDER BY 1
	LIMIT 1
);
