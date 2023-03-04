SELECT 
    COUNT(DISTINCT s.song_id) AS cancoes,
    COUNT(DISTINCT a.artist_id) AS artistas,
    COUNT(DISTINCT al.album_id) AS albuns
FROM
    songs AS s
        INNER JOIN
    artists AS a
        INNER JOIN
    albums AS al;
