SELECT 
    a.artist_name AS artista,
    al.album_title AS album,
    COUNT(f.artist_id) AS pessoas_seguidoras
FROM
    artists AS a
        INNER JOIN
    albums AS al ON a.artist_id = al.artist_id
        INNER JOIN
    follows AS f ON a.artist_id = f.artist_id
GROUP BY a.artist_name , al.album_title
ORDER BY pessoas_seguidoras DESC , a.artist_name , al.album_title;