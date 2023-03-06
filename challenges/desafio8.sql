SELECT 
    a.artist_name AS artista, al.album_title AS album
FROM
    artists AS a
        INNER JOIN
    albums AS al ON al.artist_id = a.artist_id
WHERE
    a.artist_name = 'Elis Regina'
GROUP BY al.album_title
ORDER BY al.album_title DESC;