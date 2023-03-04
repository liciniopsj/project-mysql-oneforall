SELECT 
    s.song_name AS cancao, COUNT(hist.song_id) AS reproducoes
FROM
    songs AS s
        INNER JOIN
    playback_history AS hist ON s.song_id = hist.song_id
GROUP BY s.song_name
ORDER BY reproducoes DESC , s.song_name
LIMIT 2;