--Задание 2

--название и продолжительность самого длинного трека
SELECT name, duration FROM track order by duration desc limit 1;

select name from track where duration >= 210;

select name from collection c where year_of_release in (2018, 2019, 2020);

select name from musician m where name not like '% %';

select name from track t where string_to_array(LOWER(name), ' ') && array['мой', 'my'];


--Задание 3

SELECT name, COUNT(musician_id) количество FROM genre g       
JOIN musiciansgenres ON musiciansgenres.genre_id = id   
GROUP BY g."name";

select count (a.year_of_release ) количество from album a 
join track on a.id = track.album_id
where year_of_release between 2019 and 2020;

select a."name", avg(duration) from album a 
join track on a.id = track.album_id
group by a."name";

select m2."name" from musician m2
where m2.id not in (select m3.id from musician m3  
join musiciansalbums m on m2.id = m.musician_id 
join album a on a.id = m.album_id 
where year_of_release = 2020);

select c."name" from collection c 
join trackscollections t on t.collection_id = c.id  
join track t2 on t.track_id = t2.id 
join album a on t2.album_id = a.id 
join musiciansalbums m on a.id = m.album_id 
join musician m2 on m2.id = m.musician_id 
where m2."name" like 'Эминем';